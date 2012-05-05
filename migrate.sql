UPDATE org_gucken_events_domain_model_event SET image = null WHERE image IS NOT NULL;

ALTER TABLE org_gucken_events_domain_model_event ADD CONSTRAINT FK_43820B57C53D045F FOREIGN KEY (image) REFERENCES typo3_media_domain_model_image (flow3_persistence_identifier);


ALTER TABLE org_gucken_events_domain_model_eventsource ADD code VARCHAR(255) DEFAULT NULL;

ALTER TABLE org_gucken_events_domain_model_location ADD code VARCHAR(255) DEFAULT NULL;

ALTER TABLE org_gucken_events_domain_model_event ADD locationdetail VARCHAR(255) DEFAULT NULL;

ALTER TABLE org_gucken_events_domain_model_eventfactoid ADD model VARCHAR(255) NOT NULL, ADD locationtext VARCHAR(255) DEFAULT NULL;

ALTER TABLE org_gucken_events_domain_model_eventlink ADD INDEX tmp (`factoididentity`);
DROP INDEX UNIQ_8A43ABE8D2565BF3 ON org_gucken_events_domain_model_eventlink;
CREATE INDEX IDX_8A43ABE8D2565BF3 ON org_gucken_events_domain_model_eventlink (factoididentity);

ALTER TABLE org_gucken_events_domain_model_location ADD reviewed TINYINT(1) DEFAULT NULL;
UPDATE org_gucken_events_domain_model_location SET reviewed = 1;

UPDATE org_gucken_events_domain_model_eventfactoid SET model = 'org_gucken_events_eventfactoid' WHERE model = '';
ALTER TABLE org_gucken_events_domain_model_eventsource ADD style VARCHAR(255) DEFAULT NULL;
