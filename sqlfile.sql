--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO myprojectuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO myprojectuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO myprojectuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO myprojectuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO myprojectuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO myprojectuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO myprojectuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO myprojectuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO myprojectuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO myprojectuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO myprojectuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO myprojectuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO myprojectuser;

--
-- Name: student_management_app_admin; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_admin (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    admin_id bigint NOT NULL
);


ALTER TABLE public.student_management_app_admin OWNER TO myprojectuser;

--
-- Name: student_management_app_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_admin_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_admin_id_seq OWNED BY public.student_management_app_admin.id;


--
-- Name: student_management_app_aithsh; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_aithsh (
    id integer NOT NULL,
    studies character varying(255) NOT NULL,
    experience character varying(255) NOT NULL,
    scholarships character varying(255) NOT NULL,
    communication character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    student_id_id integer NOT NULL
);


ALTER TABLE public.student_management_app_aithsh OWNER TO myprojectuser;

--
-- Name: student_management_app_aithsh_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_aithsh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_aithsh_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_aithsh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_aithsh_id_seq OWNED BY public.student_management_app_aithsh.id;


--
-- Name: student_management_app_courses; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_courses (
    id integer NOT NULL,
    course_name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.student_management_app_courses OWNER TO myprojectuser;

--
-- Name: student_management_app_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_courses_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_courses_id_seq OWNED BY public.student_management_app_courses.id;


--
-- Name: student_management_app_customuser; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    user_type character varying(10) NOT NULL
);


ALTER TABLE public.student_management_app_customuser OWNER TO myprojectuser;

--
-- Name: student_management_app_customuser_groups; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.student_management_app_customuser_groups OWNER TO myprojectuser;

--
-- Name: student_management_app_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_customuser_groups_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_customuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_customuser_groups_id_seq OWNED BY public.student_management_app_customuser_groups.id;


--
-- Name: student_management_app_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_customuser_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_customuser_id_seq OWNED BY public.student_management_app_customuser.id;


--
-- Name: student_management_app_customuser_user_permissions; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.student_management_app_customuser_user_permissions OWNER TO myprojectuser;

--
-- Name: student_management_app_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_customuser_user_permissions_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_customuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_customuser_user_permissions_id_seq OWNED BY public.student_management_app_customuser_user_permissions.id;


--
-- Name: student_management_app_notificationstaff; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_notificationstaff (
    id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    "Staff_id_id" integer NOT NULL
);


ALTER TABLE public.student_management_app_notificationstaff OWNER TO myprojectuser;

--
-- Name: student_management_app_notificationstaff_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_notificationstaff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_notificationstaff_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_notificationstaff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_notificationstaff_id_seq OWNED BY public.student_management_app_notificationstaff.id;


--
-- Name: student_management_app_notificationstudent; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_notificationstudent (
    id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    student_id_id integer NOT NULL
);


ALTER TABLE public.student_management_app_notificationstudent OWNER TO myprojectuser;

--
-- Name: student_management_app_notificationstudent_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_notificationstudent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_notificationstudent_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_notificationstudent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_notificationstudent_id_seq OWNED BY public.student_management_app_notificationstudent.id;


--
-- Name: student_management_app_staffs; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_staffs (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    admin_id bigint NOT NULL
);


ALTER TABLE public.student_management_app_staffs OWNER TO myprojectuser;

--
-- Name: student_management_app_staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_staffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_staffs_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_staffs_id_seq OWNED BY public.student_management_app_staffs.id;


--
-- Name: student_management_app_students; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_students (
    id integer NOT NULL,
    gender character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    admin_id bigint NOT NULL,
    course_id_id integer NOT NULL
);


ALTER TABLE public.student_management_app_students OWNER TO myprojectuser;

--
-- Name: student_management_app_students_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_students_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_students_id_seq OWNED BY public.student_management_app_students.id;


--
-- Name: student_management_app_subjects; Type: TABLE; Schema: public; Owner: myprojectuser
--

CREATE TABLE public.student_management_app_subjects (
    id integer NOT NULL,
    subject_name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    course_id_id integer NOT NULL
);


ALTER TABLE public.student_management_app_subjects OWNER TO myprojectuser;

--
-- Name: student_management_app_subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: myprojectuser
--

CREATE SEQUENCE public.student_management_app_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_management_app_subjects_id_seq OWNER TO myprojectuser;

--
-- Name: student_management_app_subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myprojectuser
--

ALTER SEQUENCE public.student_management_app_subjects_id_seq OWNED BY public.student_management_app_subjects.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: student_management_app_admin id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_admin ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_admin_id_seq'::regclass);


--
-- Name: student_management_app_aithsh id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_aithsh ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_aithsh_id_seq'::regclass);


--
-- Name: student_management_app_courses id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_courses ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_courses_id_seq'::regclass);


--
-- Name: student_management_app_customuser id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_customuser_id_seq'::regclass);


--
-- Name: student_management_app_customuser_groups id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_customuser_groups_id_seq'::regclass);


--
-- Name: student_management_app_customuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_customuser_user_permissions_id_seq'::regclass);


--
-- Name: student_management_app_notificationstaff id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_notificationstaff ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_notificationstaff_id_seq'::regclass);


--
-- Name: student_management_app_notificationstudent id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_notificationstudent ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_notificationstudent_id_seq'::regclass);


--
-- Name: student_management_app_staffs id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_staffs ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_staffs_id_seq'::regclass);


--
-- Name: student_management_app_students id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_students ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_students_id_seq'::regclass);


--
-- Name: student_management_app_subjects id; Type: DEFAULT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_subjects ALTER COLUMN id SET DEFAULT nextval('public.student_management_app_subjects_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: myprojectuser
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_customuser
22	Can change user	6	change_customuser
23	Can delete user	6	delete_customuser
24	Can view user	6	view_customuser
25	Can add courses	7	add_courses
26	Can change courses	7	change_courses
27	Can delete courses	7	delete_courses
28	Can view courses	7	view_courses
29	Can add subjects	8	add_subjects
30	Can change subjects	8	change_subjects
31	Can delete subjects	8	delete_subjects
32	Can view subjects	8	view_subjects
33	Can add students	9	add_students
34	Can change students	9	change_students
35	Can delete students	9	delete_students
36	Can view students	9	view_students
37	Can add staffs	10	add_staffs
38	Can change staffs	10	change_staffs
39	Can delete staffs	10	delete_staffs
40	Can view staffs	10	view_staffs
41	Can add notification student	11	add_notificationstudent
42	Can change notification student	11	change_notificationstudent
43	Can delete notification student	11	delete_notificationstudent
44	Can view notification student	11	view_notificationstudent
45	Can add notification staff	12	add_notificationstaff
46	Can change notification staff	12	change_notificationstaff
47	Can delete notification staff	12	delete_notificationstaff
48	Can view notification staff	12	view_notificationstaff
49	Can add aithsh	13	add_aithsh
50	Can change aithsh	13	change_aithsh
51	Can delete aithsh	13	delete_aithsh
52	Can view aithsh	13	view_aithsh
53	Can add admin	14	add_admin
54	Can change admin	14	change_admin
55	Can delete admin	14	delete_admin
56	Can view admin	14	view_admin
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	student_management_app	customuser
7	student_management_app	courses
8	student_management_app	subjects
9	student_management_app	students
10	student_management_app	staffs
11	student_management_app	notificationstudent
12	student_management_app	notificationstaff
13	student_management_app	aithsh
14	student_management_app	admin
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-05-31 16:57:38.850211+00
2	contenttypes	0002_remove_content_type_name	2022-05-31 17:13:29.155668+00
3	auth	0001_initial	2022-05-31 17:13:29.838784+00
4	auth	0002_alter_permission_name_max_length	2022-05-31 17:13:29.852301+00
5	auth	0003_alter_user_email_max_length	2022-05-31 17:13:29.869256+00
6	auth	0004_alter_user_username_opts	2022-05-31 17:13:29.885919+00
7	auth	0005_alter_user_last_login_null	2022-05-31 17:13:29.90276+00
8	auth	0006_require_contenttypes_0002	2022-05-31 17:13:29.913916+00
9	auth	0007_alter_validators_add_error_messages	2022-05-31 17:13:29.927975+00
10	auth	0008_alter_user_username_max_length	2022-05-31 17:13:29.946042+00
11	auth	0009_alter_user_last_name_max_length	2022-05-31 17:13:29.962875+00
12	auth	0010_alter_group_name_max_length	2022-05-31 17:13:30.009957+00
13	auth	0011_update_proxy_permissions	2022-05-31 17:13:30.044777+00
14	auth	0012_alter_user_first_name_max_length	2022-05-31 17:13:30.062341+00
15	student_management_app	0001_initial	2022-05-31 17:13:31.837445+00
16	admin	0001_initial	2022-05-31 17:13:32.087161+00
17	admin	0002_logentry_remove_auto_add	2022-05-31 17:13:32.112018+00
18	admin	0003_logentry_add_action_flag_choices	2022-05-31 17:13:32.186972+00
19	sessions	0001_initial	2022-05-31 17:13:32.479019+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
srssshbpniq0rjnwhkvt28p0f8rmbwy3	e30:1nw5tB:1Biluo8Ch90o86rCGieQzcv-Lj-oF98V8V3bDy_zyx8	2022-06-14 17:42:41.634481+00
6s0v4rli7e174dzrfjekutthhzp7lil2	e30:1nw5tt:56CtCa7hU5ULt3u5zh0h1cZCcvKUgO5x6bpq9VSIqdk	2022-06-14 17:43:25.573726+00
9cnx2vn0brozu5d8lveazhxf6rn572ev	.eJxVjMEKwyAQRP_FcylajSs9FvIdsrsuNbRKaPQU-u81t-Y2b2Z4u4rYW459k09ckrorqy7_HSG_pB7D1nqS2mLBik8pR8R1vc4Fl_djvOaaTnD2ZNzykAgAEQTnbAqEYhnF6RC8ZxHjCfjGlsGNdiKPg3kyqJkNgCWNWn1_4mc7bA:1nw5un:GlH9b6ISS9Rx7jftn4i39ik2GS9zcbBNRK8rECGzQAg	2022-06-14 17:44:21.651036+00
17yx5hn6ru5vzjdutlk171ovq8lmkign	e30:1nw7Pf:EdaVl9yjPYrZfWoNxjSQwDDcR3MHc-tJbGPq7jmnHf8	2022-06-14 19:20:19.050434+00
\.


--
-- Data for Name: student_management_app_admin; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_admin (id, created_at, updated_at, admin_id) FROM stdin;
1	2022-05-31 17:16:20.943279+00	2022-05-31 17:16:20.943307+00	1
\.


--
-- Data for Name: student_management_app_aithsh; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_aithsh (id, studies, experience, scholarships, communication, status, created_at, updated_at, student_id_id) FROM stdin;
1	test studies	test experience	test scholarishisp	666666666	Pass	2022-05-31 19:16:29.682847+00	2022-05-31 19:16:29.682875+00	1
2	test studies2	test experience2	test scholarishisp2	666666666	Reject	2022-05-31 19:17:40.458167+00	2022-05-31 19:17:40.458194+00	1
\.


--
-- Data for Name: student_management_app_courses; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_courses (id, course_name, created_at, updated_at) FROM stdin;
1	number111	2022-05-31 17:39:06.878238+00	2022-05-31 17:39:06.878263+00
2	number222	2022-05-31 17:49:23.737209+00	2022-05-31 17:49:23.737237+00
3	number222	2022-05-31 18:23:55.192796+00	2022-05-31 18:23:55.192827+00
4	sdsdfsdf	2022-05-31 18:24:04.800135+00	2022-05-31 18:24:04.800163+00
5	testcourse	2022-05-31 18:51:23.306908+00	2022-05-31 18:51:23.306937+00
\.


--
-- Data for Name: student_management_app_customuser; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) FROM stdin;
9	pbkdf2_sha256$260000$xHoMMxXt22KaGm3UGJ00Eo$LJg7UHWX15BbcR4Ya6cwqRHM/CGcphm87AnmFAUy+sA=	2022-05-31 19:21:28.024949+00	f	teacher	teacher	test	teacher@hua.gr	f	t	2022-05-31 19:20:59.775159+00	2
2	pbkdf2_sha256$260000$bBHfLOFCWDlUZXCAHMscB8$lbO3XqxzAN7dN0Li+BIotWIZVDlpfB9CRodL4+nmcZA=	\N	f	MarkHenry	Mark	Henry	Henry@hua.gr	f	t	2022-05-31 17:39:57.550593+00	2
5	pbkdf2_sha256$260000$Vk8A12kwFw0tBuKFkPVv4c$JL0N2eMZqKYNOqD3pzM/c6pZ9ePIAgoe7iwUj9jvvC4=	\N	f	1	1	1	Henry@hua.gr	f	t	2022-05-31 18:04:15.264945+00	3
6	pbkdf2_sha256$260000$YMFJDIRbFIIHSddmvfRjA3$p+3Uyv6fXRfqC7yUSFNRnttkJKCkpLUTdRm8PBWsMl4=	\N	f	test	test	test	test@hua.gr	f	t	2022-05-31 18:49:32.838135+00	2
7	pbkdf2_sha256$260000$T6njOsAEk3200rycBH29Mu$l1eBX+uEc9+REaDPK1s65Lw2W9cW7bCExqtPPQQSsKY=	\N	f	test2	test2	test2	test2@hua.gr	f	t	2022-05-31 18:49:59.190591+00	2
8	pbkdf2_sha256$260000$Yen7S3Rp3sZW7ruJAY6suf$rGfYB6lS3IZ9jxm6HEWYse/cZHMU6Hv8q7R3oktBBv0=	\N	f	test3	test3	test3	test3@hua.gr	f	t	2022-05-31 18:51:09.94401+00	3
3	pbkdf2_sha256$260000$3nUVebTpgqmGdXEROZeBkk$5TvQM5Ax325ZBbCltQcrPuu8pnFQFikU7swHgQSAMi8=	2022-05-31 19:20:19.068222+00	f	Papalouie	papa	Louie	papa@hua.gr	f	t	2022-05-31 17:41:59.822886+00	3
1	pbkdf2_sha256$260000$TeOnYYPw3x4TxWfgKQOOY6$hVMwhtAG+dq5KdwFx34TzlgKw3FT95gWyirv8NV1idc=	2022-05-31 19:20:28.617833+00	t	admin			admin@hua.gr	t	t	2022-05-31 17:16:20.652315+00	1
\.


--
-- Data for Name: student_management_app_customuser_groups; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: student_management_app_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: student_management_app_notificationstaff; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_notificationstaff (id, message, created_at, updated_at, "Staff_id_id") FROM stdin;
\.


--
-- Data for Name: student_management_app_notificationstudent; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_notificationstudent (id, message, created_at, updated_at, student_id_id) FROM stdin;
\.


--
-- Data for Name: student_management_app_staffs; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_staffs (id, created_at, updated_at, admin_id) FROM stdin;
1	2022-05-31 17:39:57.840392+00	2022-05-31 17:39:57.840422+00	2
2	2022-05-31 18:49:33.143002+00	2022-05-31 18:49:33.143035+00	6
3	2022-05-31 18:49:59.475425+00	2022-05-31 18:49:59.475452+00	7
4	2022-05-31 19:21:00.058926+00	2022-05-31 19:21:00.058958+00	9
\.


--
-- Data for Name: student_management_app_students; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_students (id, gender, created_at, updated_at, admin_id, course_id_id) FROM stdin;
1	Male	2022-05-31 17:42:00.113858+00	2022-05-31 17:42:00.113884+00	3	1
2	Male	2022-05-31 18:04:15.584413+00	2022-05-31 18:04:15.584444+00	5	1
3	Male	2022-05-31 18:51:10.250506+00	2022-05-31 18:51:10.250531+00	8	1
\.


--
-- Data for Name: student_management_app_subjects; Type: TABLE DATA; Schema: public; Owner: myprojectuser
--

COPY public.student_management_app_subjects (id, subject_name, created_at, updated_at, course_id_id) FROM stdin;
1	sub111	2022-05-31 17:39:19.878445+00	2022-05-31 17:39:19.87847+00	1
2	sub1	2022-05-31 18:03:24.922863+00	2022-05-31 18:03:24.922889+00	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: student_management_app_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_admin_id_seq', 1, true);


--
-- Name: student_management_app_aithsh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_aithsh_id_seq', 2, true);


--
-- Name: student_management_app_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_courses_id_seq', 5, true);


--
-- Name: student_management_app_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_customuser_groups_id_seq', 1, false);


--
-- Name: student_management_app_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_customuser_id_seq', 9, true);


--
-- Name: student_management_app_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_customuser_user_permissions_id_seq', 1, false);


--
-- Name: student_management_app_notificationstaff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_notificationstaff_id_seq', 1, false);


--
-- Name: student_management_app_notificationstudent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_notificationstudent_id_seq', 1, false);


--
-- Name: student_management_app_staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_staffs_id_seq', 4, true);


--
-- Name: student_management_app_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_students_id_seq', 3, true);


--
-- Name: student_management_app_subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myprojectuser
--

SELECT pg_catalog.setval('public.student_management_app_subjects_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: student_management_app_admin student_management_app_admin_admin_id_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_admin
    ADD CONSTRAINT student_management_app_admin_admin_id_key UNIQUE (admin_id);


--
-- Name: student_management_app_admin student_management_app_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_admin
    ADD CONSTRAINT student_management_app_admin_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_aithsh student_management_app_aithsh_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_aithsh
    ADD CONSTRAINT student_management_app_aithsh_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_customuser_groups student_management_app_c_customuser_id_group_id_d872a780_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_groups
    ADD CONSTRAINT student_management_app_c_customuser_id_group_id_d872a780_uniq UNIQUE (customuser_id, group_id);


--
-- Name: student_management_app_customuser_user_permissions student_management_app_c_customuser_id_permission_af9a6989_uniq; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_user_permissions
    ADD CONSTRAINT student_management_app_c_customuser_id_permission_af9a6989_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: student_management_app_courses student_management_app_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_courses
    ADD CONSTRAINT student_management_app_courses_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_customuser_groups student_management_app_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_groups
    ADD CONSTRAINT student_management_app_customuser_groups_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_customuser student_management_app_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser
    ADD CONSTRAINT student_management_app_customuser_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_customuser_user_permissions student_management_app_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_user_permissions
    ADD CONSTRAINT student_management_app_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_customuser student_management_app_customuser_username_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser
    ADD CONSTRAINT student_management_app_customuser_username_key UNIQUE (username);


--
-- Name: student_management_app_notificationstaff student_management_app_notificationstaff_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_notificationstaff
    ADD CONSTRAINT student_management_app_notificationstaff_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_notificationstudent student_management_app_notificationstudent_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_notificationstudent
    ADD CONSTRAINT student_management_app_notificationstudent_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_staffs student_management_app_staffs_admin_id_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_staffs
    ADD CONSTRAINT student_management_app_staffs_admin_id_key UNIQUE (admin_id);


--
-- Name: student_management_app_staffs student_management_app_staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_staffs
    ADD CONSTRAINT student_management_app_staffs_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_students student_management_app_students_admin_id_key; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_students
    ADD CONSTRAINT student_management_app_students_admin_id_key UNIQUE (admin_id);


--
-- Name: student_management_app_students student_management_app_students_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_students
    ADD CONSTRAINT student_management_app_students_pkey PRIMARY KEY (id);


--
-- Name: student_management_app_subjects student_management_app_subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_subjects
    ADD CONSTRAINT student_management_app_subjects_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: student_management_app_aithsh_student_id_id_a97626b5; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_aithsh_student_id_id_a97626b5 ON public.student_management_app_aithsh USING btree (student_id_id);


--
-- Name: student_management_app_cus_customuser_id_41a474d7; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_cus_customuser_id_41a474d7 ON public.student_management_app_customuser_user_permissions USING btree (customuser_id);


--
-- Name: student_management_app_cus_permission_id_cd344297; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_cus_permission_id_cd344297 ON public.student_management_app_customuser_user_permissions USING btree (permission_id);


--
-- Name: student_management_app_customuser_groups_customuser_id_1e347552; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_customuser_groups_customuser_id_1e347552 ON public.student_management_app_customuser_groups USING btree (customuser_id);


--
-- Name: student_management_app_customuser_groups_group_id_61accfd6; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_customuser_groups_group_id_61accfd6 ON public.student_management_app_customuser_groups USING btree (group_id);


--
-- Name: student_management_app_customuser_username_f11121e5_like; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_customuser_username_f11121e5_like ON public.student_management_app_customuser USING btree (username varchar_pattern_ops);


--
-- Name: student_management_app_not_student_id_id_f8c05ed7; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_not_student_id_id_f8c05ed7 ON public.student_management_app_notificationstudent USING btree (student_id_id);


--
-- Name: student_management_app_notificationstaff_Staff_id_id_740caeb0; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX "student_management_app_notificationstaff_Staff_id_id_740caeb0" ON public.student_management_app_notificationstaff USING btree ("Staff_id_id");


--
-- Name: student_management_app_students_course_id_id_fcd09bed; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_students_course_id_id_fcd09bed ON public.student_management_app_students USING btree (course_id_id);


--
-- Name: student_management_app_subjects_course_id_id_342668dd; Type: INDEX; Schema: public; Owner: myprojectuser
--

CREATE INDEX student_management_app_subjects_course_id_id_342668dd ON public.student_management_app_subjects USING btree (course_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_student_m FOREIGN KEY (user_id) REFERENCES public.student_management_app_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_notificationstaff student_management_a_Staff_id_id_740caeb0_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_notificationstaff
    ADD CONSTRAINT "student_management_a_Staff_id_id_740caeb0_fk_student_m" FOREIGN KEY ("Staff_id_id") REFERENCES public.student_management_app_staffs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_admin student_management_a_admin_id_05ff0d31_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_admin
    ADD CONSTRAINT student_management_a_admin_id_05ff0d31_fk_student_m FOREIGN KEY (admin_id) REFERENCES public.student_management_app_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_students student_management_a_admin_id_1a8517ae_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_students
    ADD CONSTRAINT student_management_a_admin_id_1a8517ae_fk_student_m FOREIGN KEY (admin_id) REFERENCES public.student_management_app_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_staffs student_management_a_admin_id_5bfdd57d_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_staffs
    ADD CONSTRAINT student_management_a_admin_id_5bfdd57d_fk_student_m FOREIGN KEY (admin_id) REFERENCES public.student_management_app_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_subjects student_management_a_course_id_id_342668dd_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_subjects
    ADD CONSTRAINT student_management_a_course_id_id_342668dd_fk_student_m FOREIGN KEY (course_id_id) REFERENCES public.student_management_app_courses(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_students student_management_a_course_id_id_fcd09bed_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_students
    ADD CONSTRAINT student_management_a_course_id_id_fcd09bed_fk_student_m FOREIGN KEY (course_id_id) REFERENCES public.student_management_app_courses(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_customuser_groups student_management_a_customuser_id_1e347552_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_groups
    ADD CONSTRAINT student_management_a_customuser_id_1e347552_fk_student_m FOREIGN KEY (customuser_id) REFERENCES public.student_management_app_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_customuser_user_permissions student_management_a_customuser_id_41a474d7_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_user_permissions
    ADD CONSTRAINT student_management_a_customuser_id_41a474d7_fk_student_m FOREIGN KEY (customuser_id) REFERENCES public.student_management_app_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_customuser_groups student_management_a_group_id_61accfd6_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_groups
    ADD CONSTRAINT student_management_a_group_id_61accfd6_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_customuser_user_permissions student_management_a_permission_id_cd344297_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_customuser_user_permissions
    ADD CONSTRAINT student_management_a_permission_id_cd344297_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_aithsh student_management_a_student_id_id_a97626b5_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_aithsh
    ADD CONSTRAINT student_management_a_student_id_id_a97626b5_fk_student_m FOREIGN KEY (student_id_id) REFERENCES public.student_management_app_students(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_management_app_notificationstudent student_management_a_student_id_id_f8c05ed7_fk_student_m; Type: FK CONSTRAINT; Schema: public; Owner: myprojectuser
--

ALTER TABLE ONLY public.student_management_app_notificationstudent
    ADD CONSTRAINT student_management_a_student_id_id_f8c05ed7_fk_student_m FOREIGN KEY (student_id_id) REFERENCES public.student_management_app_students(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

