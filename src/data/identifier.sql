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
-- Name: identifier; Type: TABLE; Schema: public; Owner: stats-sync
--

CREATE TABLE public.identifier (
    "classification.identifier" text
);


ALTER TABLE public.identifier OWNER TO "stats-sync";

--
-- Data for Name: identifier; Type: TABLE DATA; Schema: public; Owner: stats-sync
--

COPY public.identifier ("classification.identifier") FROM stdin;
neshta
openproxy
open-chargen
ghostpush
gernidru
tinynuke
wordpress-vulnerabilities
monerominer
feodo
accessible-sewage-plant
wannacry
sniperspy
dresscode
ntp-version
smtpauth
open-natpmp
wpad
androidlocker
locky
neutrino
malware-generic
apt-generic
spam
spamlink
parama
mail-password-leak
unknownrat
wordpress-login
zeroaccess
if-you-read-this-far-the-full-list-of-identifiers-are-available-from-cert-at-upon-request-by-friendly-other-CERTs
\.


--
-- PostgreSQL database dump complete
--

