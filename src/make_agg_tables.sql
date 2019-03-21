drop table  if exists "agg_ndim_day_all_tags" ;
  
create table "agg_ndim_day_all_tags" as (
        select
                date_trunc('day', "time.source"  at time zone 'UTC') as "date",
                count(*) as "count",
                "classification.taxonomy",
                "classification.type",
                "classification.identifier",
                "protocol.application",
                "protocol.transport",
                "malware.name",
                "feed.code",
                "feed.name",
                "feed.provider",
                "source.geolocation.cc",
                "source.port",
                "source.asn" ,
                "source.network",
                "source.domain_suffix"
        from events
        -- where 
        --      "time.source" >= '2018/1/1'  and "time.source" <= '2018/12/31' 
        group by "date",
               "classification.taxonomy",
                "classification.type",
                "classification.identifier",
                "protocol.application",
                "protocol.transport",
                "malware.name",
                "feed.code",
                "feed.name",
                "feed.provider",
                "source.geolocation.cc",
                "source.port",
                "source.asn",
                "source.network",
                "source.domain_suffix"
        order by "date" desc, "source.asn"
);


drop table   if exists "agg_ndim_day_netobject_tags" ;
create table "agg_ndim_day_netobject_tags" as (
        select
                date_trunc('day', "time.source" at time zone 'UTC') as "date",
                count(distinct "source.ip") as "count",
                "classification.taxonomy",
                "classification.type",
                "classification.identifier",
                "protocol.application",
                "protocol.transport",
                "malware.name",
                "source.geolocation.cc",
                "source.port",
                "source.asn" ,
                "source.network",
                "source.domain_suffix"
        from events
        -- where 
        --      "time.source" >= '2018/1/1'  and "time.source" <= '2018/12/31' 
        group by "date",
               "classification.taxonomy",
                "classification.type",
                "classification.identifier",
                "protocol.application",
                "protocol.transport",
                "malware.name",
                "source.geolocation.cc",
                "source.port",
                "source.asn",
                "source.network",
                "source.domain_suffix"
        order by "date" desc, "source.asn"
);


drop table  if exists "agg_ndim_day_feed_tags" ;
create table "agg_ndim_day_feed_tags" as (
        select
                date_trunc('day', "time.source"  at time zone 'UTC') as "date",
                count(*) as "count",
                "classification.taxonomy",
                "classification.type",
                "classification.identifier",
                "protocol.application",
                "protocol.transport",
                "malware.name",
                "feed.code",
                "feed.name",
                "feed.provider",
                "source.geolocation.cc"
        from events
        -- where 
        --      "time.source" >= '2018/1/1'  and "time.source" <= '2018/12/31' 
        group by "date",
               "classification.taxonomy",
                "classification.type",
                "classification.identifier",
                "protocol.application",
                "protocol.transport",
                "malware.name",
                "feed.code",
                "feed.name",
                "feed.provider",
                "source.geolocation.cc"
        order by "date" desc
);


