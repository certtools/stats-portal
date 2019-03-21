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
-- Name: taxonomy; Type: TABLE; Schema: public; Owner: stats-sync
--

CREATE TABLE public.taxonomy (
    "classification.taxonomy" text
);


ALTER TABLE public.taxonomy OWNER TO "stats-sync";

--
-- Data for Name: taxonomy; Type: TABLE DATA; Schema: public; Owner: stats-sync
--

COPY public.taxonomy ("classification.taxonomy") FROM stdin;
abusive content
availability
fraud
information content security
information gathering
intrusion attempts
intrusions
malicious code
other
test
vulnerable
\.


--
-- PostgreSQL database dump complete
--

