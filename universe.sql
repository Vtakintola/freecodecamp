--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    type text
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    distancefrmearth numeric,
    age integer,
    star_id integer NOT NULL
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
    name character varying(30),
    description text,
    haslife boolean,
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'spiral', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'orion', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'beta2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'beta3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'beta4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'beta5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'beta6', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'beta7', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'beta8', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'beta9', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'beta10', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'beta11', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'beta12', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'beta13', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'beta14', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'beta15', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'beta16', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'beta17', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'beta18', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'beta19', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, 'bet20', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, NULL, NULL, NULL, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: star galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

