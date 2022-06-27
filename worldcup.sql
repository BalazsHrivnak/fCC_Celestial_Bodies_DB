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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (257, 2018, 'Final', 210, 211, 4, 2);
INSERT INTO public.games VALUES (258, 2018, 'Third Place', 212, 213, 2, 0);
INSERT INTO public.games VALUES (259, 2018, 'Semi-Final', 211, 213, 2, 1);
INSERT INTO public.games VALUES (260, 2018, 'Semi-Final', 210, 212, 1, 0);
INSERT INTO public.games VALUES (261, 2018, 'Quarter-Final', 211, 214, 3, 2);
INSERT INTO public.games VALUES (262, 2018, 'Quarter-Final', 213, 215, 2, 0);
INSERT INTO public.games VALUES (263, 2018, 'Quarter-Final', 212, 216, 2, 1);
INSERT INTO public.games VALUES (264, 2018, 'Quarter-Final', 210, 217, 2, 0);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 213, 218, 2, 1);
INSERT INTO public.games VALUES (266, 2018, 'Eighth-Final', 215, 219, 1, 0);
INSERT INTO public.games VALUES (267, 2018, 'Eighth-Final', 212, 220, 3, 2);
INSERT INTO public.games VALUES (268, 2018, 'Eighth-Final', 216, 221, 2, 0);
INSERT INTO public.games VALUES (269, 2018, 'Eighth-Final', 211, 222, 2, 1);
INSERT INTO public.games VALUES (270, 2018, 'Eighth-Final', 214, 223, 2, 1);
INSERT INTO public.games VALUES (271, 2018, 'Eighth-Final', 217, 224, 2, 1);
INSERT INTO public.games VALUES (272, 2018, 'Eighth-Final', 210, 225, 4, 3);
INSERT INTO public.games VALUES (273, 2014, 'Final', 226, 225, 1, 0);
INSERT INTO public.games VALUES (274, 2014, 'Third Place', 227, 216, 3, 0);
INSERT INTO public.games VALUES (275, 2014, 'Semi-Final', 225, 227, 1, 0);
INSERT INTO public.games VALUES (276, 2014, 'Semi-Final', 226, 216, 7, 1);
INSERT INTO public.games VALUES (277, 2014, 'Quarter-Final', 227, 228, 1, 0);
INSERT INTO public.games VALUES (278, 2014, 'Quarter-Final', 225, 212, 1, 0);
INSERT INTO public.games VALUES (279, 2014, 'Quarter-Final', 216, 218, 2, 1);
INSERT INTO public.games VALUES (280, 2014, 'Quarter-Final', 226, 210, 1, 0);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 216, 229, 2, 1);
INSERT INTO public.games VALUES (282, 2014, 'Eighth-Final', 218, 217, 2, 0);
INSERT INTO public.games VALUES (283, 2014, 'Eighth-Final', 210, 230, 2, 0);
INSERT INTO public.games VALUES (284, 2014, 'Eighth-Final', 226, 231, 2, 1);
INSERT INTO public.games VALUES (285, 2014, 'Eighth-Final', 227, 221, 2, 1);
INSERT INTO public.games VALUES (286, 2014, 'Eighth-Final', 228, 232, 2, 1);
INSERT INTO public.games VALUES (287, 2014, 'Eighth-Final', 225, 219, 1, 0);
INSERT INTO public.games VALUES (288, 2014, 'Eighth-Final', 212, 233, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (210, 'France');
INSERT INTO public.teams VALUES (211, 'Croatia');
INSERT INTO public.teams VALUES (212, 'Belgium');
INSERT INTO public.teams VALUES (213, 'England');
INSERT INTO public.teams VALUES (214, 'Russia');
INSERT INTO public.teams VALUES (215, 'Sweden');
INSERT INTO public.teams VALUES (216, 'Brazil');
INSERT INTO public.teams VALUES (217, 'Uruguay');
INSERT INTO public.teams VALUES (218, 'Colombia');
INSERT INTO public.teams VALUES (219, 'Switzerland');
INSERT INTO public.teams VALUES (220, 'Japan');
INSERT INTO public.teams VALUES (221, 'Mexico');
INSERT INTO public.teams VALUES (222, 'Denmark');
INSERT INTO public.teams VALUES (223, 'Spain');
INSERT INTO public.teams VALUES (224, 'Portugal');
INSERT INTO public.teams VALUES (225, 'Argentina');
INSERT INTO public.teams VALUES (226, 'Germany');
INSERT INTO public.teams VALUES (227, 'Netherlands');
INSERT INTO public.teams VALUES (228, 'Costa Rica');
INSERT INTO public.teams VALUES (229, 'Chile');
INSERT INTO public.teams VALUES (230, 'Nigeria');
INSERT INTO public.teams VALUES (231, 'Algeria');
INSERT INTO public.teams VALUES (232, 'Greece');
INSERT INTO public.teams VALUES (233, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 288, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 233, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

