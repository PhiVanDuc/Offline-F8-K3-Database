--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: customer_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_order (
    id integer NOT NULL,
    customer_id integer,
    name character varying(100),
    email character varying(200),
    phone character varying(15),
    address text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.customer_order OWNER TO postgres;

--
-- Name: customer_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_order_id_seq OWNER TO postgres;

--
-- Name: customer_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_order_id_seq OWNED BY public.customer_order.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(100),
    email character varying(200),
    phone character varying(15),
    address text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    product_name text,
    product_price money,
    quantity integer,
    sub_total money,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_details_id_seq OWNER TO postgres;

--
-- Name: order_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_details_id_seq OWNED BY public.order_details.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_order_id integer,
    quantity integer,
    total money,
    status character varying(10),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name text,
    category character varying(100),
    price money,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: customer_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: order_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details ALTER COLUMN id SET DEFAULT nextval('public.order_details_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: customer_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_order (id, customer_id, name, email, phone, address, created_at, updated_at) FROM stdin;
1	6	Phi Van Duc	phivanduc325@gmail.com	422-490-2187	383 7th Trail	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
2	7	Vu Van Thong	pencil.bsp@gmail.com	569-162-6501	27316 Thierer Avenue	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
3	9	Nguyen Huu Hung	huuhungnguyen2002@gmail.com	363-430-3310	83722 Northview Crossing	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
4	7	Vu Van Thong	pencil.bsp@gmail.com	569-162-6501	27316 Thierer Avenue	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
5	9	Nguyen Huu Hung	huuhungnguyen2002@gmail.com	363-430-3310	83722 Northview Crossing	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
6	6	Phi Van Duc	phivanduc325@gmail.com	422-490-2187	383 7th Trail	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
7	8	Nguyen Ba Dong	nbdong205@gmail.com	612-249-8146	5520 Pond Terrace	2024-01-08 14:57:20.814277	2024-01-08 14:57:20.814277
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, email, phone, address, created_at, updated_at) FROM stdin;
6	Phi Van Duc	phivanduc325@gmail.com	422-490-2187	383 7th Trail	2024-01-08 14:46:02.320413	2024-01-08 14:46:02.320413
7	Vu Van Thong	pencil.bsp@gmail.com	569-162-6501	27316 Thierer Avenue	2024-01-08 14:46:02.320413	2024-01-08 14:46:02.320413
8	Nguyen Ba Dong	nbdong205@gmail.com	612-249-8146	5520 Pond Terrace	2024-01-08 14:46:02.320413	2024-01-08 14:46:02.320413
9	Nguyen Huu Hung	huuhungnguyen2002@gmail.com	363-430-3310	83722 Northview Crossing	2024-01-08 14:46:02.320413	2024-01-08 14:46:02.320413
\.


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_details (id, order_id, product_id, product_name, product_price, quantity, sub_total, created_at, updated_at) FROM stdin;
34	9	2	Product 2	$200.00	2	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
35	10	2	Product 2	$200.00	2	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
36	10	3	Product 3	$1,000.00	2	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
37	11	4	Product 4	$300.00	1	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
38	12	2	Product 1	$300.00	1	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
39	12	5	Product 5	$400.00	3	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
40	12	7	Product 7	$800.00	1	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
41	13	6	Product 6	$800.00	4	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
42	14	2	Product 2	$200.00	2	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
43	15	2	Product 2	$200.00	4	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
44	15	3	Product 3	$1,000.00	3	\N	2024-01-08 15:26:23.468622	2024-01-08 15:26:23.468622
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, customer_order_id, quantity, total, status, created_at, updated_at) FROM stdin;
9	1	2	\N	pending	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
10	2	4	\N	pending	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
11	3	1	\N	cancel	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
12	4	5	\N	done	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
13	5	4	\N	done	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
14	6	2	\N	pending	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
15	7	7	\N	cancel	2024-01-08 15:24:35.015315	2024-01-08 15:24:35.015315
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, category, price, created_at, updated_at) FROM stdin;
1	Product 1	category 1	$300.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
2	Product 2	category 1	$200.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
3	Product 3	category 2	$1,000.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
4	Product 4	category 3	$300.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
5	Product 5	category 2	$400.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
6	Product 6	category 3	$800.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
7	Product 7	category 4	$800.00	2024-01-08 14:49:54.805239	2024-01-08 14:49:54.805239
\.


--
-- Name: customer_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_order_id_seq', 7, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 9, true);


--
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 44, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 15, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 7, true);


--
-- Name: customer_order customer_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: order_details order_details_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: orders orders_customer_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_order_id_fkey FOREIGN KEY (customer_order_id) REFERENCES public.customer_order(id);


--
-- PostgreSQL database dump complete
--

