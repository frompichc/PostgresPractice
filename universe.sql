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
-- Name: blank_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blank_table (
    blank_table_id integer NOT NULL,
    name character varying(30),
    age_in_years integer NOT NULL,
    distan_from_earth integer NOT NULL
);


ALTER TABLE public.blank_table OWNER TO freecodecamp;

--
-- Name: blank_table_blank_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blank_table_blank_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blank_table_blank_table_id_seq OWNER TO freecodecamp;

--
-- Name: blank_table_blank_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blank_table_blank_table_id_seq OWNED BY public.blank_table.blank_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_years integer NOT NULL,
    distan_from_earth numeric(4,2) NOT NULL,
    description text,
    has_life boolean
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
    name character varying(30),
    age_in_years integer NOT NULL,
    distan_from_earth numeric(4,2) NOT NULL,
    description text,
    has_life boolean,
    planet_id integer
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
    name character varying(30),
    age_in_years integer NOT NULL,
    distan_from_earth numeric(4,2) NOT NULL,
    description text,
    has_life boolean,
    star_id integer
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
    age_in_years integer NOT NULL,
    distan_from_earth numeric(4,2) NOT NULL,
    description text,
    has_life boolean,
    galaxy_id integer
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
-- Name: blank_table blank_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blank_table ALTER COLUMN blank_table_id SET DEFAULT nextval('public.blank_table_blank_table_id_seq'::regclass);


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
-- Data for Name: blank_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blank_table VALUES (1, 'blank 1', 100, 0);
INSERT INTO public.blank_table VALUES (2, 'blank 2', 100, 0);
INSERT INTO public.blank_table VALUES (3, 'blank 3', 100, 0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 13700, 0.00, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2.54, 'Closest spiral galaxy to Milky Way', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 3.00, 'A spiral galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 300, 3.00, 'A spiral galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 300, 3.00, 'A spiral galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 21300, 23.00, 'A spiral galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 4500, 0.00, 'Description 1', true, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 4500, 0.00, 'Description 2', true, 2);
INSERT INTO public.moon VALUES (3, 'moon 3', 4500, 0.00, 'Description 3', true, 3);
INSERT INTO public.moon VALUES (4, 'moon 4', 4500, 0.00, 'Description 4', true, 4);
INSERT INTO public.moon VALUES (5, 'moon 5', 4500, 0.00, 'Description 5', true, 5);
INSERT INTO public.moon VALUES (6, 'moon 6', 4500, 0.00, 'Description 5', true, 6);
INSERT INTO public.moon VALUES (7, 'moon 7', 4500, 0.00, 'Description 5', true, 7);
INSERT INTO public.moon VALUES (8, 'moon 8', 4500, 0.00, 'Description 5', true, 8);
INSERT INTO public.moon VALUES (9, 'moon 9', 4500, 0.00, 'Description 5', true, 9);
INSERT INTO public.moon VALUES (10, 'moon 10', 4500, 0.00, 'Description 5', true, 10);
INSERT INTO public.moon VALUES (11, 'moon 11', 4500, 0.00, 'Description 5', true, 11);
INSERT INTO public.moon VALUES (12, 'moon 12', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (13, 'moon 13', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (14, 'moon 14', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (15, 'moon 15', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (16, 'moon 16', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (17, 'moon 17', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (18, 'moon 18', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (19, 'moon 19', 4500, 0.00, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (20, 'moon 20', 4500, 0.00, 'Description 5', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 0.00, 'Description 1', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 0.00, 'Description 2', true, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 4500, 0.00, 'Description 3', true, 2);
INSERT INTO public.planet VALUES (4, 'Kepler-452b', 4500, 0.00, 'Description 4', true, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 0.00, 'Description 5', true, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 0.00, 'Description 6', true, 3);
INSERT INTO public.planet VALUES (7, 'TRAPPIST-e1', 4500, 0.00, 'Description 7', true, 4);
INSERT INTO public.planet VALUES (8, 'Venus', 4500, 0.00, 'Description 8', true, 4);
INSERT INTO public.planet VALUES (9, 'Gliese', 4500, 0.00, 'Description 9', true, 5);
INSERT INTO public.planet VALUES (10, 'Neptune', 4500, 0.00, 'Description 10', true, 5);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 4500, 0.00, 'Description 11', true, 6);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 4500, 0.00, 'Description 12', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0.00, 'The star at the center of the solar system', true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centuari', 4700, 4.24, 'The closest known star to the sun', false, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10000, 42.50, 'The closest known star to the sun', false, 3);
INSERT INTO public.star VALUES (4, 'Sirius', 10000, 42.50, 'The closest known star to the sun', false, 4);
INSERT INTO public.star VALUES (5, 'Vega', 90000, 4.50, 'The closest known star to the sun', false, 5);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 70000, 4.00, 'The closest known star to the sun', false, 6);


--
-- Name: blank_table_blank_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blank_table_blank_table_id_seq', 3, true);


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
-- Name: blank_table blank_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blank_table
    ADD CONSTRAINT blank_table_name_key UNIQUE (name);


--
-- Name: blank_table blank_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blank_table
    ADD CONSTRAINT blank_table_pkey PRIMARY KEY (blank_table_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


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

