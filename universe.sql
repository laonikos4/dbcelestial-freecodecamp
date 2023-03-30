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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,2),
    is_visited boolean,
    code_name integer
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
-- Name: justatable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.justatable (
    justatable_id integer NOT NULL,
    name character varying(20),
    column_name integer NOT NULL
);


ALTER TABLE public.justatable OWNER TO freecodecamp;

--
-- Name: justatable_justatable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.justatable_justatable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.justatable_justatable_id_seq OWNER TO freecodecamp;

--
-- Name: justatable_justatable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.justatable_justatable_id_seq OWNED BY public.justatable.justatable_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,2),
    is_visited boolean,
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,2),
    is_visited boolean,
    mass integer,
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,2),
    mass integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: justatable justatable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.justatable ALTER COLUMN justatable_id SET DEFAULT nextval('public.justatable_justatable_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Description of Andromeda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 'Description of Black Eye', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky way', 'Description of Milky way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 'description of eye of sauron', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'mice', 'description of mice', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'cosmos redshift 7', 'description of cosmos redshift 7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', 'Description of Whirlpool', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: justatable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.justatable VALUES (1, NULL, 1);
INSERT INTO public.justatable VALUES (2, NULL, 2);
INSERT INTO public.justatable VALUES (3, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'description1', false, 1, 11.00, true, NULL);
INSERT INTO public.moon VALUES (2, 'moon1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon7', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon8', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon9);
', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon11', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon12', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon15', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon17', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon19', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'description of earth', true, 0, 10.00, true, 10, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'mercury', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mars', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'kappa andromeda', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet funk', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'titawin', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'karaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aries', 'description of Aries', 10, 10.00, 10, NULL);
INSERT INTO public.star VALUES (2, 'Taurus', 'description of Taurus', 10, 10.00, 10, NULL);
INSERT INTO public.star VALUES (3, 'Andromeda', 'Description of andromeda', 10, 10.00, 10, NULL);
INSERT INTO public.star VALUES (4, 'Aquarius', 'Description of Aquarius', 10, 10.00, 10, NULL);
INSERT INTO public.star VALUES (5, 'Cancer', 'Description of Cancer', 10, 10.00, 10, NULL);
INSERT INTO public.star VALUES (6, 'Centaurus', 'Description of Centaurus', 10, 10.00, 10, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: justatable_justatable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.justatable_justatable_id_seq', 3, true);


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
-- Name: galaxy galaxy_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_name_key UNIQUE (code_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: justatable justatable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.justatable
    ADD CONSTRAINT justatable_name_key UNIQUE (name);


--
-- Name: justatable justatable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.justatable
    ADD CONSTRAINT justatable_pkey PRIMARY KEY (justatable_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
