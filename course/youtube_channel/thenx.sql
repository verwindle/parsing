--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-1)

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

SET default_with_oids = false;

--
-- Name: video; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    url text NOT NULL,
    timespan character varying(255) NOT NULL,
    views character varying(255) NOT NULL,
    thumbnail text NOT NULL
);


ALTER TABLE public.video OWNER TO postgres;

--
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_id_seq OWNER TO postgres;

--
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;


--
-- Name: video id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video (id, title, url, timespan, views, thumbnail) FROM stdin;
1	Video Title	Link	Duration, m:s	Views	Background
2	Do This After Every Workout	https://youtube.com/watch?v=d7y_OHw3gsQ	10:12	145 990 	https://i.ytimg.com/vi/d7y_OHw3gsQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAfwrALge2NjSLLZKh2xkvEwMp1JA
3	Full Body Beginner Workout (Follow Along)	https://youtube.com/watch?v=ZZRvDegL7MU	10:11	123 938 	https://i.ytimg.com/vi/ZZRvDegL7MU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDyJsJivRFSgYg1GZyEDhBMKv8DDA
4	15 BEST 6Pack ABS Exercises (You Can Do Anywhere)	https://youtube.com/watch?v=KLXJRqstsuo	14:00	443 735 	https://i.ytimg.com/vi/KLXJRqstsuo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCX-GxiV-BWY5VvVuO4LeenE3CaWw
5	STOP doing PULL UPS Like This! (Do it RIGHT)	https://youtube.com/watch?v=Ww-gNf0ys8M	13:23	520 535 	https://i.ytimg.com/vi/Ww-gNf0ys8M/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDxDfxLxlC_yJYPs0dTi2y4ywKBcg
6	10 Best Calisthenics Exercises	https://youtube.com/watch?v=sPL5z_eAhAA	10:09	167 534 	https://i.ytimg.com/vi/sPL5z_eAhAA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCfyOE1-kBmi43Z5whaTlte_eY0gQ
7	How To Get Defined Abs	https://youtube.com/watch?v=1CLy-kVvG-s	10:03	437 293 	https://i.ytimg.com/vi/1CLy-kVvG-s/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCeyRHxWc7oI0iUzHJGTZ2tG5Ibgw
8	You Only Need This To Build Muscle	https://youtube.com/watch?v=rXPLkz0cVoI	11:17	392 930 	https://i.ytimg.com/vi/rXPLkz0cVoI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB4yQxT5SUcmwN4KDt119j4jDwg_g
9	Zen Heria Birthday Workout (8 Years Old)	https://youtube.com/watch?v=EoiPKVLeOaA	10:05	382 150 	https://i.ytimg.com/vi/EoiPKVLeOaA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCzyFrS-HJHVzz49995UfporO0fJA
10	Get Ripped from Home - HIIT Workout (No Equipment Needed)	https://youtube.com/watch?v=8J2pCRDTK9o	10:35	367 262 	https://i.ytimg.com/vi/8J2pCRDTK9o/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB6maQoTe0LRGkfZcVZd4w7kEWFJw
11	How To Get Fit From Home (No Equipment Needed)	https://youtube.com/watch?v=zoeot-2YQ1Y	12:27	397 263 	https://i.ytimg.com/vi/zoeot-2YQ1Y/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDmE6vdGhM9XYlMpG7OXuJpUFpkTQ
12	Calisthenics Leg Workout (Follow Along)	https://youtube.com/watch?v=ywVaPs9WbgM	10:03	177 905 	https://i.ytimg.com/vi/ywVaPs9WbgM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCbNcBXLU7OJJSXJdaCIctVr-IKhg
13	How To Do More Push Ups (Do It Right)	https://youtube.com/watch?v=7wblGkVQx3U	12:45	649 099 	https://i.ytimg.com/vi/7wblGkVQx3U/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC0SdAVSpTf9_rdR8_pFkkCTMo-RQ
14	Can You Beat My Time? Thenx Challenge	https://youtube.com/watch?v=R3BCphM_-y4	11:01	144 111 	https://i.ytimg.com/vi/R3BCphM_-y4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDhjcyxWkfoy9_Xq1grUue3ta64nw
15	10 Most Effective Pull Up Variations	https://youtube.com/watch?v=7JbDb1rAyqs	13:13	321 304 	https://i.ytimg.com/vi/7JbDb1rAyqs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBBp6GcfD1kiynpQyR5TY0UxaoZJw
16	How To Front Lever 5 Easy Steps	https://youtube.com/watch?v=uA0jySD4R8k	10:18	209 260 	https://i.ytimg.com/vi/uA0jySD4R8k/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDtaXDDcvL3NOoWLnJ1FCN-Atl2fA
17	Straight Arm Press In 4 Easy Steps	https://youtube.com/watch?v=rdi3RebVM8w	10:03	237 820 	https://i.ytimg.com/vi/rdi3RebVM8w/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC7CskQju4vlr6ip2XXu73RiQv8Og
18	Do This Routine Every Morning To Get Shredded	https://youtube.com/watch?v=Z_zHF-UwO5A	10:46	6 332 152 	https://i.ytimg.com/vi/Z_zHF-UwO5A/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDIhN_CRgjgGjmjd2N605nIw0Yqsw
19	Upper body workout + Skate sesh with boo Johnson	https://youtube.com/watch?v=5WcgIjLL_kg	12:02	255 510 	https://i.ytimg.com/vi/5WcgIjLL_kg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBV_VLeL8FqTB7AI8PE98SqVqyEzw
20	More Than Just A Back Workout	https://youtube.com/watch?v=hXZ36ru17fc	10:02	217 641 	https://i.ytimg.com/vi/hXZ36ru17fc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDWJ0DlXdxIKTD1cJgEuyrb3a7leQ
21	Intense Bikini Body Workout For Summer	https://youtube.com/watch?v=wEdCB7vD4e0	10:24	383 204 	https://i.ytimg.com/vi/wEdCB7vD4e0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB_GjB_0fOGblEVzKrKgTyPi-RGwg
22	Father's Day Workout FT. Zen Heria | 2019	https://youtube.com/watch?v=bT1_bR3KNXI	11:16	777 679 	https://i.ytimg.com/vi/bT1_bR3KNXI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCRbxXtrGW4iYaZwgchQp7SMUY7Ow
23	Intense 8 Min Lower Body Workout	https://youtube.com/watch?v=9aBKNTFo2E0	10:09	640 898 	https://i.ytimg.com/vi/9aBKNTFo2E0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCBPFKdfPTaR7QQjV-BVVab7Xmhsg
24	The Best Bodyweight Tricep Workout	https://youtube.com/watch?v=BbyIgnjr6dk	9:08	199 461 	https://i.ytimg.com/vi/BbyIgnjr6dk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAuD1xdlzkIG4eJN0iC-K2f3m7bDQ
25	Best Way To Grow Your Legs Fast From Home	https://youtube.com/watch?v=srj94JCeuWw	10:50	434 694 	https://i.ytimg.com/vi/srj94JCeuWw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLD4X-zmw9fPAJQDaqvgSiovlb3qIw
26	Intense Full Body Workout (NO WEIGHTS NEEDED)	https://youtube.com/watch?v=oZYvqKrQwho	10:04	298 713 	https://i.ytimg.com/vi/oZYvqKrQwho/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAy_Ig-ADEEEJ5EnmSWZdNdl81uuw
27	Bigger Arms Workout (Dumbbells Only)	https://youtube.com/watch?v=XNTj8RZVcrE	10:48	2 096 685 	https://i.ytimg.com/vi/XNTj8RZVcrE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCpzbGApwH9SAYqqyqlRKlrpVvX1g
28	How To Get a BIGGER BACK | Calisthenics Back Workout	https://youtube.com/watch?v=5O-yMbS1bRc	10:03	336 296 	https://i.ytimg.com/vi/5O-yMbS1bRc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCgQVxvNXFSePYCKgYvW2yzA6q6Xg
29	HOW TO GET 6 PACK ABS SERIES PART 4 | MASTER WORKOUT	https://youtube.com/watch?v=WcJi-6gibm8	11:41	370 887 	https://i.ytimg.com/vi/WcJi-6gibm8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC_fB6AOdAc6f8qw9Vx1R2tHAohMA
30	HOW TO GET 6 PACK ABS SERIES PART 3 | HIIT (NO EQUIPMENT)	https://youtube.com/watch?v=-nTaAnVfNpY	11:26	780 557 	https://i.ytimg.com/vi/-nTaAnVfNpY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCjwnVBHtdup_0bEDPbQKdTBrIvCA
31	HOW TO GET 6 PACK ABS SERIES PART 2 | BARS	https://youtube.com/watch?v=bT_QlgiGNo0	12:24	377 376 	https://i.ytimg.com/vi/bT_QlgiGNo0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCtJU1JPZ4BShwHBTJu0bLzN3s8SA
32	HOW TO GET 6 PACK ABS SERIES PART 1 | FLOOR	https://youtube.com/watch?v=O3uA5pr9H94	11:57	1 762 947 	https://i.ytimg.com/vi/O3uA5pr9H94/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLArBksWYRxycxwWoxATrMRhdkw7Ow
33	The BEST HOME CHEST WORKOUT (NO EQUIPMENT NEEDED)	https://youtube.com/watch?v=BkS1-El_WlE	12:21	9 526 769 	https://i.ytimg.com/vi/BkS1-El_WlE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAwMf6UuvAD1kWSLVhTf3c-C7e48A
34	The Main MUSCLE For Super Human STRENGTH	https://youtube.com/watch?v=YIy6wblBHdc	14:02	1 502 011 	https://i.ytimg.com/vi/YIy6wblBHdc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCNgLAsQvKKLr8VmBM2hn6ELMNojw
35	NO GYM? How To Workout Legs At Home Boo Johnson Routine	https://youtube.com/watch?v=vEPOU_fKmR8	10:23	273 928 	https://i.ytimg.com/vi/vEPOU_fKmR8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCjxjutI3CfBRVrPVO7b55Zv4-pfg
36	Best Full Body Routine For All Levels (Follow Along)	https://youtube.com/watch?v=4ZIg-O_k1vE	11:00	245 839 	https://i.ytimg.com/vi/4ZIg-O_k1vE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDrW1UrBTlWLuQNkunxSfm0-8BMng
37	THENX Workout Challenge with Chris Heria | 2019	https://youtube.com/watch?v=8AxEU-72dYI	10:40	195 623 	https://i.ytimg.com/vi/8AxEU-72dYI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA-T6MzkWDVzFT2J--dtfeYDkvDPA
38	Forearm Workout (Grip Strengthener)	https://youtube.com/watch?v=YZEhcvilgsg	13:33	524 829 	https://i.ytimg.com/vi/YZEhcvilgsg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDvrAhhnN-P44RRiLgegfnU-8pvdA
39	How to Train Back and Biceps with Calisthenics (Follow Along Workout)	https://youtube.com/watch?v=H7ilJBPALVA	10:04	150 851 	https://i.ytimg.com/vi/H7ilJBPALVA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB4ftzVObETf2FU-3KtOzgOSi6yXw
40	Morning 6 Pack Abs Routine with Pro Skater Boo Johnson	https://youtube.com/watch?v=ZNFXDmhoqqI	12:23	566 425 	https://i.ytimg.com/vi/ZNFXDmhoqqI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAhIaJHup-bjV_2-rzLLXPVFkzrTw
41	No Weights? No Problem! Workout	https://youtube.com/watch?v=z9L7ZqeffxU	10:01	391 060 	https://i.ytimg.com/vi/z9L7ZqeffxU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLACHtCSDx9ySLCOhzLef38bETKpmA
42	Best Beginner Routine To Start Calisthenics	https://youtube.com/watch?v=zrbryTfAHgc	8:43	600 821 	https://i.ytimg.com/vi/zrbryTfAHgc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB5pW5H92JHnJdN-rfIUjo4xeoZaQ
43	DON’T Do This Before Your Workout	https://youtube.com/watch?v=4PZlJdpF73s	13:06	1 021 337 	https://i.ytimg.com/vi/4PZlJdpF73s/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCDbT2tlOjfEbh6-jzuAiug5IC30g
44	Push/Pull Weighted Calisthenics Workout (Follow Along)	https://youtube.com/watch?v=ikW5XmYH4Xs	10:12	161 121 	https://i.ytimg.com/vi/ikW5XmYH4Xs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDjlUj7zuYmPVcR_TJWlPs98SXnAA
45	Home Tricep Workout (You Can Do Anywhere)	https://youtube.com/watch?v=z8_fSUc7MTw	10:30	825 082 	https://i.ytimg.com/vi/z8_fSUc7MTw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCwdyFrP_5eRuw_QCJf2zWBh4gF-g
46	Home Leg Workout (Follow Along)	https://youtube.com/watch?v=Jbvb_MMGc8s	11:02	773 426 	https://i.ytimg.com/vi/Jbvb_MMGc8s/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLD1kB-ZP1AD_AvvNTOoh0WPT1_2Mg
47	How To L-Sit On The Floor | 2018	https://youtube.com/watch?v=Qcde45O8lzo	16:31	462 866 	https://i.ytimg.com/vi/Qcde45O8lzo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA3tuvdrieAGDvu0wYodWb8If26vg
48	Home Shoulder Workout (Follow Along)	https://youtube.com/watch?v=w-wuT3tlvLY	12:06	370 079 	https://i.ytimg.com/vi/w-wuT3tlvLY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDV8woIrTV3WhYO95NbPHR6DcPyRA
49	SHORTCUT to FULL PLANCHE PUSH UPS	https://youtube.com/watch?v=unEJ0LLMNSk	14:25	259 827 	https://i.ytimg.com/vi/unEJ0LLMNSk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLD7Mfk61MtDKmRHmFL__mkIKYXaPA
50	Fastest Way To Get 6 Pack Abs (You Can Do Anywhere)	https://youtube.com/watch?v=IJEzIhgMCX4	13:53	3 094 513 	https://i.ytimg.com/vi/IJEzIhgMCX4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA34OCI2joZSl6bWvM5CEPDMM3mDg
51	5 Best Calisthenics Exercises For 2019	https://youtube.com/watch?v=zg_1zyxvVTc	12:20	409 249 	https://i.ytimg.com/vi/zg_1zyxvVTc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDYvRqMEyXaQGMSPnFuzAfkaYCuwA
52	NO GYM NO PROBLEM | 2018	https://youtube.com/watch?v=FxkULisPEo4	10:16	241 093 	https://i.ytimg.com/vi/FxkULisPEo4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAJS74KIEQpkFyr2YLmglYJP2Xf_g
53	TRY THIS INSANE WORKOUT | 2018	https://youtube.com/watch?v=fGXMpWSJceQ	7:03	187 504 	https://i.ytimg.com/vi/fGXMpWSJceQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDJolAXjf_D6DxOveaUT5Qjq_Kvhw
54	8 MINUTE AB WORKOUT | 2018	https://youtube.com/watch?v=HVV84F_Zn5s	10:10	2 396 503 	https://i.ytimg.com/vi/HVV84F_Zn5s/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA4-zaE6wq4y-CMMnq4vM80evJGjA
55	The Truth About "BURNING BELLY FAT"	https://youtube.com/watch?v=m2LfqLLjWE4	10:07	2 607 985 	https://i.ytimg.com/vi/m2LfqLLjWE4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBAdL_riVQ1AtnHxgzqSwGZztZ8iA
56	8 Min Workout To Burn BELLY FAT | 2018	https://youtube.com/watch?v=iv2qET4JiVU	11:04	831 954 	https://i.ytimg.com/vi/iv2qET4JiVU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAgf6if9daiCEvMkQki4LDRsq4qzA
57	One Exercise That Will Change Your Life | 2018	https://youtube.com/watch?v=XHDri6B9Q5k	14:49	859 576 	https://i.ytimg.com/vi/XHDri6B9Q5k/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCdGr4AzFXuDjjvMvpIInyjRGu9Pg
58	Home Full Body Workout (Follow Along) | 2018	https://youtube.com/watch?v=zXSo4EJG5FU	10:06	341 041 	https://i.ytimg.com/vi/zXSo4EJG5FU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCe8QOrmHrEu3mDlwt6shNw4V2svw
59	Benefits of Calisthenics | 2018	https://youtube.com/watch?v=92w3RCjl2S4	11:55	362 150 	https://i.ytimg.com/vi/92w3RCjl2S4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCSXCAroB-GvS2KSFYy77zwan68rw
60	Arm Workout To Build Mass (Beginner Workout)  2018	https://youtube.com/watch?v=0vhFLzwConQ	7:28	512 093 	https://i.ytimg.com/vi/0vhFLzwConQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBaOBzPt7NUFKnZuQj-GIfDW0J4jA
61	Home Chest Workout (No Gym No Problem)  2018	https://youtube.com/watch?v=AK6yZKvJ0uY	8:17	1 760 391 	https://i.ytimg.com/vi/AK6yZKvJ0uY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBgzdP6h-2lnnmXyaJ3Jlw-M9u6VA
62	DO THIS Every Ab Workout (FOLLOW ALONG) 2018	https://youtube.com/watch?v=ybCqv2Ez7VM	11:00	459 080 	https://i.ytimg.com/vi/ybCqv2Ez7VM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB0ONAKWHW1ypyZVBwSXSWMduiKiw
63	How To Back Lever - 5 Easy Steps | 2018	https://youtube.com/watch?v=FZZqbeZti84	13:08	286 602 	https://i.ytimg.com/vi/FZZqbeZti84/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDc2i2OrehOWcxVDjk44BtbziVihg
64	INSANE BIRTHDAY WORKOUT | 2018	https://youtube.com/watch?v=YxC6A8zssL4	7:42	181 906 	https://i.ytimg.com/vi/YxC6A8zssL4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAtFsHnN_7pX7ZvxPfh6qO2d0I29g
65	Best Tricep Workout (Calisthenics) | 2018	https://youtube.com/watch?v=C5WzlgSjw0s	9:33	229 229 	https://i.ytimg.com/vi/C5WzlgSjw0s/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAwUCVqz1NbTsBnnxhOr2DspPwihQ
66	Best Bicep Workout (Calisthenics) | 2018	https://youtube.com/watch?v=pPFeUYkmYnA	11:26	568 138 	https://i.ytimg.com/vi/pPFeUYkmYnA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA80jLQovnCMe6eQK3EAxSPzmv_xA
67	How THENX Started - 2 Million Subs Special | 2018	https://youtube.com/watch?v=vQboYwAT3J0	12:15	165 625 	https://i.ytimg.com/vi/vQboYwAT3J0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBxC5GV2ugus9tb7DPiFLq4qoMLCQ
68	Best Way To Burn Fat | 2018	https://youtube.com/watch?v=VUp-gK6i8lA	10:26	1 660 943 	https://i.ytimg.com/vi/VUp-gK6i8lA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAZDGt-OmOjUJy7YMPjjvyJ4LVLiw
69	The Best Calisthenics Exercises For Each Muscle | 2018	https://youtube.com/watch?v=KkeQJNtIDu8	13:36	811 013 	https://i.ytimg.com/vi/KkeQJNtIDu8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC3iJycVx5D7E-YwArECdhPZ3zbXQ
70	How To Lose Arm Fat And Get Toned | 2018	https://youtube.com/watch?v=xDn6WsrAJHM	6:22	440 524 	https://i.ytimg.com/vi/xDn6WsrAJHM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDBWE6SeN2-2kgctH7XZP2Meo4ASw
71	FROM FAT TO FIT - Transform Your Body With This Workout | 2018	https://youtube.com/watch?v=7DqRsqMQXco	8:04	1 304 154 	https://i.ytimg.com/vi/7DqRsqMQXco/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBYQZGbEoL9_JSol52T_7cYUES9hQ
72	6 PACK ABS For Beginners You Can Do Anywhere	https://youtube.com/watch?v=3p8EBPVZ2Iw	12:00	31 537 687 	https://i.ytimg.com/vi/3p8EBPVZ2Iw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAdT3EHQ7OC6eiOqIw0F5L_AqKOmg
73	6 Moves To MASTER CALISTHENICS | 2018	https://youtube.com/watch?v=d8bcNqKYwKo	14:14	1 211 434 	https://i.ytimg.com/vi/d8bcNqKYwKo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDx_eMZ0G16mzWS2j0H5vpyaim45A
74	How To GROW Your GLUTES ( WORKOUT ) | 2018	https://youtube.com/watch?v=35iA5yjA_uY	8:40	840 757 	https://i.ytimg.com/vi/35iA5yjA_uY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAQB3xgMhcYizreJClaikXbQU4bQQ
75	How To Build A SUPER HERO Physique | 2018	https://youtube.com/watch?v=elKgiLycyAw	7:59	591 062 	https://i.ytimg.com/vi/elKgiLycyAw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCgGiYDBXQ653nRPmcG7aJUlqh-4Q
76	How To ONE ARM Pull Up | 2018	https://youtube.com/watch?v=HZ67gjyQt0E	8:18	457 307 	https://i.ytimg.com/vi/HZ67gjyQt0E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLADKU1L3gb-FqOoHh1M8f6O6PFxww
77	How To Get SIX PACK ABS Fast For Summer | 2018	https://youtube.com/watch?v=wgKPFTx8FrA	11:02	3 684 454 	https://i.ytimg.com/vi/wgKPFTx8FrA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBLKmBf_C5gSkP8tv7i5kKpT3EtEg
78	Superhuman WORKOUT With Resistance Bands | 2018	https://youtube.com/watch?v=x0Yx9qbZuX8	6:43	209 886 	https://i.ytimg.com/vi/x0Yx9qbZuX8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLANOEOiqZDOuVzykyKX9VfAO7Jf6g
79	THENX Workshop in Zürich Switzerland | 2018	https://youtube.com/watch?v=mXeJJ7KHiR8	12:49	196 371 	https://i.ytimg.com/vi/mXeJJ7KHiR8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAFn__F_QLM2Vvb9FQMU30ZsXeqLQ
80	GAIN Muscle FASTER for SUMMER | 2018	https://youtube.com/watch?v=lwOfUw8sjKE	9:18	427 709 	https://i.ytimg.com/vi/lwOfUw8sjKE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLALSrnJWNaUI3INgN0sYyH6bukBvA
81	THENX WORKSHOP - LISBON PORTUGAL | 2018	https://youtube.com/watch?v=RaSxVXoaVUc	10:04	128 372 	https://i.ytimg.com/vi/RaSxVXoaVUc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBRzpimkM9jCnyFwur8ZCbnsuqhRw
82	Building BOOTY and Burning FAT | THENX 2018	https://youtube.com/watch?v=XhQjMkcPRV0	7:56	1 137 533 	https://i.ytimg.com/vi/XhQjMkcPRV0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCFrcaCSBk-dm013-uCveUwzmPX5Q
83	HOW MANY REPS You Should Be Doing | 2018	https://youtube.com/watch?v=287uvlZgAuY	10:03	384 026 	https://i.ytimg.com/vi/287uvlZgAuY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBaYL5xm1Sdwsi7npQy0gvRVSCNTQ
84	Full Body WORKOUT - Follow Along | 2018	https://youtube.com/watch?v=rqBuSx26_8g	8:57	214 993 	https://i.ytimg.com/vi/rqBuSx26_8g/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDvj7JyK3zfKfuQdWQG17dsOTgl5A
85	The SECRET to Super Human STRENGTH	https://youtube.com/watch?v=ixmxOlcrlUc	13:18	13 507 689 	https://i.ytimg.com/vi/ixmxOlcrlUc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCUWrcA1f9_2toqwXcTN6EkjvES7Q
86	How To Dragon Flag | 2018	https://youtube.com/watch?v=XQ28-rSbiP8	9:29	248 335 	https://i.ytimg.com/vi/XQ28-rSbiP8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAJStUKBT2rF-oVxYlGoZoYvwJ2Fw
87	How I Learned To BACKFLIP (5 STEPS) | THENX 2018	https://youtube.com/watch?v=znrWOLwVZ8c	14:30	3 268 561 	https://i.ytimg.com/vi/znrWOLwVZ8c/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBRaJCpo3OE4mLTBTy6Xr0LZO5cdA
88	100 Pull Up THENX Challenge | 2018	https://youtube.com/watch?v=B09-xbAFE_E	8:28	2 237 270 	https://i.ytimg.com/vi/B09-xbAFE_E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCwURJgUGyT2Ptw_mpHVOj0eLBt4g
89	25 DIFFERENT PULL UP VARIATIONS | 2018	https://youtube.com/watch?v=__Qwi6rjATE	9:05	1 567 438 	https://i.ytimg.com/vi/__Qwi6rjATE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLArXcZL_vPdbEMzx1Moqd_WZ3hFUA
90	How To Get Lower Abs (Common Mistakes) 2018 | THENX	https://youtube.com/watch?v=YN-PIW-pzNI	9:29	427 648 	https://i.ytimg.com/vi/YN-PIW-pzNI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBci9EAls4vrNunSpqNz52X9E5Ntg
91	The MUSCLE UP Workout 2018 | THENX	https://youtube.com/watch?v=queoysZ5i5E	9:32	420 311 	https://i.ytimg.com/vi/queoysZ5i5E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLALXyRfu5VspyO6PVfiti6PECwVHw
92	How To TRAIN with PARALLETTES | 2018	https://youtube.com/watch?v=_CbucOb9dyw	10:10	378 305 	https://i.ytimg.com/vi/_CbucOb9dyw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBYo2OQkD10z_AcMQkh_x3GN4X0lA
93	10 MINUTES OF HELL! with DEMI BAGBY 2018 | THENX	https://youtube.com/watch?v=9cJf1FKNTMI	12:28	1 860 162 	https://i.ytimg.com/vi/9cJf1FKNTMI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDkmB28f8ud6rYvBRkFh_lW2XENOg
94	BUILD A STRONGER CHEST WITH RINGS	https://youtube.com/watch?v=TRZhw7t7Qgo	9:18	252 447 	https://i.ytimg.com/vi/TRZhw7t7Qgo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDi0y0j4K3L5SYQRtgvCXeQhB03tQ
95	L.A. FIT EXPO 2018 (INSANE!) | THENX	https://youtube.com/watch?v=sfuteUSUFVU	9:17	175 615 	https://i.ytimg.com/vi/sfuteUSUFVU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDvoEHovfJI7FYlzKXcDJAeWNUcQQ
96	50 Different Travel Exercises you can do ANYWHERE	https://youtube.com/watch?v=P8J5PFEj9gs	12:15	200 771 	https://i.ytimg.com/vi/P8J5PFEj9gs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBSZGxKSwapJv_T52HXngEfS6Opaw
97	Turn Holiday Cheat Meals Into Gains | Feat. Steven Spence	https://youtube.com/watch?v=V0MwdUcxIII	10:01	197 193 	https://i.ytimg.com/vi/V0MwdUcxIII/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAyDokyrisT1w8xav3Dr9CvftPN6A
98	BURNING FAT & BUILDING MUSCLE FT.  ZAY TIGGS	https://youtube.com/watch?v=4lCMEXK4DxA	8:37	384 853 	https://i.ytimg.com/vi/4lCMEXK4DxA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBlPdeW8Hg-kYMjSjLv_XU8VDJnkw
99	How To Start Weighted Calisthenics | THENX	https://youtube.com/watch?v=oZJImV3bi98	10:43	207 646 	https://i.ytimg.com/vi/oZJImV3bi98/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCgQDablAbD6aQeW0JcJiKF38zAFQ
100	100 Push Ups A Day | THENX	https://youtube.com/watch?v=TZTnkclzkuM	8:24	4 918 007 	https://i.ytimg.com/vi/TZTnkclzkuM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDf10x4KRQ9q4zHIf05JKQ9WHNQJA
101	50 DIFFERENT PUSH UP VARIATIONS	https://youtube.com/watch?v=FU_5LPjtjus	11:06	2 525 196 	https://i.ytimg.com/vi/FU_5LPjtjus/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCEGoYNXnOR11YyuJBwX3JuII0ckw
102	1 MILLION SUBSCRIBERS | THENX	https://youtube.com/watch?v=EqzTI6qMeik	9:49	375 319 	https://i.ytimg.com/vi/EqzTI6qMeik/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDGOeV4qocD4G0pN4LddL12uxCH3A
103	BETTER RESULTS With Compound Exercises?	https://youtube.com/watch?v=SPSKGFbs1aQ	12:07	258 622 	https://i.ytimg.com/vi/SPSKGFbs1aQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCPOO6y83eAf8FAQEwYMUiYdeZp3w
104	WHY YOU DON'T HAVE ABS	https://youtube.com/watch?v=LgdoQgmCA-A	12:36	1 209 498 	https://i.ytimg.com/vi/LgdoQgmCA-A/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCloYZ3PWKEKdAwPMsm2-0DNiS7gw
105	The Problem With CROSSFIT	https://youtube.com/watch?v=YAuc-LSS6iQ	11:55	5 126 855 	https://i.ytimg.com/vi/YAuc-LSS6iQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDlbSE-W76rM4SUcNFkH8XLriVTwA
106	World's Toughest Teen ft. Demi Bagby | THENX	https://youtube.com/watch?v=DgHrs17BDTE	8:41	8 461 019 	https://i.ytimg.com/vi/DgHrs17BDTE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBqphbbQNHploCvgg-AXdowIWd7VA
107	How To Muscle Up 360 | THENX	https://youtube.com/watch?v=x9Twx3Mgj84	9:14	195 653 	https://i.ytimg.com/vi/x9Twx3Mgj84/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB63VYNlPRbpi4TfJoie1bziYWfjw
108	How To Jump On The Bar | THENX	https://youtube.com/watch?v=_fKmUPU9qTY	16:44	565 401 	https://i.ytimg.com/vi/_fKmUPU9qTY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLALOuIEkpJE2A_9m5C9dAt20lHHAg
109	How To Start Freestyling Calisthenics | THENX	https://youtube.com/watch?v=cYRAQpIZpLA	11:25	451 180 	https://i.ytimg.com/vi/cYRAQpIZpLA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC6Hs2QnD89tPdqfaOhiVKI_gEmaA
110	Tips For BIGGER & STRONGER Triceps + WORKOUT	https://youtube.com/watch?v=Htr7JLDKwbU	14:22	306 265 	https://i.ytimg.com/vi/Htr7JLDKwbU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBe7XUTxy_lxuHTKsrwePErj8iEOQ
111	3 Tips For BIGGER SHOULDERS | THENX	https://youtube.com/watch?v=pzVJtHi-NUo	11:23	351 797 	https://i.ytimg.com/vi/pzVJtHi-NUo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDKkYG4CLwSp4D6n-MWkPg_JA9VUg
112	3 Tips For BIGGER Biceps | THENX	https://youtube.com/watch?v=4dkQKyeGcNs	10:49	352 140 	https://i.ytimg.com/vi/4dkQKyeGcNs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDCAAAjujW5ugFrR-ronZFI1dmIow
113	5 TIPS to IMPROVE Your Handstand FT. Steven Spence	https://youtube.com/watch?v=CyOXatW3BrU	18:34	477 569 	https://i.ytimg.com/vi/CyOXatW3BrU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCxwUU101waG1bBiCrYDvytOsGwKg
114	Lose Stubborn Belly Fat - 5 Minute Home Ab Workout	https://youtube.com/watch?v=E8SLO3JgUbQ	10:19	4 780 411 	https://i.ytimg.com/vi/E8SLO3JgUbQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCLDUAl0sR_wtv_EW7W0uJjasNl_g
115	Good Form VS. Bad Form (FIX IT NOW!)	https://youtube.com/watch?v=bGNDwyqgLrM	22:00	198 296 	https://i.ytimg.com/vi/bGNDwyqgLrM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB9a6BAHXhGMpGzN5oRBYGr6lK9pQ
116	Beginner Calisthenics Workout FT. Zen Heria | THENX	https://youtube.com/watch?v=GcDY5-fNDG4	16:10	1 512 118 	https://i.ytimg.com/vi/GcDY5-fNDG4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA0rtYgzTMgGjKRkOn0yEx2mkpUVg
117	Can WOMEN Train As Hard As MEN? | THENX	https://youtube.com/watch?v=XYKzJIwnSfg	14:37	3 749 283 	https://i.ytimg.com/vi/XYKzJIwnSfg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCoCF_oU9B8kf5PG2cb7VD8NG8VFQ
118	Mayweather VS McGregor Calisthenics Prep Workout | THENX	https://youtube.com/watch?v=-gkmzOb2C3E	15:37	240 533 	https://i.ytimg.com/vi/-gkmzOb2C3E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLApkeu8KBX9sT6qWVE5gyYDZ5yDFg
119	How To Get A BIGGER CHEST Without Weights | THENX	https://youtube.com/watch?v=Z_qzchl8g0A	14:27	817 964 	https://i.ytimg.com/vi/Z_qzchl8g0A/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDHV8R9NCZTSrzFcmuKFfux2-hDIQ
120	Super Human Training (ONE ARM MUSCLE UP) | THENX	https://youtube.com/watch?v=AbTDBXjAUXI	21:11	377 637 	https://i.ytimg.com/vi/AbTDBXjAUXI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDt5WW-MqIeOlmaw4yclixcMSWKGQ
121	Calisthenics VS Weights (How I Got So Strong) | THENX	https://youtube.com/watch?v=nmP8l-ELI3Q	17:40	1 359 003 	https://i.ytimg.com/vi/nmP8l-ELI3Q/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCbXPQqliov8S-DwKf6tT4kX0K_pg
122	EXPLOSIVE TRAINING - How I Got So Strong | THENX	https://youtube.com/watch?v=p0a07nBZ10s	15:10	678 837 	https://i.ytimg.com/vi/p0a07nBZ10s/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB6jMIOKw4wwuTdTjjeOFEYoz36KA
123	Secret Tip To INCREASE Overall STRENGTH | THENX	https://youtube.com/watch?v=5K53okMMXx0	16:57	391 310 	https://i.ytimg.com/vi/5K53okMMXx0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC9cAG8tfCqNBc4AQ0mLTQ9hwXlcQ
124	Can You Train Everyday? The Truth About Overtraining (WORKOUT) | THENX	https://youtube.com/watch?v=CA9OklE7r3A	17:02	1 379 961 	https://i.ytimg.com/vi/CA9OklE7r3A/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDeIRroQnd47Uceule7VAU0pe5CMA
125	Not Your Average Booty Workout (Bikini Body) | THENX	https://youtube.com/watch?v=3cMz4V8dFPg	13:59	3 725 758 	https://i.ytimg.com/vi/3cMz4V8dFPg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDFZG-pNPfrtyjT_u4abb3RtNZ_uA
126	Father's Day Workout (My Son Beat Me!) | THENX	https://youtube.com/watch?v=6xlkt291his	13:13	4 752 371 	https://i.ytimg.com/vi/6xlkt291his/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC1wNACjfp4V6MfMCSFtTgr3fmH4w
127	How To Drop Set Like A Boss (WHOLE BODY WORKOUT) | THENX	https://youtube.com/watch?v=tZupmr69xC8	18:29	175 783 	https://i.ytimg.com/vi/tZupmr69xC8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCdZFSi6kGQ70jSuH8xiaqjreo_kA
128	How To Look More Muscular Fast For Summer (WORKOUT) | THENX	https://youtube.com/watch?v=UPzqv0TRZxc	15:55	4 288 343 	https://i.ytimg.com/vi/UPzqv0TRZxc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCmT9STgcQmZCuXhe9n0XKp7qXHQw
129	How To Get Shredded Fast For Summer (HIIT Home Workout) | THENX	https://youtube.com/watch?v=GWOTOJZuxGE	13:41	1 965 709 	https://i.ytimg.com/vi/GWOTOJZuxGE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDt4E_NWzrDO8nnTnKqAIDrWWRCzQ
130	Why You Need To Train With Wrist Wraps | THENX	https://youtube.com/watch?v=-Rdv9_E4QEc	13:21	386 352 	https://i.ytimg.com/vi/-Rdv9_E4QEc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA8l9yLikYu6hVrxKBFVcvhpCLEWw
131	Ask THENX Q&A | Episode 1	https://youtube.com/watch?v=TcGMawymApY	20:34	132 754 	https://i.ytimg.com/vi/TcGMawymApY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDkyac4N6b1RDtT1SMeTW1P-p048g
132	How To Gain Weight And Build Muscle | THENX	https://youtube.com/watch?v=sUkFJwyZyhQ	19:20	717 337 	https://i.ytimg.com/vi/sUkFJwyZyhQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB7lKAoHU4pybdq1o09rT9Oep-qTw
133	How To Lose Weight and Burn Fat | THENX	https://youtube.com/watch?v=dlantbhXp4Y	14:07	3 940 822 	https://i.ytimg.com/vi/dlantbhXp4Y/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDcHPSXCH92Oy2wDnxvLwYuVjoezw
134	Топ 5 Упражнений Для Овладения Стойкой На Руках	https://youtube.com/watch?v=Ks9fL-yMFW8	10:06	532 467 	https://i.ytimg.com/vi/Ks9fL-yMFW8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDqWygJ1nNsiSsD7x9E2X1XtkuGEA
135	Start Calisthenics with This Workout | THENX	https://youtube.com/watch?v=kIVxdIWy7Eo	14:07	3 625 726 	https://i.ytimg.com/vi/kIVxdIWy7Eo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAG6613Nzfq5pSNyePT3HkCE4i7MA
136	How To Start Calisthenics - L SIT & PISTOL SQUATS | THENX	https://youtube.com/watch?v=flQVCWBuVgk	18:28	1 017 982 	https://i.ytimg.com/vi/flQVCWBuVgk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCZq37JSnXMTRR_bySgy__5nI28qA
137	How To Start Calisthenics - PUSH UPS & DIPS | THENX	https://youtube.com/watch?v=GdISLQcG8BA	16:50	1 709 613 	https://i.ytimg.com/vi/GdISLQcG8BA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBhj_X1nX4CRsx1v1kJf_BMkT-Zxg
138	How To Start Calisthenics - PULL UPS | THENX	https://youtube.com/watch?v=tB3X4TjTIes	18:44	6 446 816 	https://i.ytimg.com/vi/tB3X4TjTIes/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC3ZXEheuqQPM59iCNpXfqq_BIlhQ
139	10 MINUTES OF HELL! WORKOUT | Reaction Video	https://youtube.com/watch?v=G3Mwi8NMIbk	13:34	217 934 	https://i.ytimg.com/vi/G3Mwi8NMIbk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAcEZnnS5XZ2wbPvCJi1ehAOsIQiw
140	HOW TO FRONT LEVER Step by Step | THENX	https://youtube.com/watch?v=Ev2caBjnwRo	19:16	1 072 723 	https://i.ytimg.com/vi/Ev2caBjnwRo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBbnWSDVXw83Ku7l2Zo9TO7-XoYMg
141	HOW TO FULL PLANCHE (step by step) | THENX	https://youtube.com/watch?v=dtsrFeWjx3g	27:12	842 590 	https://i.ytimg.com/vi/dtsrFeWjx3g/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB6dVZIQ3iTRG4fNTwGU-dvBZ4G_w
142	How To Get Stronger | THENX	https://youtube.com/watch?v=s8NJpj52NuU	14:42	639 071 	https://i.ytimg.com/vi/s8NJpj52NuU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDfJ31w4wYNIue67V_Wrd5FwD26rw
143	THENX FLOW With Fitness Model Sunamys Villalba	https://youtube.com/watch?v=NXuj7hGhLyU	9:40	288 814 	https://i.ytimg.com/vi/NXuj7hGhLyU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDkGAarXQTPNIP0Hikt8weJTXNdsg
144	Why You CAN'T Muscle Up | THENX	https://youtube.com/watch?v=IGk_bRJB5Mg	17:46	4 634 265 	https://i.ytimg.com/vi/IGk_bRJB5Mg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCbfq18LGIgMe1rt_vmAxg9nE1p2A
145	HOW TO HUMAN FLAG | THENX	https://youtube.com/watch?v=bG0h7bSfxQI	13:51	1 946 360 	https://i.ytimg.com/vi/bG0h7bSfxQI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDL4RncisWxQ2iMgoO2B_8jjGcArg
146	BURN FAT WITH THIS WORKOUT | THENX	https://youtube.com/watch?v=NbTUB5gODhs	14:32	449 148 	https://i.ytimg.com/vi/NbTUB5gODhs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCe8NMs2nMuw2MaqpBlvQqlqR8fbQ
147	LA FIT EXPO 2017 REACTIONS & CHALLENGES | THENX	https://youtube.com/watch?v=KMq4ObYSNXU	14:12	509 060 	https://i.ytimg.com/vi/KMq4ObYSNXU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBynNoHEaQW_k4VE7QheamB9s_lHA
148	TRAVEL WORKOUT ROUTINE | THENX	https://youtube.com/watch?v=c6fJc-t5oHM	14:10	177 544 	https://i.ytimg.com/vi/c6fJc-t5oHM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDcLPn82z780y48A4APf1qjAdATgg
149	THENX HOUSE DREAM COME TRUE! (EPIC VIDEO)	https://youtube.com/watch?v=ZrglXfDxLOw	11:23	299 649 	https://i.ytimg.com/vi/ZrglXfDxLOw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBaGc75hLG8IkxkclOQrji3qqZkMQ
150	CHRIS HERIA BIRTHDAY WORKOUT | THENX	https://youtube.com/watch?v=2O972NPjM58	8:41	393 883 	https://i.ytimg.com/vi/2O972NPjM58/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBGRUq-V9Z6h7UX2aXresVfruPdNA
151	THINK YOU'RE STRONG? WATCH THIS! FULL BODY WORKOUT | THENX	https://youtube.com/watch?v=rWyb1Sc0TNU	10:43	926 436 	https://i.ytimg.com/vi/rWyb1Sc0TNU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCD_SyFs63DaQd8_ssnk2SK4L0Wmw
152	BEST SHOULDER WORKOUT on your PHONE | THENX	https://youtube.com/watch?v=z9wsQpBTVnY	13:52	229 846 	https://i.ytimg.com/vi/z9wsQpBTVnY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB49DxyqSZ-myiFfMsmQSPOmPLlXw
153	LEG WORKOUT on your PHONE | THENX	https://youtube.com/watch?v=EeDTwcF-TnU	9:38	224 627 	https://i.ytimg.com/vi/EeDTwcF-TnU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB3n87LamxY0TbNxqyM3hs5syvhZQ
154	BEST FAT BURNING ABS WORKOUT | THENX	https://youtube.com/watch?v=tgkqyJp8gu4	13:28	2 060 804 	https://i.ytimg.com/vi/tgkqyJp8gu4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBpz1itavGtWA884EzOOkeTPX0Fjg
155	MIKE RASHID + CHRIS HERIA WORKOUT | THENX	https://youtube.com/watch?v=VxnAU-iYEG0	12:47	1 553 129 	https://i.ytimg.com/vi/VxnAU-iYEG0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCYEqxhvQGXMWdU3SPcD_HlaRCjfA
156	10 MINUTES OF HELL! PART 2 | THENX	https://youtube.com/watch?v=QXCDyvtXSzQ	11:54	300 074 	https://i.ytimg.com/vi/QXCDyvtXSzQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDSHt8HBUtZkOcH81HHIxKWPC2rlA
157	THENX MUSIC / LA WORKSHOP ANNOUNCEMENT	https://youtube.com/watch?v=uYyBttVKFEg	1:17	170 798 	https://i.ytimg.com/vi/uYyBttVKFEg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCJSiAMqgoV6nkIFDVv5dQ1o7gVyg
158	INCREDIBLE 3 MONTH BODY TRANSFORMATION | THENX TESTIMONIAL	https://youtube.com/watch?v=2JUI_iH1FB4	10:01	541 943 	https://i.ytimg.com/vi/2JUI_iH1FB4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDQvbYRv8iB8HA9UJpVb3Qva99z2Q
159	КАК НАТРЕНИРОВАТЬ РУКИ БЕЗ ОТЯГОЩЕНИЙ 2016 | THENX	https://youtube.com/watch?v=WzFMnRUzYog	16:34	4 831 390 	https://i.ytimg.com/vi/WzFMnRUzYog/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC5RoMtp3OqcvifLHrGlboG7KEu_Q
160	WEIGHTS & CALISTHENICS FOR MASSIVE CHEST & TRICEPS | THENX	https://youtube.com/watch?v=9HCdL9q1xzs	14:18	274 026 	https://i.ytimg.com/vi/9HCdL9q1xzs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAaP9yUfuUdnCxgg4_bf4qb8SVqLA
161	WEIGHTS & CALISTHENICS FOR MASSIVE BACK & BICEPS | THENX	https://youtube.com/watch?v=WhgoMWKCIqo	12:37	484 807 	https://i.ytimg.com/vi/WhgoMWKCIqo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAlA_3ftZTQd8Ng9bLxRv0jbu7sJA
162	100K SUBS SPECIAL HIIT WORKOUT 2016 | THENX	https://youtube.com/watch?v=V9_GbpOGQk0	12:41	1 473 971 	https://i.ytimg.com/vi/V9_GbpOGQk0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB3mDunjG1IDGN3rkokrbmp3uz94g
163	INSANE SUPER HIGH PULL UPS! THENX	https://youtube.com/watch?v=BZU2oy9L4DU	12:51	626 040 	https://i.ytimg.com/vi/BZU2oy9L4DU/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBHf_u1_l-Qn-nvD8kLh0MH00y9Bg
164	10-МИНУТНАЯ АДСКАЯ ТРЕНИРОВКА! 2016 | THENX	https://youtube.com/watch?v=sYZHBc8ItSs	13:10	6 945 986 	https://i.ytimg.com/vi/sYZHBc8ItSs/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDLrOaYABK-x_Nvcd9oGbMfdP514A
165	CAN YOU DO THESE REPS?! THENX	https://youtube.com/watch?v=g9lkfby0LiY	14:17	310 640 	https://i.ytimg.com/vi/g9lkfby0LiY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBUPDmnPUVbGyulfgKxKvFWOQP4eA
166	NEVER SKIP LEG DAY (ROUTINE) | THENX	https://youtube.com/watch?v=4H920oAfowE	18:11	1 281 035 	https://i.ytimg.com/vi/4H920oAfowE/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDoqbccbafLfHiEteSP8CTc8iQpDg
167	TOP 5 EXERCISES TO MASTER PLANCHE | THENX	https://youtube.com/watch?v=nCxPSrmKZ7E	14:17	1 053 398 	https://i.ytimg.com/vi/nCxPSrmKZ7E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCeblc8iYv_GmlhqveL1RqHj7nbeQ
168	SIX PACK ABS WORKOUT (ROUTINE) | THENX	https://youtube.com/watch?v=4hMx6PdZpRo	10:00	290 975 	https://i.ytimg.com/vi/4hMx6PdZpRo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDf5F2g2wIozVX7LINWSnbuLwOGdA
169	GET RIPPED FROM HOME! CARDIO WORKOUT (NO EQUIPMENT NEEDED) | THENX	https://youtube.com/watch?v=iqBAR0rfjiI	9:14	1 383 902 	https://i.ytimg.com/vi/iqBAR0rfjiI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCmOV180xJUNw7gT_ADPvJ8JdIinQ
170	DAILY WORKOUTS FOR INSANE BODY TRANSFORMATION 2016 | THENX	https://youtube.com/watch?v=OmxovRNtYRc	7:59	337 932 	https://i.ytimg.com/vi/OmxovRNtYRc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDXztPxNM69S9akqI5rH6t4BUqmmg
171	SUPER EFFECTIVE SHOULDER WORKOUT! 2016 | THENX	https://youtube.com/watch?v=K9himmaDW2w	10:46	310 972 	https://i.ytimg.com/vi/K9himmaDW2w/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCkyDkz0vDZm1wGZPfk4wdeeW7HFg
172	INSANELY HARD WHOLE BODY WORKOUT (ROUTINE) 2016 | THENX	https://youtube.com/watch?v=VGnC_hN6akA	17:22	241 880 	https://i.ytimg.com/vi/VGnC_hN6akA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA73VofZU0CgL7Jku9MIxsJzqyg3g
173	HOW TO EAT TO GET SHREDDED 2016 | THENX	https://youtube.com/watch?v=pGLO68W2sVM	19:40	689 590 	https://i.ytimg.com/vi/pGLO68W2sVM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDcNPIAH7cqr_ISynVeiPrSrQCz6w
174	HOW TO HANDSTAND PRESS 2016 | THENX	https://youtube.com/watch?v=QjFVr-eWyd0	12:18	232 435 	https://i.ytimg.com/vi/QjFVr-eWyd0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAeRuRUDYyQHi5isld-rbe_pWZ4OQ
175	HOW TO STRETCH (SHOULDER, ELBOW, WRIST) 2016 | THENX	https://youtube.com/watch?v=YvbWvCpHOjo	10:27	144 314 	https://i.ytimg.com/vi/YvbWvCpHOjo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAYO1Px3tBrB3JqPdbiGONVQ3A3_w
176	ANOTHER HOW TO MUSCLE UP IN 5 MINUTES WITH 3 EASY STEPS!!! | THENX	https://youtube.com/watch?v=cF6UsdjwkbM	7:34	172 962 	https://i.ytimg.com/vi/cF6UsdjwkbM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCUCBxTx19Oh0gP9eZRXCZ6AtRKZQ
177	CHEST & TRICEP DAY WITH THENX (PARK WORKOUT)	https://youtube.com/watch?v=IUVcsjDuty8	15:03	492 188 	https://i.ytimg.com/vi/IUVcsjDuty8/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCuMtYXyJmMSx1q53KwhddSnVjPEA
178	LEG DAY WITH THENX (WORKOUT) NO EQUIPMENT NEEDED*	https://youtube.com/watch?v=q3FLp036yhk	15:36	799 264 	https://i.ytimg.com/vi/q3FLp036yhk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB2nqJLgjZWHRtDrswTxXL7DmKzzg
179	HOW TO GET THE ULTIMATE PHYSIQUE (CARDIO WORKOUT) 2016 | THENX	https://youtube.com/watch?v=nOQpD8aDJeI	10:12	3 133 787 	https://i.ytimg.com/vi/nOQpD8aDJeI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLADBR1QB9RHM1bBiaV0ep6yJnVrKA
180	HOW TO TRAIN LIKE A BEAST (WORKOUT MOTIVATION) 2016 | THENX	https://youtube.com/watch?v=Czp06Ljk48Y	2:48	116 841 	https://i.ytimg.com/vi/Czp06Ljk48Y/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAxgwEww8GQdY8cZDCt_q_fuAQdww
181	HOW TO DO MORE PULL UPS (PART 2) | THENX	https://youtube.com/watch?v=nj_bOz2aigQ	8:19	159 972 	https://i.ytimg.com/vi/nj_bOz2aigQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBpjxAyCRItKz56TSHrVlbFPD8z6Q
182	HOW TO DO MORE PULL UPS (PART 1) | THENX	https://youtube.com/watch?v=gROqn53az2g	8:03	281 719 	https://i.ytimg.com/vi/gROqn53az2g/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCbKKnkcb8_RTRDso6SUlRQsiELAg
183	HOW TO DO A HANDSTAND 2016 | THENX	https://youtube.com/watch?v=dTpG6CwR5XI	18:04	1 766 345 	https://i.ytimg.com/vi/dTpG6CwR5XI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBOSn2e10DSHEDJwPh0x_ELHrx38Q
184	HOW TO GET A BIGGER BACK 2016 (WORKOUT) | THENX	https://youtube.com/watch?v=beYRwIdGnZ4	14:39	375 204 	https://i.ytimg.com/vi/beYRwIdGnZ4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBhVieOV4q3iYvbZfABQSgmGgCzFw
185	WARNING! THIS WORKOUT MAY DESTROY YOU | THENX	https://youtube.com/watch?v=jT2_Po-vo2Y	12:47	722 644 	https://i.ytimg.com/vi/jT2_Po-vo2Y/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCbT1Uw2ndXwt9jAaAH2OX_EnOTsg
186	ULTIMATE 6 PACK ABS WORKOUT 2016 | THENX	https://youtube.com/watch?v=oLnGgjW6UwQ	10:34	543 830 	https://i.ytimg.com/vi/oLnGgjW6UwQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB4kF1MXvF-ClTtWYL9Xz389jXrWA
187	HOW TO GET A BIGGER CHEST 2016 (WORKOUT) | THENX	https://youtube.com/watch?v=F_2s7lQtbvI	8:24	1 740 212 	https://i.ytimg.com/vi/F_2s7lQtbvI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBfAcNHwjwsWnqv46vdkP4G6taXXw
188	КАК MUSCLE UP в течение 5 минут с 3 простых шага !!! | THENX	https://youtube.com/watch?v=p7q0UhxPdLY	9:26	3 848 005 	https://i.ytimg.com/vi/p7q0UhxPdLY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBwNMtmQZzefD4SB98up0zUGW1Nlg
189	10 MINUTE KILLER SHOULDER WORKOUT (ROUTINE) *NO EQUIPMENT NEEDED*	https://youtube.com/watch?v=jogkD5FMTZk	10:33	1 011 315 	https://i.ytimg.com/vi/jogkD5FMTZk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAfNRviKMHo0zcYa13ofq_v44Z_6A
190	KILLER CALISTHENICS LEG WORKOUT (ROUTINE) *NO EQUIPMENT NEEDED*	https://youtube.com/watch?v=MAHMUc3vEWo	9:31	515 079 	https://i.ytimg.com/vi/MAHMUc3vEWo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLA2T45quW7vPRUspROpXzLpAWJBAQ
191	HOW TO MUSCLE UP THE BEST WAY 2016 | THENX	https://youtube.com/watch?v=2uyHqRGJmZ4	3:33	533 377 	https://i.ytimg.com/vi/2uyHqRGJmZ4/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCY680OOD8lRFQAcK66uRXLFpOmWQ
192	Increase Your STRENGTH and POWER With This Killer Back and Bicep Workout (Routine)	https://youtube.com/watch?v=E0QDJdUEpLk	9:53	317 260 	https://i.ytimg.com/vi/E0QDJdUEpLk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBVjA41s_HZzpvccBXf8E4FhHXyKA
193	Does This Beautiful Girl Workout HARDER Than YOU? (Body Weight Routine)	https://youtube.com/watch?v=oRBPXJFEYGM	9:08	1 866 698 	https://i.ytimg.com/vi/oRBPXJFEYGM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBgXZ7SfK7K-WlJym7G4jO48muaAg
194	SUPER EFFECTIVE Body Toning Female Workout ROUTINE (OUTDOORS)	https://youtube.com/watch?v=7Z3kpaU-6zQ	4:13	29 205 	https://i.ytimg.com/vi/7Z3kpaU-6zQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLD6FGnA2MGr-We_fZ45nUmtKmusEA
195	THENX FITNESS MOTIVATON 2016	https://youtube.com/watch?v=joV5J2djE24	2:30	62 149 	https://i.ytimg.com/vi/joV5J2djE24/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCEFORJLmxUW89OR9hxEn2uwW_qtg
196	TOP 5 EXERCISES TO MASTER THE MUSCLE UP (ROUTINE)	https://youtube.com/watch?v=ZBDxod579vA	8:32	525 107 	https://i.ytimg.com/vi/ZBDxod579vA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAows_4yhOqsjRZjh3zzTFpdzqohw
197	TOP 5 EXERCISES TO MASTER HANDSTAND (ROUTINE)	https://youtube.com/watch?v=nZn1e3_sjNc	6:44	2 176 510 	https://i.ytimg.com/vi/nZn1e3_sjNc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBeoXbG0HpRrbspS6gT1E6q5Y3tjg
198	TEASER: TOP 5 Exercises for Mastering Handstand	https://youtube.com/watch?v=6MXOsScIroo	0:35	12 466 	https://i.ytimg.com/vi/6MXOsScIroo/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLB-T3QK3hv4s8d6uhP1mKFo6lNJTA
199	EXTREME BODY  WEIGHTED  WORKOUT (ROUTINE)	https://youtube.com/watch?v=RD3XjejrZoA	10:31	278 223 	https://i.ytimg.com/vi/RD3XjejrZoA/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBmWvfy_Kke8ytCtdzyQjO1Z-rstA
200	THENX Channel Trailer	https://youtube.com/watch?v=9zZsoLq9ToY	0:24	80 288 	https://i.ytimg.com/vi/9zZsoLq9ToY/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDuSmZj3DMZQs45KzFLxi0ndWZp1A
201	The First Workout in THENX Fitness Studio (ROUTINE)	https://youtube.com/watch?v=YjIPsQ8r_yk	8:13	56 996 	https://i.ytimg.com/vi/YjIPsQ8r_yk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDWbjMueR8f8ecKVb393GuCTRd01g
202	Building Thenx Fitness Studio	https://youtube.com/watch?v=qcJV-WdSeeQ	2:55	38 611 	https://i.ytimg.com/vi/qcJV-WdSeeQ/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLADag85Fmqu9oG0_54Gl9ohHIcj6A
203	THENX.COM | THE BEST STREAMING WORKOUTS	https://youtube.com/watch?v=OjMCB748J0k	1:01	83 270 	https://i.ytimg.com/vi/OjMCB748J0k/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC7Xi9Iu-uyh_wBHXm4y9YrGlQC8g
204	Chris Heria | 7 MINUTE KILLER AB ROUTINE - AT HOME Six PAck Abs INSTANTLY!	https://youtube.com/watch?v=8avdj3JNw_0	7:41	568 900 	https://i.ytimg.com/vi/8avdj3JNw_0/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCUg4xEkRRqM_-I2A0FHGevZnfUbA
205	WHAT MOTIVATES YOU? | CHRIS HERIA AMA EP.1	https://youtube.com/watch?v=d2Qd6xvz6kc	16:27	107 020 	https://i.ytimg.com/vi/d2Qd6xvz6kc/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDF_zsIY2pLvNLg-C6MMQfZ6Qk81Q
206	CHRIS HERIA INTENSE BODY/WEIGHT WORKOUT	https://youtube.com/watch?v=MrM1-XOZTag	1:46	80 804 	https://i.ytimg.com/vi/MrM1-XOZTag/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLADDyBsyJMzD4TV0Dn5_LMdP6pjPA
207	FEMALE WORKOUT INSPIRATION	https://youtube.com/watch?v=MzrwoUg_F9E	0:46	21 533 	https://i.ytimg.com/vi/MzrwoUg_F9E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDq5UUOSsDMUmzYj-BYz0pwr5WfCw
208	Street vs Calisthenics Academy teaser	https://youtube.com/watch?v=DrnO2F18u0o	0:49	58 858 	https://i.ytimg.com/vi/DrnO2F18u0o/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDxCV-DPMW-X5mUJ6Yjx8ZKSuTWhg
209	Dream is destiny.	https://youtube.com/watch?v=E9aIJNt9QkM	1:01	27 187 	https://i.ytimg.com/vi/E9aIJNt9QkM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDFb4k36F10nN9-j7hMhAcDINMsig
210	Black Tie Tattoo Parlor	https://youtube.com/watch?v=0m9zRgKgH6E	2:11	29 259 	https://i.ytimg.com/vi/0m9zRgKgH6E/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLC9butyPSkuizN0tr4de12XoC4edw
211	Chris Heria Trains Shaun In The Park	https://youtube.com/watch?v=OuZB_kfgY9Q	0:24	17 522 	https://i.ytimg.com/vi/OuZB_kfgY9Q/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBhjBcc6nSSEMLp-SSOyhKc4uzsBw
212	15 Minute Home Workout With The Miami Trainer	https://youtube.com/watch?v=UCheHuCzjXk	1:40	29 888 	https://i.ytimg.com/vi/UCheHuCzjXk/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCTSzG4yZhARso_-wW_jUhBs85m9A
213	EXTREME WEIGHT VEST TRAINING	https://youtube.com/watch?v=-Kh02U6Z_zI	0:21	53 452 	https://i.ytimg.com/vi/-Kh02U6Z_zI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCOdPNqr3WaNv19Atp5q6wG9vL8Nw
214	STREET WORKOUT WORLD CUP 2014 (CHRIS HERIA)	https://youtube.com/watch?v=NxTAc4zIuNw	3:01	290 521 	https://i.ytimg.com/vi/NxTAc4zIuNw/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDsf7LgEGsWAKgfvQqhMBtmarEnKw
215	Female Fitness Inspiration w/ Melody Le	https://youtube.com/watch?v=5Ci3h3e4gFI	3:58	102 260 	https://i.ytimg.com/vi/5Ci3h3e4gFI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLDBbyLK3ZscdMHXsPkZAx1ow8VZ2Q
216	INSANE WORKOUT ON MIAMI BEACH	https://youtube.com/watch?v=Agd4BurxmtM	3:15	696 101 	https://i.ytimg.com/vi/Agd4BurxmtM/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBcWsvm-qHXDmBydtD4nziO_dUnNA
217	INSANE 4 MONTH BODY TRANSFORMATION	https://youtube.com/watch?v=TSjFKn9xcJg	2:44	106 743 	https://i.ytimg.com/vi/TSjFKn9xcJg/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCTE91On4qkEPykb8lSI7rp7f1L1g
218	INSANE 16 YEAR OLD BODY TRANSFORMATION	https://youtube.com/watch?v=I4o_QUQsA6Q	5:15	2 420 238 	https://i.ytimg.com/vi/I4o_QUQsA6Q/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLBAk2NuvRMl6wPZqGBPRBxK5r1hOA
219	Barstarzz Florida Adventures Part.  3	https://youtube.com/watch?v=ZKHby4B4iUI	7:59	136 183 	https://i.ytimg.com/vi/ZKHby4B4iUI/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLADhtIE-vxmy8W9-UXTxypPYXiimQ
220	Chris and Hardcore Ainsley on South Beach	https://youtube.com/watch?v=cSbTAqJ6H_o	3:54	292 271 	https://i.ytimg.com/vi/cSbTAqJ6H_o/hqdefault.jpg?sqp=-oaymwEiCMQBEG5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLCgxmApQy5H2r4NbNN3sY3BlqdLIw
\.


--
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_id_seq', 220, true);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

