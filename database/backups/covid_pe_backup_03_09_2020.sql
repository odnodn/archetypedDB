--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg100+1)

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

--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: archetypeDetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."archetypeDetails" (
    original_author jsonb[],
    lifecycle_state jsonb,
    other_details jsonb[],
    details jsonb[],
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "archetypeMetadataId" integer
);


ALTER TABLE public."archetypeDetails" OWNER TO postgres;

--
-- Name: archetypeDetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."archetypeDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."archetypeDetails_id_seq" OWNER TO postgres;

--
-- Name: archetypeDetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."archetypeDetails_id_seq" OWNED BY public."archetypeDetails".id;


--
-- Name: archetypeMetadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."archetypeMetadata" (
    xmlns character varying(255),
    "xmlns:xsi" character varying(255),
    "xmlns:xsd" character varying(255),
    original_language jsonb,
    is_controlled jsonb,
    translations jsonb[],
    uid jsonb,
    archetype_id jsonb,
    adl_version jsonb,
    concept jsonb,
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."archetypeMetadata" OWNER TO postgres;

--
-- Name: archetypeMetadata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."archetypeMetadata_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."archetypeMetadata_id_seq" OWNER TO postgres;

--
-- Name: archetypeMetadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."archetypeMetadata_id_seq" OWNED BY public."archetypeMetadata".id;


--
-- Name: comorbidities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comorbidities (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    icd_code character varying(255) NOT NULL,
    abbreviation character varying(255),
    name_pt character varying(255) NOT NULL,
    abbreviation_pt character varying(255),
    synonyms character varying(255)[] NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.comorbidities OWNER TO postgres;

--
-- Name: comorbidities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comorbidities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comorbidities_id_seq OWNER TO postgres;

--
-- Name: comorbidities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comorbidities_id_seq OWNED BY public.comorbidities.id;


--
-- Name: dataItemComorbidities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."dataItemComorbidities" (
    "dataItemId" integer,
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "comorbidityId" integer
);


ALTER TABLE public."dataItemComorbidities" OWNER TO postgres;

--
-- Name: dataItemComorbidities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."dataItemComorbidities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."dataItemComorbidities_id_seq" OWNER TO postgres;

--
-- Name: dataItemComorbidities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."dataItemComorbidities_id_seq" OWNED BY public."dataItemComorbidities".id;


--
-- Name: data_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_items (
    id integer NOT NULL,
    dt_notificacao timestamp with time zone,
    "Sexo" character varying(255),
    municipio character varying(255),
    dt_primeiros_sintomas timestamp with time zone,
    sintomas character varying(255),
    comorbidades character varying(255),
    hospitalizacao character varying(255),
    classe character varying(255),
    "Resultado" character varying(255),
    evolucao character varying(255),
    dt_obito timestamp with time zone,
    cd_municipio character varying(255),
    faixa_etaria character varying(255),
    tipo character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "archetypeMetadataId" integer
);


ALTER TABLE public.data_items OWNER TO postgres;

--
-- Name: data_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.data_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_items_id_seq OWNER TO postgres;

--
-- Name: data_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.data_items_id_seq OWNED BY public.data_items.id;


--
-- Name: itemTables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."itemTables" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "archetypeMetadataId" integer
);


ALTER TABLE public."itemTables" OWNER TO postgres;

--
-- Name: itemTables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."itemTables_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."itemTables_id_seq" OWNER TO postgres;

--
-- Name: itemTables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."itemTables_id_seq" OWNED BY public."itemTables".id;


--
-- Name: itemTrees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."itemTrees" (
    rm_type_name jsonb,
    occurrences jsonb,
    node_id jsonb,
    attributes jsonb,
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "archetypeMetadataId" integer
);


ALTER TABLE public."itemTrees" OWNER TO postgres;

--
-- Name: itemTrees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."itemTrees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."itemTrees_id_seq" OWNER TO postgres;

--
-- Name: itemTrees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."itemTrees_id_seq" OWNED BY public."itemTrees".id;


--
-- Name: terminologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.terminologies (
    term_definitions jsonb[],
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "archetypeMetadataId" integer
);


ALTER TABLE public.terminologies OWNER TO postgres;

--
-- Name: terminologies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.terminologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.terminologies_id_seq OWNER TO postgres;

--
-- Name: terminologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.terminologies_id_seq OWNED BY public.terminologies.id;


--
-- Name: archetypeDetails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."archetypeDetails" ALTER COLUMN id SET DEFAULT nextval('public."archetypeDetails_id_seq"'::regclass);


--
-- Name: archetypeMetadata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."archetypeMetadata" ALTER COLUMN id SET DEFAULT nextval('public."archetypeMetadata_id_seq"'::regclass);


--
-- Name: comorbidities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidities ALTER COLUMN id SET DEFAULT nextval('public.comorbidities_id_seq'::regclass);


--
-- Name: dataItemComorbidities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataItemComorbidities" ALTER COLUMN id SET DEFAULT nextval('public."dataItemComorbidities_id_seq"'::regclass);


--
-- Name: data_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_items ALTER COLUMN id SET DEFAULT nextval('public.data_items_id_seq'::regclass);


--
-- Name: itemTables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itemTables" ALTER COLUMN id SET DEFAULT nextval('public."itemTables_id_seq"'::regclass);


--
-- Name: itemTrees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itemTrees" ALTER COLUMN id SET DEFAULT nextval('public."itemTrees_id_seq"'::regclass);


--
-- Name: terminologies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terminologies ALTER COLUMN id SET DEFAULT nextval('public.terminologies_id_seq'::regclass);


--
-- Data for Name: archetypeDetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."archetypeDetails" (original_author, lifecycle_state, other_details, details, id, "createdAt", "updatedAt", "archetypeMetadataId") FROM stdin;
\.


--
-- Data for Name: archetypeMetadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."archetypeMetadata" (xmlns, "xmlns:xsi", "xmlns:xsd", original_language, is_controlled, translations, uid, archetype_id, adl_version, concept, id, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: comorbidities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comorbidities (id, name, icd_code, abbreviation, name_pt, abbreviation_pt, synonyms, "createdAt", "updatedAt") FROM stdin;
11	Diabetes mellitus	E10	DM	Diabetes mellitus	DM	{Diabetes,"Diabetes mellitus"}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
13	Cardiovascular disease, unspecified	I51.6	CVD	Doenças Cardiovasculares	CVC	{Cardiacas,Cardiovasculares,Coracao}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
14	Diseases of liver	K70	\N	Doenças do Fígado	\N	{Figado,Hepaticas}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
15	Malignant Neoplasms	C00	\N	Malignidade	\N	{"Tumores Malignos"}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
16	Disorder of kidney and ureter, unspecified	N28.9	\N	Doenças Renais	\N	{Renais,Rins}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
17	Obesity	E66	\N	Obesidade	\N	{Obesidade,Sobrepeso}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
12	Diseases of the respiratory system	J00-J99	COPD	Doenças do Sistema Respiratório	DPOC	{DPOC,Pulmonar,Pulmao,Respiratorio,Asma,Pneumopatia,Tuberculose,Rinite,Pneumonia,Pneumotorax,Fibrose,Bronquite,Enfisema,Tuberculose,Gripe,H1N1,SARS,MERS}	2020-08-09 21:34:53.668532+00	2020-08-09 21:34:53.668532+00
\.


--
-- Data for Name: dataItemComorbidities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."dataItemComorbidities" ("dataItemId", id, "createdAt", "updatedAt", "comorbidityId") FROM stdin;
\.


--
-- Data for Name: data_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_items (id, dt_notificacao, "Sexo", municipio, dt_primeiros_sintomas, sintomas, comorbidades, hospitalizacao, classe, "Resultado", evolucao, dt_obito, cd_municipio, faixa_etaria, tipo, "createdAt", "updatedAt", "archetypeMetadataId") FROM stdin;
\.


--
-- Data for Name: itemTables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."itemTables" (id, "createdAt", "updatedAt", "archetypeMetadataId") FROM stdin;
\.


--
-- Data for Name: itemTrees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."itemTrees" (rm_type_name, occurrences, node_id, attributes, id, "createdAt", "updatedAt", "archetypeMetadataId") FROM stdin;
\.


--
-- Data for Name: terminologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.terminologies (term_definitions, id, "createdAt", "updatedAt", "archetypeMetadataId") FROM stdin;
\.


--
-- Name: archetypeDetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."archetypeDetails_id_seq"', 5, true);


--
-- Name: archetypeMetadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."archetypeMetadata_id_seq"', 5, true);


--
-- Name: comorbidities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comorbidities_id_seq', 17, true);


--
-- Name: dataItemComorbidities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."dataItemComorbidities_id_seq"', 16745, true);


--
-- Name: data_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_items_id_seq', 475718, true);


--
-- Name: itemTables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."itemTables_id_seq"', 5, true);


--
-- Name: itemTrees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."itemTrees_id_seq"', 5, true);


--
-- Name: terminologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.terminologies_id_seq', 5, true);


--
-- Name: archetypeDetails archetypeDetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."archetypeDetails"
    ADD CONSTRAINT "archetypeDetails_pkey" PRIMARY KEY (id);


--
-- Name: archetypeMetadata archetypeMetadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."archetypeMetadata"
    ADD CONSTRAINT "archetypeMetadata_pkey" PRIMARY KEY (id);


--
-- Name: comorbidities comorbities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comorbidities
    ADD CONSTRAINT comorbities_pkey PRIMARY KEY (id);


--
-- Name: data_items data_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_items
    ADD CONSTRAINT data_items_pkey PRIMARY KEY (id);


--
-- Name: itemTables itemTables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itemTables"
    ADD CONSTRAINT "itemTables_pkey" PRIMARY KEY (id);


--
-- Name: itemTrees itemTrees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itemTrees"
    ADD CONSTRAINT "itemTrees_pkey" PRIMARY KEY (id);


--
-- Name: terminologies terminologies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terminologies
    ADD CONSTRAINT terminologies_pkey PRIMARY KEY (id);


--
-- Name: archetypeDetails archetypeDetails_archetypeMetadataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."archetypeDetails"
    ADD CONSTRAINT "archetypeDetails_archetypeMetadataId_fkey" FOREIGN KEY ("archetypeMetadataId") REFERENCES public."archetypeMetadata"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: dataItemComorbidities dataItemComorbidities_comorbidityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataItemComorbidities"
    ADD CONSTRAINT "dataItemComorbidities_comorbidityId_fkey" FOREIGN KEY ("comorbidityId") REFERENCES public.comorbidities(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: dataItemComorbidities dataItemComorbidities_dataItemId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."dataItemComorbidities"
    ADD CONSTRAINT "dataItemComorbidities_dataItemId_fkey" FOREIGN KEY ("dataItemId") REFERENCES public.data_items(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: data_items data_items_archetypeMetadataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_items
    ADD CONSTRAINT "data_items_archetypeMetadataId_fkey" FOREIGN KEY ("archetypeMetadataId") REFERENCES public."archetypeMetadata"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: itemTables itemTables_archetypeMetadataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itemTables"
    ADD CONSTRAINT "itemTables_archetypeMetadataId_fkey" FOREIGN KEY ("archetypeMetadataId") REFERENCES public."archetypeMetadata"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: itemTrees itemTrees_archetypeMetadataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."itemTrees"
    ADD CONSTRAINT "itemTrees_archetypeMetadataId_fkey" FOREIGN KEY ("archetypeMetadataId") REFERENCES public."archetypeMetadata"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: terminologies terminologies_archetypeMetadataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terminologies
    ADD CONSTRAINT "terminologies_archetypeMetadataId_fkey" FOREIGN KEY ("archetypeMetadataId") REFERENCES public."archetypeMetadata"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

