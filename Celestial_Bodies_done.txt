--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: clusters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.clusters (
    clusters_id integer NOT NULL,
    name character varying(60) NOT NULL,
    no_of_galaxies integer
);


ALTER TABLE public.clusters OWNER TO freecodecamp;

--
-- Name: clusters_clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.clusters_clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clusters_clusters_id_seq OWNER TO freecodecamp;

--
-- Name: clusters_clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.clusters_clusters_id_seq OWNED BY public.clusters.clusters_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    clusters_id integer,
    age_in_million_years integer,
    mass numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    age_in_million_years integer,
    mass numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    age_in_million_years integer,
    mass numeric,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    in_greek_mythology text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    age_in_million_years integer,
    mass numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: clusters clusters_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clusters ALTER COLUMN clusters_id SET DEFAULT nextval('public.clusters_clusters_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: clusters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.clusters VALUES (2, 'Virgo Cluster', 1500);
INSERT INTO public.clusters VALUES (3, 'Norma Cluster', NULL);
INSERT INTO public.clusters VALUES (1, 'Local Group', 51);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 1361000, 1.2);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 1618543, 2.1);
INSERT INTO public.galaxy VALUES (3, 'Filamentominta', 3, 7634521, 3.5);
INSERT INTO public.galaxy VALUES (4, 'YCKJ-14-CVFAG151', 2, 61236781, 0.7);
INSERT INTO public.galaxy VALUES (5, 'A', 1, 61236781, 0.1);
INSERT INTO public.galaxy VALUES (6, 'B', 2, 6346781, 6.2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 2, 3);
INSERT INTO public.moon VALUES (2, 'b', 1, 2, 3);
INSERT INTO public.moon VALUES (3, 'c', 1, 2, 3);
INSERT INTO public.moon VALUES (4, 'd', 1, 2, 3);
INSERT INTO public.moon VALUES (5, 'e', 1, 2, 3);
INSERT INTO public.moon VALUES (6, 'f', 1, 2, 3);
INSERT INTO public.moon VALUES (7, 'g', 1, 2, 3);
INSERT INTO public.moon VALUES (8, 'h', 1, 2, 3);
INSERT INTO public.moon VALUES (9, 'j', 1, 2, 3);
INSERT INTO public.moon VALUES (10, 'k', 1, 2, 3);
INSERT INTO public.moon VALUES (11, 'l', 1, 2, 3);
INSERT INTO public.moon VALUES (12, 'q', 1, 2, 3);
INSERT INTO public.moon VALUES (13, 'w', 1, 2, 3);
INSERT INTO public.moon VALUES (14, 'r', 1, 2, 3);
INSERT INTO public.moon VALUES (15, 't', 1, 2, 3);
INSERT INTO public.moon VALUES (16, 'z', 1, 2, 3);
INSERT INTO public.moon VALUES (17, 'u', 1, 2, 3);
INSERT INTO public.moon VALUES (18, 'i', 1, 2, 3);
INSERT INTO public.moon VALUES (19, 'o', 1, 2, 3);
INSERT INTO public.moon VALUES (20, 'p', 1, 2, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (2, 'Venus', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 12, 1455, true, true, 'Hermes');
INSERT INTO public.planet VALUES (4, 'Mars', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (10, 'A', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (11, 'B', 1, 12, 1455, true, false, 'Hermes');
INSERT INTO public.planet VALUES (12, 'C', 1, 12, 1455, true, false, 'Hermes');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 14, 12516);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 2, 54, 23151);
INSERT INTO public.star VALUES (3, 'Prompra-XY45', 3, 123, 3214123);
INSERT INTO public.star VALUES (4, 'Bambalambababa', 5, 643, 450);
INSERT INTO public.star VALUES (5, 'C', 4, 2, 2356);
INSERT INTO public.star VALUES (6, 'G', 6, 146, 63115);


--
-- Name: clusters_clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.clusters_clusters_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: clusters clusters_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_name_key UNIQUE (name);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (clusters_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_cluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cluster_id_fkey FOREIGN KEY (clusters_id) REFERENCES public.clusters(clusters_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

