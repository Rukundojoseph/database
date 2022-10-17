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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_myears integer,
    distance_from_earth integer,
    galaxy_type text,
    name character varying(40) NOT NULL
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
    name character varying(20) NOT NULL,
    planet_id integer,
    age_in_myears integer,
    distance_from_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size numeric(5,1),
    life_possibility boolean,
    distance_from_earth integer,
    this_galaxy boolean,
    galaxy_id integer
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
-- Name: satelites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelites (
    satelites_id integer NOT NULL,
    name character varying(40) NOT NULL,
    take_off_date date
);


ALTER TABLE public.satelites OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_satelites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_satelites_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_satelites_id_seq OWNED BY public.satelites.satelites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    galaxy_id integer,
    distance_from_earth integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelites satelites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN satelites_id SET DEFAULT nextval('public.satelites_satelites_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 13, 0, 'spiral', 'milky way');
INSERT INTO public.galaxy VALUES (7, 16, 160, NULL, 'large magellanic could');
INSERT INTO public.galaxy VALUES (8, 13, 250, 'spiral', 'Andromeda galaxy');
INSERT INTO public.galaxy VALUES (9, 16, 115, NULL, 'cigar Galaxy');
INSERT INTO public.galaxy VALUES (10, 17, 208, NULL, 'pinwheel galaxy');
INSERT INTO public.galaxy VALUES (11, 5, 293, NULL, 'sombrero galaxy');
INSERT INTO public.galaxy VALUES (12, 60, 300, NULL, 'whirlpool galaxy');
INSERT INTO public.galaxy VALUES (13, 11, 61, NULL, 'NGC');
INSERT INTO public.galaxy VALUES (14, 28, 420, NULL, 'tadpole galaxy');
INSERT INTO public.galaxy VALUES (15, 10, 600, NULL, 'hoags oject');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'sleep', 9, 4, NULL);
INSERT INTO public.moon VALUES (2, 'love', 9, 4, NULL);
INSERT INTO public.moon VALUES (3, 'jeniffer', 6, 4, 12);
INSERT INTO public.moon VALUES (4, 'dendo', 7, 12, 1);
INSERT INTO public.moon VALUES (5, 'davido', 13, 13, 13);
INSERT INTO public.moon VALUES (6, 'mbonye', 10, 10, 10);
INSERT INTO public.moon VALUES (7, 'ahkim', 12, 12, NULL);
INSERT INTO public.moon VALUES (8, 'erice', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'burna', 14, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'shaku', 11, 4, NULL);
INSERT INTO public.moon VALUES (19, 'cole', 14, 4, 12);
INSERT INTO public.moon VALUES (20, 'drew', 13, 12, 1);
INSERT INTO public.moon VALUES (21, 'david', 13, 13, 13);
INSERT INTO public.moon VALUES (22, 'jose', 12, 10, 10);
INSERT INTO public.moon VALUES (23, 'loic', 11, 12, NULL);
INSERT INTO public.moon VALUES (24, 'asinah', 9, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'albine', 14, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'pocolee', 11, 4, NULL);
INSERT INTO public.moon VALUES (27, 'kante', 14, 4, 12);
INSERT INTO public.moon VALUES (28, 'megan', 13, 12, 1);
INSERT INTO public.moon VALUES (29, 'don', 13, 13, 13);
INSERT INTO public.moon VALUES (30, 'jo', 12, 10, 10);
INSERT INTO public.moon VALUES (31, 'lui', 11, 12, NULL);
INSERT INTO public.moon VALUES (32, 'esther', 9, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'mellisa', 14, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'venus', 3.5, false, 5, false, 6);
INSERT INTO public.planet VALUES (2, 'mercury', 6.0, false, 7, false, 6);
INSERT INTO public.planet VALUES (3, 'mars', 2.0, true, 7, true, 6);
INSERT INTO public.planet VALUES (4, 'earth', 4.0, true, 0, true, 6);
INSERT INTO public.planet VALUES (5, 'bushali', 5.2, true, 5, true, 6);
INSERT INTO public.planet VALUES (6, 'coco', 5.1, true, 5, true, 6);
INSERT INTO public.planet VALUES (7, 'ma vie', 5.1, true, 5, true, 6);
INSERT INTO public.planet VALUES (8, 'man', 5.1, true, 5, true, 6);
INSERT INTO public.planet VALUES (9, 'ben', 6.0, true, 2, true, 10);
INSERT INTO public.planet VALUES (10, 'oneal', 7.0, true, 6, true, 12);
INSERT INTO public.planet VALUES (11, 'freecd', 8.0, true, 3, false, 12);
INSERT INTO public.planet VALUES (12, 'rwanda', 20.0, true, 3, true, 13);
INSERT INTO public.planet VALUES (13, 'uganda', 15.0, true, 9, true, 8);
INSERT INTO public.planet VALUES (14, 'burundi', 12.0, true, 3, true, 8);


--
-- Data for Name: satelites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelites VALUES (1, 'kemo', '2002-01-02');
INSERT INTO public.satelites VALUES (2, 'jay', '2005-04-01');
INSERT INTO public.satelites VALUES (3, 'jeff_shaku', '2001-03-30');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'red dwarf', 3, 6, 23);
INSERT INTO public.star VALUES (2, 'bruce_melody', 5, 6, 20);
INSERT INTO public.star VALUES (3, 'buravan', 5, 6, 27);
INSERT INTO public.star VALUES (4, 'pope smoke', 6, 8, 20);
INSERT INTO public.star VALUES (5, 'micheal jackson', 6, 6, 20);
INSERT INTO public.star VALUES (6, 'jay polly', 5, 9, 31);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 15, true);


--
-- Name: moon_mon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_satelites_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: satelites satelites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_pkey PRIMARY KEY (satelites_id);


--
-- Name: satelites satelites_satelites_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_satelites_id_key UNIQUE (satelites_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

