--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.16
-- Dumped by pg_dump version 9.5.16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: asns; Type: TABLE; Schema: public; Owner: stats-sync
--

CREATE TABLE public.asns (
    "source.asn" integer
);


ALTER TABLE public.asns OWNER TO "stats-sync";

--
-- Data for Name: asns; Type: TABLE DATA; Schema: public; Owner: stats-sync
--

--- NOTE NOTE NOTE
--- This is a list of all your ASNs in your country. We intentionally removed most so that you can simply  
--- see what you would need to put here.
---
--- Please note that you can get a list of all your ASNs in your country via stat.ripe.net:
---
---    https://stat.ripe.net/docs/data_api#country-asns
--- 
--- please fill in your own country list this way

COPY public.asns ("source.asn") FROM stdin;
2025
2033
2036
2047
2055
\N
\.


--
-- PostgreSQL database dump complete
--

