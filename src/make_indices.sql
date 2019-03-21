CREATE INDEX "idx_@@table@@_classification" on  @@table@@ ("classification.taxonomy", "classification.type", "classification.identifier", "date" desc);
CREATE INDEX "idx_@@table@@_source.asn" on  @@table@@ ("source.asn", "date" desc);
CREATE INDEX "idx_@@table@@_source.network" on  @@table@@ ("source.network", "date" desc);
CREATE INDEX "idx_@@table@@_source_geolocation_cc" on @@table@@ ("source.geolocation.cc", "date" desc);
CREATE INDEX "idx_@@table@@_feed.name" on  @@table@@ ("feed.name", "date" desc);
CREATE INDEX "idx_@@table@@_feed.provider" on  @@table@@ ("feed.provider", "date" desc);
CREATE INDEX "idx_@@table@@_malware_name" on  @@table@@ ("malware.name", "date" desc);
CREATE INDEX "idx_@@table@@_protocol.application" on  @@table@@ ("protocol.application", "date" desc);
