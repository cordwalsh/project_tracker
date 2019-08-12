--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: cordwalsh
--

CREATE TABLE public.projects (
    title character varying,
    id integer NOT NULL
);


ALTER TABLE public.projects OWNER TO cordwalsh;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: cordwalsh
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO cordwalsh;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cordwalsh
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: cordwalsh
--

COPY public.projects (title, id) FROM stdin;
jazzy j fest	1
cords kickback	2
bur fest	3
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cordwalsh
--

SELECT pg_catalog.setval('public.projects_id_seq', 3, true);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

