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
-- Name: types; Type: TABLE; Schema: public; Owner: stats-sync
--

CREATE TABLE public.types (
    "classification.type" text
);


ALTER TABLE public.types OWNER TO "stats-sync";

--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: stats-sync
--

COPY public.types ("classification.type") FROM stdin;
ddos
scanner
test
potentially-unwanted-accessible
phishing
exploit
brute-force
ddos-amplifier
leak
other
spam
unauthorized-command
vulnerable-system
proxy
compromised
infected system
misconfiguration
vulnerable service
malware
vulnerable client
c&c
\.


--
-- PostgreSQL database dump complete
--

