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
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric,
    has_life integer,
    description character varying(100),
    galaxy_types text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    description text,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    description text,
    distance_from_earth integer,
    planet_types text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    description character varying(100),
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bimasakti', 2345, 1200, 'Like and Bright', 'Pirify');
INSERT INTO public.galaxy VALUES (2, 'Lukaso', 2300, 3450, 'Beautiful and pretty', 'Puridy');
INSERT INTO public.galaxy VALUES (3, 'Likasi', 23478, 45000, 'Birgh and Sunny', 'Jukasiah');
INSERT INTO public.galaxy VALUES (4, 'Miristica', 2400, 4567, 'Bright and Good', 'Purify');
INSERT INTO public.galaxy VALUES (5, 'Sactuary', 23467, 23098, 'Good and Kind', 'Andromeda');
INSERT INTO public.galaxy VALUES (6, 'Lukasian', 2300, 43509, 'Good and made some goood assesment', 'Andromeda');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Apollo', 23000, 'Good of Art', true);
INSERT INTO public.moon VALUES (2, 'Beaver Moon', 12000, 'Come in November', false);
INSERT INTO public.moon VALUES (3, 'Crow Moon', 34000, 'Native in American', false);
INSERT INTO public.moon VALUES (4, 'Elara', 45000, 'Princess in Greek', true);
INSERT INTO public.moon VALUES (5, 'Blue Mooon', 35000, 'Ancient Anmes', true);
INSERT INTO public.moon VALUES (6, 'Cold Moon', 67000, 'Winter in December', true);
INSERT INTO public.moon VALUES (7, 'Flower Moon', 35000, 'Abundant Blooming', true);
INSERT INTO public.moon VALUES (8, 'Luna', 78000, 'Winning Guess', true);
INSERT INTO public.moon VALUES (9, 'Wolf Moon', 65000, 'Howling Hungry', false);
INSERT INTO public.moon VALUES (10, 'Abylay', 54000, 'Father Of Moon', true);
INSERT INTO public.moon VALUES (11, 'Aibek', 23000, 'Master of Moon ChiefTan', false);
INSERT INTO public.moon VALUES (12, 'Arche', 245000, 'Jupiter Moon', true);
INSERT INTO public.moon VALUES (13, 'Artemis', 245098, 'Greek Goodness', true);
INSERT INTO public.moon VALUES (14, 'Buck Moon', 248790, 'Moon Of July', true);
INSERT INTO public.moon VALUES (15, 'Full Moon', 6475869, 'Lamenting scarely for wolf', true);
INSERT INTO public.moon VALUES (16, 'Hala', 6373524, 'Halo Around Moon', true);
INSERT INTO public.moon VALUES (17, 'Harvest Moon', 6474635, 'Hunters Moon', true);
INSERT INTO public.moon VALUES (18, 'Helene', 6735363, 'Sparta Moon Woman', true);
INSERT INTO public.moon VALUES (19, 'Pink Moon', 53635245, 'April Moon As Early blooming', true);
INSERT INTO public.moon VALUES (20, 'Aiday', 45000, 'Moon Child', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'Have water and soil', 0, 'round');
INSERT INTO public.planet VALUES (2, 'Mars', true, 'Red and Bright', 2300, 'Oval');
INSERT INTO public.planet VALUES (3, 'Merkurius', false, 'Have many holes', 3400, 'bit oval');
INSERT INTO public.planet VALUES (4, 'Saturn', true, 'Have ring', 450009, 'Weird matters');
INSERT INTO public.planet VALUES (5, 'Pluto', true, 'Litte Planet', 100000000, 'Little');
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 'The biggest planet in universe', 200000, 'Round');
INSERT INTO public.planet VALUES (7, 'Neptune', false, 'Second Biggest Planet In universe', 1200000, 'Little Big');
INSERT INTO public.planet VALUES (8, 'Venus', false, 'Pretty Symbol', 24000, 'Bit Yellowish');
INSERT INTO public.planet VALUES (9, 'Uranus', true, 'Spin on its side', 3400000, 'Little Big');
INSERT INTO public.planet VALUES (10, 'Mercury', false, 'Big late for bloom', 24000, 'Small');
INSERT INTO public.planet VALUES (11, 'Uranuiums', true, 'Too Fast to Bloom', 340000, 'Little Big');
INSERT INTO public.planet VALUES (12, 'Plutorium', false, 'Fake Planet', 0, 'Dunno how big it is');


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Bimasakti', 'Have same good connection');
INSERT INTO public.satellite VALUES (2, 'Andromeda', 'Beautiful color');
INSERT INTO public.satellite VALUES (3, 'Cantukcy', 'Will falleen in 21 Mar');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Day', true, 'Good and give energy', 23456);
INSERT INTO public.star VALUES (2, 'Danny', false, 'Kurang sedikit', 23456);
INSERT INTO public.star VALUES (3, 'Luki', true, 'Happy and Sound', 24569);
INSERT INTO public.star VALUES (4, 'Satuan', true, 'Bright and Salute', 23567);
INSERT INTO public.star VALUES (5, 'Mirisin', true, 'Salute and Give Good Energy', 23908);
INSERT INTO public.star VALUES (6, 'Lukaria', false, 'Brght and Good Fast', 24567);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

