
drop table  if exists "asns";
create table asns as (select distinct "source.asn" from events);
create table "types" as (select distinct "classification.type" from events);
create table "taxonomy" as (select distinct "classification.taxonomy" from events);
create table "identifier" as (select distinct "classification.identifier" from events);
