--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO c2g;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO c2g;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO c2g;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO c2g;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO c2g;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO c2g;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO c2g;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO c2g;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO c2g;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO c2g;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO c2g;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO c2g;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: core_news; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_news (
    id integer NOT NULL,
    title text NOT NULL,
    message text NOT NULL,
    media character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    sport_id integer
);


ALTER TABLE public.core_news OWNER TO c2g;

--
-- Name: core_news_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_news_id_seq OWNER TO c2g;

--
-- Name: core_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_news_id_seq OWNED BY public.core_news.id;


--
-- Name: core_news_tags; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_news_tags (
    id integer NOT NULL,
    news_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.core_news_tags OWNER TO c2g;

--
-- Name: core_news_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_news_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_news_tags_id_seq OWNER TO c2g;

--
-- Name: core_news_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_news_tags_id_seq OWNED BY public.core_news_tags.id;


--
-- Name: core_reaction; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_reaction (
    id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    news_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_reaction OWNER TO c2g;

--
-- Name: core_reaction_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_reaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_reaction_id_seq OWNER TO c2g;

--
-- Name: core_reaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_reaction_id_seq OWNED BY public.core_reaction.id;


--
-- Name: core_sport; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_sport (
    id integer NOT NULL,
    title text NOT NULL,
    slug text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.core_sport OWNER TO c2g;

--
-- Name: core_sport_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_sport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_sport_id_seq OWNER TO c2g;

--
-- Name: core_sport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_sport_id_seq OWNED BY public.core_sport.id;


--
-- Name: core_tag; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_tag (
    id integer NOT NULL,
    title text NOT NULL,
    slug text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.core_tag OWNER TO c2g;

--
-- Name: core_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_tag_id_seq OWNER TO c2g;

--
-- Name: core_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_tag_id_seq OWNED BY public.core_tag.id;


--
-- Name: core_user; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_user (
    id integer NOT NULL,
    username text NOT NULL,
    twitter_id text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.core_user OWNER TO c2g;

--
-- Name: core_user_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_id_seq OWNER TO c2g;

--
-- Name: core_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_user_id_seq OWNED BY public.core_user.id;


--
-- Name: core_usergroup; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_usergroup (
    id integer NOT NULL,
    title text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.core_usergroup OWNER TO c2g;

--
-- Name: core_usergroup_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_usergroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_usergroup_id_seq OWNER TO c2g;

--
-- Name: core_usergroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_usergroup_id_seq OWNED BY public.core_usergroup.id;


--
-- Name: core_usergroup_user; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.core_usergroup_user (
    id integer NOT NULL,
    usergroup_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_usergroup_user OWNER TO c2g;

--
-- Name: core_usergroup_user_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.core_usergroup_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_usergroup_user_id_seq OWNER TO c2g;

--
-- Name: core_usergroup_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.core_usergroup_user_id_seq OWNED BY public.core_usergroup_user.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO c2g;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO c2g;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO c2g;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO c2g;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO c2g;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: c2g
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO c2g;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: c2g
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: c2g
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO c2g;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: core_news id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news ALTER COLUMN id SET DEFAULT nextval('public.core_news_id_seq'::regclass);


--
-- Name: core_news_tags id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news_tags ALTER COLUMN id SET DEFAULT nextval('public.core_news_tags_id_seq'::regclass);


--
-- Name: core_reaction id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_reaction ALTER COLUMN id SET DEFAULT nextval('public.core_reaction_id_seq'::regclass);


--
-- Name: core_sport id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_sport ALTER COLUMN id SET DEFAULT nextval('public.core_sport_id_seq'::regclass);


--
-- Name: core_tag id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_tag ALTER COLUMN id SET DEFAULT nextval('public.core_tag_id_seq'::regclass);


--
-- Name: core_user id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_user ALTER COLUMN id SET DEFAULT nextval('public.core_user_id_seq'::regclass);


--
-- Name: core_usergroup id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup ALTER COLUMN id SET DEFAULT nextval('public.core_usergroup_id_seq'::regclass);


--
-- Name: core_usergroup_user id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup_user ALTER COLUMN id SET DEFAULT nextval('public.core_usergroup_user_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add tag	7	add_tag
26	Can change tag	7	change_tag
27	Can delete tag	7	delete_tag
28	Can view tag	7	view_tag
29	Can add user group	8	add_usergroup
30	Can change user group	8	change_usergroup
31	Can delete user group	8	delete_usergroup
32	Can view user group	8	view_usergroup
33	Can add reaction	9	add_reaction
34	Can change reaction	9	change_reaction
35	Can delete reaction	9	delete_reaction
36	Can view reaction	9	view_reaction
37	Can add user	10	add_user
38	Can change user	10	change_user
39	Can delete user	10	delete_user
40	Can view user	10	view_user
41	Can add news	11	add_news
42	Can change news	11	change_news
43	Can delete news	11	delete_news
44	Can view news	11	view_news
45	Can add sport	12	add_sport
46	Can change sport	12	change_sport
47	Can delete sport	12	delete_sport
48	Can view sport	12	view_sport
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$Elrcmj1Bu8Ak$p6bgMljLS6Tlp6AuP34ZKxKKm3Zs/KBqrO70TOkRJLk=	2019-03-30 17:28:04.064342+00	t	c2g			walttonm@gmail.com	t	t	2019-03-30 15:22:41.976901+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: core_news; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_news (id, title, message, media, created_at, sport_id) FROM stdin;
1	Cristiano Ronaldo is the new DAZN Ambassor	Cristiano Ronaldo is the new DAZN Ambassor	http://www.performgroup.com/news-and-insights/dazn-announces-cristiano-ronaldo-first-global-ambassador/	2019-03-30 17:31:03.189135+00	1
\.


--
-- Data for Name: core_news_tags; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_news_tags (id, news_id, tag_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- Data for Name: core_reaction; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_reaction (id, message, created_at, news_id, user_id) FROM stdin;
\.


--
-- Data for Name: core_sport; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_sport (id, title, slug, created_at) FROM stdin;
1	Soccer	Soccer	2019-03-30 17:42:06.224539+00
\.


--
-- Data for Name: core_tag; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_tag (id, title, slug, created_at) FROM stdin;
1	soccer	soccer	2019-03-30 17:29:20.956071+00
2	dazn	dazn	2019-03-30 17:30:34.755082+00
\.


--
-- Data for Name: core_user; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_user (id, username, twitter_id, created_at) FROM stdin;
1	Waltton	waltton	2019-03-30 18:41:30.163041+00
2	Natacha	natacha	2019-03-30 18:41:46.242685+00
3	Fernanda	fernanda	2019-03-30 18:43:03.078028+00
4	Lucas	lucas	2019-03-30 18:43:15.595056+00
\.


--
-- Data for Name: core_usergroup; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_usergroup (id, title, created_at) FROM stdin;
\.


--
-- Data for Name: core_usergroup_user; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.core_usergroup_user (id, usergroup_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-03-30 17:29:20.958031+00	1	Tag object (1)	1	[{"added": {}}]	7	1
2	2019-03-30 17:30:34.756575+00	2	Tag object (2)	1	[{"added": {}}]	7	1
3	2019-03-30 17:31:03.190542+00	1	News object (1)	1	[{"added": {}}]	11	1
4	2019-03-30 17:42:06.225877+00	1	Sport object (1)	1	[{"added": {}}]	12	1
5	2019-03-30 17:42:35.115214+00	1	#1: Cristiano Ronaldo is the new DAZN Ambassor	2	[{"changed": {"fields": ["sport", "tags"]}}]	11	1
6	2019-03-30 18:41:30.164377+00	1	#1: User1	1	[{"added": {}}]	10	1
7	2019-03-30 18:41:46.244059+00	2	#2: User2	1	[{"added": {}}]	10	1
8	2019-03-30 18:42:40.084598+00	1	#1: Waltton	2	[{"changed": {"fields": ["username", "twitter_id"]}}]	10	1
9	2019-03-30 18:42:52.487863+00	2	#2: Natacha	2	[{"changed": {"fields": ["username", "twitter_id"]}}]	10	1
10	2019-03-30 18:43:03.079403+00	3	#3: Fernanda	1	[{"added": {}}]	10	1
11	2019-03-30 18:43:15.596425+00	4	#4: Lucas	1	[{"added": {}}]	10	1
12	2019-03-30 18:43:29.00923+00	4	#4: Lucas	2	[]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	tag
8	core	usergroup
9	core	reaction
10	core	user
11	core	news
12	core	sport
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-30 15:03:14.362495+00
2	auth	0001_initial	2019-03-30 15:03:18.79532+00
3	admin	0001_initial	2019-03-30 15:03:20.324599+00
4	admin	0002_logentry_remove_auto_add	2019-03-30 15:03:20.896893+00
5	admin	0003_logentry_add_action_flag_choices	2019-03-30 15:03:21.460764+00
6	contenttypes	0002_remove_content_type_name	2019-03-30 15:03:22.575934+00
7	auth	0002_alter_permission_name_max_length	2019-03-30 15:03:23.533695+00
8	auth	0003_alter_user_email_max_length	2019-03-30 15:03:24.495426+00
9	auth	0004_alter_user_username_opts	2019-03-30 15:03:25.052344+00
10	auth	0005_alter_user_last_login_null	2019-03-30 15:03:26.071088+00
11	auth	0006_require_contenttypes_0002	2019-03-30 15:03:26.616048+00
12	auth	0007_alter_validators_add_error_messages	2019-03-30 15:03:27.17549+00
13	auth	0008_alter_user_username_max_length	2019-03-30 15:03:28.152281+00
14	auth	0009_alter_user_last_name_max_length	2019-03-30 15:03:29.114435+00
15	sessions	0001_initial	2019-03-30 15:03:30.404675+00
16	core	0001_initial	2019-03-30 15:21:38.356993+00
17	core	0002_auto_20190330_1733	2019-03-30 17:33:51.749957+00
18	core	0003_remove_news_tags	2019-03-30 17:38:13.578746+00
19	core	0004_news_tags	2019-03-30 17:38:15.245859+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: c2g
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ro8xibqeorws85ds78v2zfgg42t7erk3	MTQ3ODFhMTQ3ZWYxNzBiZmY3OGY5ZGM1YjIxY2EwYjg1MGQ1YTQxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNGQ2N2U4ZWUzNmQzMzAzYWM1MmE0ZmM1NTY2ZDE3ZGQxNWI3OWVjIn0=	2019-04-13 15:25:57.329693+00
inkhglzzedql4l8zaky5xl9rgvhh63ji	MTQ3ODFhMTQ3ZWYxNzBiZmY3OGY5ZGM1YjIxY2EwYjg1MGQ1YTQxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNGQ2N2U4ZWUzNmQzMzAzYWM1MmE0ZmM1NTY2ZDE3ZGQxNWI3OWVjIn0=	2019-04-13 16:22:03.095831+00
72n8p9z55psot43nr85olmscgjys0rb7	MTQ3ODFhMTQ3ZWYxNzBiZmY3OGY5ZGM1YjIxY2EwYjg1MGQ1YTQxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNGQ2N2U4ZWUzNmQzMzAzYWM1MmE0ZmM1NTY2ZDE3ZGQxNWI3OWVjIn0=	2019-04-13 16:34:12.252699+00
uj39p2bgn4ea7mhk7f3awwxsqcol040a	MTQ3ODFhMTQ3ZWYxNzBiZmY3OGY5ZGM1YjIxY2EwYjg1MGQ1YTQxMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNGQ2N2U4ZWUzNmQzMzAzYWM1MmE0ZmM1NTY2ZDE3ZGQxNWI3OWVjIn0=	2019-04-13 17:28:04.067697+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_news_id_seq', 1, true);


--
-- Name: core_news_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_news_tags_id_seq', 2, true);


--
-- Name: core_reaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_reaction_id_seq', 1, false);


--
-- Name: core_sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_sport_id_seq', 1, true);


--
-- Name: core_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_tag_id_seq', 2, true);


--
-- Name: core_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_user_id_seq', 4, true);


--
-- Name: core_usergroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_usergroup_id_seq', 1, false);


--
-- Name: core_usergroup_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.core_usergroup_user_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 12, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: c2g
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: core_news core_news_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news
    ADD CONSTRAINT core_news_pkey PRIMARY KEY (id);


--
-- Name: core_news_tags core_news_tags_news_id_tag_id_799998f0_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news_tags
    ADD CONSTRAINT core_news_tags_news_id_tag_id_799998f0_uniq UNIQUE (news_id, tag_id);


--
-- Name: core_news_tags core_news_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news_tags
    ADD CONSTRAINT core_news_tags_pkey PRIMARY KEY (id);


--
-- Name: core_reaction core_reaction_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_reaction
    ADD CONSTRAINT core_reaction_pkey PRIMARY KEY (id);


--
-- Name: core_sport core_sport_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_sport
    ADD CONSTRAINT core_sport_pkey PRIMARY KEY (id);


--
-- Name: core_tag core_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_tag
    ADD CONSTRAINT core_tag_pkey PRIMARY KEY (id);


--
-- Name: core_user core_user_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);


--
-- Name: core_usergroup core_usergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup
    ADD CONSTRAINT core_usergroup_pkey PRIMARY KEY (id);


--
-- Name: core_usergroup_user core_usergroup_user_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup_user
    ADD CONSTRAINT core_usergroup_user_pkey PRIMARY KEY (id);


--
-- Name: core_usergroup_user core_usergroup_user_usergroup_id_user_id_58c353f4_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup_user
    ADD CONSTRAINT core_usergroup_user_usergroup_id_user_id_58c353f4_uniq UNIQUE (usergroup_id, user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: core_news_sport_id_a8f3a754; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_news_sport_id_a8f3a754 ON public.core_news USING btree (sport_id);


--
-- Name: core_news_tags_news_id_717b2587; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_news_tags_news_id_717b2587 ON public.core_news_tags USING btree (news_id);


--
-- Name: core_news_tags_tag_id_dba9d880; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_news_tags_tag_id_dba9d880 ON public.core_news_tags USING btree (tag_id);


--
-- Name: core_reaction_news_id_b790c1e9; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_reaction_news_id_b790c1e9 ON public.core_reaction USING btree (news_id);


--
-- Name: core_reaction_user_id_968339ea; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_reaction_user_id_968339ea ON public.core_reaction USING btree (user_id);


--
-- Name: core_usergroup_user_user_id_74dc9b55; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_usergroup_user_user_id_74dc9b55 ON public.core_usergroup_user USING btree (user_id);


--
-- Name: core_usergroup_user_usergroup_id_2c0cee39; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX core_usergroup_user_usergroup_id_2c0cee39 ON public.core_usergroup_user USING btree (usergroup_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: c2g
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_news core_news_sport_id_a8f3a754_fk_core_sport_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news
    ADD CONSTRAINT core_news_sport_id_a8f3a754_fk_core_sport_id FOREIGN KEY (sport_id) REFERENCES public.core_sport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_news_tags core_news_tags_news_id_717b2587_fk_core_news_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news_tags
    ADD CONSTRAINT core_news_tags_news_id_717b2587_fk_core_news_id FOREIGN KEY (news_id) REFERENCES public.core_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_news_tags core_news_tags_tag_id_dba9d880_fk_core_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_news_tags
    ADD CONSTRAINT core_news_tags_tag_id_dba9d880_fk_core_tag_id FOREIGN KEY (tag_id) REFERENCES public.core_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_reaction core_reaction_news_id_b790c1e9_fk_core_news_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_reaction
    ADD CONSTRAINT core_reaction_news_id_b790c1e9_fk_core_news_id FOREIGN KEY (news_id) REFERENCES public.core_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_reaction core_reaction_user_id_968339ea_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_reaction
    ADD CONSTRAINT core_reaction_user_id_968339ea_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_usergroup_user core_usergroup_user_user_id_74dc9b55_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup_user
    ADD CONSTRAINT core_usergroup_user_user_id_74dc9b55_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_usergroup_user core_usergroup_user_usergroup_id_2c0cee39_fk_core_usergroup_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.core_usergroup_user
    ADD CONSTRAINT core_usergroup_user_usergroup_id_2c0cee39_fk_core_usergroup_id FOREIGN KEY (usergroup_id) REFERENCES public.core_usergroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: c2g
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: c2g
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO c2g;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

