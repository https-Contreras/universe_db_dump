--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: celestial_catalog; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_catalog (
    celestial_catalog_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer,
    moon_id integer,
    name character varying(100)
);


ALTER TABLE public.celestial_catalog OWNER TO freecodecamp;

--
-- Name: celestial_catalog_catalog_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_catalog_catalog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_catalog_catalog_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_catalog_catalog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_catalog_catalog_id_seq OWNED BY public.celestial_catalog.celestial_catalog_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_my integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
    distance_from_earth numeric(10,2) NOT NULL
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
    name character varying(100) NOT NULL,
    age_in_my integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
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
    name character varying(100) NOT NULL,
    age_in_my integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
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
    name character varying(100) NOT NULL,
    age_in_my integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
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
-- Name: celestial_catalog celestial_catalog_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog ALTER COLUMN celestial_catalog_id SET DEFAULT nextval('public.celestial_catalog_catalog_id_seq'::regclass);


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
-- Data for Name: celestial_catalog; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_catalog VALUES (1, 1, 1, 1, 1, 'Discovery Alpha');
INSERT INTO public.celestial_catalog VALUES (2, 1, 2, 2, 2, 'Discovery Beta');
INSERT INTO public.celestial_catalog VALUES (3, 2, 3, 3, 3, 'Discovery Gamma');
INSERT INTO public.celestial_catalog VALUES (4, 2, 4, 4, 4, 'Discovery Delta');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10010, false, 'La vecina gigante mas cercana a nosotros.', 2.54);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13600, true, 'Nuestro hogar, una espiral barrada.', 0.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 9000, false, 'La tercera mas grande del Grupo Local.', 3.00);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 12000, false, 'Parece un sombrero mexicano por su nucleo brillante.', 29.35);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 400, false, 'Famosa por su estructura espiral muy definida.', 23.16);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13000, false, 'Una galaxia con un agujero negro supermasivo activo.', 13.05);
INSERT INTO public.galaxy VALUES (7, 'Messier 87', 15000, false, 'Hogar del primer agujero negro fotografiado.', 53.49);
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', 8000, false, 'Una espiral vista de frente, muy estetica.', 20.87);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 4530, false, 'El único satélite natural de la Tierra, responsable de las mareas.', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, false, 'La luna más grande de Marte, condenada a chocar con el planeta en el futuro.', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, false, 'La luna más pequeña y alejada de Marte, parece un asteroide capturado.', 2);
INSERT INTO public.moon VALUES (4, 'Io', 4500, false, 'El cuerpo con mayor actividad volcánica del sistema solar, orbita Júpiter.', 4);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, false, 'Una luna de Júpiter con un océano de agua líquida bajo su corteza de hielo.', 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, false, 'La luna más grande de todo el sistema solar, más grande que Mercurio.', 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, false, 'La segunda luna más grande de Júpiter, con una superficie muy antigua.', 4);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, false, 'La luna más grande de Saturno y la única con una atmósfera densa.', 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, false, 'Famosa por sus géiseres de hielo que expulsan agua al espacio.', 5);
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, false, 'Conocida como la "Estrella de la Muerte" por su enorme cráter Herschel.', 5);
INSERT INTO public.moon VALUES (11, 'Rhea', 4500, false, 'La segunda luna más grande de Saturno, compuesta mayormente de hielo.', 5);
INSERT INTO public.moon VALUES (12, 'Iapetus', 4500, false, 'Tiene un hemisferio muy oscuro y otro muy brillante, como el yin y el yang.', 5);
INSERT INTO public.moon VALUES (13, 'Dione', 4500, false, 'Una luna densa de Saturno con grandes acantilados de hielo.', 5);
INSERT INTO public.moon VALUES (14, 'Tethys', 4500, false, 'Compuesta casi enteramente de hielo de agua pura.', 5);
INSERT INTO public.moon VALUES (15, 'Miranda', 4500, false, 'Tiene la topografía más extraña y variada de todo el sistema solar.', 11);
INSERT INTO public.moon VALUES (16, 'Ariel', 4500, false, 'La luna más brillante de Urano, con superficie relativamente joven.', 11);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4500, false, 'La luna más oscura de Urano, apenas refleja la luz.', 11);
INSERT INTO public.moon VALUES (18, 'Titania', 4500, false, 'La luna más grande de Urano, nombrada por la reina de las hadas.', 11);
INSERT INTO public.moon VALUES (19, 'Oberon', 4500, false, 'La segunda luna más grande de Urano, llena de cráteres de impacto.', 11);
INSERT INTO public.moon VALUES (20, 'Triton', 4500, false, 'La luna gigante de Neptuno que orbita en dirección contraria a la rotación del planeta.', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543, true, 'El único planeta conocido hasta ahora con vida confirmada.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4603, false, 'El planeta rojo, objetivo de futuras exploraciones humanas.', 3);
INSERT INTO public.planet VALUES (3, 'Venus', 4503, false, 'Un mundo con efecto invernadero descontrolado y temperaturas extremas.', 4);
INSERT INTO public.planet VALUES (4, 'Jupiter', 4603, false, 'El gigante gaseoso más grande del sistema solar.', 5);
INSERT INTO public.planet VALUES (5, 'Saturn', 4503, false, 'Famoso por su espectacular sistema de anillos visibles desde la Tierra.', 6);
INSERT INTO public.planet VALUES (6, 'Mercury', 4503, false, 'El planeta más pequeño y cercano al Sol, con temperaturas extremas.', 1);
INSERT INTO public.planet VALUES (7, 'Kepler-452b', 6000, false, 'Conocido como el "primo de la Tierra", orbita una estrella similar al Sol.', 2);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri b', 4850, false, 'El exoplaneta más cercano a nuestro sistema solar, en zona habitable.', 3);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1e', 7600, false, 'Un planeta rocoso del tamaño de la Tierra en el sistema Aquarius.', 4);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 8000, false, 'Un candidato a planeta habitable en la constelación de Libra.', 5);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 5000, false, 'Un posible mundo oceánico ubicado en la zona habitable de su estrella.', 6);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 1000, false, 'Un "Júpiter caliente" que está siendo devorado por su propia estrella.', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 242, false, 'La estrella mas brillante del cielo nocturno, ubicada en Canis Major.', 2);
INSERT INTO public.star VALUES (1, 'Sun', 4600, true, 'La estrella central de nuestro sistema solar, vital para la vida en la Tierra.', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10, false, 'Una supergigante roja en la constelacion de Orion, cerca del final de su vida.', 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4850, false, 'La estrella mas cercana a nuestro sistema solar, una enana roja.', 4);
INSERT INTO public.star VALUES (5, 'Vega', 455, false, 'Una estrella muy joven y brillante, fue la estrella polar hace miles de años.', 5);
INSERT INTO public.star VALUES (6, 'Rigel', 8, false, 'Una supergigante azul muy potente, mucho mas joven que nuestro Sol.', 6);


--
-- Name: celestial_catalog_catalog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_catalog_catalog_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


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
-- Name: celestial_catalog celestial_catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog
    ADD CONSTRAINT celestial_catalog_pkey PRIMARY KEY (celestial_catalog_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: celestial_catalog unique_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog
    ADD CONSTRAINT unique_const UNIQUE (celestial_catalog_id);


--
-- Name: celestial_catalog fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: celestial_catalog fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog
    ADD CONSTRAINT fk_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: celestial_catalog fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: celestial_catalog fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_catalog
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fkgalaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkgalaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fkplanet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkplanet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkstar; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkstar FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

