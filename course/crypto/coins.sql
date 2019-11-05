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
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    label character varying(16) NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL,
    cap character varying(255) NOT NULL,
    change character varying(8) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, label, name, url, price, cap, change) FROM stdin;
1	Ticket	Name	Link	Price	Market Cap	Change
2	BTC	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	$9172.37	$165,320,347,300	0.57%
3	ETH	Ethereum	https://coinmarketcap.com/currencies/ethereum/	$182.99	$19,832,425,249	0.88%
4	XRP	XRP	https://coinmarketcap.com/currencies/ripple/	$0.292446	$12,647,740,293	-0.21%
5	BCH	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	$280.31	$5,070,537,204	0.03%
6	USDT	Tether	https://coinmarketcap.com/currencies/tether/	$1.01	$4,129,876,649	-0.01%
7	LTC	Litecoin	https://coinmarketcap.com/currencies/litecoin/	$58.45	$3,716,702,153	0.38%
8	BNB	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	$19.97	$3,105,704,779	0.73%
9	EOS	EOS	https://coinmarketcap.com/currencies/eos/	$3.28	$3,076,254,191	1.29%
10	BSV	Bitcoin SV	https://coinmarketcap.com/currencies/bitcoin-sv/	$127.89	$2,310,721,630	-1.20%
11	XLM	Stellar	https://coinmarketcap.com/currencies/stellar/	$0.070014	$1,404,108,572	10.16%
12	TRX	TRON	https://coinmarketcap.com/currencies/tron/	$0.019674	$1,311,891,438	0.33%
13	ADA	Cardano	https://coinmarketcap.com/currencies/cardano/	$0.041927	$1,087,043,111	1.92%
14	XMR	Monero	https://coinmarketcap.com/currencies/monero/	$59.55	$1,029,415,880	2.40%
15	LEO	UNUS SED LEO	https://coinmarketcap.com/currencies/unus-sed-leo/	$0.985662	$985,168,360	4.51%
16	HT	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	$3.93	$949,185,156	2.00%
17	LINK	Chainlink	https://coinmarketcap.com/currencies/chainlink/	$2.70	$946,066,595	4.38%
18	MIOTA	IOTA	https://coinmarketcap.com/currencies/iota/	$0.272916	$758,577,829	0.65%
19	NEO	NEO	https://coinmarketcap.com/currencies/neo/	$10.68	$753,259,854	2.09%
20	DASH	Dash	https://coinmarketcap.com/currencies/dash/	$71.25	$650,610,453	0.20%
21	ATOM	Cosmos	https://coinmarketcap.com/currencies/cosmos/	$3.25	$619,973,168	5.31%
22	XTZ	Tezos	https://coinmarketcap.com/currencies/tezos/	$0.878574	$580,186,842	-1.57%
23	ETC	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	$4.93	$566,132,634	2.98%
24	MKR	Maker	https://coinmarketcap.com/currencies/maker/	$546.38	$546,378,885	6.28%
25	ONT	Ontology	https://coinmarketcap.com/currencies/ontology/	$0.852739	$477,407,121	1.09%
26	USDC	USD Coin	https://coinmarketcap.com/currencies/usd-coin/	$1.00	$463,478,918	-0.03%
27	CRO	Crypto.com Coin	https://coinmarketcap.com/currencies/crypto-com-coin/	$0.036207	$409,521,698	-0.21%
28	XEM	NEM	https://coinmarketcap.com/currencies/nem/	$0.040388	$363,494,880	-0.34%
29	DOGE	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	$0.002611	$318,240,337	0.19%
30	BAT	Basic Attenti...	https://coinmarketcap.com/currencies/basic-attention-token/	$0.230711	$311,679,315	-2.07%
31	ZEC	Zcash	https://coinmarketcap.com/currencies/zcash/	$37.48	$290,664,030	-0.80%
32	PAX	Paxos Standard	https://coinmarketcap.com/currencies/paxos-standard/	$1.00	$248,835,341	-0.04%
33	VET	VeChain	https://coinmarketcap.com/currencies/vechain/	$0.004053	$224,780,544	0.71%
34	HEDG	HedgeTrade	https://coinmarketcap.com/currencies/hedgetrade/	$0.747164	$215,430,441	1.26%
35	QTUM	Qtum	https://coinmarketcap.com/currencies/qtum/	$2.14	$206,197,819	0.06%
36	DCR	Decred	https://coinmarketcap.com/currencies/decred/	$17.77	$188,534,121	12.80%
37	TUSD	TrueUSD	https://coinmarketcap.com/currencies/trueusd/	$1.00	$181,418,532	-0.18%
38	ZRX	0x	https://coinmarketcap.com/currencies/0x/	$0.286355	$172,312,758	4.65%
39	HOT	Holo	https://coinmarketcap.com/currencies/holo/	$0.000941	$151,927,739	4.52%
40	ABBC	ABBC Coin	https://coinmarketcap.com/currencies/abbc-coin/	$0.255823	$142,088,117	1.70%
41	BTG	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	$8.06	$141,120,931	0.66%
42	ZB	ZB	https://coinmarketcap.com/currencies/zb/	$0.297852	$137,991,478	0.44%
43	RVN	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	$0.028831	$137,185,902	-0.17%
44	LUNA	LUNA	https://coinmarketcap.com/currencies/luna/	$0.465215	$133,873,023	0.17%
45	OMG	OmiseGO	https://coinmarketcap.com/currencies/omisego/	$0.942957	$132,245,357	-0.78%
46	KCS	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	$1.51	$130,767,112	0.38%
47	CENNZ	Centrality	https://coinmarketcap.com/currencies/centrality/	$0.114293	$121,417,072	13.24%
48	VSYS	V Systems	https://coinmarketcap.com/currencies/v-systems/	$0.065712	$120,984,316	-0.92%
49	BTM	Bytom	https://coinmarketcap.com/currencies/bytom/	$0.115740	$116,029,029	4.30%
50	NANO	Nano	https://coinmarketcap.com/currencies/nano/	$0.856038	$114,065,558	-0.25%
51	EKT	EDUCare	https://coinmarketcap.com/currencies/educare/	$0.130319	$110,770,744	-0.14%
52	SNX	Synthetix Net...	https://coinmarketcap.com/currencies/synthetix-network-token/	$0.745297	$105,931,364	2.68%
53	ALGO	Algorand	https://coinmarketcap.com/currencies/algorand/	$0.237398	$101,940,541	11.44%
54	REP	Augur	https://coinmarketcap.com/currencies/augur/	$9.10	$100,090,464	0.30%
55	LSK	Lisk	https://coinmarketcap.com/currencies/lisk/	$0.809959	$98,213,137	0.97%
56	BTT	BitTorrent	https://coinmarketcap.com/currencies/bittorrent/	$0.000458	$97,128,253	0.96%
57	BCD	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	$0.515784	$96,190,014	1.80%
58	DAI	Dai	https://coinmarketcap.com/currencies/dai/	$1.01	$89,729,938	0.53%
59	DGB	DigiByte	https://coinmarketcap.com/currencies/digibyte/	$0.006864	$85,398,986	-3.44%
60	SC	Siacoin	https://coinmarketcap.com/currencies/siacoin/	$0.002039	$85,273,682	0.17%
61	IOST	IOST	https://coinmarketcap.com/currencies/iostoken/	$0.006912	$83,039,941	5.85%
62	ICX	ICON	https://coinmarketcap.com/currencies/icon/	$0.165273	$82,966,320	1.60%
63	THETA	THETA	https://coinmarketcap.com/currencies/theta/	$0.094629	$82,374,805	2.24%
64	WAVES	Waves	https://coinmarketcap.com/currencies/waves/	$0.787692	$78,939,077	1.23%
65	BTS	BitShares	https://coinmarketcap.com/currencies/bitshares/	$0.028733	$78,936,932	-0.28%
66	BCN	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	$0.000429	$78,907,854	7.86%
67	HC	HyperCash	https://coinmarketcap.com/currencies/hypercash/	$1.74	$77,386,006	4.88%
68	MONA	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	$1.11	$73,192,298	-0.50%
69	FTT	FTX Token	https://coinmarketcap.com/currencies/ftx-token/	$1.38	$72,860,789	-0.58%
70	QNT	Quant	https://coinmarketcap.com/currencies/quant/	$5.89	$71,074,238	2.58%
71	MCO	MCO	https://coinmarketcap.com/currencies/crypto-com/	$4.25	$67,046,731	1.50%
72	SXP	Swipe	https://coinmarketcap.com/currencies/swipe/	$1.07	$65,144,950	-1.73%
73	AE	Aeternity	https://coinmarketcap.com/currencies/aeternity/	$0.222705	$64,416,812	7.54%
74	KMD	Komodo	https://coinmarketcap.com/currencies/komodo/	$0.546239	$63,777,618	2.16%
75	XVG	Verge	https://coinmarketcap.com/currencies/verge/	$0.003796	$60,832,768	2.10%
76	NOAH	Noah Coin	https://coinmarketcap.com/currencies/noah-coin/	$0.001769	$57,829,409	-52.02%
77	NRG	Energi	https://coinmarketcap.com/currencies/energi/	$2.58	$57,047,761	-2.03%
78	ZIL	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	$0.006328	$54,976,861	15.92%
79	ARDR	Ardor	https://coinmarketcap.com/currencies/ardor/	$0.054715	$54,659,887	0.44%
80	MAID	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	$0.119334	$54,004,951	-3.16%
81	STEEM	Steem	https://coinmarketcap.com/currencies/steem/	$0.149283	$52,189,212	6.63%
82	ENJ	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	$0.066281	$52,005,068	7.15%
83	RIF	RIF Token	https://coinmarketcap.com/currencies/rif-token/	$0.102730	$51,302,752	4.14%
84	NEXO	Nexo	https://coinmarketcap.com/currencies/nexo/	$0.091451	$51,212,618	-3.07%
85	ELF	aelf	https://coinmarketcap.com/currencies/aelf/	$0.092488	$50,357,721	6.72%
86	SEELE	Seele	https://coinmarketcap.com/currencies/seele/	$0.069342	$48,307,843	3.29%
87	RLC	iExec RLC	https://coinmarketcap.com/currencies/rlc/	$0.597972	$47,880,130	1.08%
88	CRPT	Crypterium	https://coinmarketcap.com/currencies/crpt/	$0.553931	$46,966,524	-1.15%
89	AOA	Aurora	https://coinmarketcap.com/currencies/aurora/	$0.007153	$46,795,523	-2.37%
90	SNT	Status	https://coinmarketcap.com/currencies/status/	$0.013451	$46,681,211	4.41%
91	GNT	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	$0.045661	$44,749,921	2.59%
92	NEW	Newton	https://coinmarketcap.com/currencies/newton/	$0.003657	$43,699,364	0.44%
93	REN	Ren	https://coinmarketcap.com/currencies/ren/	$0.053831	$43,092,112	8.03%
94	XZC	Zcoin	https://coinmarketcap.com/currencies/zcoin/	$4.86	$42,360,242	-0.69%
95	LAMB	Lambda	https://coinmarketcap.com/currencies/lambda/	$0.054683	$42,217,434	34.80%
96	NPXS	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	$0.000180	$42,088,761	2.12%
97	MOF	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	$1.01	$41,640,657	-4.61%
98	NEX	Nash Exchange	https://coinmarketcap.com/currencies/nash-exchange/	$1.15	$41,568,184	0.63%
99	SOLVE	SOLVE	https://coinmarketcap.com/currencies/solve/	$0.125964	$41,243,482	3.67%
100	CHZ	Chiliz	https://coinmarketcap.com/currencies/chiliz/	$0.011088	$39,969,527	3.41%
101	TT	Thunder Token	https://coinmarketcap.com/currencies/thunder-token/	$0.013677	$39,690,605	25.22%
102	WIN	WINk	https://coinmarketcap.com/currencies/wink-tronbet/	$0.000195	$38,330,501	12.34%
103	ZEN	Horizen	https://coinmarketcap.com/currencies/zencash/	$4.92	$37,740,824	5.73%
104	ETP	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	$0.487567	$37,488,066	2.53%
105	ETN	Electroneum	https://coinmarketcap.com/currencies/electroneum/	$0.003646	$35,986,490	-2.62%
106	EURS	STASIS EURO	https://coinmarketcap.com/currencies/stasis-euro/	$1.11	$35,522,662	0.47%
107	XMX	XMax	https://coinmarketcap.com/currencies/xmax/	$0.001952	$34,828,633	-0.25%
108	MANA	Decentraland	https://coinmarketcap.com/currencies/decentraland/	$0.032014	$33,619,449	4.49%
109	ELA	Elastos	https://coinmarketcap.com/currencies/elastos/	$2.06	$33,040,095	-1.70%
110	MATIC	Matic Network	https://coinmarketcap.com/currencies/matic-network/	$0.013809	$32,923,162	2.58%
111	GXC	GXChain	https://coinmarketcap.com/currencies/gxchain/	$0.504771	$32,810,136	3.62%
112	WTC	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	$0.761833	$32,580,688	4.98%
113	DGTX	Digitex Futures	https://coinmarketcap.com/currencies/digitex-futures/	$0.041807	$32,510,376	0.30%
114	STRAT	Stratis	https://coinmarketcap.com/currencies/stratis/	$0.323273	$32,180,863	-0.62%
115	BCV	BitCapitalVendor	https://coinmarketcap.com/currencies/bitcapitalvendor/	$0.035875	$31,971,962	2.97%
116	DX	DxChain Token	https://coinmarketcap.com/currencies/dxchain-token/	$0.000634	$31,719,199	3.18%
117	NAS	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	$0.593733	$30,845,947	1.84%
118	NULS	NULS	https://coinmarketcap.com/currencies/nuls/	$0.416158	$30,700,154	-1.54%
119	ODE	ODEM	https://coinmarketcap.com/currencies/odem/	$0.133233	$30,691,639	8.02%
120	PAI	Project Pai	https://coinmarketcap.com/currencies/project-pai/	$0.020958	$30,392,715	0.30%
121	KNC	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	$0.179255	$30,291,279	3.31%
122	LRC	Loopring	https://coinmarketcap.com/currencies/loopring/	$0.032514	$29,715,561	-1.03%
123	BRD	Bread	https://coinmarketcap.com/currencies/bread/	$0.329229	$29,213,837	2.59%
124	CVC	Civic	https://coinmarketcap.com/currencies/civic/	$0.042691	$28,603,027	4.38%
125	TNT	Tierion	https://coinmarketcap.com/currencies/tierion/	$0.066198	$28,364,804	-1.61%
126	TOMO	TomoChain	https://coinmarketcap.com/currencies/tomochain/	$0.429133	$27,942,936	16.67%
127	PPT	Populous	https://coinmarketcap.com/currencies/populous/	$0.503054	$26,788,755	-3.87%
128	AION	Aion	https://coinmarketcap.com/currencies/aion/	$0.073228	$26,563,426	-5.90%
129	RDD	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	$0.000916	$26,402,995	6.27%
130	DCN	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	$0.000049	$26,368,975	-5.68%
131	DRG	Dragon Coins	https://coinmarketcap.com/currencies/dragon-coins/	$0.073007	$25,454,536	17.91%
132	WICC	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	$0.133701	$25,269,503	-0.87%
133	DGD	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	$12.25	$24,504,449	0.44%
134	TRUE	TrueChain	https://coinmarketcap.com/currencies/truechain/	$0.306427	$24,384,070	3.57%
135	BEAM	Beam	https://coinmarketcap.com/currencies/beam/	$0.573333	$24,377,031	2.22%
136	WAN	Wanchain	https://coinmarketcap.com/currencies/wanchain/	$0.229173	$24,327,276	3.88%
137	GT	Gatechain Token	https://coinmarketcap.com/currencies/gatechain-token/	$0.604700	$23,902,609	3.40%
138	LINA	LINA	https://coinmarketcap.com/currencies/lina/	$0.086846	$23,876,737	-5.23%
139	FCT	Factom	https://coinmarketcap.com/currencies/factom/	$2.37	$23,314,215	3.54%
140	ARK	Ark	https://coinmarketcap.com/currencies/ark/	$0.201152	$23,292,315	5.29%
141	HBAR	Hedera Hashgraph	https://coinmarketcap.com/currencies/hedera-hashgraph/	$0.034087	$23,113,978	6.47%
142	GRIN	Grin	https://coinmarketcap.com/currencies/grin/	$0.923935	$23,036,798	0.69%
143	HYN	Hyperion	https://coinmarketcap.com/currencies/hyperion/	$0.072236	$22,881,931	12.26%
144	CV	carVertical	https://coinmarketcap.com/currencies/carvertical/	$0.002982	$22,815,861	9.00%
145	LOOM	Loom Network	https://coinmarketcap.com/currencies/loom-network/	$0.023507	$22,787,153	4.64%
146	FET	Fetch.ai	https://coinmarketcap.com/currencies/fetch/	$0.037557	$22,758,362	-2.49%
147	WAXP	WAX	https://coinmarketcap.com/currencies/wax/	$0.026927	$22,543,622	4.02%
148	ILC	ILCoin	https://coinmarketcap.com/currencies/ilcoin/	$0.069702	$22,443,357	3.43%
149	ANT	Aragon	https://coinmarketcap.com/currencies/aragon/	$0.744506	$22,186,479	2.67%
150	QASH	QASH	https://coinmarketcap.com/currencies/qash/	$0.063214	$22,124,898	3.40%
151	NXS	Nexus	https://coinmarketcap.com/currencies/nexus/	$0.341171	$22,064,178	0.86%
152	EDC	EDC Blockchain	https://coinmarketcap.com/currencies/edc-blockchain/	$0.008177	$21,837,448	-0.19%
153	YOU	YOU COIN	https://coinmarketcap.com/currencies/you-coin/	$0.052531	$21,784,064	-0.61%
154	FTM	Fantom	https://coinmarketcap.com/currencies/fantom/	$0.011995	$21,755,107	0.30%
155	ENG	Enigma	https://coinmarketcap.com/currencies/enigma/	$0.288407	$21,583,274	2.63%
156	FUN	FunFair	https://coinmarketcap.com/currencies/funfair/	$0.003292	$21,562,004	6.01%
157	R	Revain	https://coinmarketcap.com/currencies/revain/	$0.043185	$20,921,080	-2.79%
158	BHP	BHPCoin	https://coinmarketcap.com/currencies/bhp-coin/	$1.07	$20,844,434	3.04%
159	ORBS	Orbs	https://coinmarketcap.com/currencies/orbs/	$0.010670	$20,752,958	-1.10%
160	RCN	Ripio Credit ...	https://coinmarketcap.com/currencies/ripio-credit-network/	$0.040505	$20,626,394	6.56%
161	POWR	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	$0.047906	$20,182,087	1.56%
162	BNT	Bancor	https://coinmarketcap.com/currencies/bancor/	$0.316801	$19,871,968	-0.02%
163	FSN	Fusion	https://coinmarketcap.com/currencies/fusion/	$0.559452	$19,756,941	19.61%
164	IOTX	IoTeX	https://coinmarketcap.com/currencies/iotex/	$0.004548	$19,693,313	8.91%
165	IGNIS	Ignis	https://coinmarketcap.com/currencies/ignis/	$0.025837	$19,665,639	5.26%
166	MAN	Matrix AI Net...	https://coinmarketcap.com/currencies/matrix-ai-network/	$0.098905	$18,896,159	-5.45%
167	STORJ	Storj	https://coinmarketcap.com/currencies/storj/	$0.137594	$18,683,536	-0.28%
168	UNI	UNI COIN	https://coinmarketcap.com/currencies/uni-coin/	$1.44	$18,543,671	-0.05%
169	MTL	Metal	https://coinmarketcap.com/currencies/metal/	$0.354733	$18,440,371	-3.38%
170	C20	CRYPTO20	https://coinmarketcap.com/currencies/c20/	$0.452928	$18,310,317	-4.52%
171	SAN	Santiment Net...	https://coinmarketcap.com/currencies/santiment/	$0.291402	$18,259,363	1.52%
172	BUSD	Binance USD	https://coinmarketcap.com/currencies/binance-usd/	$1.00	$18,087,326	-0.07%
173	DENT	Dent	https://coinmarketcap.com/currencies/dent/	$0.000236	$17,919,527	-1.16%
174	GNO	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	$15.86	$17,522,202	-0.22%
175	CS	Credits	https://coinmarketcap.com/currencies/credits/	$0.093216	$17,247,745	-2.00%
176	ROX	Robotina	https://coinmarketcap.com/currencies/robotina/	$0.056307	$17,103,590	0.01%
177	KAN	BitKan	https://coinmarketcap.com/currencies/bitkan/	$0.002794	$17,058,354	-1.83%
178	GRS	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	$0.229238	$16,896,725	0.36%
179	BIX	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	$0.155739	$16,693,247	0.79%
180	GAS	Gas	https://coinmarketcap.com/currencies/gas/	$1.62	$16,393,885	-1.89%
181	TEL	Telcoin	https://coinmarketcap.com/currencies/telcoin/	$0.000417	$16,378,011	-0.16%
182	CMT	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	$0.019998	$15,998,537	-2.68%
183	EDO	Eidoo	https://coinmarketcap.com/currencies/eidoo/	$0.305251	$15,857,393	5.40%
184	WGR	Wagerr	https://coinmarketcap.com/currencies/wagerr/	$0.083068	$15,672,163	1.03%
185	MEDX	MediBloc [ERC20]	https://coinmarketcap.com/currencies/medx/	$0.004491	$15,426,642	2.03%
186	ADN	Aladdin	https://coinmarketcap.com/currencies/aladdin/	$0.000481	$15,371,512	-3.57%
187	ABT	Arcblock	https://coinmarketcap.com/currencies/arcblock/	$0.155886	$15,363,269	1.55%
188	COCOS	Cocos-BCX	https://coinmarketcap.com/currencies/cocos-bcx/	$0.000971	$15,262,543	5.01%
189	DIVI	Divi	https://coinmarketcap.com/currencies/divi/	$0.011147	$14,798,953	-0.06%
190	DAG	Constellation	https://coinmarketcap.com/currencies/constellation/	$0.016821	$14,568,877	-4.34%
191	SYS	Syscoin	https://coinmarketcap.com/currencies/syscoin/	$0.025526	$14,526,892	7.64%
192	REPO	REPO	https://coinmarketcap.com/currencies/repo/	$0.131993	$14,513,753	79.18%
193	CELR	Celer Network	https://coinmarketcap.com/currencies/celer-network/	$0.004278	$14,503,365	2.51%
194	MDA	Moeda Loyalty...	https://coinmarketcap.com/currencies/moeda-loyalty-points/	$0.736454	$14,455,767	3.76%
195	DPT	Diamond Platf...	https://coinmarketcap.com/currencies/diamond-platform-token/	$12.74	$14,064,234	0.06%
196	STREAM	Streamit Coin	https://coinmarketcap.com/currencies/streamit-coin/	$2.76	$14,045,198	-0.47%
197	CND	Cindicator	https://coinmarketcap.com/currencies/cindicator/	$0.007797	$13,942,326	6.29%
198	TTC	TTC	https://coinmarketcap.com/currencies/ttc/	$0.038171	$13,880,209	3.69%
199	ONE	Harmony	https://coinmarketcap.com/currencies/harmony/	$0.005316	$13,813,262	4.22%
200	LEND	Aave	https://coinmarketcap.com/currencies/aave/	$0.012239	$13,810,427	-1.38%
201	LOKI	Loki	https://coinmarketcap.com/currencies/loki/	$0.315737	$13,804,935	-1.08%
202	INO	INO COIN	https://coinmarketcap.com/currencies/ino-coin/	$1.96	$352,019,821	2.45%
203	PZM	PRIZM	https://coinmarketcap.com/currencies/prizm/	$0.779919	$325,048,556	9.96%
204	INB	Insight Chain	https://coinmarketcap.com/currencies/insight-chain/	$0.737122	$257,920,824	-2.60%
205	MEXC	MEXC Token	https://coinmarketcap.com/currencies/mexc-token/	$0.276853	$253,349,694	-27.45%
206	THX	ThoreNext	https://coinmarketcap.com/currencies/thorenext/	$8.52	$184,510,746	0.55%
207	THR	ThoreCoin	https://coinmarketcap.com/currencies/thorecoin/	$1736.04	$150,490,483	0.52%
208	OSC	Oasis City	https://coinmarketcap.com/currencies/oasis-city/	$0.051449	$123,502,440	0.00%
209	CNX	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	$2.04	$113,862,484	0.73%
210	SLV	Silverway	https://coinmarketcap.com/currencies/silverway/	$1.02	$102,039,397	11.99%
211	EON	Dimension Chain	https://coinmarketcap.com/currencies/dimension-chain/	$0.340740	$83,407,467	1.29%
212	XIN	Mixin	https://coinmarketcap.com/currencies/mixin/	$177.26	$81,807,921	-0.16%
213	KBC	Karatgold Coin	https://coinmarketcap.com/currencies/karatgold-coin/	$0.020339	$76,323,186	-0.31%
214	BXK	Bitbook Gambling	https://coinmarketcap.com/currencies/bitbook-gambling/	$0.205319	$75,636,907	0.43%
215	BDX	Beldex	https://coinmarketcap.com/currencies/beldex/	$0.067145	$65,816,888	0.28%
216	GAP	GAPS	https://coinmarketcap.com/currencies/gaps/	$6.34	$63,392,365	-1.32%
217	OKB	OKB	https://coinmarketcap.com/currencies/okb/	$2.99	$59,856,420	5.00%
218	FXC	Flexacoin	https://coinmarketcap.com/currencies/flexacoin/	$0.002695	$56,336,456	1.29%
219	CCCX	Clipper Coin	https://coinmarketcap.com/currencies/clipper-coin/	$0.013698	$51,784,815	0.00%
220	BF	BitForex Token	https://coinmarketcap.com/currencies/bitforex-token/	$0.011585	$49,229,613	-2.99%
221	DTR	Dynamic Tradi...	https://coinmarketcap.com/currencies/dynamic-trading-rights/	$0.032188	$48,960,094	0.49%
222	MB	MineBee	https://coinmarketcap.com/currencies/minebee/	$0.026316	$48,160,930	-1.44%
223	CIX100	Cryptoindex.c...	https://coinmarketcap.com/currencies/cryptoindex-com-100/	$0.672344	$41,960,821	-1.02%
224	HPT	Huobi Pool Token	https://coinmarketcap.com/currencies/huobi-pool-token/	$0.008190	$41,574,917	2.24%
225	MX	MX Token	https://coinmarketcap.com/currencies/mx-token/	$0.185542	$41,182,055	-0.61%
226	BRZE	Breezecoin	https://coinmarketcap.com/currencies/breezecoin/	$0.408147	$40,814,733	3.67%
227	NET	NEXT	https://coinmarketcap.com/currencies/next/	$0.944310	$38,236,823	5.63%
228	CVCC	CryptoVerific...	https://coinmarketcap.com/currencies/cryptoverificationcoin/	$64.20	$37,400,251	0.57%
229	BCZERO	Buggyra Coin ...	https://coinmarketcap.com/currencies/buggyra-coin-zero/	$0.018132	$36,459,916	1.79%
230	WIX	Wixlar	https://coinmarketcap.com/currencies/wixlar/	$0.014650	$35,041,727	-2.37%
231	JWL	Jewel	https://coinmarketcap.com/currencies/jewel/	$0.620153	$33,928,571	-4.03%
232	BZ	Bit-Z Token	https://coinmarketcap.com/currencies/bit-z-token/	$0.257492	$33,764,551	-0.83%
233	VEST	VestChain	https://coinmarketcap.com/currencies/vestchain/	$0.004695	$33,230,739	7.18%
234	VERI	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	$14.95	$32,146,831	0.50%
235	FST	1irstcoin	https://coinmarketcap.com/currencies/1irstcoin/	$0.936118	$31,797,959	6.96%
236	MXM	Maximine Coin	https://coinmarketcap.com/currencies/maximine-coin/	$0.019072	$31,449,698	-27.76%
237	BHD	BitcoinHD	https://coinmarketcap.com/currencies/bitcoinhd/	$5.91	$30,455,835	0.88%
238	BOTX	botXcoin	https://coinmarketcap.com/currencies/botxcoin/	$0.018527	$30,230,958	2.12%
239	BNK	Bankera	https://coinmarketcap.com/currencies/bankera/	$0.001189	$29,271,225	7.17%
240	BTC2	Bitcoin 2	https://coinmarketcap.com/currencies/bitcoin2/	$1.63	$28,288,900	-2.73%
241	PLC	PLATINCOIN	https://coinmarketcap.com/currencies/platincoin/	$5.65	$28,249,501	-17.46%
242	AGVC	AgaveCoin	https://coinmarketcap.com/currencies/agavecoin/	$0.070812	$27,660,471	0.91%
243	USDK	USDK	https://coinmarketcap.com/currencies/usdk/	$0.961267	$27,492,293	-1.61%
244	LA	LATOKEN	https://coinmarketcap.com/currencies/latoken/	$0.072242	$27,459,524	-1.82%
245	QBIT	Qubitica	https://coinmarketcap.com/currencies/qubitica/	$33.23	$26,869,689	0.74%
246	FAB	FABRK	https://coinmarketcap.com/currencies/fabrk/	$0.005576	$26,735,674	3.28%
247	BQTX	BQT	https://coinmarketcap.com/currencies/bqt/	$0.065150	$24,932,487	-3.20%
248	BHT	BHEX Token	https://coinmarketcap.com/currencies/bhex-token/	$0.044051	$23,408,015	1.34%
249	XAC	General Atten...	https://coinmarketcap.com/currencies/general-attention-currency/	$2.28	$22,809,205	0.48%
250	TLOS	Telos	https://coinmarketcap.com/currencies/telos/	$0.099861	$22,456,248	0.83%
251	ECOREAL	Ecoreal Estate	https://coinmarketcap.com/currencies/ecoreal-estate/	$0.107201	$22,396,215	-0.11%
252	ATP	Atlas Protocol	https://coinmarketcap.com/currencies/atlas-protocol/	$0.008673	$22,342,643	-2.44%
253	XET	ETERNAL TOKEN	https://coinmarketcap.com/currencies/eternal-token/	$0.222564	$20,803,013	-12.30%
254	SXDT	Spectre.ai Di...	https://coinmarketcap.com/currencies/spectre-dividend/	$0.243768	$20,006,893	-0.52%
255	MOAC	MOAC	https://coinmarketcap.com/currencies/moac/	$0.313621	$19,589,788	-3.13%
256	GNY	GNY	https://coinmarketcap.com/currencies/gny/	$0.103396	$19,477,370	0.58%
257	TRAT	Tratin	https://coinmarketcap.com/currencies/tratin/	$0.000172	$19,255,106	3.48%
258	MB8	MB8 Coin	https://coinmarketcap.com/currencies/mb8-coin/	$0.032098	$18,795,501	-1.99%
259	MBC	MicroBitcoin	https://coinmarketcap.com/currencies/microbitcoin/	$0.000097	$18,362,600	10.18%
260	CRE	Carry	https://coinmarketcap.com/currencies/carry/	$0.006257	$18,122,528	16.58%
261	BTU	BTU Protocol	https://coinmarketcap.com/currencies/btu-protocol/	$0.249958	$17,499,516	5.86%
262	ULT	Ultiledger	https://coinmarketcap.com/currencies/ultiledger/	$0.027211	$17,480,067	-0.20%
263	VITAE	Vitae	https://coinmarketcap.com/currencies/vitae/	$0.975760	$17,377,773	0.92%
264	EVN	Envion	https://coinmarketcap.com/currencies/envion/	$0.137802	$16,426,614	-5.35%
265	UIP	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	$0.013267	$16,400,311	13.83%
266	GRN	GreenPower	https://coinmarketcap.com/currencies/greenpower/	$0.004956	$16,016,671	-0.22%
267	GBYTE	Obyte	https://coinmarketcap.com/currencies/obyte/	$21.98	$15,869,874	-4.50%
268	APL	Apollo Currency	https://coinmarketcap.com/currencies/apollo-currency/	$0.001061	$15,585,981	5.37%
269	RET	RealTract	https://coinmarketcap.com/currencies/realtract/	$0.001283	$13,604,967	-1.58%
270	UNO	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	$66.42	$13,363,597	-1.24%
271	TFUEL	Theta Fuel	https://coinmarketcap.com/currencies/theta-fuel/	$0.003458	$13,273,566	3.67%
272	PIVX	PIVX	https://coinmarketcap.com/currencies/pivx/	$0.233717	$13,270,734	0.40%
273	SAFE	Safe	https://coinmarketcap.com/currencies/safe/	$0.631001	$13,147,220	1.81%
274	ZRC	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	$2.86	$13,091,174	-0.31%
275	ERD	Elrond	https://coinmarketcap.com/currencies/elrond/	$0.001886	$13,073,509	25.32%
276	S4F	S4FE	https://coinmarketcap.com/currencies/s4fe/	$0.048578	$12,986,533	116.58%
277	FX	Function X	https://coinmarketcap.com/currencies/function-x/	$0.110876	$12,917,714	-3.11%
278	WABI	Tael	https://coinmarketcap.com/currencies/tael/	$0.196969	$12,901,491	19.44%
279	EUM	Elitium	https://coinmarketcap.com/currencies/elitium/	$1.34	$12,893,318	5.94%
280	NXT	Nxt	https://coinmarketcap.com/currencies/nxt/	$0.012849	$12,836,577	0.30%
281	FO	FIBOS	https://coinmarketcap.com/currencies/fibos/	$0.012077	$12,771,528	1.09%
282	PLA	PlayChip	https://coinmarketcap.com/currencies/playchip/	$0.000910	$12,755,102	0.24%
283	LBA	Cred	https://coinmarketcap.com/currencies/libra-credit/	$0.020718	$12,494,631	19.45%
284	NKN	NKN	https://coinmarketcap.com/currencies/nkn/	$0.026618	$12,421,881	3.26%
285	VTC	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	$0.237018	$12,306,129	-1.85%
286	XCHF	CryptoFranc	https://coinmarketcap.com/currencies/cryptofranc/	$1.01	$12,131,954	0.11%
287	AGI	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	$0.022201	$11,981,254	2.08%
288	QKC	QuarkChain	https://coinmarketcap.com/currencies/quarkchain/	$0.004927	$11,964,265	4.22%
289	WXT	Wirex Token	https://coinmarketcap.com/currencies/wirex-token/	$0.014953	$11,962,149	0.58%
290	OTO	OTOCASH	https://coinmarketcap.com/currencies/otocash/	$0.554962	$11,829,486	1.06%
291	POLY	Polymath	https://coinmarketcap.com/currencies/polymath-network/	$0.026410	$11,658,466	4.58%
292	ITC	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	$0.139564	$11,648,662	11.67%
293	CTXC	Cortex	https://coinmarketcap.com/currencies/cortex/	$0.077744	$11,645,489	1.85%
294	EOSC	EOS Force	https://coinmarketcap.com/currencies/eos-force/	$0.012058	$11,624,436	-3.39%
295	GMAT	GoWithMi	https://coinmarketcap.com/currencies/gowithmi/	$0.004238	$11,541,338	10.09%
296	DAC	Davinci Coin	https://coinmarketcap.com/currencies/davinci-coin/	$0.003190	$11,490,811	13.13%
297	UTT	United Trader...	https://coinmarketcap.com/currencies/uttoken/	$0.306093	$11,481,244	1.52%
298	B2B	B2BX	https://coinmarketcap.com/currencies/b2bx/	$0.579281	$11,371,173	1.08%
299	OCEAN	Ocean Protocol	https://coinmarketcap.com/currencies/ocean-protocol/	$0.033116	$11,270,086	-3.70%
300	1ST	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	$0.131341	$11,237,345	0.98%
301	LCC	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	$0.016976	$11,013,791	3.16%
302	CSC	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	$0.000276	$10,883,438	10.28%
303	REQ	Request	https://coinmarketcap.com/currencies/request/	$0.013922	$10,925,615	3.58%
304	IRIS	IRISnet	https://coinmarketcap.com/currencies/irisnet/	$0.024282	$10,848,638	7.58%
305	SKY	Skycoin	https://coinmarketcap.com/currencies/skycoin/	$0.677100	$10,833,594	10.56%
306	PAY	TenX	https://coinmarketcap.com/currencies/tenx/	$0.079909	$10,783,836	3.47%
307	MED	MediBloc	https://coinmarketcap.com/currencies/medibloc/	$0.004498	$10,632,851	3.61%
308	BFT	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	$0.014500	$10,585,176	-4.51%
309	EGT	Egretia	https://coinmarketcap.com/currencies/egretia/	$0.002495	$10,524,581	17.99%
310	QRL	Quantum Resis...	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	$0.149678	$10,399,996	1.70%
311	EMC2	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	$0.046930	$10,277,150	1.49%
312	PRS	PressOne	https://coinmarketcap.com/currencies/pressone/	$0.035840	$10,205,214	0.75%
313	DDK	DDKoin	https://coinmarketcap.com/currencies/ddkoin/	$5.92	$10,126,385	-5.73%
314	TOP	TOP	https://coinmarketcap.com/currencies/top/	$0.003215	$10,096,537	14.12%
315	LTO	LTO Network	https://coinmarketcap.com/currencies/lto-network/	$0.028528	$10,072,180	5.02%
316	TKN	Monolith	https://coinmarketcap.com/currencies/monolith/	$0.318499	$10,062,790	-1.92%
317	BTR	Bitrue Coin	https://coinmarketcap.com/currencies/bitrue-coin/	$0.071596	$10,030,644	1.83%
318	IQ	Everipedia	https://coinmarketcap.com/currencies/everipedia/	$0.001877	$9,983,644	0.48%
319	UGAS	UGAS	https://coinmarketcap.com/currencies/ugas/	$0.057678	$9,904,387	7.32%
320	COS	Contentos	https://coinmarketcap.com/currencies/contentos/	$0.015304	$9,831,316	0.15%
321	FNB	FNB Protocol	https://coinmarketcap.com/currencies/fnb-protocol/	$0.015257	$9,658,261	5.67%
322	HYC	HYCON	https://coinmarketcap.com/currencies/hycon/	$0.004637	$9,396,231	1.08%
323	ZT	ZTCoin	https://coinmarketcap.com/currencies/ztcoin/	$0.041309	$9,333,612	0.01%
324	VALOR	Valor Token	https://coinmarketcap.com/currencies/valor-token/	$0.465409	$9,324,940	1.58%
325	AEN	Aencoin	https://coinmarketcap.com/currencies/aencoin/	$0.034277	$9,161,136	4.89%
326	CDT	Blox	https://coinmarketcap.com/currencies/blox/	$0.013542	$9,135,458	3.79%
327	MITH	Mithril	https://coinmarketcap.com/currencies/mithril/	$0.013222	$9,100,381	0.09%
328	PART	Particl	https://coinmarketcap.com/currencies/particl/	$1.12	$9,077,046	5.84%
329	CVT	CyberVein	https://coinmarketcap.com/currencies/cybervein/	$0.008482	$8,994,223	28.66%
330	ACT	Achain	https://coinmarketcap.com/currencies/achain/	$0.009328	$8,898,614	-0.27%
331	MFT	Mainframe	https://coinmarketcap.com/currencies/mainframe/	$0.001005	$8,859,463	6.25%
332	UTK	Utrust	https://coinmarketcap.com/currencies/utrust/	$0.019660	$8,847,180	-1.50%
333	ANKR	Ankr	https://coinmarketcap.com/currencies/ankr/	$0.002194	$8,769,196	3.83%
334	LBTC	Lightning Bit...	https://coinmarketcap.com/currencies/lightning-bitcoin/	$2.30	$8,865,099	0.30%
335	FOR	Force Protocol	https://coinmarketcap.com/currencies/force-protocol/	$0.034776	$8,670,502	-4.87%
336	DRGN	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	$0.036392	$8,676,685	-4.92%
337	TKY	THEKEY	https://coinmarketcap.com/currencies/thekey/	$0.001647	$8,690,797	16.14%
338	XAS	Asch	https://coinmarketcap.com/currencies/asch/	$0.093073	$8,688,873	16.04%
339	CVNT	Content Value...	https://coinmarketcap.com/currencies/content-value-network/	$0.016100	$8,648,757	-2.61%
340	TRV	TrustVerse	https://coinmarketcap.com/currencies/trustverse/	$0.036664	$8,627,424	-8.47%
341	STORM	Storm	https://coinmarketcap.com/currencies/storm/	$0.001354	$8,576,892	2.96%
342	DATA	Streamr DATAcoin	https://coinmarketcap.com/currencies/streamr-datacoin/	$0.012634	$8,555,502	3.73%
343	BMC	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	$0.157000	$8,477,986	11.14%
344	RUFF	Ruff	https://coinmarketcap.com/currencies/ruff/	$0.008562	$8,394,938	-0.30%
345	SLS	SaluS	https://coinmarketcap.com/currencies/salus/	$8.16	$8,262,347	0.22%
346	LOCUS	Locus Chain	https://coinmarketcap.com/currencies/locus-chain/	$0.010316	$8,254,260	1.73%
347	RSR	Reserve Rights	https://coinmarketcap.com/currencies/reserve-rights/	$0.001965	$8,263,820	2.52%
348	OGO	Origo	https://coinmarketcap.com/currencies/origo/	$0.021016	$8,223,598	4.32%
349	POLIS	Polis	https://coinmarketcap.com/currencies/polis/	$0.963976	$8,208,456	7.28%
350	XLAB	XcelToken Plus	https://coinmarketcap.com/currencies/xceltoken-plus/	$0.001309	$8,201,648	1.21%
351	GTO	Gifto	https://coinmarketcap.com/currencies/gifto/	$0.013551	$8,187,833	-4.45%
352	RHOC	RChain	https://coinmarketcap.com/currencies/rchain/	$0.021899	$8,185,679	6.05%
353	RDN	Raiden Networ...	https://coinmarketcap.com/currencies/raiden-network-token/	$0.160592	$8,124,981	4.10%
354	HPB	High Performa...	https://coinmarketcap.com/currencies/high-performance-blockchain/	$0.185829	$8,105,834	-5.62%
355	INT	INT Chain	https://coinmarketcap.com/currencies/int-chain/	$0.021177	$8,041,371	1.35%
356	OST	OST	https://coinmarketcap.com/currencies/ost/	$0.011884	$8,016,953	1.48%
357	META	Metadium	https://coinmarketcap.com/currencies/metadium/	$0.006377	$7,941,548	6.47%
358	SOC	All Sports	https://coinmarketcap.com/currencies/all-sports/	$0.005257	$7,885,444	2.31%
359	BITCNY	bitCNY	https://coinmarketcap.com/currencies/bitcny/	$0.142473	$7,901,776	0.06%
360	NMR	Numeraire	https://coinmarketcap.com/currencies/numeraire/	$5.85	$7,886,966	-7.44%
361	GUSD	Gemini Dollar	https://coinmarketcap.com/currencies/gemini-dollar/	$1.00	$7,874,367	0.14%
362	TRIO	Tripio	https://coinmarketcap.com/currencies/tripio/	$0.002084	$7,814,901	4.36%
363	EVX	Everex	https://coinmarketcap.com/currencies/everex/	$0.343556	$7,798,730	2.33%
364	LEVL	Levolution	https://coinmarketcap.com/currencies/levolution/	$0.318410	$7,685,676	0.84%
365	TNB	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	$0.002615	$7,659,230	0.35%
366	IDEX	IDEX	https://coinmarketcap.com/currencies/idex/	$0.016928	$7,666,063	11.39%
367	PERL	Perlin	https://coinmarketcap.com/currencies/perlin/	$0.029267	$7,647,802	-6.33%
368	INCNT	Incent	https://coinmarketcap.com/currencies/incent/	$0.162074	$7,458,108	0.40%
369	XRC	Bitcoin Rhodium	https://coinmarketcap.com/currencies/bitcoin-rhodium/	$8.84	$7,386,612	46.20%
370	PLR	Pillar	https://coinmarketcap.com/currencies/pillar/	$0.028423	$7,371,543	-3.87%
371	PPP	PayPie	https://coinmarketcap.com/currencies/paypie/	$0.088289	$7,283,842	0.00%
372	NEC	Nectar	https://coinmarketcap.com/currencies/nectar/	$0.088223	$7,265,427	-10.57%
373	QSP	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	$0.011737	$7,245,641	1.29%
374	NMC	Namecoin	https://coinmarketcap.com/currencies/namecoin/	$0.489616	$7,215,172	-0.71%
375	TAAS	TaaS	https://coinmarketcap.com/currencies/taas/	$0.885353	$7,212,089	4.50%
376	POE	Po.et	https://coinmarketcap.com/currencies/poet/	$0.002295	$7,210,670	-0.80%
377	XPX	ProximaX	https://coinmarketcap.com/currencies/proximax/	$0.001180	$7,195,859	1.84%
378	NEBL	Neblio	https://coinmarketcap.com/currencies/neblio/	$0.477474	$7,175,482	2.65%
379	NYE	NewYork Exchange	https://coinmarketcap.com/currencies/newyork-exchange/	$2.25	$7,166,208	-34.47%
380	STPT	STPT	https://coinmarketcap.com/currencies/stpt/	$0.010439	$7,164,738	3.36%
381	MDT	Measurable Da...	https://coinmarketcap.com/currencies/measurable-data-token/	$0.012837	$7,158,495	-0.47%
382	CWV	CWV Chain	https://coinmarketcap.com/currencies/cwv-chain/	$0.002002	$7,087,893	-0.84%
383	CPT	Contents Prot...	https://coinmarketcap.com/currencies/contents-protocol/	$0.002320	$7,062,435	7.05%
384	LOC	LockTrip	https://coinmarketcap.com/currencies/lockchain/	$0.470794	$7,039,394	4.92%
385	TEN	Tokenomy	https://coinmarketcap.com/currencies/tokenomy/	$0.034550	$6,909,916	-0.41%
386	LXT	Litex	https://coinmarketcap.com/currencies/litex/	$0.007278	$6,986,707	30.79%
387	ADX	AdEx	https://coinmarketcap.com/currencies/adx-net/	$0.086239	$6,905,304	12.71%
388	TCT	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	$0.014320	$6,894,192	-2.13%
389	SNL	Sport and Lei...	https://coinmarketcap.com/currencies/sport-and-leisure/	$0.010124	$6,830,194	0.66%
390	HYDRO	Hydro	https://coinmarketcap.com/currencies/hydrogen/	$0.000634	$6,842,145	4.32%
391	VNT	VNT Chain	https://coinmarketcap.com/currencies/vnt-chain/	$0.002580	$6,870,106	15.61%
392	GO	GoChain	https://coinmarketcap.com/currencies/gochain/	$0.007970	$6,649,085	-4.62%
393	BURST	Burst	https://coinmarketcap.com/currencies/burst/	$0.003207	$6,632,993	-0.07%
394	ARPA	ARPA Chain	https://coinmarketcap.com/currencies/arpa-chain/	$0.017560	$6,612,271	10.47%
395	ORS	Origin Sport	https://coinmarketcap.com/currencies/origin-sport/	$0.021990	$6,597,029	-2.67%
396	ELI	Eligma Token	https://coinmarketcap.com/currencies/eligma-token/	$0.032915	$6,534,456	0.53%
397	SALT	SALT	https://coinmarketcap.com/currencies/salt/	$0.080547	$6,466,601	-0.06%
398	BLOCK	Blocknet	https://coinmarketcap.com/currencies/blocknet/	$1.03	$6,402,291	-3.62%
399	DUSK	Dusk Network	https://coinmarketcap.com/currencies/dusk-network/	$0.055521	$6,362,283	6.33%
400	SUSD	sUSD	https://coinmarketcap.com/currencies/susd/	$0.967094	$6,287,857	-1.07%
401	NAV	NavCoin	https://coinmarketcap.com/currencies/nav-coin/	$0.094402	$6,283,922	1.51%
402	MTC	doc.com Token	https://coinmarketcap.com/currencies/doc-com-token/	$0.008682	$6,270,043	-1.96%
403	NPX	NaPoleonX	https://coinmarketcap.com/currencies/napoleonx/	$0.256988	$6,249,982	2.50%
404	DAPS	DAPS Token	https://coinmarketcap.com/currencies/daps-token/	$0.000118	$6,222,130	-26.25%
405	INS	Insolar	https://coinmarketcap.com/currencies/insolar/	$0.190547	$6,192,790	-0.62%
406	DOCK	Dock	https://coinmarketcap.com/currencies/dock/	$0.011256	$6,174,527	1.81%
407	PPC	Peercoin	https://coinmarketcap.com/currencies/peercoin/	$0.239878	$6,169,655	0.67%
408	SMT	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	$0.004583	$6,143,637	3.87%
409	BAY	BitBay	https://coinmarketcap.com/currencies/bitbay/	$0.006053	$6,126,280	-7.79%
410	MET	Metronome	https://coinmarketcap.com/currencies/metronome/	$0.630760	$6,092,410	5.16%
411	XMC	Monero Classic	https://coinmarketcap.com/currencies/monero-classic/	$0.349162	$6,041,528	5.13%
412	KIN	Kin	https://coinmarketcap.com/currencies/kin/	$0.000005	$6,035,828	-6.59%
413	AVA	Travala.com	https://coinmarketcap.com/currencies/travala/	$0.136133	$6,031,126	14.19%
414	XSN	Stakenet	https://coinmarketcap.com/currencies/stakenet/	$0.067332	$6,027,569	5.99%
415	ADT	adToken	https://coinmarketcap.com/currencies/adtoken/	$0.007521	$5,971,673	-42.57%
416	VBK	VeriBlock	https://coinmarketcap.com/currencies/veriblock/	$0.011280	$5,967,129	2.55%
417	MBL	MovieBloc	https://coinmarketcap.com/currencies/moviebloc/	$0.001568	$5,952,327	3.75%
418	MWAT	Restart Energ...	https://coinmarketcap.com/currencies/restart-energy-mwat/	$0.013098	$5,930,103	4.08%
419	UUU	U Network	https://coinmarketcap.com/currencies/u-network/	$0.000845	$5,913,879	16.78%
420	DEC	Darico Ecosys...	https://coinmarketcap.com/currencies/darcio-ecosystem-coin/	$0.098035	$5,867,584	-8.22%
421	QQQ	Poseidon Network	https://coinmarketcap.com/currencies/poseidon-network/	$0.002752	$5,830,593	0.27%
422	SNGLS	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	$0.009628	$5,777,029	-3.65%
423	DGX	Digix Gold Token	https://coinmarketcap.com/currencies/digix-gold-token/	$47.55	$5,756,231	0.97%
424	SIX	SIX	https://coinmarketcap.com/currencies/six/	$0.020993	$5,747,482	2.21%
425	MTH	Monetha	https://coinmarketcap.com/currencies/monetha/	$0.014252	$5,734,941	1.20%
426	EVR	Everus	https://coinmarketcap.com/currencies/everus/	$0.012499	$5,709,332	14.24%
427	DMT	DMarket	https://coinmarketcap.com/currencies/dmarket/	$0.100220	$5,704,725	36.69%
428	RPL	Rocket Pool	https://coinmarketcap.com/currencies/rocket-pool/	$0.579057	$5,702,950	-11.09%
429	CBT	CommerceBlock	https://coinmarketcap.com/currencies/commerceblock/	$0.032595	$5,676,914	-8.07%
430	DBC	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	$0.001761	$5,635,477	-0.15%
431	COSM	Cosmo Coin	https://coinmarketcap.com/currencies/cosmo-coin/	$0.008389	$5,627,444	16.47%
432	NCASH	Nucleus Vision	https://coinmarketcap.com/currencies/nucleus-vision/	$0.000934	$5,577,746	0.74%
433	PMA	PumaPay	https://coinmarketcap.com/currencies/pumapay/	$0.000231	$5,574,185	-4.34%
434	OAX	OAX	https://coinmarketcap.com/currencies/oax/	$0.074118	$5,568,524	-0.61%
435	AERGO	Aergo	https://coinmarketcap.com/currencies/aergo/	$0.053336	$5,543,455	5.34%
436	OVC	OVCODE	https://coinmarketcap.com/currencies/ovcode/	$0.126069	$5,540,592	8.53%
437	CHSB	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	$0.009589	$5,521,352	-0.81%
438	BOA	BOSAGORA	https://coinmarketcap.com/currencies/bosagora/	$0.033643	$5,506,426	11.51%
439	USDQ	USDQ	https://coinmarketcap.com/currencies/usdq/	$0.997592	$5,490,323	-0.19%
440	BORA	BORA	https://coinmarketcap.com/currencies/bora/	$0.008170	$5,483,230	0.87%
441	OCN	Odyssey	https://coinmarketcap.com/currencies/odyssey/	$0.000816	$5,455,017	1.10%
442	BLZ	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	$0.025746	$5,429,951	0.51%
443	MLN	Melon	https://coinmarketcap.com/currencies/melon/	$4.33	$5,417,036	0.79%
444	BET	DAO.Casino	https://coinmarketcap.com/currencies/dao-casino/	$0.032371	$5,414,796	1.22%
445	PEOS	pEOS	https://coinmarketcap.com/currencies/peos/	$0.006484	$5,371,156	0.29%
446	VITE	VITE	https://coinmarketcap.com/currencies/vite/	$0.012868	$5,342,173	-6.25%
447	SBD	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	$0.704801	$5,236,214	3.08%
448	PRO	Propy	https://coinmarketcap.com/currencies/propy/	$0.109204	$5,233,428	2.05%
449	WBTC	Wrapped Bitcoin	https://coinmarketcap.com/currencies/wrapped-bitcoin/	$9157.31	$5,230,719	0.78%
450	FOAM	FOAM	https://coinmarketcap.com/currencies/foam/	$0.018140	$5,196,614	-8.70%
451	PHX	Red Pulse Pho...	https://coinmarketcap.com/currencies/red-pulse/	$0.006237	$5,174,555	0.64%
452	VEO	Amoveo	https://coinmarketcap.com/currencies/amoveo/	$76.21	$5,112,099	-15.62%
453	CRON	Cryptocean	https://coinmarketcap.com/currencies/cryptocean/	$0.790128	$5,111,528	-2.24%
454	IHF	Invictus Hype...	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	$0.042369	$5,054,610	10.80%
455	BOX	ContentBox	https://coinmarketcap.com/currencies/contentbox/	$0.005370	$4,973,653	21.71%
456	KAVA	Kava	https://coinmarketcap.com/currencies/kava/	$0.796852	$4,967,605	-1.93%
457	HYT	HoryouToken	https://coinmarketcap.com/currencies/horyoutoken/	$0.004547	$4,954,532	-11.79%
458	VIBE	VIBE	https://coinmarketcap.com/currencies/vibe/	$0.018993	$4,940,692	0.42%
459	BLK	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	$0.077455	$4,886,946	1.77%
460	GCR	Global Curren...	https://coinmarketcap.com/currencies/global-currency-reserve/	$0.045579	$4,855,521	-7.15%
461	AMB	Ambrosus	https://coinmarketcap.com/currencies/amber/	$0.033550	$4,850,960	-2.24%
462	GVT	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	$1.09	$4,845,427	1.32%
463	SNET	Snetwork	https://coinmarketcap.com/currencies/snetwork/	$0.028374	$4,825,088	3.97%
464	DAPP	LiquidApps	https://coinmarketcap.com/currencies/liquid-apps/	$0.012074	$4,788,027	-5.67%
465	SPND	Spendcoin	https://coinmarketcap.com/currencies/spendcoin/	$0.005010	$4,778,033	-2.97%
466	IPC	IPChain	https://coinmarketcap.com/currencies/ipchain/	$0.060393	$4,766,806	1.20%
467	BAND	Band Protocol	https://coinmarketcap.com/currencies/band-protocol/	$0.304068	$4,762,526	-1.47%
468	MHC	#MetaHash	https://coinmarketcap.com/currencies/metahash/	$0.003222	$4,761,782	-1.40%
469	HUM	Humanscape	https://coinmarketcap.com/currencies/humanscape/	$0.010221	$4,745,682	-1.98%
470	VIA	Viacoin	https://coinmarketcap.com/currencies/viacoin/	$0.204587	$4,737,738	2.89%
471	DERO	Dero	https://coinmarketcap.com/currencies/dero/	$0.562465	$4,732,672	12.26%
472	PCX	ChainX	https://coinmarketcap.com/currencies/chainx/	$2.06	$4,714,530	5.88%
473	FLO	FLO	https://coinmarketcap.com/currencies/flo/	$0.030941	$4,713,957	-0.97%
474	TERA	TERA	https://coinmarketcap.com/currencies/tera/	$0.005554	$4,691,870	-3.57%
475	DROP	Dropil	https://coinmarketcap.com/currencies/dropil/	$0.000205	$4,671,858	2.23%
476	BOX	BOX Token	https://coinmarketcap.com/currencies/box-token/	$0.046751	$4,657,280	0.23%
477	QUN	QunQun	https://coinmarketcap.com/currencies/qunqun/	$0.007001	$4,577,837	0.81%
478	VIB	Viberate	https://coinmarketcap.com/currencies/viberate/	$0.023829	$4,571,799	4.00%
479	WPR	WePower	https://coinmarketcap.com/currencies/wepower/	$0.007511	$4,568,419	0.15%
480	MOC	Moss Coin	https://coinmarketcap.com/currencies/moss-coin/	$0.014572	$4,565,249	4.65%
481	SRN	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	$0.009265	$4,556,862	-0.68%
482	ETZ	Ether Zero	https://coinmarketcap.com/currencies/ether-zero/	$0.027443	$4,550,671	-0.54%
483	ETHOS	Ethos	https://coinmarketcap.com/currencies/ethos/	$0.046070	$4,497,398	4.17%
484	SNM	SONM	https://coinmarketcap.com/currencies/sonm/	$0.012436	$4,472,130	-0.09%
485	SENSE	Sense	https://coinmarketcap.com/currencies/sense/	$0.008764	$4,459,165	-9.10%
486	XCP	Counterparty	https://coinmarketcap.com/currencies/counterparty/	$1.70	$4,454,176	0.75%
487	JNT	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	$0.026088	$4,437,067	2.13%
488	BDP	BidiPass	https://coinmarketcap.com/currencies/bidipass/	$0.020994	$4,414,356	5.14%
489	NCT	PolySwarm	https://coinmarketcap.com/currencies/polyswarm/	$0.002841	$4,393,312	-0.26%
490	CAS	Cashaa	https://coinmarketcap.com/currencies/cashaa/	$0.005789	$4,381,844	-10.45%
491	INE	IntelliShare	https://coinmarketcap.com/currencies/intellishare/	$0.023919	$4,371,511	4.83%
492	SMART	SmartCash	https://coinmarketcap.com/currencies/smartcash/	$0.003081	$4,356,626	-3.29%
493	SWFTC	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	$0.001182	$4,301,352	2.63%
494	NEU	Neumark	https://coinmarketcap.com/currencies/neumark/	$0.110238	$4,281,077	-6.62%
495	DTA	DATA	https://coinmarketcap.com/currencies/data/	$0.000434	$4,241,043	7.23%
496	HMC	Hi Mutual Soc...	https://coinmarketcap.com/currencies/hi-mutual-society/	$0.010423	$4,212,098	5.06%
497	LYM	Lympo	https://coinmarketcap.com/currencies/lympo/	$0.005090	$4,208,026	-4.41%
498	EMRX	Emirex Token	https://coinmarketcap.com/currencies/emirex-token/	$0.187635	$4,188,602	9.91%
499	QLC	QLC Chain	https://coinmarketcap.com/currencies/qlink/	$0.017445	$4,186,892	-2.69%
500	TDX	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	$0.439719	$4,179,521	-0.56%
501	BAAS	BaaSid	https://coinmarketcap.com/currencies/baasid/	$0.000951	$4,178,531	17.28%
502	DADI	Edge	https://coinmarketcap.com/currencies/edge/	$0.058450	$4,147,866	-5.17%
503	PEPECASH	Pepe Cash	https://coinmarketcap.com/currencies/pepe-cash/	$0.005859	$4,112,229	3.13%
504	APIS	APIS	https://coinmarketcap.com/currencies/apis/	$0.000457	$4,099,407	1.52%
505	YOYOW	YOYOW	https://coinmarketcap.com/currencies/yoyow/	$0.013579	$4,073,713	5.07%
506	XDN	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	$0.000550	$4,056,710	0.57%
507	ZIP	Zipper	https://coinmarketcap.com/currencies/zip/	$0.000250	$4,051,654	-0.26%
508	MITX	Morpheus Labs	https://coinmarketcap.com/currencies/morpheus-labs/	$0.011600	$4,041,279	18.52%
509	ZEL	ZelCash	https://coinmarketcap.com/currencies/zelcash/	$0.049628	$4,038,723	-2.10%
510	CREDO	Credo	https://coinmarketcap.com/currencies/credo/	$0.007285	$4,005,777	18.07%
511	DDD	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	$0.009393	$4,133,332	-5.18%
512	GET	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	$0.350823	$3,995,263	-7.74%
513	STACS	STACS	https://coinmarketcap.com/currencies/stacs/	$0.007674	$3,991,674	10.02%
514	XDCE	XinFin Network	https://coinmarketcap.com/currencies/xinfin-network/	$0.001014	$3,980,938	1.12%
515	NLG	Gulden	https://coinmarketcap.com/currencies/gulden/	$0.007921	$3,950,807	-1.46%
516	KEY	Selfkey	https://coinmarketcap.com/currencies/selfkey/	$0.001374	$3,941,926	3.82%
517	AUTO	Cube	https://coinmarketcap.com/currencies/cube/	$0.000577	$3,909,939	2.68%
518	POA	POA	https://coinmarketcap.com/currencies/poa/	$0.017596	$3,874,042	1.89%
519	APPC	AppCoins	https://coinmarketcap.com/currencies/appcoins/	$0.038609	$3,862,965	2.01%
520	SEAL	Sealchain	https://coinmarketcap.com/currencies/sealchain/	$0.020676	$3,841,877	0.15%
521	UPP	Sentinel Prot...	https://coinmarketcap.com/currencies/sentinel-protocol/	$0.012335	$3,838,614	6.00%
522	BNANA	Chimpion	https://coinmarketcap.com/currencies/chimpion/	$0.120697	$3,829,420	1.42%
523	XYO	XYO	https://coinmarketcap.com/currencies/xyo/	$0.000459	$3,804,130	2.53%
524	MPAY	MenaPay	https://coinmarketcap.com/currencies/menapay/	$0.039735	$3,790,783	12.27%
525	ECA	Electra	https://coinmarketcap.com/currencies/electra/	$0.000132	$3,778,577	-2.63%
526	AST	AirSwap	https://coinmarketcap.com/currencies/airswap/	$0.024906	$3,735,908	1.52%
527	BTN	BitNewChain	https://coinmarketcap.com/currencies/bitnewchain/	$0.020848	$3,746,350	-11.29%
528	DNT	district0x	https://coinmarketcap.com/currencies/district0x/	$0.006236	$3,741,331	0.24%
529	CAJ	Cajutel	https://coinmarketcap.com/currencies/cajutel/	$2.75	$3,719,620	0.54%
530	UBQ	Ubiq	https://coinmarketcap.com/currencies/ubiq/	$0.087215	$3,716,141	4.92%
531	BCPT	Blockmason Cr...	https://coinmarketcap.com/currencies/blockmason/	$0.031911	$3,706,707	1.85%
532	AID	AIDUS TOKEN	https://coinmarketcap.com/currencies/aidus-token/	$0.004104	$3,703,502	6.90%
533	DEX	DEX	https://coinmarketcap.com/currencies/dex/	$0.019322	$3,700,962	-5.49%
534	EMC	Emercoin	https://coinmarketcap.com/currencies/emercoin/	$0.082490	$3,683,772	1.98%
535	VEIL	Veil	https://coinmarketcap.com/currencies/veil/	$0.083743	$3,682,345	-0.69%
536	VEE	BLOCKv	https://coinmarketcap.com/currencies/blockv/	$0.001383	$3,681,715	9.34%
537	AEON	Aeon	https://coinmarketcap.com/currencies/aeon/	$0.232398	$3,679,200	-2.29%
538	MRPH	Morpheus.Network	https://coinmarketcap.com/currencies/morpheus-network/	$0.111186	$3,675,661	-7.42%
539	BTX	Bitcore	https://coinmarketcap.com/currencies/bitcore/	$0.210330	$3,661,225	-0.84%
540	NPC	NPCoin	https://coinmarketcap.com/currencies/npcoin/	$0.050334	$3,647,077	8.95%
541	ARN	Aeron	https://coinmarketcap.com/currencies/aeron/	$0.182379	$3,645,392	0.44%
542	BMX	BitMart Token	https://coinmarketcap.com/currencies/bitmart-token/	$0.021915	$3,642,880	5.15%
543	BOLT	BOLT	https://coinmarketcap.com/currencies/bolt/	$0.008826	$3,641,572	4.36%
544	AT	Artfinity	https://coinmarketcap.com/currencies/artfinity/	$0.029820	$3,636,183	-4.93%
545	PVT	Pivot Token	https://coinmarketcap.com/currencies/pivot-token/	$0.000707	$3,630,759	2.90%
546	USDS	StableUSD	https://coinmarketcap.com/currencies/stableusd/	$1.00	$3,605,219	-0.35%
547	TERN	Ternio	https://coinmarketcap.com/currencies/ternio/	$0.010707	$3,577,993	3.71%
548	KCASH	Kcash	https://coinmarketcap.com/currencies/kcash/	$0.007948	$3,540,682	5.23%
549	INF	Infinitus Token	https://coinmarketcap.com/currencies/infinitus-token/	$0.273782	$3,552,163	-4.48%
550	PLY	PlayCoin [ERC20]	https://coinmarketcap.com/currencies/playcoin-erc20/	$0.003578	$3,532,957	2.83%
551	RFR	Refereum	https://coinmarketcap.com/currencies/refereum/	$0.000840	$3,524,578	1.91%
552	XAUR	Xaurum	https://coinmarketcap.com/currencies/xaurum/	$0.045568	$3,497,712	-4.95%
553	FUEL	Etherparty	https://coinmarketcap.com/currencies/etherparty/	$0.003485	$3,484,706	2.71%
554	DLT	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	$0.040388	$3,472,476	0.54%
555	RSTR	Ondori	https://coinmarketcap.com/currencies/ondori/	$0.000092	$3,462,589	0.54%
556	AXE	Axe	https://coinmarketcap.com/currencies/axe/	$0.686054	$3,446,003	13.53%
557	BOS	BOScoin	https://coinmarketcap.com/currencies/boscoin/	$0.004962	$3,438,164	-1.33%
558	RNT	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	$0.011909	$3,383,076	9.63%
559	VITES	Vites	https://coinmarketcap.com/currencies/vites/	$0.000092	$3,379,703	0.54%
560	HLT	Esportbits	https://coinmarketcap.com/currencies/esportbits/	$0.168604	$3,374,327	-0.31%
561	ERC20	ERC20	https://coinmarketcap.com/currencies/erc20/	$0.067403	$3,370,139	0.21%
562	VDG	VeriDocGlobal	https://coinmarketcap.com/currencies/veridocglobal/	$0.000426	$3,341,249	-4.84%
563	HBT	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	$0.219346	$3,321,525	-5.81%
564	DAGT	Digital Asset...	https://coinmarketcap.com/currencies/digital-asset-guarantee-token/	$0.143761	$3,314,018	35.35%
565	PNT	Penta	https://coinmarketcap.com/currencies/penta/	$0.000156	$3,284,136	6.91%
566	ARRR	Pirate Chain	https://coinmarketcap.com/currencies/pirate-chain/	$0.025763	$3,281,911	9.08%
567	GENE	Gene Source C...	https://coinmarketcap.com/currencies/gene-source-code-chain/	$0.008728	$3,275,309	-20.21%
568	GOT	ParkinGo	https://coinmarketcap.com/currencies/parkingo/	$0.203048	$3,262,023	6.37%
569	GCC	Global Crypto...	https://coinmarketcap.com/currencies/global-cryptocurrency/	$0.002568	$3,254,689	0.58%
570	CNN	Content Neutr...	https://coinmarketcap.com/currencies/content-neutrality-network/	$0.000083	$3,226,138	5.78%
571	CTC	Credit Tag Chain	https://coinmarketcap.com/currencies/credit-tag-chain/	$0.053935	$3,222,435	0.00%
572	LKK	Lykke	https://coinmarketcap.com/currencies/lykke/	$0.010170	$3,221,856	-1.09%
573	FLASH	Flash	https://coinmarketcap.com/currencies/flash/	$0.003577	$3,218,967	7.64%
574	MOBI	Mobius	https://coinmarketcap.com/currencies/mobius/	$0.006248	$3,218,015	3.57%
575	SFT	Safex Token	https://coinmarketcap.com/currencies/safex-token/	$0.002568	$3,206,692	-60.02%
576	XST	Stealth	https://coinmarketcap.com/currencies/stealth/	$0.094918	$3,199,731	12.61%
577	MDS	MediShares	https://coinmarketcap.com/currencies/medishares/	$0.004288	$3,178,858	1.95%
578	TAC	Traceability ...	https://coinmarketcap.com/currencies/traceability-chain/	$0.004677	$3,181,961	-1.13%
579	BQQQ	Bitsdaq	https://coinmarketcap.com/currencies/bitsdaq/	$0.001185	$3,180,615	0.14%
580	RBLX	Rublix	https://coinmarketcap.com/currencies/rublix/	$0.153019	$3,179,940	0.32%
581	CLR	Color Platform	https://coinmarketcap.com/currencies/color-platform/	$0.023767	$3,165,943	-2.98%
582	WINGS	Wings	https://coinmarketcap.com/currencies/wings/	$0.032648	$3,146,601	3.18%
583	XBASE	Eterbase Coin	https://coinmarketcap.com/currencies/eterbase-coin/	$0.003193	$3,134,485	-0.62%
584	VID	VideoCoin	https://coinmarketcap.com/currencies/videocoin/	$0.200998	$3,119,700	1.57%
585	XWC	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	$0.011062	$2,767,545	-1.61%
586	GEN	DAOstack	https://coinmarketcap.com/currencies/daostack/	$0.075232	$3,106,714	-5.77%
587	GTC	Game.com	https://coinmarketcap.com/currencies/game/	$0.004062	$3,092,891	0.60%
588	COLX	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	$0.000267	$3,091,831	-2.41%
589	BAX	BABB	https://coinmarketcap.com/currencies/babb/	$0.000108	$3,078,482	64.87%
590	PCH	POPCHAIN	https://coinmarketcap.com/currencies/popchain/	$0.003429	$3,061,395	0.00%
591	GNX	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	$0.011960	$3,060,324	-1.50%
592	BTO	Bottos	https://coinmarketcap.com/currencies/bottos/	$0.005547	$3,028,681	2.30%
593	PTT	Proton Token	https://coinmarketcap.com/currencies/proton-token/	$0.000366	$3,028,199	0.56%
594	TIOX	Trade Token X	https://coinmarketcap.com/currencies/trade-token-x/	$0.035284	$3,011,788	2.66%
595	EDR	Endor Protocol	https://coinmarketcap.com/currencies/endor-protocol/	$0.003856	$3,004,871	12.02%
596	PLBT	Polybius	https://coinmarketcap.com/currencies/polybius/	$0.751964	$2,984,971	4.07%
597	HOT	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	$0.004217	$2,960,608	-5.29%
598	QCX	QuickX Protocol	https://coinmarketcap.com/currencies/quickx-protocol/	$0.007277	$2,946,707	0.24%
599	GSC	Global Social...	https://coinmarketcap.com/currencies/global-social-chain/	$0.005320	$2,921,844	2.05%
600	XCASH	X-CASH	https://coinmarketcap.com/currencies/x-cash/	$0.000063	$2,912,910	4.29%
601	TRAC	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	$0.010090	$2,895,023	2.18%
602	ECOM	Omnitude	https://coinmarketcap.com/currencies/omnitude/	$0.044023	$2,853,289	3.54%
603	1WO	1World	https://coinmarketcap.com/currencies/1world/	$0.123955	$2,848,647	0.78%
604	SWM	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	$0.036136	$2,842,240	-5.47%
605	FTC	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	$0.011097	$2,841,611	1.36%
606	NPXSXEM	Pundi X NEM	https://coinmarketcap.com/currencies/pundi-x-nem/	$0.000137	$2,836,545	-26.09%
607	COS	COS	https://coinmarketcap.com/currencies/cos/	$0.016225	$2,827,017	5.76%
608	KRI	Krios	https://coinmarketcap.com/currencies/krios/	$0.015803	$2,814,594	-5.22%
609	ONION	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	$0.174081	$2,805,686	2.72%
610	LND	Lendingblock	https://coinmarketcap.com/currencies/lendingblock/	$0.003620	$2,801,266	4.94%
611	DICE	Etheroll	https://coinmarketcap.com/currencies/etheroll/	$0.397344	$2,782,056	-2.41%
612	CAG	Change	https://coinmarketcap.com/currencies/change/	$0.087764	$2,779,795	0.75%
613	UOS	Ultra	https://coinmarketcap.com/currencies/ultra/	$0.030697	$2,778,843	2.58%
614	AFIN	Asian Fintech	https://coinmarketcap.com/currencies/asian-fintech/	$0.011089	$2,772,341	3.58%
615	MEETONE	MEET.ONE	https://coinmarketcap.com/currencies/meetone/	$0.001448	$2,770,529	3.17%
616	UTNP	Universa	https://coinmarketcap.com/currencies/universa/	$0.001494	$2,762,929	1.87%
617	BITUSD	bitUSD	https://coinmarketcap.com/currencies/bitusd/	$0.913604	$2,760,984	1.47%
618	KAASO	KAASO	https://coinmarketcap.com/currencies/kaaso/	$0.112153	$2,758,970	-6.40%
619	SOUL	Phantasma	https://coinmarketcap.com/currencies/phantasma/	$0.047219	$2,754,433	4.42%
620	FLETA	FLETA	https://coinmarketcap.com/currencies/fleta/	$0.009169	$2,742,887	-2.14%
621	NIX	NIX	https://coinmarketcap.com/currencies/nix/	$0.063269	$2,736,075	-7.72%
622	SKM	Skrumble Network	https://coinmarketcap.com/currencies/skrumble-network/	$0.002667	$2,724,726	3.03%
623	MXC	Machine Xchan...	https://coinmarketcap.com/currencies/machine-xchange-coin/	$0.002057	$2,715,000	3.01%
624	SNTVT	Sentivate	https://coinmarketcap.com/currencies/sentivate/	$0.001190	$2,713,833	-8.22%
625	FAT	Fatcoin	https://coinmarketcap.com/currencies/fatcoin/	$0.020097	$2,706,195	-0.30%
626	DREAM	DreamTeam Token	https://coinmarketcap.com/currencies/dreamteam-token/	$0.074191	$2,680,983	-0.68%
627	PST	Primas	https://coinmarketcap.com/currencies/primas/	$0.050850	$2,679,418	9.17%
628	MRX	Metrix Coin	https://coinmarketcap.com/currencies/metrix-coin/	$0.000183	$2,676,710	0.58%
629	LKY	Linkey	https://coinmarketcap.com/currencies/linkey/	$0.053283	$2,664,142	0.00%
630	RTH	Rotharium	https://coinmarketcap.com/currencies/rotharium/	$0.789206	$2,649,579	-2.03%
631	LUN	Lunyr	https://coinmarketcap.com/currencies/lunyr/	$1.15	$2,634,305	5.73%
632	DPY	Delphy	https://coinmarketcap.com/currencies/delphy/	$0.042203	$2,625,000	-1.99%
633	CLAM	Clams	https://coinmarketcap.com/currencies/clams/	$0.680651	$2,613,230	0.00%
634	SNC	SunContract	https://coinmarketcap.com/currencies/suncontract/	$0.021276	$2,610,689	2.65%
635	CHR	Chromia	https://coinmarketcap.com/currencies/chromia/	$0.023098	$2,602,571	-2.16%
636	XPM	Primecoin	https://coinmarketcap.com/currencies/primecoin/	$0.087537	$2,582,984	1.62%
637	VEX	Vexanium	https://coinmarketcap.com/currencies/vexanium/	$0.003653	$2,570,913	-0.26%
638	YEED	YGGDRASH	https://coinmarketcap.com/currencies/yeed/	$0.000472	$2,570,866	-1.94%
639	TOC	TouchCon	https://coinmarketcap.com/currencies/touchcon/	$0.010972	$2,558,304	25.26%
640	PPY	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	$0.563273	$2,535,594	11.90%
641	ZUM	ZumCoin	https://coinmarketcap.com/currencies/zumcoin/	$0.002567	$2,538,097	2.32%
642	LET	LinkEye	https://coinmarketcap.com/currencies/linkeye/	$0.004228	$2,536,523	-0.51%
643	CONST	Constant	https://coinmarketcap.com/currencies/constant/	$49.84	$2,527,029	0.00%
644	ISR	Insureum	https://coinmarketcap.com/currencies/insureum/	$0.011702	$2,504,701	57.23%
645	DEEX	DEEX	https://coinmarketcap.com/currencies/deex/	$0.044291	$2,503,700	34.36%
646	CZR	CanonChain	https://coinmarketcap.com/currencies/cononchain/	$0.004454	$2,492,921	21.22%
647	GBC	Gold Bits Coin	https://coinmarketcap.com/currencies/gold-bits-coin/	$0.023525	$2,492,885	-0.39%
648	NIM	Nimiq	https://coinmarketcap.com/currencies/nimiq/	$0.000512	$2,487,442	-3.10%
649	OLT	OneLedger	https://coinmarketcap.com/currencies/oneledger/	$0.006995	$2,482,296	-2.52%
650	VIDT	V-ID	https://coinmarketcap.com/currencies/v-id/	$0.076395	$2,449,886	-5.82%
651	ZUC	ZeuxCoin	https://coinmarketcap.com/currencies/zeuxcoin/	$0.012869	$2,445,051	23.09%
652	SCC	STEM CELL COIN	https://coinmarketcap.com/currencies/stem-cell-coin/	$0.007609	$2,440,012	-5.55%
653	CSNO	BitDice	https://coinmarketcap.com/currencies/bitdice/	$0.034833	$2,438,289	0.10%
654	UT	Ulord	https://coinmarketcap.com/currencies/ulord/	$0.018722	$2,432,447	-4.47%
655	HLC	Qitmeer	https://coinmarketcap.com/currencies/qitmeer/	$0.006236	$2,425,936	1.44%
656	BZNT	Bezant	https://coinmarketcap.com/currencies/bezant/	$0.003519	$2,421,403	13.93%
657	QWC	Qwertycoin	https://coinmarketcap.com/currencies/qwertycoin/	$0.000023	$2,417,819	-2.40%
658	VIN	VINchain	https://coinmarketcap.com/currencies/vinchain/	$0.004079	$2,407,285	4.12%
659	TFD	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	$0.004618	$2,390,789	-5.89%
660	XSPEC	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	$0.105223	$2,361,777	-0.91%
661	AMIO	Amino Network	https://coinmarketcap.com/currencies/amino-network/	$0.055122	$2,357,571	-10.66%
662	CLO	Callisto Network	https://coinmarketcap.com/currencies/callisto-network/	$0.001126	$2,356,855	-2.51%
663	CPX	Apex	https://coinmarketcap.com/currencies/apex/	$0.005317	$2,503,327	4.84%
664	MVL	MVL	https://coinmarketcap.com/currencies/mvl/	$0.000308	$2,354,417	1.71%
665	BST	BlockStamp	https://coinmarketcap.com/currencies/blockstamp/	$0.099020	$2,352,112	-0.52%
666	CRD	CryptalDash	https://coinmarketcap.com/currencies/cryptaldash/	$0.002342	$2,341,736	21.91%
667	CHX	Own	https://coinmarketcap.com/currencies/own/	$0.023363	$2,329,707	0.48%
668	EOSDAC	eosDAC	https://coinmarketcap.com/currencies/eosdac/	$0.003525	$2,329,416	4.32%
669	ART	Maecenas	https://coinmarketcap.com/currencies/maecenas/	$0.039851	$2,325,467	10.99%
670	SPANK	SpankChain	https://coinmarketcap.com/currencies/spankchain/	$0.007667	$2,300,302	15.99%
671	ECC	ECC	https://coinmarketcap.com/currencies/eccoin/	$0.000091	$2,286,505	0.30%
672	MINT	MintCoin	https://coinmarketcap.com/currencies/mintcoin/	$0.000092	$2,286,261	0.00%
673	PAC	PAC Global	https://coinmarketcap.com/currencies/pac-global/	$0.000299	$2,275,816	-4.57%
674	HALO	Halo Platform	https://coinmarketcap.com/currencies/halo-platform/	$0.000448	$2,272,794	18.56%
675	CSP	Caspian	https://coinmarketcap.com/currencies/caspian/	$0.005086	$2,257,819	2.11%
676	LIF	Winding Tree	https://coinmarketcap.com/currencies/winding-tree/	$0.105585	$2,257,606	-1.77%
677	UKG	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	$0.015459	$2,246,871	-1.49%
678	IQN	IQeon	https://coinmarketcap.com/currencies/iqeon/	$0.604862	$2,237,352	4.87%
679	SUB	Substratum	https://coinmarketcap.com/currencies/substratum/	$0.005799	$2,221,317	-11.80%
680	ABYSS	Abyss Token	https://coinmarketcap.com/currencies/abyss-token/	$0.009731	$2,218,750	-1.08%
681	PI	PCHAIN	https://coinmarketcap.com/currencies/pchain/	$0.005287	$2,209,086	-4.23%
682	ACM	Actinium	https://coinmarketcap.com/currencies/actinium/	$0.145698	$2,202,657	26.45%
683	OK	OKCash	https://coinmarketcap.com/currencies/okcash/	$0.029360	$2,196,830	-2.07%
684	SLT	Smartlands	https://coinmarketcap.com/currencies/smartlands/	$0.429287	$2,189,749	10.63%
685	LBC	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	$0.007795	$2,179,535	-0.69%
686	MIR	MIR COIN	https://coinmarketcap.com/currencies/mir-coin/	$0.003512	$2,177,407	0.19%
687	RUNE	THORChain	https://coinmarketcap.com/currencies/thorchain/	$0.020807	$2,174,921	11.05%
688	IHT	IHT Real Esta...	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	$0.002209	$2,173,590	0.36%
689	SHIP	ShipChain	https://coinmarketcap.com/currencies/shipchain/	$0.008290	$2,164,920	0.00%
690	IMG	ImageCoin	https://coinmarketcap.com/currencies/imagecoin/	$0.152536	$2,153,503	8.02%
691	TPAY	TokenPay	https://coinmarketcap.com/currencies/tokenpay/	$0.130975	$2,150,267	-9.47%
692	BITB	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	$0.000646	$2,140,082	0.00%
693	YEE	YEE	https://coinmarketcap.com/currencies/yee/	$0.001564	$2,134,836	-0.74%
694	SENT	Sentinel	https://coinmarketcap.com/currencies/sentinel/	$0.001064	$2,127,521	-7.29%
695	PGN	Pigeoncoin	https://coinmarketcap.com/currencies/pigeoncoin/	$0.000552	$2,107,646	-18.40%
696	PNK	Kleros	https://coinmarketcap.com/currencies/kleros/	$0.009252	$2,101,468	9.00%
697	DTX	DaTa eXchange	https://coinmarketcap.com/currencies/data-exchange/	$0.027304	$2,101,448	-3.49%
698	BBR	Boolberry	https://coinmarketcap.com/currencies/boolberry/	$0.158931	$2,099,070	-1.71%
699	TUBE	BitTube	https://coinmarketcap.com/currencies/bit-tube/	$0.009986	$2,087,717	-1.54%
700	IDH	indaHash	https://coinmarketcap.com/currencies/indahash/	$0.005198	$2,078,685	-0.89%
701	PHR	Phore	https://coinmarketcap.com/currencies/phore/	$0.108051	$2,059,746	5.06%
702	INSTAR	Insights Network	https://coinmarketcap.com/currencies/insights-network/	$0.014143	$2,052,179	4.08%
703	PIA	Futurepia	https://coinmarketcap.com/currencies/futurepia/	$0.002278	$2,043,644	-17.53%
704	REM	Remme	https://coinmarketcap.com/currencies/remme/	$0.003086	$2,034,897	31.64%
705	GARD	Hashgard	https://coinmarketcap.com/currencies/hashgard/	$0.000036	$2,056,971	4.70%
706	NTY	Nexty	https://coinmarketcap.com/currencies/nexty/	$0.000013	$2,022,786	0.00%
707	BWX	Blue Whale EX...	https://coinmarketcap.com/currencies/blue-whale-exchange/	$0.050288	$2,026,595	-14.73%
708	TEMCO	TEMCO	https://coinmarketcap.com/currencies/temco/	$0.000658	$2,025,238	-0.63%
709	LRN	Loopring [NEO]	https://coinmarketcap.com/currencies/loopring-neo/	$0.017698	$2,010,531	1.24%
710	FLC	Flowchain	https://coinmarketcap.com/currencies/flowchain/	$2.91	$2,006,953	-1.73%
711	DYN	Dynamic	https://coinmarketcap.com/currencies/dynamic/	$0.134628	$1,996,222	13.25%
712	RADS	Radium	https://coinmarketcap.com/currencies/radium/	$0.514146	$1,984,297	11.00%
713	ECOB	Ecobit	https://coinmarketcap.com/currencies/ecobit/	$0.004452	$1,978,583	0.00%
714	CPC	CPChain	https://coinmarketcap.com/currencies/cpchain/	$0.005135	$1,934,818	-1.23%
715	DACS	DACSEE	https://coinmarketcap.com/currencies/dacsee/	$0.002580	$1,947,510	0.00%
716	AIDOC	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	$0.003446	$1,929,358	1.66%
717	PRA	ProChain	https://coinmarketcap.com/currencies/prochain/	$0.038474	$1,906,896	-1.76%
718	WWB	Wowbit	https://coinmarketcap.com/currencies/wowbit/	$0.006880	$1,911,032	-6.86%
719	ALIS	ALIS	https://coinmarketcap.com/currencies/alis/	$0.048514	$1,910,999	112.82%
720	TCASH	TCASH	https://coinmarketcap.com/currencies/tcash/	$0.054110	$1,904,675	7.62%
721	TRST	WeTrust	https://coinmarketcap.com/currencies/trust/	$0.020495	$1,888,552	20.67%
722	AMO	AMO Coin	https://coinmarketcap.com/currencies/amo-coin/	$0.000238	$1,887,124	-1.80%
723	ZCN	0Chain	https://coinmarketcap.com/currencies/0chain/	$0.047002	$1,885,593	0.76%
724	NOKU	Noku	https://coinmarketcap.com/currencies/noku/	$0.079132	$1,881,528	-10.75%
725	RBY	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	$0.068471	$1,875,018	0.00%
726	XFC	Footballcoin	https://coinmarketcap.com/currencies/footballcoin/	$0.004978	$1,865,150	-0.80%
727	AMLT	AMLT	https://coinmarketcap.com/currencies/amlt/	$0.007713	$1,858,647	20.43%
728	PCL	Peculium	https://coinmarketcap.com/currencies/peculium/	$0.000914	$1,865,148	-1.46%
729	NGC	NAGA	https://coinmarketcap.com/currencies/naga/	$0.025408	$1,828,360	-6.35%
730	NSR	NuShares	https://coinmarketcap.com/currencies/nushares/	$0.000658	$1,826,660	-7.80%
731	NSD	Nasdacoin	https://coinmarketcap.com/currencies/nasdacoin/	$0.087742	$1,825,280	2.04%
732	SDA	SDChain	https://coinmarketcap.com/currencies/sdchain/	$0.001207	$1,811,186	-6.63%
733	CPT	Cryptaur	https://coinmarketcap.com/currencies/cryptaur/	$0.000157	$1,804,125	-4.40%
734	EOSDT	EOSDT	https://coinmarketcap.com/currencies/eosdt/	$1.00	$1,803,020	0.14%
735	INK	Ink	https://coinmarketcap.com/currencies/ink/	$0.003885	$1,802,388	1.51%
736	HPC	Happycoin	https://coinmarketcap.com/currencies/happycoin/	$0.079236	$1,799,345	-0.56%
737	OBSR	Observer	https://coinmarketcap.com/currencies/observer/	$0.001336	$1,788,270	9.47%
738	SKCH	Skychain	https://coinmarketcap.com/currencies/skychain/	$0.238285	$1,783,637	2.99%
739	VGW	VegaWallet Token	https://coinmarketcap.com/currencies/vegawallet-token/	$0.137428	$1,781,240	0.37%
740	MRK	MARK.SPACE	https://coinmarketcap.com/currencies/mark-space/	$0.002298	$1,778,830	-1.76%
741	DCT	DECENT	https://coinmarketcap.com/currencies/decent/	$0.034356	$1,762,675	-2.14%
742	ATCC	ATC Coin	https://coinmarketcap.com/currencies/atc-coin/	$0.004738	$1,751,232	1.76%
743	MTV	MultiVAC	https://coinmarketcap.com/currencies/multivac/	$0.000807	$1,740,923	-2.50%
744	QNTU	Quanta Utilit...	https://coinmarketcap.com/currencies/quanta-utility-token/	$0.000059	$1,740,272	3.26%
745	NASH	NeoWorld Cash	https://coinmarketcap.com/currencies/neoworld-cash/	$0.000082	$1,733,812	1.89%
746	NOS	nOS	https://coinmarketcap.com/currencies/nos/	$0.016833	$1,725,356	3.42%
747	OPQ	Opacity	https://coinmarketcap.com/currencies/opacity/	$0.013309	$1,716,820	1.98%
748	QDAO	Q DAO Governa...	https://coinmarketcap.com/currencies/q-dao-governance-token/	$24.96	$1,712,992	0.31%
749	CHAT	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	$0.002476	$1,708,561	5.08%
750	SSP	Smartshare	https://coinmarketcap.com/currencies/smartshare/	$0.000366	$1,699,748	4.90%
751	ZCL	ZClassic	https://coinmarketcap.com/currencies/zclassic/	$0.229662	$1,689,085	0.02%
752	BTT	Blocktrade Token	https://coinmarketcap.com/currencies/blocktrade-token/	$0.030297	$1,688,316	-4.52%
753	UCASH	UNIVERSAL CASH	https://coinmarketcap.com/currencies/ucash/	$0.000162	$1,675,805	-40.82%
754	MVP	Merculet	https://coinmarketcap.com/currencies/merculet/	$0.000683	$1,652,277	-5.09%
755	BXY	Beaxy	https://coinmarketcap.com/currencies/beaxy/	$0.012655	$1,649,590	29.16%
756	UBT	Unibright	https://coinmarketcap.com/currencies/unibright/	$0.011571	$1,615,025	0.33%
757	ADS	Adshares	https://coinmarketcap.com/currencies/adshares/	$0.046773	$1,630,099	-1.36%
758	KICK	KickToken	https://coinmarketcap.com/currencies/kick-token/	$0.000287	$1,604,938	13.25%
759	AXPR	aXpire	https://coinmarketcap.com/currencies/axpire/	$0.005647	$1,597,641	0.77%
760	TRTL	TurtleCoin	https://coinmarketcap.com/currencies/turtlecoin/	$0.000028	$1,598,352	7.74%
761	1SG	1SG	https://coinmarketcap.com/currencies/1sg/	$0.729211	$1,595,554	0.32%
762	MOON	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	$0.000007	$1,590,230	17.68%
763	RPD	Rapids	https://coinmarketcap.com/currencies/rapids/	$0.000144	$1,583,530	19.45%
764	XDB	DigitalBits	https://coinmarketcap.com/currencies/digitalbits/	$0.013277	$1,578,921	0.25%
765	CBC	CashBet Coin	https://coinmarketcap.com/currencies/cashbet-coin/	$0.009674	$1,571,931	0.81%
766	AKRO	Akropolis 	https://coinmarketcap.com/currencies/akropolis/	$0.002902	$1,552,610	-5.85%
767	HBX	HashBX 	https://coinmarketcap.com/currencies/hashsbx/	$0.002959	$1,542,721	-42.42%
768	ERG	Ergo	https://coinmarketcap.com/currencies/ergo/	$0.591309	$1,531,269	0.51%
769	BOOM	BOOM	https://coinmarketcap.com/currencies/boom/	$0.001995	$1,520,885	4.28%
770	TRY	Trias	https://coinmarketcap.com/currencies/trias/	$0.001892	$1,502,067	18.71%
771	KUBO	KuboCoin	https://coinmarketcap.com/currencies/kubocoin/	$0.000017	$1,482,980	1.55%
772	EFX	Effect.AI	https://coinmarketcap.com/currencies/effect-ai/	$0.005866	$1,479,152	29.67%
773	LYL	LoyalCoin	https://coinmarketcap.com/currencies/loyalcoin/	$0.000276	$1,477,828	-2.35%
774	HTML	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	$0.000028	$1,470,274	-1.42%
775	GLC	GoldCoin	https://coinmarketcap.com/currencies/goldcoin/	$0.035269	$1,469,374	-2.58%
776	UGC	ugChain	https://coinmarketcap.com/currencies/ugchain/	$0.002582	$1,468,861	10.79%
777	BBK	Brickblock	https://coinmarketcap.com/currencies/brickblock/	$0.019538	$1,467,919	0.21%
778	KRL	Kryll	https://coinmarketcap.com/currencies/kryll/	$0.057985	$1,450,247	4.22%
779	QRK	Quark	https://coinmarketcap.com/currencies/quark/	$0.005555	$1,449,149	1.53%
780	CLN	Colu Local Ne...	https://coinmarketcap.com/currencies/colu-local-network/	$0.015726	$1,439,690	-1.18%
781	PBT	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	$1153.35	$1,441,692	10.64%
782	XHV	Haven Protocol	https://coinmarketcap.com/currencies/haven-protocol/	$0.134885	$1,437,712	-6.11%
783	MCASH	Mcashchain	https://coinmarketcap.com/currencies/mcashchain/	$0.011936	$1,431,546	1.31%
784	GRID	Grid+	https://coinmarketcap.com/currencies/grid/	$0.036212	$1,420,837	11.75%
785	SHND	StrongHands	https://coinmarketcap.com/currencies/stronghands/	$0.000088	$1,416,073	-2.12%
786	EVY	EveryCoin 	https://coinmarketcap.com/currencies/everycoin/	$0.000150	$1,408,829	3.23%
787	XMY	Myriad	https://coinmarketcap.com/currencies/myriad/	$0.000825	$1,407,060	-9.22%
788	FTI	FansTime	https://coinmarketcap.com/currencies/fanstime/	$0.000493	$1,403,820	5.33%
789	ELAC	ELA Coin	https://coinmarketcap.com/currencies/ela-coin/	$0.007645	$1,400,782	-5.24%
790	ABL	Airbloc	https://coinmarketcap.com/currencies/airbloc/	$0.005503	$1,388,942	-0.05%
791	BNTY	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	$0.005936	$1,381,319	47.98%
792	SWTH	Switcheo	https://coinmarketcap.com/currencies/switcheo/	$0.002632	$1,375,858	0.88%
793	LIT	Lition	https://coinmarketcap.com/currencies/lition/	$0.053471	$1,373,296	3.01%
794	FAB	Fast Access B...	https://coinmarketcap.com/currencies/fast-access-blockchain/	$0.048481	$1,372,995	5.54%
795	POT	PotCoin	https://coinmarketcap.com/currencies/potcoin/	$0.006144	$1,369,641	0.53%
796	BCS	Business Cred...	https://coinmarketcap.com/currencies/business-credit-substitute/	$1.11	$1,367,855	3.36%
797	PLA	Plair	https://coinmarketcap.com/currencies/plair/	$0.000069	$1,365,439	-0.75%
798	MGO	MobileGo	https://coinmarketcap.com/currencies/mobilego/	$0.013600	$1,359,953	2.32%
799	GRC	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	$0.003210	$1,358,281	-2.98%
800	HSN	Hyper Speed N...	https://coinmarketcap.com/currencies/hyper-speed-network/	$0.032122	$1,354,599	2.73%
801	PARETO	PARETO Rewards	https://coinmarketcap.com/currencies/pareto-rewards/	$0.002896	$1,354,146	-0.38%
802	KT	Kuai Token	https://coinmarketcap.com/currencies/kuai-token/	$0.140832	$1,353,938	0.98%
803	ATN	ATN	https://coinmarketcap.com/currencies/atn/	$0.016051	$1,353,180	0.00%
804	GAME	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	$0.019380	$1,353,394	3.35%
805	BC	Bitcoin Confi...	https://coinmarketcap.com/currencies/bitcoin-confidential/	$0.000183	$1,350,660	0.54%
806	EXRN	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	$0.000015	$1,347,246	1.67%
807	HVN	Hiveterminal ...	https://coinmarketcap.com/currencies/hiveterminal-token/	$0.003283	$1,346,961	0.87%
808	NEXT	Next.exchange	https://coinmarketcap.com/currencies/next-exchange/	$0.320892	$1,346,606	41.84%
809	HSC	HashCoin	https://coinmarketcap.com/currencies/hashcoin/	$0.000104	$1,332,853	-2.29%
810	EDG	Edgeless	https://coinmarketcap.com/currencies/edgeless/	$0.011360	$1,329,655	-2.64%
811	MTN	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	$0.004302	$1,327,873	2.47%
812	EKO	EchoLink	https://coinmarketcap.com/currencies/echolink/	$0.002643	$1,321,407	-0.07%
813	BEET	Beetle Coin	https://coinmarketcap.com/currencies/beetle-coin/	$0.006407	$1,310,470	1.21%
814	UBEX	Ubex	https://coinmarketcap.com/currencies/ubex/	$0.000421	$1,307,331	2.51%
815	UNI	UNICORN Token	https://coinmarketcap.com/currencies/unicorn-token/	$0.012193	$1,303,609	72.31%
816	BIS	Bismuth	https://coinmarketcap.com/currencies/bismuth/	$0.093843	$1,289,310	1.11%
817	COV	Covesting	https://coinmarketcap.com/currencies/covesting/	$0.071287	$1,283,163	-5.93%
818	FDZ	Friendz	https://coinmarketcap.com/currencies/friends/	$0.002480	$1,277,630	4.09%
819	AZ	Azbit	https://coinmarketcap.com/currencies/azbit/	$0.000018	$1,270,503	-2.32%
820	ENQ	Enecuum	https://coinmarketcap.com/currencies/enecuum/	$0.030585	$1,265,118	0.75%
821	SEM	Semux	https://coinmarketcap.com/currencies/semux/	$0.103751	$1,257,927	6.43%
822	BITG	BitGreen	https://coinmarketcap.com/currencies/bitgreen/	$0.127262	$1,252,195	3.55%
823	XHI	HiCoin	https://coinmarketcap.com/currencies/hicoin/	$0.000280	$1,241,919	2.38%
824	ATL	ATLANT	https://coinmarketcap.com/currencies/atlant/	$0.022894	$1,240,263	12.10%
825	N8V	NativeCoin	https://coinmarketcap.com/currencies/native-coin/	$0.056560	$1,249,112	-15.09%
826	BXC	BonusCloud	https://coinmarketcap.com/currencies/bonuscloud/	$0.000451	$1,239,564	-1.13%
827	WGP	W Green Pay	https://coinmarketcap.com/currencies/w-green-pay/	$0.128728	$1,239,475	0.71%
828	FTN	Fountain	https://coinmarketcap.com/currencies/fountain/	$0.013970	$1,235,137	-0.64%
829	DMD	Diamond	https://coinmarketcap.com/currencies/diamond/	$0.367766	$1,232,440	7.64%
830	PLTC	PlatonCoin	https://coinmarketcap.com/currencies/platoncoin/	$0.211302	$1,228,508	25.29%
831	3DC	3DCoin	https://coinmarketcap.com/currencies/3dcoin/	$0.017926	$1,227,331	16.08%
832	EFL	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	$0.071608	$1,224,597	0.29%
833	TFB	TrueFeedBack	https://coinmarketcap.com/currencies/truefeedback/	$0.000572	$1,219,589	1.69%
834	TFL	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	$0.195064	$1,218,618	1.57%
835	LIKE	LikeCoin	https://coinmarketcap.com/currencies/likecoin/	$0.002556	$1,210,581	0.65%
836	IONC	IONChain	https://coinmarketcap.com/currencies/ionchain/	$0.009981	$1,209,556	0.23%
837	SHA	Safe Haven	https://coinmarketcap.com/currencies/safe-haven/	$0.000402	$1,207,104	-7.49%
838	XLQ	ALQO	https://coinmarketcap.com/currencies/alqo/	$0.018585	$1,201,779	15.13%
839	LEO	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	$0.006264	$1,202,078	2.69%
840	CPAY	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	$0.017563	$1,200,551	0.63%
841	XPD	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	$0.018712	$1,197,423	0.00%
842	PTI	Paytomat	https://coinmarketcap.com/currencies/paytomat/	$0.006459	$1,194,386	0.49%
843	TIME	Chronobank	https://coinmarketcap.com/currencies/chronobank/	$1.68	$1,194,631	10.44%
844	NBC	Niobium Coin	https://coinmarketcap.com/currencies/niobium-coin/	$0.024304	$1,192,767	0.45%
845	SIN	SINOVATE	https://coinmarketcap.com/currencies/sinovate/	$0.001852	$1,190,631	-3.57%
846	SSC	SelfSell	https://coinmarketcap.com/currencies/selfsell/	$0.003044	$1,187,023	0.82%
847	MGD	MassGrid	https://coinmarketcap.com/currencies/massgrid/	$0.015735	$1,182,132	0.84%
848	RFOX	RedFOX Labs	https://coinmarketcap.com/currencies/redfox-labs/	$0.010937	$1,180,082	-1.95%
849	TOL	Tolar	https://coinmarketcap.com/currencies/tolar/	$0.004800	$1,179,381	5.04%
850	PND	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	$0.000036	$1,177,812	18.69%
851	ZER	Zero	https://coinmarketcap.com/currencies/zero/	$0.161948	$1,177,485	18.68%
852	CHP	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	$0.003910	$1,175,836	-1.73%
853	DAT	Datum	https://coinmarketcap.com/currencies/datum/	$0.001174	$1,174,385	2.35%
854	LUX	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	$0.175498	$1,174,254	-3.75%
855	NCC	NeuroChain	https://coinmarketcap.com/currencies/neurochain/	$0.002774	$1,172,464	5.43%
856	LEDU	Education Eco...	https://coinmarketcap.com/currencies/education-ecosystem/	$0.005378	$1,171,309	1.75%
857	MAS	MidasProtocol	https://coinmarketcap.com/currencies/midasprotocol/	$0.003600	$1,168,354	1.06%
858	EDN	Eden	https://coinmarketcap.com/currencies/eden/	$0.001947	$1,168,013	-5.49%
859	HXRO	Hxro	https://coinmarketcap.com/currencies/hxro/	$0.019789	$1,155,922	31.42%
860	MIC	Mindexcoin	https://coinmarketcap.com/currencies/mindexcoin/	$0.001689	$1,154,774	-1.16%
861	LML	Lisk Machine ...	https://coinmarketcap.com/currencies/lisk-machine-learning/	$0.009576	$1,149,106	6.90%
862	VSF	VeriSafe	https://coinmarketcap.com/currencies/verisafe/	$0.000105	$1,143,592	0.00%
863	SPC	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	$0.002213	$1,141,724	2.65%
864	IOC	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	$0.064196	$1,140,722	-4.40%
865	NKC	Nework	https://coinmarketcap.com/currencies/nework/	$0.007706	$1,137,266	-3.05%
866	VRC	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	$0.035211	$1,132,399	-0.24%
867	STA	Starta	https://coinmarketcap.com/currencies/starta/	$0.226389	$1,130,940	4.24%
868	PASC	Pascal	https://coinmarketcap.com/currencies/pascal/	$0.039033	$1,123,866	5.28%
869	CEEK	CEEK VR	https://coinmarketcap.com/currencies/ceek-vr/	$0.002254	$1,123,888	0.43%
870	SINS	SafeInsure	https://coinmarketcap.com/currencies/safeinsure/	$0.295216	$1,123,345	-22.49%
871	OSA	Optimal Shelf...	https://coinmarketcap.com/currencies/optimal-shelf-availability-token/	$0.000808	$1,122,573	2.54%
872	RBG	Rankingball Gold	https://coinmarketcap.com/currencies/rankingball-gold/	$0.002950	$1,118,926	0.00%
873	NBOT	Naka Bodhi Token	https://coinmarketcap.com/currencies/naka-bodhi-token/	$0.018636	$1,118,163	-7.30%
874	A	Alpha Token	https://coinmarketcap.com/currencies/alpha-token/	$0.039603	$1,115,730	132.23%
875	BKX	BANKEX	https://coinmarketcap.com/currencies/bankex/	$0.006282	$1,110,284	-1.52%
876	BTCP	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	$0.231956	$1,104,734	11.29%
877	GAT	Global Awards...	https://coinmarketcap.com/currencies/global-awards-token/	$0.001610	$1,104,108	0.12%
878	TAS	Tarush	https://coinmarketcap.com/currencies/tarush/	$0.000183	$1,100,200	101.09%
879	SAFE	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	$0.039627	$1,099,047	-9.26%
880	FREE	FREE Coin	https://coinmarketcap.com/currencies/free-coin/	$1.3e-07	$1,094,350	42.87%
881	HMQ	Humaniq	https://coinmarketcap.com/currencies/humaniq/	$0.005878	$1,092,226	0.50%
882	UDOO	Howdoo	https://coinmarketcap.com/currencies/howdoo/	$0.011177	$1,093,307	0.54%
883	BCO	BridgeCoin	https://coinmarketcap.com/currencies/bridgecoin/	$0.040421	$1,091,374	-8.04%
884	ORB	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	$0.338863	$1,091,347	0.58%
885	COVA	COVA	https://coinmarketcap.com/currencies/cova/	$0.000436	$1,088,214	18.20%
886	ZCO	Zebi	https://coinmarketcap.com/currencies/zebi/	$0.002999	$1,084,457	0.13%
887	SHIFT	Shift	https://coinmarketcap.com/currencies/shift/	$0.080153	$1,083,424	-0.05%
888	BLT	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	$0.020124	$1,079,521	-45.23%
889	CLOAK	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	$0.201273	$1,078,468	-4.14%
890	DAX	DAEX	https://coinmarketcap.com/currencies/daex/	$0.003024	$1,072,515	-6.58%
891	ZPT	Zeepin	https://coinmarketcap.com/currencies/zeepin/	$0.002137	$1,068,426	1.18%
892	KAT	Kambria	https://coinmarketcap.com/currencies/kambria/	$0.000866	$1,065,986	-1.35%
893	CRW	Crown	https://coinmarketcap.com/currencies/crown/	$0.045121	$1,054,080	-5.57%
894	CURE	Curecoin	https://coinmarketcap.com/currencies/curecoin/	$0.043169	$1,048,632	3.29%
895	SPHR	Sphere	https://coinmarketcap.com/currencies/sphere/	$0.083913	$1,047,602	-2.72%
896	SLR	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	$0.018800	$1,047,092	1.41%
897	CXO	CargoX	https://coinmarketcap.com/currencies/cargox/	$0.006699	$1,039,678	-4.27%
898	SHX	Stronghold Token	https://coinmarketcap.com/currencies/stronghold-token/	$0.000307	$1,037,184	-9.43%
899	PIB	PIBBLE	https://coinmarketcap.com/currencies/pibble/	$0.000137	$1,024,108	-0.04%
900	AMON	AmonD	https://coinmarketcap.com/currencies/amond/	$0.002484	$1,019,499	0.06%
901	WCT	Waves Communi...	https://coinmarketcap.com/currencies/waves-community-token/	$0.101645	$1,016,442	17.66%
902	WCT	Waves Communi...	https://coinmarketcap.com/currencies/waves-community-token/	$0.101645	$1,016,442	17.66%
903	RMT	SureRemit	https://coinmarketcap.com/currencies/sureremit/	$0.002015	$1,007,586	2.48%
904	NTK	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	$0.012754	$1,006,349	-2.27%
905	PXL	PIXEL	https://coinmarketcap.com/currencies/pixel/	$0.016503	$1,002,313	1.22%
906	OPEN	Open Platform	https://coinmarketcap.com/currencies/open-platform/	$0.000944	$998,752	4.10%
907	IFC	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	$0.000011	$997,008	-4.97%
908	DIME	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	$0.000002	$991,919	5.04%
909	MYST	Mysterium	https://coinmarketcap.com/currencies/mysterium/	$0.041552	$983,631	-1.09%
910	TRC	Terracoin	https://coinmarketcap.com/currencies/terracoin/	$0.042670	$978,656	4.15%
911	UND	Unification	https://coinmarketcap.com/currencies/unification/	$0.021614	$971,306	-8.61%
912	IMT	Moneytoken	https://coinmarketcap.com/currencies/moneytoken/	$0.000103	$970,839	-6.01%
913	TELOS	Teloscoin	https://coinmarketcap.com/currencies/teloscoin/	$0.008253	$970,737	14.40%
914	OMNI	Omni	https://coinmarketcap.com/currencies/omni/	$1.73	$970,714	-1.88%
915	MUE	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	$0.005594	$969,645	3.70%
916	FNKOS	FNKOS	https://coinmarketcap.com/currencies/fnkos/	$0.006218	$967,264	6.13%
917	TAU	Lamden	https://coinmarketcap.com/currencies/lamden/	$0.006793	$966,075	10.70%
918	FTX	FintruX Network	https://coinmarketcap.com/currencies/fintrux-network/	$0.010057	$955,423	-4.65%
919	UQC	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	$0.094998	$949,983	1.91%
920	EXP	Expanse	https://coinmarketcap.com/currencies/expanse/	$0.057090	$948,872	-9.14%
921	STK	STK	https://coinmarketcap.com/currencies/stk/	$0.002754	$947,147	-3.85%
922	NEAL	Coineal Token	https://coinmarketcap.com/currencies/coineal-token/	$0.003045	$947,006	-1.83%
923	CBC	Cashbery Coin	https://coinmarketcap.com/currencies/cashbery-coin/	$0.013984	$939,515	-0.77%
924	RTE	Rate3	https://coinmarketcap.com/currencies/rate3/	$0.001056	$938,793	2.90%
925	NOIA	NOIA Network	https://coinmarketcap.com/currencies/noia-network/	$0.010645	$934,450	-0.46%
926	C8	Carboneum [C8...	https://coinmarketcap.com/currencies/carboneum-c8-token/	$0.017923	$926,826	17.63%
927	DBET	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	$0.004904	$924,987	-6.00%
928	ADM	ADAMANT Messe...	https://coinmarketcap.com/currencies/adamant-messenger/	$0.011056	$914,784	9.97%
929	RED	RED	https://coinmarketcap.com/currencies/red/	$0.006985	$908,067	3.48%
930	KICKS	Sessia	https://coinmarketcap.com/currencies/sessia/	$0.155030	$905,352	0.49%
931	ORMEUS	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	$0.025036	$898,918	5.59%
932	IGG	IG Gold	https://coinmarketcap.com/currencies/ig-gold/	$0.000092	$891,657	0.92%
933	COTI	COTI	https://coinmarketcap.com/currencies/coti/	$0.009027	$891,100	-3.76%
934	BCY	BitCrystals	https://coinmarketcap.com/currencies/bitcrystals/	$0.038874	$886,963	2.65%
935	CVN	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	$0.071222	$881,789	2.10%
936	OLXA	OLXA	https://coinmarketcap.com/currencies/olxa/	$0.000648	$880,487	0.55%
937	XES	Proxeus	https://coinmarketcap.com/currencies/proxeus/	$0.004315	$877,052	-51.25%
938	AUR	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	$0.048414	$875,252	-23.86%
939	VRA	Verasity	https://coinmarketcap.com/currencies/verasity/	$0.000349	$874,681	-0.20%
940	GMB	GAMB	https://coinmarketcap.com/currencies/gamb/	$0.000226	$871,224	7.71%
941	42	42-coin	https://coinmarketcap.com/currencies/42-coin/	$20706.70	$869,680	0.40%
942	CCX	Conceal	https://coinmarketcap.com/currencies/conceal/	$0.173228	$869,364	1.03%
943	DIG	Dignity	https://coinmarketcap.com/currencies/dignity/	$0.001654	$865,217	-7.37%
944	FRM	Ferrum Network	https://coinmarketcap.com/currencies/ferrum-network/	$0.003388	$862,978	0.94%
945	XRA	Xriba	https://coinmarketcap.com/currencies/xriba/	$0.008364	$851,015	-8.20%
946	GEO	GeoCoin	https://coinmarketcap.com/currencies/geocoin/	$0.266413	$847,340	-15.89%
947	NUG	Nuggets	https://coinmarketcap.com/currencies/nuggets/	$0.000488	$842,260	-4.28%
948	SEN	Sentient Coin	https://coinmarketcap.com/currencies/consensus/	$0.000627	$841,389	-1.73%
949	ZPR	ZPER	https://coinmarketcap.com/currencies/zper/	$0.000639	$840,708	12.27%
950	WNL	WinStars.live	https://coinmarketcap.com/currencies/winstars-live/	$0.050448	$836,124	-12.94%
951	CAN	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	$0.008979	$828,085	3.09%
952	ZP	Zen Protocol	https://coinmarketcap.com/currencies/zen-protocol/	$0.036556	$827,502	-6.41%
953	AOG	smARTOFGIVING	https://coinmarketcap.com/currencies/smartofgiving/	$0.011188	$819,986	10.84%
954	ZLA	Zilla	https://coinmarketcap.com/currencies/zilla/	$0.013597	$815,819	-4.81%
955	SXUT	Spectre.ai Ut...	https://coinmarketcap.com/currencies/spectre-utility/	$0.032613	$799,984	0.00%
956	QAC	Quasarcoin	https://coinmarketcap.com/currencies/quasarcoin/	$0.004691	$789,715	-6.88%
957	CEN	Coinsuper Eco...	https://coinmarketcap.com/currencies/coinsuper-ecosystem-network/	$0.001982	$787,111	-8.96%
958	SPIKE	Spiking	https://coinmarketcap.com/currencies/spiking/	$0.001742	$771,726	-28.68%
959	VIPS	Vipstar Coin	https://coinmarketcap.com/currencies/vipstar-coin/	$0.000016	$765,320	7.45%
960	BOMB	BOMB	https://coinmarketcap.com/currencies/bomb/	$0.798144	$762,786	-6.61%
961	VNT	Vanta Network	https://coinmarketcap.com/currencies/vanta-network/	$0.000270	$760,761	-0.81%
962	CARD	Cardstack	https://coinmarketcap.com/currencies/cardstack/	$0.000321	$759,171	-0.74%
963	NBAI	Nebula AI	https://coinmarketcap.com/currencies/nebula-ai/	$0.000594	$745,103	5.33%
964	SIB	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	$0.041378	$743,062	-7.29%
965	AAC	Acute Angle C...	https://coinmarketcap.com/currencies/acute-angle-cloud/	$0.002968	$742,122	5.66%
966	STX	Stox	https://coinmarketcap.com/currencies/stox/	$0.013837	$738,876	1.54%
967	AMPL	Ampleforth	https://coinmarketcap.com/currencies/ampleforth/	$0.318675	$737,246	-3.79%
968	HBZ	HBZ coin	https://coinmarketcap.com/currencies/hbz-coin/	$0.000753	$736,943	-4.22%
969	SENC	Sentinel Chain	https://coinmarketcap.com/currencies/sentinel-chain/	$0.003717	$733,334	-0.49%
970	AWC	Atomic Wallet...	https://coinmarketcap.com/currencies/atomic-wallet-coin/	$0.117182	$725,019	0.42%
971	DIT	Digital Insur...	https://coinmarketcap.com/currencies/digital-insurance-token/	$0.003226	$724,803	44.05%
972	TNC	Trinity Netwo...	https://coinmarketcap.com/currencies/trinity-network-credit/	$0.002149	$716,476	12.98%
973	ABDT	Atlantis Blue...	https://coinmarketcap.com/currencies/atlantis-blue-digital-token/	$0.003929	$714,304	8.65%
974	X8X	X8X Token	https://coinmarketcap.com/currencies/x8x-token/	$0.009077	$711,248	1.63%
975	MESG	MESG	https://coinmarketcap.com/currencies/mesg/	$0.017681	$711,015	-2.20%
976	FXT	FuzeX	https://coinmarketcap.com/currencies/fuzex/	$0.000861	$710,104	-25.75%
977	VDX	Vodi X	https://coinmarketcap.com/currencies/vodi-x/	$0.001741	$702,948	5.75%
978	IVY	Ivy	https://coinmarketcap.com/currencies/ivy/	$0.001621	$699,951	0.00%
979	SWT	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	$0.081084	$692,142	-2.84%
980	NVC	Novacoin	https://coinmarketcap.com/currencies/novacoin/	$0.295485	$690,180	-3.83%
981	XEL	XEL	https://coinmarketcap.com/currencies/xel/	$0.007520	$689,414	-1.81%
982	CAPP	Cappasity	https://coinmarketcap.com/currencies/cappasity/	$0.001276	$685,755	2.93%
983	COFI	CoinFi	https://coinmarketcap.com/currencies/coinfi/	$0.003446	$684,580	-2.53%
984	MTX	Matryx	https://coinmarketcap.com/currencies/matryx/	$0.029418	$683,201	-5.76%
985	ROCK2	ICE ROCK MINING	https://coinmarketcap.com/currencies/ice-rock-mining/	$0.043358	$681,767	2.14%
986	BFX	Bitfex	https://coinmarketcap.com/currencies/bitfex/	$0.006957	$680,986	2.69%
987	ICNQ	Iconiq Lab Token	https://coinmarketcap.com/currencies/iconiq-lab-token/	$0.176240	$679,967	-12.94%
988	SPD	Stipend	https://coinmarketcap.com/currencies/stipend/	$0.059688	$677,785	-9.84%
989	DNA	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	$0.010106	$677,419	-23.30%
990	UBC	Ubcoin Market	https://coinmarketcap.com/currencies/ubcoin-market/	$0.001970	$674,272	-3.14%
991	HEAT	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	$0.015682	$669,839	-3.38%
992	EBC	EBCoin	https://coinmarketcap.com/currencies/ebcoin/	$0.000146	$668,163	0.71%
993	BCDT	Blockchain Ce...	https://coinmarketcap.com/currencies/blockchain-certified-data-token/	$0.019860	$667,481	-9.06%
994	MVC	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	$0.006236	$666,873	-0.88%
995	UP	UpToken	https://coinmarketcap.com/currencies/uptoken/	$0.004533	$664,211	10.08%
996	THRT	Thrive Token	https://coinmarketcap.com/currencies/thrive-token/	$0.006414	$662,245	0.51%
997	WCO	Winco	https://coinmarketcap.com/currencies/winco/	$0.001374	$660,079	3.56%
998	BCA	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	$0.035750	$658,485	-12.76%
999	DATX	DATx	https://coinmarketcap.com/currencies/datx/	$0.000469	$652,457	1.84%
1000	ESBC	ESBC	https://coinmarketcap.com/currencies/esbc/	$0.033597	$647,727	0.21%
1001	FTT	FarmaTrust	https://coinmarketcap.com/currencies/farmatrust/	$0.001079	$647,417	0.82%
1002	HKN	Hacken	https://coinmarketcap.com/currencies/hacken/	$0.117937	$647,302	3.07%
1003	MPG	Max Property ...	https://coinmarketcap.com/currencies/max-property-group/	$0.005507	$647,299	-2.34%
1004	USNBT	NuBits	https://coinmarketcap.com/currencies/nubits/	$0.058936	$647,218	6.96%
1005	HOLD	HOLD	https://coinmarketcap.com/currencies/hold/	$0.000917	$646,018	0.84%
1006	SPD	SPINDLE	https://coinmarketcap.com/currencies/spindle/	$0.000201	$644,957	9.57%
1007	CRYP	CrypticCoin	https://coinmarketcap.com/currencies/crypticcoin/	$0.000252	$642,121	7.97%
1008	FLP	FLIP	https://coinmarketcap.com/currencies/flip/	$0.011460	$641,267	-0.33%
1009	IXT	IXT	https://coinmarketcap.com/currencies/ixledger/	$0.017891	$640,132	41.81%
1010	RVR	RevolutionVR	https://coinmarketcap.com/currencies/revolutionvr/	$0.003025	$635,198	0.00%
1011	EVN	EvenCoin	https://coinmarketcap.com/currencies/evencoin/	$0.020407	$634,148	-1.73%
1012	TRTT	Trittium	https://coinmarketcap.com/currencies/trittium/	$0.004913	$633,375	2.75%
1013	PAYX	Paypex	https://coinmarketcap.com/currencies/paypex/	$0.009198	$629,382	-4.82%
1014	QBX	qiibee	https://coinmarketcap.com/currencies/qiibee/	$0.001373	$629,039	0.37%
1015	XLR	Solaris	https://coinmarketcap.com/currencies/solaris/	$0.361148	$627,631	-20.32%
1016	MTC	MTC Mesh Network	https://coinmarketcap.com/currencies/mtc-mesh-network/	$0.001716	$626,364	1.45%
1017	AC3	AC3	https://coinmarketcap.com/currencies/ac3/	$0.001271	$624,314	-11.90%
1018	HORUS	HorusPay	https://coinmarketcap.com/currencies/horuspay/	$0.000715	$623,708	-1.75%
1019	DAB	DABANKING	https://coinmarketcap.com/currencies/dabanking/	$0.201023	$620,805	-0.33%
1020	PLU	Pluton	https://coinmarketcap.com/currencies/pluton/	$0.727924	$618,735	3.90%
1021	FOTA	Fortuna	https://coinmarketcap.com/currencies/fortuna/	$0.001288	$618,059	1.22%
1022	XBC	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	$4.68	$613,297	4.67%
1023	AVT	Aventus	https://coinmarketcap.com/currencies/aventus/	$0.102736	$616,419	-6.96%
1024	BIRD	Birdchain	https://coinmarketcap.com/currencies/birdchain/	$0.004095	$613,594	-12.26%
1025	OCT	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	$0.020484	$614,508	3.67%
1026	CLB	Cloudbric	https://coinmarketcap.com/currencies/cloudbric/	$0.001395	$607,099	-2.35%
1027	SKB	Sakura Bloom	https://coinmarketcap.com/currencies/sakura-bloom/	$0.000234	$604,862	6.96%
1028	IPL	VouchForMe	https://coinmarketcap.com/currencies/insurepal/	$0.002637	$603,371	-22.15%
1029	CBM	CryptoBonusMiles	https://coinmarketcap.com/currencies/cryptobonusmiles/	$0.000201	$603,281	3.37%
1030	DUO	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	$1.91	$601,618	34.18%
1031	IFOOD	Ifoods Chain	https://coinmarketcap.com/currencies/ifoods-chain/	$0.000238	$595,441	9.18%
1032	AIT	AICHAIN	https://coinmarketcap.com/currencies/aichain/	$0.001097	$587,084	1.02%
1033	PRG	Paragon	https://coinmarketcap.com/currencies/paragon/	$0.026362	$586,993	18.00%
1034	BWT	Bittwatt	https://coinmarketcap.com/currencies/bittwatt/	$0.001909	$586,076	4.77%
1035	WYS	wys Token	https://coinmarketcap.com/currencies/wys-token/	$0.005707	$584,076	0.00%
1036	CNUS	CoinUs	https://coinmarketcap.com/currencies/coinus/	$0.001717	$583,869	-24.81%
1037	WET	WeShow Token	https://coinmarketcap.com/currencies/weshow-token/	$0.003651	$583,262	0.27%
1038	AMN	Amon	https://coinmarketcap.com/currencies/amon/	$0.001027	$582,834	2.20%
1039	PIRL	Pirl	https://coinmarketcap.com/currencies/pirl/	$0.010198	$582,472	0.10%
1040	OWN	OWNDATA	https://coinmarketcap.com/currencies/owndata/	$0.000053	$580,385	-3.73%
1041	WEBD	WebDollar	https://coinmarketcap.com/currencies/webdollar/	$0.000084	$578,892	6.86%
1042	LEV	Leverj	https://coinmarketcap.com/currencies/leverj/	$0.004899	$578,479	0.00%
1043	IETH	iEthereum	https://coinmarketcap.com/currencies/iethereum/	$0.031900	$573,620	-16.46%
1044	SS	Sharder	https://coinmarketcap.com/currencies/sharder/	$0.002023	$572,978	0.95%
1045	UFR	Upfiring	https://coinmarketcap.com/currencies/upfiring/	$0.026330	$568,726	12.45%
1046	NYC	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	$0.000004	$568,368	-22.08%
1047	BBP	BiblePay	https://coinmarketcap.com/currencies/biblepay/	$0.000310	$564,752	-5.56%
1048	BTCZ	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	$0.000101	$562,269	-2.78%
1049	KARMA	KARMA	https://coinmarketcap.com/currencies/karma-eos/	$0.000103	$556,863	5.02%
1050	GOT	GoNetwork	https://coinmarketcap.com/currencies/gonetwork/	$0.007686	$553,360	-20.50%
1051	INXT	Internxt	https://coinmarketcap.com/currencies/internxt/	$0.864993	$544,608	-7.03%
1052	DRT	DomRaider	https://coinmarketcap.com/currencies/domraider/	$0.000917	$542,306	8.35%
1053	0xBTC	0xBitcoin	https://coinmarketcap.com/currencies/0xbtc/	$0.102661	$541,290	2.61%
1054	VLD	Vetri	https://coinmarketcap.com/currencies/vetri/	$0.001995	$541,056	4.31%
1055	RLX	Relex	https://coinmarketcap.com/currencies/relex/	$0.000291	$538,650	-3.54%
1056	XWP	Swap	https://coinmarketcap.com/currencies/swap/	$0.076285	$537,284	45.94%
1057	EQUAD	QuadrantProtocol	https://coinmarketcap.com/currencies/quadrantprotocol/	$0.001608	$536,988	-1.31%
1058	BCI	Bitcoin Interest	https://coinmarketcap.com/currencies/bitcoin-interest/	$0.029193	$535,011	1.98%
1059	D	Denarius	https://coinmarketcap.com/currencies/denarius-dnr/	$0.081731	$534,811	0.67%
1060	BPT	Blockport	https://coinmarketcap.com/currencies/blockport/	$0.009993	$533,681	5.37%
1061	PING	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	$0.059244	$533,171	2.32%
1062	RISE	Rise	https://coinmarketcap.com/currencies/rise/	$0.003760	$531,852	1.68%
1063	PINK	Pinkcoin	https://coinmarketcap.com/currencies/pinkcoin/	$0.001284	$529,831	-4.27%
1064	QBT	Qbao	https://coinmarketcap.com/currencies/qbao/	$0.008064	$527,025	-4.96%
1065	ACAT	Alphacat	https://coinmarketcap.com/currencies/alphacat/	$0.000189	$526,564	-0.44%
1066	PROM	Prometeus	https://coinmarketcap.com/currencies/prometeus/	$0.136070	$523,868	-1.58%
1067	LIFE	LIFE	https://coinmarketcap.com/currencies/life/	$0.000022	$519,942	3.06%
1068	AID	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	$0.011385	$519,713	5.87%
1069	HNB	HashNet BitEco	https://coinmarketcap.com/currencies/hashnet-biteco/	$0.017517	$519,198	-0.83%
1070	TYPE	Typerium	https://coinmarketcap.com/currencies/typerium/	$0.000321	$519,115	-12.97%
1071	PLAY	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	$0.002770	$516,912	12.73%
1072	CANN	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	$0.006695	$517,041	-16.57%
1073	DBIX	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	$0.120872	$515,297	0.64%
1074	FACE	Faceter	https://coinmarketcap.com/currencies/faceter/	$0.001090	$513,125	-12.08%
1075	CPY	COPYTRACK	https://coinmarketcap.com/currencies/copytrack/	$0.010649	$512,170	0.00%
1076	MNTP	GoldMint	https://coinmarketcap.com/currencies/goldmint/	$0.267258	$511,797	6.17%
1077	BNY	Bancacy	https://coinmarketcap.com/currencies/bancacy/	$0.003820	$511,773	-8.07%
1078	THC	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	$0.002016	$509,991	0.49%
1079	NLC2	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	$0.001002	$507,125	-8.31%
1080	XP	Experience Po...	https://coinmarketcap.com/currencies/experience-points/	$0.000002	$501,094	0.00%
1081	SVD	savedroid	https://coinmarketcap.com/currencies/savedroid/	$0.000186	$499,692	-1.32%
1082	RBTC	RSK Smart Bit...	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	$9066.86	$498,677	0.66%
1083	ZSC	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	$0.000418	$489,456	-2.09%
1084	GPYX	GoldenPyrex	https://coinmarketcap.com/currencies/goldenpyrex/	$0.048843	$487,749	-15.86%
1085	NANJ	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	$0.000025	$486,943	-5.08%
1086	KLN	Kolion	https://coinmarketcap.com/currencies/kolion/	$0.487471	$487,471	2.62%
1087	PTOY	Patientory	https://coinmarketcap.com/currencies/patientory/	$0.006902	$483,161	2.09%
1088	TKS	Tokes	https://coinmarketcap.com/currencies/tokes/	$0.365831	$483,989	2.73%
1089	GMB	GMB	https://coinmarketcap.com/currencies/gmb/	$0.000932	$482,296	-29.17%
1090	BBC	TraDove B2BCoin	https://coinmarketcap.com/currencies/b2bcoin/	$0.000964	$482,022	-12.40%
1091	SCC	StakeCubeCoin	https://coinmarketcap.com/currencies/stakecubecoin/	$0.224624	$481,232	1.80%
1092	NOTE	DNotes	https://coinmarketcap.com/currencies/dnotes/	$0.003554	$479,911	1.94%
1093	EXCL	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	$0.083088	$478,007	-4.62%
1094	SPHTX	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	$0.001444	$477,725	-15.90%
1095	WIB	Wibson	https://coinmarketcap.com/currencies/wibson/	$0.000177	$472,144	-29.12%
1096	LUNES	Lunes	https://coinmarketcap.com/currencies/lunes/	$0.003119	$470,107	-11.22%
1097	ATM	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	$0.000101	$469,786	0.00%
1098	ELEC	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	$0.000884	$468,254	10.09%
1099	ION	ION	https://coinmarketcap.com/currencies/ion/	$0.039437	$465,222	0.00%
1100	PTON	PTON	https://coinmarketcap.com/currencies/pton/	$0.000031	$465,005	66.54%
1101	ERT	Eristica	https://coinmarketcap.com/currencies/eristica/	$0.002659	$458,560	3.12%
1102	KRB	Karbo	https://coinmarketcap.com/currencies/karbo/	$0.057073	$454,809	-1.66%
1103	HERO	Hero	https://coinmarketcap.com/currencies/hero/	$0.036933	$447,171	-35.38%
1104	NEWS	PUBLISH	https://coinmarketcap.com/currencies/publish/	$0.001943	$446,639	5.18%
1105	WLO	WOLLO	https://coinmarketcap.com/currencies/wollo/	$0.010322	$444,456	5.79%
1106	KST	StarCoin	https://coinmarketcap.com/currencies/starcointv/	$0.000291	$440,539	0.13%
1107	TM2	TRAXIA	https://coinmarketcap.com/currencies/traxia/	$0.001400	$439,274	0.91%
1108	LQD	Liquidity Net...	https://coinmarketcap.com/currencies/liquidity-network/	$0.010094	$437,420	-9.65%
1109	BC	Block-Chain.com	https://coinmarketcap.com/currencies/block-chain-com/	$0.002109	$436,733	-0.80%
1110	XSG	SnowGem	https://coinmarketcap.com/currencies/snowgem/	$0.022689	$436,119	-2.80%
1111	LOBS	Lobstex	https://coinmarketcap.com/currencies/lobstex/	$0.024575	$435,045	-2.01%
1112	VZT	Vezt	https://coinmarketcap.com/currencies/vezt/	$0.012313	$433,227	0.00%
1113	DRPU	DCORP Utility	https://coinmarketcap.com/currencies/drp-utility/	$0.122553	$432,659	-16.88%
1114	MOTO	Motocoin	https://coinmarketcap.com/currencies/motocoin/	$0.022024	$432,606	1.48%
1115	ESP	Espers	https://coinmarketcap.com/currencies/espers/	$0.000019	$432,249	28.56%
1116	IXC	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	$0.020421	$430,839	0.00%
1117	SMLY	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	$0.000017	$430,473	-12.96%
1118	RATING	DPRating	https://coinmarketcap.com/currencies/dprating/	$0.000167	$429,071	-10.79%
1119	GIO	Graviocoin	https://coinmarketcap.com/currencies/graviocoin/	$0.000431	$426,236	-0.82%
1120	XPC	eXPerience Chain	https://coinmarketcap.com/currencies/experience-chain/	$0.000005	$425,545	6.32%
1121	TTV	TV-TWO	https://coinmarketcap.com/currencies/tv-two/	$0.000952	$424,253	0.00%
1122	SOVE	Soverain	https://coinmarketcap.com/currencies/soverain/	$1.03	$424,032	40.92%
1123	SPN	Sapien	https://coinmarketcap.com/currencies/sapien/	$0.001866	$423,210	7.09%
1124	HUSH	Hush	https://coinmarketcap.com/currencies/hush/	$0.055424	$421,598	8.41%
1125	BIR	Birake	https://coinmarketcap.com/currencies/birake/	$0.005673	$418,346	-0.17%
1126	MAO	Mao Zedong	https://coinmarketcap.com/currencies/mao-zedong/	$0.065572	$417,919	1.31%
1127	TOA	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	$0.000092	$410,659	0.58%
1128	GOLOS	Golos	https://coinmarketcap.com/currencies/golos/	$0.002277	$409,997	-7.27%
1129	ESS	Essentia	https://coinmarketcap.com/currencies/essentia/	$0.000467	$404,028	1.58%
1130	WEC	wave edu coin	https://coinmarketcap.com/currencies/wave-edu-coin/	$0.003373	$403,966	2.80%
1131	LION	Coin Lion	https://coinmarketcap.com/currencies/coin-lion/	$0.012520	$403,474	1.49%
1132	DOS	DOS Network	https://coinmarketcap.com/currencies/dos-network/	$0.003056	$403,255	1.73%
1133	BLUE	Blue Protocol	https://coinmarketcap.com/currencies/ethereum-blue/	$0.010983	$402,470	6.16%
1134	MNX	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	$0.066838	$397,755	-17.80%
1135	FRC	Freicoin	https://coinmarketcap.com/currencies/freicoin/	$0.007153	$396,433	0.57%
1136	TTN	Titan Coin	https://coinmarketcap.com/currencies/titan-coin/	$0.000441	$396,166	1.03%
1137	ZIPT	Zippie	https://coinmarketcap.com/currencies/zippie/	$0.001458	$395,305	0.00%
1138	EGG	Nestree	https://coinmarketcap.com/currencies/nestree/	$0.001113	$390,433	-0.29%
1139	FYP	FlypMe	https://coinmarketcap.com/currencies/flypme/	$0.022041	$388,778	0.58%
1140	RMESH	RightMesh	https://coinmarketcap.com/currencies/rightmesh/	$0.005463	$388,678	3.64%
1141	MOT	Olympus Labs	https://coinmarketcap.com/currencies/olympus-labs/	$0.010082	$388,139	36.23%
1142	XNV	Nerva	https://coinmarketcap.com/currencies/nerva/	$0.022652	$385,485	21.17%
1143	FLIXX	Flixxo	https://coinmarketcap.com/currencies/flixxo/	$0.004571	$385,459	11.53%
1144	EOST	EOS TRUST	https://coinmarketcap.com/currencies/eos-trust/	$0.000051	$385,031	0.81%
1145	ETK	EnergiToken	https://coinmarketcap.com/currencies/energitoken/	$0.000208	$384,890	0.00%
1146	CMCT	Crowd Machine	https://coinmarketcap.com/currencies/crowd-machine/	$0.000816	$383,706	3.55%
1147	DXT	Datawallet	https://coinmarketcap.com/currencies/datawallet/	$0.000981	$382,811	0.16%
1148	SHARD	Shard	https://coinmarketcap.com/currencies/shard/	$0.019317	$382,365	0.39%
1149	WFX	Webflix Token	https://coinmarketcap.com/currencies/webflix-token/	$0.000632	$382,292	-37.73%
1150	CYBR	CYBR Token	https://coinmarketcap.com/currencies/cybr-token/	$0.010629	$381,193	15.37%
1151	RVT	Rivetz	https://coinmarketcap.com/currencies/rivetz/	$0.014422	$378,494	7.97%
1152	MAC	Matrexcoin	https://coinmarketcap.com/currencies/matrexcoin/	$0.021924	$377,310	0.77%
1153	PYLNT	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	$0.809568	$374,958	1.85%
1154	GEM	Gems 	https://coinmarketcap.com/currencies/gems-protocol/	$0.000324	$373,838	-1.99%
1155	BITC	BitCash	https://coinmarketcap.com/currencies/bitcash/	$0.031173	$373,381	1.77%
1156	PRIX	Privatix	https://coinmarketcap.com/currencies/privatix/	$0.338221	$370,994	-12.37%
1157	ZEON	ZEON	https://coinmarketcap.com/currencies/zeon/	$0.000015	$368,145	28.95%
1158	CSPN	Crypto Sports	https://coinmarketcap.com/currencies/crypto-sports/	$0.184031	$367,062	-10.05%
1159	UOS	UOS Network	https://coinmarketcap.com/currencies/uos-network/	$0.042843	$366,289	-14.34%
1160	XBX	Bitex Global ...	https://coinmarketcap.com/currencies/bitex-global-xbx-coin/	$0.001834	$364,310	-8.69%
1161	BANCA	Banca	https://coinmarketcap.com/currencies/banca/	$0.000020	$364,086	1.14%
1162	MSR	Masari	https://coinmarketcap.com/currencies/masari/	$0.031247	$363,103	4.17%
1163	NER	Nerves	https://coinmarketcap.com/currencies/nerves/	$0.000111	$362,612	0.00%
1164	CRC	CryCash	https://coinmarketcap.com/currencies/crycash/	$0.075417	$358,981	-6.83%
1165	KZE	Almeela	https://coinmarketcap.com/currencies/almeela/	$0.095988	$358,363	-3.78%
1166	PKT	Playkey	https://coinmarketcap.com/currencies/playkey/	$0.025695	$357,711	5.56%
1167	OWC	ODUWA	https://coinmarketcap.com/currencies/oduwa/	$0.152227	$357,710	-3.16%
1168	PRE	Presearch	https://coinmarketcap.com/currencies/presearch/	$0.002305	$357,199	-6.56%
1169	HQX	HOQU	https://coinmarketcap.com/currencies/hoqu/	$0.002105	$356,111	0.23%
1170	UFO	Uniform Fisca...	https://coinmarketcap.com/currencies/uniform-fiscal-object/	$0.000092	$352,365	0.58%
1171	GENE	Parkgene	https://coinmarketcap.com/currencies/parkgene/	$0.001193	$351,590	-15.19%
1172	MIB	MIB Coin	https://coinmarketcap.com/currencies/mib-coin/	$0.005546	$350,734	-1.35%
1173	ERO	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	$0.001877	$350,549	7.94%
1174	VNX	VisionX	https://coinmarketcap.com/currencies/visionx/	$0.000097	$349,939	4.90%
1175	TIPS	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	$0.000002	$349,509	3.74%
1176	GBT	Globatalent	https://coinmarketcap.com/currencies/globatalent/	$0.000690	$346,362	0.00%
1177	BEZ	Bezop	https://coinmarketcap.com/currencies/bezop/	$0.006211	$345,862	2.90%
1178	DTEP	DECOIN	https://coinmarketcap.com/currencies/decoin/	$0.013202	$341,911	-54.83%
1179	ETHO	Ether-1	https://coinmarketcap.com/currencies/ether-1/	$0.008985	$339,358	7.65%
1180	SNOV	Snovian.Space	https://coinmarketcap.com/currencies/snov/	$0.001168	$336,700	2.27%
1181	GRFT	Graft	https://coinmarketcap.com/currencies/graft/	$0.000569	$336,600	3.60%
1182	JAR	Jarvis+	https://coinmarketcap.com/currencies/jarvis/	$0.004655	$334,851	1.57%
1183	HNST	Honest	https://coinmarketcap.com/currencies/honest/	$0.006561	$334,764	-2.29%
1184	OBITS	OBITS	https://coinmarketcap.com/currencies/obits/	$0.021816	$333,877	11.60%
1185	TCC	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	$0.001887	$331,711	7.29%
1186	ZMN	ZMINE	https://coinmarketcap.com/currencies/zmine/	$0.002018	$329,947	3.43%
1187	XSH	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	$0.000640	$328,353	0.76%
1188	PHI	PHI Token	https://coinmarketcap.com/currencies/phi-token/	$0.056329	$328,301	-4.49%
1189	RAVEN	Raven Protocol	https://coinmarketcap.com/currencies/raven-protocol/	$0.000178	$327,532	3.86%
1190	TSL	Energo	https://coinmarketcap.com/currencies/energo/	$0.000541	$325,783	-3.70%
1191	SEAL	Seal Network	https://coinmarketcap.com/currencies/seal-network/	$0.000631	$324,990	78.12%
1192	MFTU	Mainstream Fo...	https://coinmarketcap.com/currencies/mainstream-for-the-underground/	$0.000302	$324,956	0.04%
1193	STO	Storeum	https://coinmarketcap.com/currencies/storeum/	$0.002560	$323,276	0.81%
1194	SWACE	Swace	https://coinmarketcap.com/currencies/swace/	$0.001235	$323,218	-35.57%
1195	LFC	Linfinity	https://coinmarketcap.com/currencies/linfinity/	$0.000357	$322,880	1.69%
1196	UPX	uPlexa	https://coinmarketcap.com/currencies/uplexa/	$0.000168	$321,738	6.68%
1197	PAL	PAL Network	https://coinmarketcap.com/currencies/pal-network/	$0.000734	$321,731	-16.72%
1198	CBIX	Cubiex	https://coinmarketcap.com/currencies/cubiex/	$0.011546	$321,715	-5.92%
1199	MER	Mercury	https://coinmarketcap.com/currencies/mercury/	$0.003210	$320,980	0.48%
1200	XD	Data Transact...	https://coinmarketcap.com/currencies/data-transaction-token/	$0.001617	$320,124	-8.35%
1201	BETHER	Bethereum	https://coinmarketcap.com/currencies/bethereum/	$0.000633	$319,230	-0.48%
1202	FIII	Fiii	https://coinmarketcap.com/currencies/fiii/	$0.000660	$318,230	-2.68%
1203	EXY	Experty	https://coinmarketcap.com/currencies/experty/	$0.011743	$318,109	0.73%
1204	MEME	Memetic / Pep...	https://coinmarketcap.com/currencies/memetic/	$0.010636	$317,729	-3.59%
1205	MLC	Mallcoin	https://coinmarketcap.com/currencies/mallcoin/	$0.001800	$317,046	-64.86%
1206	ACE	ACE (TokenStars)	https://coinmarketcap.com/currencies/ace/	$0.026709	$316,897	12.31%
1207	WBL	WIZBL	https://coinmarketcap.com/currencies/wizbl/	$0.002109	$316,394	41.60%
1208	ZAP	Zap	https://coinmarketcap.com/currencies/zap/	$0.002379	$312,889	5.58%
1209	EBST	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	$0.003107	$310,680	-15.53%
1210	NIO	Autonio	https://coinmarketcap.com/currencies/autonio/	$0.002923	$310,255	0.23%
1211	PDATA	PDATA	https://coinmarketcap.com/currencies/pdata/	$0.000872	$310,192	-29.91%
1212	NEOX	NEOX	https://coinmarketcap.com/currencies/neox/	$0.287634	$308,259	9.83%
1213	XQR	Qredit	https://coinmarketcap.com/currencies/qredit/	$0.000455	$305,051	-7.27%
1214	IOP	Internet of P...	https://coinmarketcap.com/currencies/internet-of-people/	$0.022647	$304,858	4.36%
1215	MONK	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	$0.038080	$303,983	3.79%
1216	TENA	TENA	https://coinmarketcap.com/currencies/tena/	$0.113718	$303,885	7.71%
1217	XPA	XPA	https://coinmarketcap.com/currencies/xpa/	$0.005307	$303,449	1.12%
1218	KB3	B3Coin	https://coinmarketcap.com/currencies/b3coin/	$0.000399	$301,575	0.00%
1219	BOK	Blockium	https://coinmarketcap.com/currencies/blockium/	$0.000464	$301,142	1.69%
1220	BITX	BitScreener T...	https://coinmarketcap.com/currencies/bitscreener-token/	$0.001886	$300,419	0.32%
1221	ZXC	0xcert	https://coinmarketcap.com/currencies/0xcert/	$0.000900	$299,661	-7.77%
1222	HLM	Helium	https://coinmarketcap.com/currencies/helium/	$0.026140	$299,570	0.58%
1223	TGAME	Truegame	https://coinmarketcap.com/currencies/tgame/	$0.003624	$299,243	0.68%
1224	REAL	REAL	https://coinmarketcap.com/currencies/real/	$0.029744	$299,098	-0.57%
1225	ADB	adbank	https://coinmarketcap.com/currencies/adbank/	$0.000422	$295,037	-2.49%
1226	ONOT	ONOToken	https://coinmarketcap.com/currencies/onotoken/	$0.000018	$292,944	-22.14%
1227	VIEW	View	https://coinmarketcap.com/currencies/view/	$0.008345	$292,828	2.79%
1228	PHO	Photon	https://coinmarketcap.com/currencies/photon/	$0.000009	$290,003	0.37%
1229	SDS	Alchemint Sta...	https://coinmarketcap.com/currencies/alchemint-standards/	$0.000910	$289,336	0.29%
1230	PENG	PENG	https://coinmarketcap.com/currencies/peng/	$0.000033	$289,214	20.46%
1231	KUE	Kuende	https://coinmarketcap.com/currencies/kuende/	$0.000364	$288,577	-0.58%
1232	XNK	Ink Protocol	https://coinmarketcap.com/currencies/ink-protocol/	$0.000855	$286,404	-20.80%
1233	TWINS	win.win	https://coinmarketcap.com/currencies/win-win/	$0.000092	$285,692	-4.74%
1234	J8T	JET8	https://coinmarketcap.com/currencies/jet8/	$0.000347	$283,919	22.04%
1235	LCS	LocalCoinSwap	https://coinmarketcap.com/currencies/local-coin-swap/	$0.005319	$283,266	4.16%
1236	COT	CoTrader	https://coinmarketcap.com/currencies/cotrader/	$0.000018	$280,743	4.14%
1237	ONL	On.Live	https://coinmarketcap.com/currencies/on-live/	$0.012857	$277,998	43.60%
1238	XCON	Connect Coin	https://coinmarketcap.com/currencies/connect-coin/	$0.007046	$274,786	16.86%
1239	XMG	Magi	https://coinmarketcap.com/currencies/magi/	$0.029755	$273,930	-0.10%
1240	OIO	Online	https://coinmarketcap.com/currencies/online/	$0.000311	$272,875	-67.01%
1241	BOXX	Blockparty (B...	https://coinmarketcap.com/currencies/blockparty-boxx-token/	$0.008384	$272,088	12.95%
1242	1337	Elite	https://coinmarketcap.com/currencies/1337coin/	$0.000010	$271,881	-1.64%
1243	OMX	Shivom	https://coinmarketcap.com/currencies/shivom/	$0.000297	$270,674	0.00%
1244	VIT	Vision Indust...	https://coinmarketcap.com/currencies/vision-industry-token/	$0.000092	$270,575	-51.54%
1245	CATT	Catex Token	https://coinmarketcap.com/currencies/catex-token/	$0.000332	$270,208	-12.05%
1246	STQ	Storiqa	https://coinmarketcap.com/currencies/storiqa/	$0.000025	$268,877	1.21%
1247	BBO	Bigbom	https://coinmarketcap.com/currencies/bigbom/	$0.000807	$268,651	0.51%
1248	PASS	Blockpass	https://coinmarketcap.com/currencies/blockpass/	$0.001595	$266,692	8.24%
1249	VULC	VULCANO	https://coinmarketcap.com/currencies/vulcano/	$0.001101	$265,717	-2.79%
1250	MNC	Maincoin	https://coinmarketcap.com/currencies/maincoin/	$0.001209	$265,149	-1.91%
1251	HERC	Hercules	https://coinmarketcap.com/currencies/hercules/	$0.003207	$264,935	-0.06%
1252	RYO	Ryo Currency	https://coinmarketcap.com/currencies/ryo-currency/	$0.017422	$264,897	-1.32%
1253	SCT	Soma	https://coinmarketcap.com/currencies/soma/	$0.027054	$264,359	0.57%
1254	BZE	BZEdge	https://coinmarketcap.com/currencies/bzedge/	$0.000088	$263,051	-25.05%
1255	PUB	PUBLYTO Token	https://coinmarketcap.com/currencies/publyto-token/	$0.000174	$260,972	8.34%
1256	MBN	Membrana	https://coinmarketcap.com/currencies/membrana/	$0.004170	$258,732	-4.05%
1257	NOW	NOW Token	https://coinmarketcap.com/currencies/now-token/	$0.003793	$257,837	32.18%
1258	MANNA	Manna	https://coinmarketcap.com/currencies/manna/	$0.000458	$257,203	-0.42%
1259	ZCR	ZCore	https://coinmarketcap.com/currencies/zcore/	$0.047498	$255,425	-3.11%
1260	BDG	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	$0.000679	$254,414	-3.59%
1261	LNX	LNX Protocol	https://coinmarketcap.com/currencies/lnx-protocol/	$0.000905	$245,778	-0.03%
1262	XLA	Scala	https://coinmarketcap.com/currencies/scala/	$0.000028	$241,903	1.66%
1263	XBI	Bitcoin Incog...	https://coinmarketcap.com/currencies/bitcoin-incognito/	$0.020727	$241,395	4.84%
1264	LALA	LALA World	https://coinmarketcap.com/currencies/lala-world/	$0.000967	$241,080	0.00%
1265	FRST	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	$0.007709	$240,594	-0.10%
1266	ETT	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel/	$0.003851	$239,258	0.56%
1267	ROBET	RoBET	https://coinmarketcap.com/currencies/robet/	$0.298051	$238,052	0.00%
1268	YOC	Yocoin	https://coinmarketcap.com/currencies/yocoin/	$0.000642	$237,340	-7.52%
1269	XBP	BlitzPredict	https://coinmarketcap.com/currencies/blitzpredict/	$0.000628	$237,107	2.64%
1270	GTM	Gentarium	https://coinmarketcap.com/currencies/gentarium/	$0.062265	$235,704	-4.00%
1271	EQL	Equal	https://coinmarketcap.com/currencies/equal/	$0.000719	$235,541	10.37%
1272	BYT	Bayan Token	https://coinmarketcap.com/currencies/bayan-token/	$0.980180	$233,545	0.73%
1273	XCM	CoinMetro Token	https://coinmarketcap.com/currencies/coinmetro-token/	$0.027473	$233,521	6.78%
1274	GPT	GoPower	https://coinmarketcap.com/currencies/gopower/	$0.002867	$232,850	-4.60%
1275	MAX	Maxcoin	https://coinmarketcap.com/currencies/maxcoin/	$0.003759	$230,985	-4.13%
1276	SUMO	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	$0.022473	$226,748	2.16%
1277	COB	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	$0.000550	$226,153	-13.79%
1278	PIPL	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	$0.002710	$226,111	7.99%
1279	OOT	Utrum	https://coinmarketcap.com/currencies/utrum/	$0.003472	$224,962	30.34%
1280	BBN	Banyan Network	https://coinmarketcap.com/currencies/banyan-network/	$0.000366	$223,432	0.01%
1281	MLM	MktCoin	https://coinmarketcap.com/currencies/mktcoin/	$0.000183	$221,847	-2.15%
1282	NOR	Noir	https://coinmarketcap.com/currencies/noir/	$0.010913	$220,254	3.17%
1283	CCH	Coinchase Token	https://coinmarketcap.com/currencies/coinchase/	$0.000137	$218,719	1.56%
1284	FMF	Formosa Finan...	https://coinmarketcap.com/currencies/formosa-financial/	$0.000122	$218,524	0.00%
1285	TROLL	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	$0.000367	$217,197	0.55%
1286	BCZ	Bitcoin CZ	https://coinmarketcap.com/currencies/bitcoin-cz/	$0.086442	$215,159	8.02%
1287	ADI	Aditus	https://coinmarketcap.com/currencies/aditus/	$0.000918	$215,021	-1.65%
1288	DAR	Darcrus	https://coinmarketcap.com/currencies/darcrus/	$0.015753	$214,245	959.95%
1289	PXG	PlayGame	https://coinmarketcap.com/currencies/playgame/	$0.000236	$213,956	-6.00%
1290	PXC	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	$0.002934	$213,742	0.55%
1291	FLDC	FoldingCoin	https://coinmarketcap.com/currencies/foldingcoin/	$0.000275	$213,781	0.00%
1292	TEAM	TEAM (TokenSt...	https://coinmarketcap.com/currencies/tokenstars/	$0.017830	$211,239	0.64%
1293	ATX	Aston	https://coinmarketcap.com/currencies/aston/	$0.000256	$211,129	20.63%
1294	MORE	Mithril Ore	https://coinmarketcap.com/currencies/mithril-ore/	$16.56	$211,107	0.81%
1295	DOV	Dovu	https://coinmarketcap.com/currencies/dovu/	$0.000526	$210,472	1.12%
1296	WBET	Wavesbet	https://coinmarketcap.com/currencies/wavesbet/	$0.000005	$206,326	-29.58%
1297	INV	Invacio	https://coinmarketcap.com/currencies/invacio/	$0.007015	$206,010	4.42%
1298	ALB	ALBOS	https://coinmarketcap.com/currencies/albos/	$0.000017	$205,477	0.14%
1299	ESN	Ethersocial	https://coinmarketcap.com/currencies/ethersocial/	$0.005594	$205,376	-12.36%
1300	BTCS	Bitcoin Scrypt	https://coinmarketcap.com/currencies/bitcoin-scrypt/	$0.011642	$205,089	-1.71%
1301	ARO	Arionum	https://coinmarketcap.com/currencies/arionum/	$0.001284	$204,694	0.57%
1302	LTHN	Lethean	https://coinmarketcap.com/currencies/lethean/	$0.000275	$202,253	0.57%
1303	AUX	Auxilium	https://coinmarketcap.com/currencies/auxilium/	$0.001786	$202,018	4.11%
1304	KEK	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	$0.018796	$201,424	-48.34%
1305	NTR	Netrum	https://coinmarketcap.com/currencies/netrum/	$0.081363	$200,777	-20.66%
1306	MCT	Master Contra...	https://coinmarketcap.com/currencies/master-contract-token/	$0.000354	$200,686	-38.16%
1307	GFUN	GoldFund	https://coinmarketcap.com/currencies/goldfund/	$0.001229	$200,598	6.57%
1308	IND	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	$0.005331	$199,808	-40.63%
1309	FKX	FortKnoxster	https://coinmarketcap.com/currencies/fortknoxster/	$0.001339	$199,549	-6.60%
1310	STAR	Starbase	https://coinmarketcap.com/currencies/starbase/	$0.001061	$198,892	-6.54%
1311	DAY	Chronologic	https://coinmarketcap.com/currencies/chronologic/	$0.215992	$198,446	-2.15%
1312	AYA	Aryacoin	https://coinmarketcap.com/currencies/aryacoin/	$0.002476	$198,308	11.00%
1313	BLTG	Block-Logic	https://coinmarketcap.com/currencies/block-logic/	$0.008622	$197,448	0.64%
1314	BIO	BioCoin	https://coinmarketcap.com/currencies/biocoin/	$0.000232	$196,104	0.00%
1315	SNPC	SnapCoin	https://coinmarketcap.com/currencies/snapcoin/	$0.000449	$195,669	4.00%
1316	IDXM	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	$97.53	$195,067	15.54%
1317	ZNZ	ZENZO	https://coinmarketcap.com/currencies/zenzo/	$0.018709	$194,699	13.98%
1318	TIE	Ties.DB	https://coinmarketcap.com/currencies/tiesdb/	$0.004769	$194,669	2.60%
1319	BETR	BetterBetting	https://coinmarketcap.com/currencies/betterbetting/	$0.000712	$194,406	28.64%
1320	FJC	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	$0.000082	$192,839	0.00%
1321	POLL	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	$0.027513	$192,587	0.74%
1322	RCT	RealChain	https://coinmarketcap.com/currencies/realchain/	$0.000443	$192,244	3.75%
1323	UNI	Universe	https://coinmarketcap.com/currencies/universe/	$0.002292	$191,404	14.27%
1324	VRM	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	$0.078668	$190,675	-5.52%
1325	CCRB	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	$0.007702	$190,161	-6.61%
1326	DTH	Dether	https://coinmarketcap.com/currencies/dether/	$0.002220	$188,676	0.48%
1327	S	Sharpay	https://coinmarketcap.com/currencies/sharpay/	$0.000183	$188,431	-0.20%
1328	NTRN	Neutron	https://coinmarketcap.com/currencies/neutron/	$0.004803	$187,909	0.00%
1329	BELA	Bela	https://coinmarketcap.com/currencies/belacoin/	$0.004390	$187,827	0.29%
1330	EVT	EveriToken	https://coinmarketcap.com/currencies/everitoken/	$0.025748	$186,725	-0.08%
1331	START	Startcoin	https://coinmarketcap.com/currencies/startcoin/	$0.004129	$186,128	0.00%
1332	ZENI	Zennies	https://coinmarketcap.com/currencies/zennies/	$0.000186	$185,837	0.00%
1333	CREDIT	CREDIT	https://coinmarketcap.com/currencies/credit/	$0.000010	$184,778	-22.15%
1334	PKC	PikcioChain	https://coinmarketcap.com/currencies/pikciochain/	$0.003684	$184,657	0.00%
1335	CL	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	$0.002315	$184,296	0.80%
1336	BUZZ	BUZZCoin	https://coinmarketcap.com/currencies/buzzcoin/	$0.000009	$183,374	0.56%
1337	TRUMP	TrumpCoin	https://coinmarketcap.com/currencies/trumpcoin/	$0.027584	$182,174	5.10%
1338	USC	Ultimate Secu...	https://coinmarketcap.com/currencies/ultimate-secure-cash/	$0.017604	$182,079	-2.16%
1339	ASG	Asgard	https://coinmarketcap.com/currencies/asgard/	$0.000234	$181,579	-16.34%
1340	EBTC	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	$0.009568	$180,806	13.17%
1341	NPLC	Plus-Coin	https://coinmarketcap.com/currencies/plus-coin/	$0.000385	$180,724	-3.06%
1342	PTC	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	$0.001284	$179,382	8.29%
1343	ADC	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	$0.000183	$179,304	0.00%
1344	BWK	Bulwark	https://coinmarketcap.com/currencies/bulwark/	$0.012014	$179,229	-12.34%
1345	METM	MetaMorph	https://coinmarketcap.com/currencies/metamorph/	$0.001202	$178,622	1.85%
1346	OPT	Opus	https://coinmarketcap.com/currencies/opus/	$0.001271	$177,999	5.26%
1347	PWR	PWR Coin	https://coinmarketcap.com/currencies/powercoin/	$0.000018	$177,222	101.11%
1348	EDRC	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	$0.060055	$176,035	-14.85%
1349	BCAC	Business Cred...	https://coinmarketcap.com/currencies/business-credit-alliance-chain/	$0.000369	$174,399	-4.83%
1350	FDX	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	$0.001646	$172,830	-31.78%
1351	BOB	Bob's Repair	https://coinmarketcap.com/currencies/bobs-repair/	$0.000935	$171,749	1.11%
1352	DOPE	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	$0.001467	$171,411	0.55%
1353	NEXXO	Nexxo	https://coinmarketcap.com/currencies/nexxo/	$0.001805	$171,405	-0.93%
1354	CROAT	CROAT	https://coinmarketcap.com/currencies/croat/	$0.002384	$171,011	3.89%
1355	SRK	Sparkpoint	https://coinmarketcap.com/currencies/sparkpoint/	$0.000055	$169,011	21.94%
1356	GOLF	Golfcoin	https://coinmarketcap.com/currencies/golfcoin/	$0.000005	$168,347	0.00%
1357	PMNT	Paymon	https://coinmarketcap.com/currencies/paymon/	$0.000275	$168,164	50.85%
1358	GZRO	Gravity	https://coinmarketcap.com/currencies/gravity/	$0.000095	$168,139	0.00%
1359	MCC	Magic Cube Coin	https://coinmarketcap.com/currencies/magic-cube-coin/	$0.001399	$166,075	-18.46%
1360	GIC	Giant	https://coinmarketcap.com/currencies/giant-coin/	$0.026327	$165,336	-0.17%
1361	WPP	WPP TOKEN	https://coinmarketcap.com/currencies/wpp-token/	$0.000582	$165,033	0.76%
1362	BITS	Bitstar	https://coinmarketcap.com/currencies/bitstar/	$0.007916	$164,047	0.00%
1363	PAR	Parachute	https://coinmarketcap.com/currencies/parachute/	$0.000463	$163,524	3.94%
1364	HGT	HelloGold	https://coinmarketcap.com/currencies/hellogold/	$0.000621	$163,434	0.33%
1365	HB	HeartBout	https://coinmarketcap.com/currencies/heartbout/	$0.003061	$162,852	-1.54%
1366	NETKO	Netko	https://coinmarketcap.com/currencies/netko/	$0.018337	$162,571	-2.70%
1367	MFG	SyncFab	https://coinmarketcap.com/currencies/syncfab/	$0.000879	$161,710	-6.45%
1368	SUR	Suretly	https://coinmarketcap.com/currencies/suretly/	$0.686254	$160,915	-8.64%
1369	WAB	WABnetwork	https://coinmarketcap.com/currencies/wabnetwork/	$0.000017	$160,714	16.97%
1370	DCY	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	$0.000084	$160,467	0.00%
1371	INX	INMAX	https://coinmarketcap.com/currencies/inmax/	$0.063737	$160,375	-3.32%
1372	SND	SnodeCoin	https://coinmarketcap.com/currencies/snodecoin/	$0.004258	$160,346	69.69%
1373	MYB	MyBit	https://coinmarketcap.com/currencies/mybit/	$0.001035	$159,366	0.62%
1374	NOX	Nitro	https://coinmarketcap.com/currencies/nitro/	$0.001666	$158,363	5.11%
1375	BSD	BitSend	https://coinmarketcap.com/currencies/bitsend/	$0.006301	$157,703	-1.97%
1376	UCN	UChain	https://coinmarketcap.com/currencies/uchain/	$0.000506	$154,363	-2.61%
1377	TBX	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	$0.013497	$154,271	-4.71%
1378	SHDW	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	$0.022005	$154,034	0.98%
1379	TIC	Thingschain	https://coinmarketcap.com/currencies/thingschain/	$0.000013	$153,659	8.74%
1380	EUNO	EUNO	https://coinmarketcap.com/currencies/euno/	$0.005288	$152,753	6.33%
1381	PCN	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	$0.000002	$151,854	-4.71%
1382	SMQ	SIMDAQ	https://coinmarketcap.com/currencies/simdaq/	$0.008563	$150,901	53.56%
1383	NUSD	Neutral Dollar 	https://coinmarketcap.com/currencies/neutral-dollar/	$0.999551	$150,633	1.07%
1384	CPC	Capricoin	https://coinmarketcap.com/currencies/capricoin/	$0.075565	$150,378	-0.29%
1385	ZET	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	$0.000880	$150,074	12.18%
1386	GUP	Matchpool	https://coinmarketcap.com/currencies/guppy/	$0.001999	$149,890	-17.72%
1387	DAV	DAV Coin	https://coinmarketcap.com/currencies/dav-coin/	$0.000216	$149,268	1.15%
1388	ABX	Arbidex	https://coinmarketcap.com/currencies/arbidex/	$0.007331	$149,216	-27.69%
1389	BSTY	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	$0.008436	$148,046	0.57%
1390	CTX	Centauri	https://coinmarketcap.com/currencies/centauri/	$0.003393	$147,881	6.57%
1391	TRAK	TrakInvest	https://coinmarketcap.com/currencies/trakinvest/	$0.001762	$147,852	0.00%
1392	REF	RefToken	https://coinmarketcap.com/currencies/reftoken/	$0.146312	$147,043	0.82%
1393	MT	Monarch	https://coinmarketcap.com/currencies/monarch/	$0.005798	$146,885	0.38%
1394	HNC	Helleniccoin	https://coinmarketcap.com/currencies/helleniccoin/	$0.002109	$146,562	-10.48%
1395	ENRG	Energycoin	https://coinmarketcap.com/currencies/energycoin/	$0.001192	$145,804	-18.30%
1396	BRDG	Bridge Protocol	https://coinmarketcap.com/currencies/bridge-protocol/	$0.000650	$145,630	-17.91%
1397	SCR	Scorum Coins	https://coinmarketcap.com/currencies/scorum-coins/	$0.004954	$144,979	8.67%
1398	HER	HeroNode	https://coinmarketcap.com/currencies/heronode/	$0.000134	$143,619	-5.43%
1399	TCH	TigerCash	https://coinmarketcap.com/currencies/tigercash/	$0.014093	$142,884	-1.55%
1400	BOLI	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	$0.010280	$142,478	-17.29%
1401	CARBON	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	$0.000009	$142,376	0.00%
1402	TDP	TrueDeck	https://coinmarketcap.com/currencies/truedeck/	$0.004615	$141,766	3.08%
1403	EVC	EventChain	https://coinmarketcap.com/currencies/eventchain/	$0.004531	$141,600	-1.81%
1404	DOGEC	DogeCash	https://coinmarketcap.com/currencies/dogecash/	$0.039174	$141,608	13.98%
1405	ATMI	Atonomi	https://coinmarketcap.com/currencies/atonomi/	$0.000284	$140,098	-18.74%
1406	CAT	BitClave	https://coinmarketcap.com/currencies/bitclave/	$0.000277	$138,851	0.00%
1407	ZNY	Bitzeny	https://coinmarketcap.com/currencies/bitzeny/	$0.001834	$138,658	0.55%
1408	VOT	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	$0.002067	$138,083	9.19%
1409	ALI	AiLink Token	https://coinmarketcap.com/currencies/ailink-token/	$0.000027	$136,920	3.01%
1410	DIO	Decimated	https://coinmarketcap.com/currencies/decimated/	$0.002482	$136,474	-39.22%
1411	HORSE	Ethouse	https://coinmarketcap.com/currencies/ethouse/	$0.001230	$136,039	-1.65%
1412	GLT	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	$0.001559	$135,920	0.56%
1413	JET	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	$0.018337	$135,477	-3.96%
1414	POSW	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	$0.003055	$134,733	0.00%
1415	TNS	Transcodium	https://coinmarketcap.com/currencies/transcodium/	$0.002293	$134,269	0.43%
1416	TZC	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	$0.000746	$133,537	4.05%
1417	EGC	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	$0.009444	$132,943	-22.71%
1418	SIG	Spectiv	https://coinmarketcap.com/currencies/signal-token/	$0.000535	$132,722	-0.87%
1419	DEAL	iDealCash	https://coinmarketcap.com/currencies/idealcash/	$0.000092	$132,193	0.57%
1420	PSM	PRASM	https://coinmarketcap.com/currencies/prasm/	$0.000058	$130,247	0.00%
1421	AD	Asian Dragon	https://coinmarketcap.com/currencies/asian-dragon/	$0.002158	$129,635	38.32%
1422	XCN	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	$0.000183	$129,310	0.00%
1423	SRCOIN	SRCOIN	https://coinmarketcap.com/currencies/srcoin/	$0.000026	$128,972	-52.55%
1424	IOG	Playgroundz	https://coinmarketcap.com/currencies/playgroundz/	$0.004512	$128,786	0.00%
1425	MNC	Mincoin	https://coinmarketcap.com/currencies/mincoin/	$0.021638	$128,751	5.47%
1426	SGN	Signals Network	https://coinmarketcap.com/currencies/signals-network/	$0.001451	$127,858	0.00%
1427	SDA	eSDChain	https://coinmarketcap.com/currencies/esdchain/	$0.001289	$126,300	0.93%
1428	MEC	Megacoin	https://coinmarketcap.com/currencies/megacoin/	$0.003283	$125,654	0.00%
1429	ALT	Alt.Estate token	https://coinmarketcap.com/currencies/alt-estate-token/	$0.000173	$125,522	18.12%
1430	CATO	CatoCoin	https://coinmarketcap.com/currencies/catocoin/	$0.007979	$124,438	201.70%
1431	WGO	WavesGo	https://coinmarketcap.com/currencies/wavesgo/	$0.016413	$124,420	0.00%
1432	LDOGE	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	$0.000008	$124,364	-40.62%
1433	ETHPLO	ETHplode	https://coinmarketcap.com/currencies/ethplode/	$0.007423	$124,025	12.16%
1434	SNRG	Synergy	https://coinmarketcap.com/currencies/synergy/	$0.025303	$123,927	0.00%
1435	BITEUR	bitEUR	https://coinmarketcap.com/currencies/biteur/	$1.14	$123,087	3.66%
1436	OPTI	OptiToken	https://coinmarketcap.com/currencies/optitoken/	$0.004402	$122,737	4.94%
1437	DIM	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	$0.000058	$121,232	-7.36%
1438	IPSX	IP Exchange	https://coinmarketcap.com/currencies/ip-exchange/	$0.000128	$120,783	-0.22%
1439	MFC	MFCoin	https://coinmarketcap.com/currencies/mfcoin/	$0.005869	$120,282	-13.41%
1440	NBX	Netbox Coin	https://coinmarketcap.com/currencies/netbox-coin/	$0.025010	$119,509	-0.48%
1441	LUC	Level Up Coin	https://coinmarketcap.com/currencies/level-up/	$0.000119	$118,546	26.54%
1442	FGC	FantasyGold	https://coinmarketcap.com/currencies/fantasygold/	$0.007266	$118,011	0.00%
1443	BMH	BlockMesh	https://coinmarketcap.com/currencies/blockmesh/	$0.000432	$117,861	-4.62%
1444	CMM	Commercium	https://coinmarketcap.com/currencies/commercium/	$0.002642	$117,035	-10.54%
1445	BERRY	Rentberry	https://coinmarketcap.com/currencies/rentberry/	$0.000383	$115,353	15.51%
1446	WAND	WandX	https://coinmarketcap.com/currencies/wandx/	$0.009419	$115,331	0.00%
1447	JCT	Japan Content...	https://coinmarketcap.com/currencies/japan-content-token/	$0.000392	$115,001	-75.50%
1448	X42	x42 Protocol	https://coinmarketcap.com/currencies/x42-protocol/	$0.007075	$114,674	5.27%
1449	PKG	PKG Token	https://coinmarketcap.com/currencies/pkg-token/	$0.000013	$114,335	1.38%
1450	PIX	Lampix	https://coinmarketcap.com/currencies/lampix/	$0.000843	$114,051	0.00%
1451	IC	Ignition	https://coinmarketcap.com/currencies/ignition/	$0.111583	$113,950	52.59%
1452	RPM	Repme	https://coinmarketcap.com/currencies/repme/	$0.000002	$113,469	-37.42%
1453	BTB	BitBar	https://coinmarketcap.com/currencies/bitbar/	$2.62	$113,348	2.00%
1454	LHT	LHT	https://coinmarketcap.com/currencies/lighthouse-token/	$0.002261	$113,063	0.39%
1455	PRX	ProxyNode	https://coinmarketcap.com/currencies/proxynode/	$0.000816	$112,944	-4.08%
1456	LMC	LoMoCoin	https://coinmarketcap.com/currencies/lomocoin/	$0.000401	$112,715	0.00%
1457	FSBT	FSBT API Token	https://coinmarketcap.com/currencies/fsbt-api-token/	$0.032134	$112,774	7.50%
1458	MMO	MMOCoin	https://coinmarketcap.com/currencies/mmocoin/	$0.001863	$111,617	48.54%
1459	BLU	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	$0.000194	$111,379	0.00%
1460	REX	imbrex	https://coinmarketcap.com/currencies/imbrex/	$0.012829	$111,110	-1.65%
1461	UNIFY	Unify	https://coinmarketcap.com/currencies/unify/	$0.006049	$110,006	-13.74%
1462	EPY	Emphy	https://coinmarketcap.com/currencies/emphy/	$0.013904	$110,048	59.66%
1463	BLOC	BLOC.MONEY	https://coinmarketcap.com/currencies/bloc-money/	$0.008987	$109,771	-0.58%
1464	AUC	Auctus	https://coinmarketcap.com/currencies/auctus/	$0.003676	$109,727	-4.79%
1465	BTB	BitBall	https://coinmarketcap.com/currencies/bitball/	$0.001379	$109,660	-70.30%
1466	SEXC	ShareX	https://coinmarketcap.com/currencies/sharex/	$0.000170	$109,431	0.00%
1467	ANON	ANON	https://coinmarketcap.com/currencies/anon/	$0.014400	$109,354	2.41%
1468	GETX	Guaranteed Et...	https://coinmarketcap.com/currencies/guaranteed-ethurance-token-extra/	$0.000364	$109,128	-0.39%
1469	TRXC	TRONCLASSIC	https://coinmarketcap.com/currencies/tronclassic/	$2.3e-07	$108,698	-86.80%
1470	AIB	Advanced Inte...	https://coinmarketcap.com/currencies/advanced-internet-blocks/	$0.003292	$108,151	0.80%
1471	CRAD	CryptoAds Mar...	https://coinmarketcap.com/currencies/cryptoads-marketplace/	$0.007556	$107,793	-42.32%
1472	ELY	Elysian	https://coinmarketcap.com/currencies/elysian/	$0.001089	$106,730	8.65%
1473	APH	Aphelion	https://coinmarketcap.com/currencies/aphelion/	$0.002136	$106,795	2.09%
1474	LANA	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	$0.000093	$106,425	0.00%
1475	ADH	AdHive	https://coinmarketcap.com/currencies/adhive/	$0.000807	$106,055	-0.51%
1476	QUAN	Quantis Network	https://coinmarketcap.com/currencies/quantis-network/	$0.000550	$105,611	0.57%
1477	JSE	JSECOIN	https://coinmarketcap.com/currencies/jsecoin/	$0.000235	$104,093	-18.71%
1478	GEX	Gexan	https://coinmarketcap.com/currencies/gexan/	$0.050054	$102,540	3.07%
1479	SFCP	SF Capital	https://coinmarketcap.com/currencies/sf-capital/	$0.002311	$102,317	409.61%
1480	MNC	Moneynet	https://coinmarketcap.com/currencies/moneynet/	$0.000026	$101,366	0.00%
1481	RUP	Rupee	https://coinmarketcap.com/currencies/rupee/	$0.002776	$101,205	2.99%
1482	MODX	MODEL-X-coin	https://coinmarketcap.com/currencies/model-x-coin/	$0.008345	$100,570	89.11%
1483	ARC	Advanced Tech...	https://coinmarketcap.com/currencies/arcticcoin/	$0.003576	$100,113	22.23%
1484	ETA	Etheera	https://coinmarketcap.com/currencies/etheera/	$0.000014	$99,727	154.98%
1485	SEND	Social Send	https://coinmarketcap.com/currencies/social-send/	$0.002567	$99,295	8.46%
1486	BTCF	Bitcoin Fast	https://coinmarketcap.com/currencies/bitcoin-fast/	$0.009056	$99,303	-0.68%
1487	NBR	Niobio Cash	https://coinmarketcap.com/currencies/niobio-cash/	$0.000722	$99,239	12.55%
1488	ARCO	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	$0.038859	$98,975	0.00%
1489	IOTW	IOTW	https://coinmarketcap.com/currencies/iotw/	$0.002948	$98,052	2.56%
1490	BECN	Beacon	https://coinmarketcap.com/currencies/beacon/	$0.009487	$97,185	38.72%
1491	V	Version	https://coinmarketcap.com/currencies/version/	$0.000162	$96,523	0.00%
1492	BOUTS	BoutsPro	https://coinmarketcap.com/currencies/boutspro/	$0.001256	$96,216	-0.85%
1493	PYN	PAYCENT	https://coinmarketcap.com/currencies/paycent/	$0.006697	$96,191	6.34%
1494	2GIVE	2GIVE	https://coinmarketcap.com/currencies/2give/	$0.000183	$95,804	-0.53%
1495	BON	Bonpay	https://coinmarketcap.com/currencies/bonpay/	$0.008435	$95,236	0.56%
1496	GCN	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	$5.5e-07	$95,157	-40.26%
1497	AVINOC	AVINOC	https://coinmarketcap.com/currencies/avinoc/	$0.000242	$94,259	0.00%
1498	DEV	DeviantCoin	https://coinmarketcap.com/currencies/deviantcoin/	$0.006065	$93,697	22.37%
1499	SPF	SportyCo	https://coinmarketcap.com/currencies/sportyco/	$0.001702	$92,930	-8.18%
1500	ASAFE	AllSafe	https://coinmarketcap.com/currencies/allsafe/	$0.010087	$92,030	-9.26%
1501	WISH	MyWish	https://coinmarketcap.com/currencies/mywish/	$0.015193	$92,036	-0.51%
1502	GALI	Galilel	https://coinmarketcap.com/currencies/galilel/	$0.004989	$91,066	-12.66%
1503	XGOX	XGOX	https://coinmarketcap.com/currencies/xgox/	$0.000038	$90,983	-15.12%
1504	ING	Iungo	https://coinmarketcap.com/currencies/iungo/	$0.002270	$90,788	5.65%
1505	EL	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	$0.008068	$90,439	-3.70%
1506	ADL	Adelphoi	https://coinmarketcap.com/currencies/adelphoi/	$0.004309	$89,298	5.03%
1507	WXC	WXCOINS	https://coinmarketcap.com/currencies/wxcoins/	$0.015695	$89,270	6.69%
1508	ANC	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	$0.041560	$87,705	1.97%
1509	TAN	Taklimakan Ne...	https://coinmarketcap.com/currencies/taklimakan-network/	$0.001561	$87,311	0.66%
1510	PUT	Profile Utili...	https://coinmarketcap.com/currencies/profile-utility-token/	$0.001922	$87,056	5.07%
1511	CXP	CaixaPay	https://coinmarketcap.com/currencies/caixapay/	$0.001100	$86,796	-7.20%
1512	LABX	Stakinglab	https://coinmarketcap.com/currencies/stakinglab/	$0.213772	$86,612	9.53%
1513	AMP	HyperSpace	https://coinmarketcap.com/currencies/synereo/	$0.000855	$86,167	-31.80%
1514	UNIT	Universal Cur...	https://coinmarketcap.com/currencies/universal-currency/	$0.005391	$85,981	0.00%
1515	MORE	More Coin	https://coinmarketcap.com/currencies/more-coin/	$0.042910	$85,819	-0.72%
1516	ETGP	Ethereum Gold...	https://coinmarketcap.com/currencies/ethereum-gold-project/	$0.000015	$85,735	-70.91%
1517	NRVE	Narrative	https://coinmarketcap.com/currencies/narrative/	$0.002012	$85,594	-0.32%
1518	PAT	Patron	https://coinmarketcap.com/currencies/patron/	$0.000222	$85,530	15.93%
1519	GXX	GravityCoin	https://coinmarketcap.com/currencies/gravitycoin/	$0.031351	$85,351	4.02%
1520	OLE	Olive	https://coinmarketcap.com/currencies/olive/	$0.000308	$85,272	0.00%
1521	TIX	Blocktix	https://coinmarketcap.com/currencies/blocktix/	$0.002113	$84,519	-27.18%
1522	DFS	Fantasy Sports	https://coinmarketcap.com/currencies/fantasy-sports/	$0.018629	$84,429	21.18%
1523	GBX	GoByte	https://coinmarketcap.com/currencies/gobyte/	$0.023166	$84,363	2.66%
1524	BRO	Bitradio	https://coinmarketcap.com/currencies/bitradio/	$0.010361	$83,374	0.94%
1525	ENGT	Engagement Token	https://coinmarketcap.com/currencies/engagement-token/	$0.000201	$83,309	-31.80%
1526	KLKS	Kalkulus	https://coinmarketcap.com/currencies/kalkulus/	$0.004952	$83,264	-9.64%
1527	SCL	Sociall	https://coinmarketcap.com/currencies/sociall/	$0.004976	$83,161	0.00%
1528	XAP	Apollon	https://coinmarketcap.com/currencies/apollon/	$0.000550	$81,759	50.86%
1529	WRC	Worldcore	https://coinmarketcap.com/currencies/worldcore/	$0.000459	$81,701	0.56%
1530	POP	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	$0.000021	$81,543	-5.82%
1531	SAT	Social Activi...	https://coinmarketcap.com/currencies/social-activity-token/	$0.000642	$81,508	17.33%
1532	NAVY	BoatPilot Token	https://coinmarketcap.com/currencies/boat-pilot-token/	$0.001101	$81,288	10.80%
1533	INSN	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	$0.003392	$81,193	0.55%
1534	DYNMT	Dynamite	https://coinmarketcap.com/currencies/dynamite/	$0.346036	$81,056	-7.58%
1535	DFT	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	$0.009278	$80,868	-15.75%
1536	PUT	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	$0.000092	$80,752	-38.25%
1537	EGEM	EtherGem	https://coinmarketcap.com/currencies/ethergem/	$0.004134	$80,553	-3.30%
1538	SHMN	StrongHands M...	https://coinmarketcap.com/currencies/stronghands-masternode/	$0.050008	$80,094	31.25%
1539	DOW	DOWCOIN	https://coinmarketcap.com/currencies/dowcoin/	$0.006716	$79,319	0.81%
1540	NOBS	No BS Crypto	https://coinmarketcap.com/currencies/no-bs-crypto/	$0.000063	$79,107	-2.27%
1541	EXO	Exosis	https://coinmarketcap.com/currencies/exosis/	$0.274742	$78,576	-6.20%
1542	BIT	BitRewards	https://coinmarketcap.com/currencies/bitrewards/	$0.000229	$78,345	-1.55%
1543	FT	Fabric Token	https://coinmarketcap.com/currencies/fabric-token/	$0.003178	$78,154	0.00%
1544	RPI	RPICoin	https://coinmarketcap.com/currencies/rpicoin/	$0.000092	$78,088	0.57%
1545	CRAVE	Crave	https://coinmarketcap.com/currencies/crave/	$0.003392	$76,463	3.20%
1546	SWING	Swing	https://coinmarketcap.com/currencies/swing/	$0.017421	$76,332	4.97%
1547	OXY	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	$0.000082	$76,124	-0.90%
1548	ONG	SoMee.Social	https://coinmarketcap.com/currencies/ongsocial/	$0.001248	$76,119	-13.59%
1549	TCAT	The Currency ...	https://coinmarketcap.com/currencies/the-currency-analytics/	$0.000644	$75,856	-14.45%
1550	LDC	Leadcoin	https://coinmarketcap.com/currencies/leadcoin/	$0.000097	$75,698	-6.29%
1551	ZEIT	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	$0.000002	$74,650	-30.65%
1552	OPCX	OPCoinX	https://coinmarketcap.com/currencies/opcoinx/	$0.000459	$74,497	0.57%
1553	KOBO	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	$0.002992	$73,897	0.00%
1554	ECTE	EurocoinToken	https://coinmarketcap.com/currencies/eurocoin-token/	$0.044213	$73,812	0.11%
1555	SHPING	SHPING	https://coinmarketcap.com/currencies/shping/	$0.000090	$73,700	-11.53%
1556	AGLT	Agrolot	https://coinmarketcap.com/currencies/agrolot/	$0.001129	$73,672	4.04%
1557	WIRE	AirWire	https://coinmarketcap.com/currencies/airwire/	$0.000607	$72,851	1.87%
1558	DTRC	Datarius Credit	https://coinmarketcap.com/currencies/datarius-credit/	$0.000569	$72,664	0.00%
1559	BITBTC	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	$2110.57	$72,549	-5.42%
1560	ADZ	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	$0.001452	$72,357	0.00%
1561	BLAST	BLAST	https://coinmarketcap.com/currencies/blast/	$0.001328	$71,642	-8.02%
1562	CDX	CDX Network	https://coinmarketcap.com/currencies/cdx-network/	$0.002201	$71,634	0.57%
1563	SPX	Sp8de	https://coinmarketcap.com/currencies/sp8de/	$0.000009	$71,178	29.93%
1564	VIU	Viuly	https://coinmarketcap.com/currencies/viuly/	$0.000092	$70,790	0.57%
1565	ONE	Menlo One	https://coinmarketcap.com/currencies/menlo-one/	$0.000235	$70,680	1.32%
1566	EMD	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	$0.003677	$70,287	-60.54%
1567	CRED	Verify	https://coinmarketcap.com/currencies/verify/	$0.005199	$70,228	0.00%
1568	INCO	Incodium	https://coinmarketcap.com/currencies/incodium/	$0.000007	$69,745	0.00%
1569	CYFM	CyberFM	https://coinmarketcap.com/currencies/cyberfm/	$0.000001	$69,699	-93.15%
1570	EQT	EquiTrader	https://coinmarketcap.com/currencies/equitrader/	$0.005418	$68,705	0.00%
1571	BTK	Bitcoin Turbo...	https://coinmarketcap.com/currencies/bitcoin-turbo-koin/	$0.000004	$68,027	-76.73%
1572	SNTR	Silent Notary	https://coinmarketcap.com/currencies/silent-notary/	$8.1e-07	$67,784	-1.63%
1573	CAT	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	$0.009187	$67,614	0.00%
1574	TAG	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	$0.010348	$66,576	0.00%
1575	WEB	Webcoin	https://coinmarketcap.com/currencies/webcoin/	$0.001547	$66,424	-28.04%
1576	ACED	AceD	https://coinmarketcap.com/currencies/aced/	$0.007245	$66,041	-37.92%
1577	BTCN	BitcoiNote	https://coinmarketcap.com/currencies/bitcoinote/	$0.006028	$65,611	-4.32%
1578	FREC	Freyrchain	https://coinmarketcap.com/currencies/freyrchain/	$0.000130	$64,916	-29.36%
1579	VME	VeriME	https://coinmarketcap.com/currencies/verime/	$0.000364	$64,834	0.00%
1580	AREPA	Arepacoin	https://coinmarketcap.com/currencies/arepacoin/	$0.003910	$64,815	42.23%
1581	ECASH	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	$0.004585	$64,654	-2.88%
1582	OPAL	Opal	https://coinmarketcap.com/currencies/opal/	$0.004253	$64,465	0.00%
1583	TDS	TokenDesk	https://coinmarketcap.com/currencies/tokendesk/	$0.004388	$64,428	-14.62%
1584	ZEUS	ZeusNetwork	https://coinmarketcap.com/currencies/zeusnetwork/	$9.2e-07	$64,196	0.57%
1585	DEM	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	$0.001192	$63,951	-18.15%
1586	FND	FundRequest	https://coinmarketcap.com/currencies/fundrequest/	$0.001335	$63,795	0.00%
1587	EVIL	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	$0.003026	$63,601	-4.89%
1588	EXMR	EXMR	https://coinmarketcap.com/currencies/exmr/	$0.005350	$62,893	-5.88%
1589	XMCT	XMCT	https://coinmarketcap.com/currencies/xmct/	$0.000597	$62,841	-0.02%
1590	ITT	Intelligent T...	https://coinmarketcap.com/currencies/intelligent-trading-foundation/	$0.006401	$62,826	61.30%
1591	CHESS	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	$0.001161	$62,754	0.00%
1592	BTNT	BitNautic Token	https://coinmarketcap.com/currencies/bitnautic-token/	$0.003852	$62,516	-8.18%
1593	NCP	Newton Coin P...	https://coinmarketcap.com/currencies/newton-coin-project/	$3.4e-07	$62,271	-11.90%
1594	MRT	Miners' Rewar...	https://coinmarketcap.com/currencies/miners-reward-token/	$0.006186	$61,857	-0.65%
1595	VIVID	Vivid Coin	https://coinmarketcap.com/currencies/vivid-coin/	$0.009862	$61,390	0.88%
1596	GIN	GINcoin	https://coinmarketcap.com/currencies/gincoin/	$0.008195	$60,899	2.18%
1597	ALV	ALLUVA	https://coinmarketcap.com/currencies/alluva/	$0.007085	$60,242	0.00%
1598	EVE	Devery	https://coinmarketcap.com/currencies/devery/	$0.000946	$59,505	-20.78%
1599	GBG	Golos Gold	https://coinmarketcap.com/currencies/golos-gold/	$0.004643	$58,625	2.56%
1600	INCX	International...	https://coinmarketcap.com/currencies/internationalcryptox/	$0.000137	$58,616	1.11%
1601	XPAT	Bitnation	https://coinmarketcap.com/currencies/bitnation/	$0.000002	$58,108	2.47%
1602	FLOT	Fire Lotto	https://coinmarketcap.com/currencies/fire-lotto/	$0.002109	$57,967	41.58%
1603	SWIFT	SwiftCash	https://coinmarketcap.com/currencies/swiftcash/	$0.000550	$57,826	20.69%
1604	XRA	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	$0.000469	$57,467	0.00%
1605	DAN	Daneel	https://coinmarketcap.com/currencies/daneel/	$0.002832	$57,320	-18.06%
1606	BTR	Bitether	https://coinmarketcap.com/currencies/bitether/	$0.001009	$57,234	1.64%
1607	TALK	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	$0.000874	$57,079	0.00%
1608	MNE	Minereum	https://coinmarketcap.com/currencies/minereum/	$0.007793	$56,792	-6.19%
1609	WEB	Webchain	https://coinmarketcap.com/currencies/webchain/	$0.000367	$56,572	0.57%
1610	ENTRC	EnterCoin	https://coinmarketcap.com/currencies/entercoin/	$0.019023	$56,538	-5.77%
1611	ESZ	EtherSportz	https://coinmarketcap.com/currencies/ethersportz/	$0.018755	$56,292	1.71%
1612	XSD	SounDAC	https://coinmarketcap.com/currencies/bitshares-music/	$0.003861	$56,295	-50.17%
1613	AMM	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	$0.003550	$56,014	-5.91%
1614	CIV	Civitas	https://coinmarketcap.com/currencies/civitas/	$0.007795	$55,907	-2.86%
1615	NAVI	Naviaddress	https://coinmarketcap.com/currencies/naviaddress/	$0.000229	$55,603	0.56%
1616	EVED	Evedo	https://coinmarketcap.com/currencies/evedo/	$0.007228	$55,543	-0.55%
1617	RBT	Rimbit	https://coinmarketcap.com/currencies/rimbit/	$0.000280	$55,375	2.45%
1618	ELET	Elementeum	https://coinmarketcap.com/currencies/elementeum/	$0.011296	$55,210	2.11%
1619	BZX	Bitcoin Zero	https://coinmarketcap.com/currencies/bitcoin-zero/	$0.002456	$55,178	-7.41%
1620	SCC	SiaCashCoin	https://coinmarketcap.com/currencies/siacashcoin/	$0.000004	$53,700	17.75%
1621	STAK	STRAKS	https://coinmarketcap.com/currencies/straks/	$0.002249	$53,668	-45.71%
1622	CYMT	CyberMusic	https://coinmarketcap.com/currencies/cybermusic/	$0.000004	$53,515	305.63%
1623	CPC	Cashpayz Token	https://coinmarketcap.com/currencies/cashpayz-token/	$0.015615	$53,446	0.55%
1624	IFT	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	$0.000277	$52,931	0.00%
1625	HELP	GoHelpFund	https://coinmarketcap.com/currencies/gohelpfund/	$0.004310	$52,358	2.75%
1626	HYPE	Hype Token	https://coinmarketcap.com/currencies/hype-token/	$0.001121	$52,159	-14.44%
1627	BRIA	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	$0.070008	$52,046	-8.23%
1628	BEAT	BEAT	https://coinmarketcap.com/currencies/beat/	$0.000417	$51,650	0.00%
1629	DOGET	Doge Token	https://coinmarketcap.com/currencies/doge-token/	$0.000006	$51,636	-44.88%
1630	CSTL	Castle	https://coinmarketcap.com/currencies/castle/	$0.003393	$51,591	-2.93%
1631	VOTE	Agora	https://coinmarketcap.com/currencies/agora/	$0.002608	$51,474	2.36%
1632	SOUL	CryptoSoul	https://coinmarketcap.com/currencies/cryptosoul/	$0.000294	$51,443	6.48%
1633	PSC	PrimeStone	https://coinmarketcap.com/currencies/primestone/	$0.002660	$51,285	-6.68%
1634	IG	IGToken	https://coinmarketcap.com/currencies/igtoken/	$0.000016	$50,979	0.07%
1635	INVE	InterValue	https://coinmarketcap.com/currencies/intervalue/	$0.000399	$50,973	-0.25%
1636	BITSILVER	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	$2.44	$50,948	11.70%
1637	ATB	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	$0.001209	$50,837	-3.12%
1638	AEG	Aegeus	https://coinmarketcap.com/currencies/aegeus/	$0.001385	$50,836	6.55%
1639	KNDC	KanadeCoin	https://coinmarketcap.com/currencies/kanadecoin/	$0.000009	$50,393	1.54%
1640	CMCT	Cyber Movie C...	https://coinmarketcap.com/currencies/cyber-movie-chain/	$0.000003	$50,371	0.60%
1641	ESCX	ESCX Token	https://coinmarketcap.com/currencies/escx-token/	$0.000515	$50,043	7.85%
1642	TOKC	TOKYO	https://coinmarketcap.com/currencies/tokyo/	$0.000183	$50,017	-26.63%
1643	TX	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	$0.006143	$49,915	1.39%
1644	BBK	Bitblocks	https://coinmarketcap.com/currencies/bitblocks/	$0.000422	$49,671	-19.69%
1645	ARAW	ARAW	https://coinmarketcap.com/currencies/araw/	$0.000015	$49,589	8.69%
1646	BBS	BBSCoin	https://coinmarketcap.com/currencies/bbscoin/	$5.8e-07	$48,885	0.07%
1647	NTK	NetKoin	https://coinmarketcap.com/currencies/netkoin/	$0.000011	$48,870	0.81%
1648	MOIN	Moin	https://coinmarketcap.com/currencies/moin/	$0.005593	$48,783	-2.20%
1649	VRS	Veros	https://coinmarketcap.com/currencies/veros/	$0.001566	$48,749	-1.17%
1650	THAR	Thar Token	https://coinmarketcap.com/currencies/thar-token/	$0.069564	$48,695	4.28%
1651	LCP	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	$0.018979	$48,667	3.94%
1652	YUP	Crowdholding	https://coinmarketcap.com/currencies/crowdholding/	$0.000240	$48,051	9.25%
1653	BTCL	BTC Lite	https://coinmarketcap.com/currencies/btc-lite/	$0.002568	$48,019	0.57%
1654	REBL	REBL	https://coinmarketcap.com/currencies/rebl/	$0.000275	$47,781	-13.16%
1655	TCH	Thore Cash	https://coinmarketcap.com/currencies/thore-cash/	$0.000867	$47,728	0.01%
1656	BITGOLD	bitGold	https://coinmarketcap.com/currencies/bitgold/	$251.74	$47,702	1.55%
1657	FSCP	Five Star Coi...	https://coinmarketcap.com/currencies/five-star-coin-pro/	$0.012106	$46,525	0.57%
1658	GCC	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	$0.002292	$46,498	4.74%
1659	HQT	HyperQuant	https://coinmarketcap.com/currencies/hyperquant/	$0.000522	$46,475	-0.74%
1660	MXT	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	$0.012378	$46,099	-22.60%
1661	BTDX	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	$0.001467	$45,979	0.55%
1662	IDRT	Rupiah Token	https://coinmarketcap.com/currencies/rupiah-token/	$0.000071	$45,678	0.47%
1663	PRIV	PRiVCY	https://coinmarketcap.com/currencies/privcy/	$0.002727	$45,017	-16.43%
1664	YTN	YENTEN	https://coinmarketcap.com/currencies/yenten/	$0.001843	$44,867	-10.94%
1665	REC	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	$0.003500	$44,797	11.20%
1666	CCL	CYCLEAN	https://coinmarketcap.com/currencies/cyclean/	$0.000065	$44,390	1.32%
1667	PLURA	PluraCoin	https://coinmarketcap.com/currencies/pluracoin/	$0.000094	$44,147	0.00%
1668	FEX	FidexToken	https://coinmarketcap.com/currencies/fidex-token/	$0.000002	$44,140	119.03%
1669	KIND	Kind Ads Token	https://coinmarketcap.com/currencies/kind-ads-token/	$0.001045	$44,139	23.97%
1670	WTN	Waletoken	https://coinmarketcap.com/currencies/waletoken/	$0.000002	$44,079	0.81%
1671	DML	Decentralized...	https://coinmarketcap.com/currencies/decentralized-machine-learning/	$0.000689	$43,398	0.22%
1672	XPY	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	$0.003611	$43,317	1.54%
1673	VIDZ	PureVidz	https://coinmarketcap.com/currencies/purevidz/	$0.000345	$43,213	0.00%
1674	LOCI	LOCIcoin	https://coinmarketcap.com/currencies/locicoin/	$0.001036	$42,888	0.00%
1675	PEDI	Pedity	https://coinmarketcap.com/currencies/pedity/	$0.000031	$42,798	0.92%
1676	GRLC	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	$0.000822	$42,278	-33.39%
1677	SIGT	Signatum	https://coinmarketcap.com/currencies/signatum/	$0.000387	$41,819	0.00%
1678	HELP	Helpico	https://coinmarketcap.com/currencies/helpico/	$1.76	$41,626	-27.71%
1679	CJT	ConnectJob	https://coinmarketcap.com/currencies/connectjob/	$0.000367	$41,393	0.29%
1680	ODN	Obsidian	https://coinmarketcap.com/currencies/obsidian/	$0.000585	$41,070	0.00%
1681	ARQ	Arqma	https://coinmarketcap.com/currencies/arqma/	$0.019446	$40,957	6.33%
1682	XCLR	ClearCoin	https://coinmarketcap.com/currencies/clearcoin/	$0.000078	$40,955	-0.42%
1683	ORE	Galactrum	https://coinmarketcap.com/currencies/galactrum/	$0.008804	$40,894	-2.47%
1684	IRD	Iridium	https://coinmarketcap.com/currencies/iridium/	$0.002109	$40,681	5.14%
1685	P2PX	P2P Global Ne...	https://coinmarketcap.com/currencies/p2p-global-network/	$0.001289	$40,552	5.35%
1686	DGC	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	$0.001192	$40,456	0.55%
1687	XGS	GenesisX	https://coinmarketcap.com/currencies/genesisx/	$0.004407	$39,885	6.12%
1688	SKIN	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	$0.000447	$39,428	-24.90%
1689	ONX	Onix	https://coinmarketcap.com/currencies/onix/	$0.000367	$39,269	0.49%
1690	PAWS	PAWS Fund	https://coinmarketcap.com/currencies/paws-fund/	$0.020525	$39,241	0.64%
1691	XUEZ	Xuez	https://coinmarketcap.com/currencies/xuez/	$0.011922	$38,888	3.61%
1692	FOR	FORCE	https://coinmarketcap.com/currencies/force/	$0.000275	$38,660	0.58%
1693	VSX	Vsync	https://coinmarketcap.com/currencies/vsync-vsx/	$0.000241	$38,635	0.00%
1694	GB	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	$0.002476	$38,529	0.67%
1695	DMB	Digital Money...	https://coinmarketcap.com/currencies/digital-money-bits/	$0.000367	$38,509	-20.39%
1696	CGEN	CommunityGene...	https://coinmarketcap.com/currencies/communitygeneration/	$0.000092	$38,480	0.57%
1697	GPKR	Gold Poker	https://coinmarketcap.com/currencies/gold-poker/	$0.008279	$38,257	12.82%
1698	HYPX	HYPNOXYS	https://coinmarketcap.com/currencies/hypnoxys/	$0.000002	$37,864	0.00%
1699	IFLT	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	$8.4e-07	$37,542	2.65%
1700	ARION	Arion	https://coinmarketcap.com/currencies/arion/	$0.003302	$37,526	13.15%
1701	WIT	WITChain	https://coinmarketcap.com/currencies/witchain/	$0.000019	$36,870	2.37%
1702	JEW	Shekel	https://coinmarketcap.com/currencies/shekel/	$0.000275	$36,622	45.98%
1703	ITI	iTicoin	https://coinmarketcap.com/currencies/iticoin/	$1.12	$35,756	-15.10%
1704	JOINT	Joint Ventures	https://coinmarketcap.com/currencies/joint-ventures/	$0.001589	$35,168	20.98%
1705	BTCONE	BitCoin One	https://coinmarketcap.com/currencies/bitcoin-one/	$0.000365	$34,851	27.38%
1706	BERN	BERNcash	https://coinmarketcap.com/currencies/berncash/	$0.000486	$34,619	0.00%
1707	ARB	ARBITRAGE	https://coinmarketcap.com/currencies/arbitrage/	$0.008466	$34,615	0.00%
1708	CASH	Cashcoin	https://coinmarketcap.com/currencies/cashcoin/	$0.000642	$34,318	0.56%
1709	BEE	Bee Token	https://coinmarketcap.com/currencies/bee-token/	$0.000145	$34,266	0.00%
1710	ICOO	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	$0.073340	$34,173	0.00%
1711	GUESS	Peerguess	https://coinmarketcap.com/currencies/guess/	$0.000560	$33,874	0.00%
1712	CJ	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	$0.000083	$33,735	0.00%
1713	XLMX	Stellar Classic	https://coinmarketcap.com/currencies/stellar-classic/	$0.000059	$33,495	-5.12%
1714	ARY	Block Array	https://coinmarketcap.com/currencies/block-array/	$0.000488	$33,416	-16.86%
1715	STEEP	SteepCoin	https://coinmarketcap.com/currencies/steepcoin/	$0.000183	$33,236	0.40%
1716	SKY	Scopuly	https://coinmarketcap.com/currencies/scopuly/	$0.000015	$33,105	-4.80%
1717	XCO	X-Coin	https://coinmarketcap.com/currencies/x-coin/	$0.002643	$32,728	0.00%
1718	XDNA	XDNA	https://coinmarketcap.com/currencies/xdna/	$0.006878	$32,714	3.32%
1719	BSTN	BitStation	https://coinmarketcap.com/currencies/bitstation/	$0.000007	$32,693	-11.61%
1720	ICR	InterCrone	https://coinmarketcap.com/currencies/intercrone/	$0.002202	$32,576	-1.51%
1721	XPTX	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	$0.015039	$32,485	10.69%
1722	PFR	Payfair	https://coinmarketcap.com/currencies/payfair/	$0.000825	$32,420	-6.90%
1723	IMP	Ether Kingdom...	https://coinmarketcap.com/currencies/ether-kingdoms-token/	$0.004822	$32,204	-9.10%
1724	SPT	Spectrum	https://coinmarketcap.com/currencies/spectrum/	$0.000027	$32,174	-9.97%
1725	BTRN	Biotron	https://coinmarketcap.com/currencies/biotron/	$0.000483	$31,878	-3.13%
1726	KNT	Knekted	https://coinmarketcap.com/currencies/knekted/	$0.000032	$31,863	-34.58%
1727	FOXT	Fox Trading	https://coinmarketcap.com/currencies/fox-trading/	$0.003491	$31,786	-2.20%
1728	SNR	SONDER	https://coinmarketcap.com/currencies/sonder/	$0.000186	$31,346	1.77%
1729	C2	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	$0.000398	$31,157	0.00%
1730	WIZ	CrowdWiz	https://coinmarketcap.com/currencies/crowdwiz/	$0.008856	$30,986	-10.01%
1731	SMC	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	$0.001192	$30,639	-9.76%
1732	BTW	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	$0.000843	$30,625	6.95%
1733	VSL	vSlice	https://coinmarketcap.com/currencies/vslice/	$0.000917	$30,622	-37.14%
1734	STASH	BitStash	https://coinmarketcap.com/currencies/bitstash/	$0.000011	$30,544	0.48%
1735	BURN	Blockburn	https://coinmarketcap.com/currencies/blockburn/	$0.047018	$30,483	25.20%
1736	ABS	Absolute	https://coinmarketcap.com/currencies/absolute/	$0.002348	$30,337	1.55%
1737	ARCT	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	$0.000288	$30,190	-20.91%
1738	B2G	Bitcoiin	https://coinmarketcap.com/currencies/bitcoiin/	$0.000559	$29,498	3.07%
1739	XMCC	Monoeci	https://coinmarketcap.com/currencies/monacocoin/	$0.003598	$29,486	0.00%
1740	ELTCOIN	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	$0.000326	$29,299	-3.87%
1741	BEN	BitCoen	https://coinmarketcap.com/currencies/bitcoen/	$0.004183	$29,283	1.79%
1742	INN	Innova	https://coinmarketcap.com/currencies/innova/	$0.005778	$29,175	0.58%
1743	CTL	Citadel	https://coinmarketcap.com/currencies/citadel/	$0.002660	$29,173	262.56%
1744	XTA	Italo	https://coinmarketcap.com/currencies/italo/	$0.008993	$28,928	-6.82%
1745	BLC	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	$0.001192	$28,518	9.13%
1746	GRAT	Gratz	https://coinmarketcap.com/currencies/gratz/	$0.000911	$28,245	-20.75%
1747	ITL	Italian Lira	https://coinmarketcap.com/currencies/italian-lira/	$0.000001	$28,223	28.39%
1748	HERB	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	$0.000003	$27,964	12.36%
1749	1UP	Uptrennd	https://coinmarketcap.com/currencies/uptrennd/	$0.006181	$28,100	5.11%
1750	CHEESE	Cheesecoin	https://coinmarketcap.com/currencies/cheesecoin/	$0.000079	$27,979	7.86%
1751	RUPX	Rupaya	https://coinmarketcap.com/currencies/rupaya/	$0.000459	$27,722	-0.04%
1752	BTA	Bata	https://coinmarketcap.com/currencies/bata/	$0.005464	$27,609	17.45%
1753	DVT	DeVault	https://coinmarketcap.com/currencies/devault/	$0.000367	$27,565	0.57%
1754	PLAT	BitGuild PLAT	https://coinmarketcap.com/currencies/bitguild-plat/	$0.000463	$27,597	-3.14%
1755	MAY	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	$0.000274	$27,452	0.00%
1756	QUIN	QUINADS	https://coinmarketcap.com/currencies/quinads/	$0.000002	$27,594	2.62%
1757	MEDIC	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	$0.000091	$27,295	0.17%
1758	HUR	Hurify	https://coinmarketcap.com/currencies/hurify/	$0.000113	$27,213	148.49%
1759	TRCT	Tracto	https://coinmarketcap.com/currencies/tracto/	$0.000986	$26,532	0.00%
1760	HAND	ShowHand	https://coinmarketcap.com/currencies/showhand/	$4.2e-07	$26,156	1.79%
1761	J	Joincoin	https://coinmarketcap.com/currencies/joincoin/	$0.007795	$26,077	6.86%
1762	STAC	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	$0.000075	$25,645	5.98%
1763	OTN	Open Trading ...	https://coinmarketcap.com/currencies/open-trading-network/	$0.012506	$25,318	20.19%
1764	CRM	Cream	https://coinmarketcap.com/currencies/cream/	$0.000559	$25,234	-24.19%
1765	WAGE	Digiwage	https://coinmarketcap.com/currencies/digiwage/	$0.000533	$25,092	94.89%
1766	RBIES	Rubies	https://coinmarketcap.com/currencies/rubies/	$0.002384	$24,834	6.61%
1767	ACC	AdCoin	https://coinmarketcap.com/currencies/adcoin/	$0.001477	$24,409	0.00%
1768	ETI	EtherInc	https://coinmarketcap.com/currencies/etherinc/	$0.000075	$23,698	-5.69%
1769	BSM	Bitsum	https://coinmarketcap.com/currencies/bitsum/	$0.000015	$24,005	37.34%
1770	FUZZ	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	$0.004938	$23,850	0.00%
1771	ZINC	ZINC	https://coinmarketcap.com/currencies/zinc/	$0.004341	$23,681	0.00%
1772	RLT	RouletteToken	https://coinmarketcap.com/currencies/roulettetoken/	$0.002201	$23,674	-6.25%
1773	AMS	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	$0.000468	$23,498	0.00%
1774	SUPER	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	$0.000458	$23,334	0.00%
1775	DASHG	Dash Green	https://coinmarketcap.com/currencies/dash-green/	$0.010130	$23,307	6.78%
1776	SPK	SparksPay	https://coinmarketcap.com/currencies/sparkspay/	$0.004221	$23,145	5.18%
1777	xEUR	xEURO	https://coinmarketcap.com/currencies/xeuro/	$1.11	$22,739	-0.33%
1778	TTT	TrustNote	https://coinmarketcap.com/currencies/trustnote/	$0.000073	$22,677	61.29%
1779	APR	APR Coin	https://coinmarketcap.com/currencies/apr-coin/	$0.002312	$22,566	6.61%
1780	ZNT	Zenswap Netwo...	https://coinmarketcap.com/currencies/zenswap-network-token/	$0.000002	$22,388	-48.59%
1781	SPR	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	$0.001992	$22,225	0.00%
1782	ETX	EthereumX	https://coinmarketcap.com/currencies/ethereumx/	$0.000255	$22,213	10.37%
1783	LNC	Blocklancer	https://coinmarketcap.com/currencies/blocklancer/	$0.000183	$22,016	-0.93%
1784	NRP	Neural Protocol	https://coinmarketcap.com/currencies/neural-protocol/	$0.000002	$22,149	0.76%
1785	DRM	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	$0.008588	$21,970	-0.19%
1786	DTC	Datacoin	https://coinmarketcap.com/currencies/datacoin/	$0.000550	$21,802	0.00%
1787	DACHX	Dach Coin	https://coinmarketcap.com/currencies/dach-coin/	$0.001017	$21,586	1.34%
1788	MCPC	Mobile Crypto...	https://coinmarketcap.com/currencies/mobile-crypto-pay-coin/	$0.003485	$21,421	5.07%
1789	ROCO	ROIyal Coin	https://coinmarketcap.com/currencies/roiyal-coin/	$0.021918	$21,203	-11.75%
1790	TIT	Titcoin	https://coinmarketcap.com/currencies/titcoin/	$0.000324	$21,194	0.00%
1791	CCO	Ccore	https://coinmarketcap.com/currencies/ccore/	$0.012458	$21,179	21.79%
1792	ASA	Asura Coin	https://coinmarketcap.com/currencies/asura-coin/	$0.000095	$21,091	-14.75%
1793	ESCE	Escroco Emerald	https://coinmarketcap.com/currencies/escroco-emerald/	$0.000033	$20,559	368.14%
1794	XBTC21	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	$0.025646	$20,340	0.00%
1795	BND	Blocknode	https://coinmarketcap.com/currencies/blocknode/	$0.000096	$19,875	0.00%
1796	NEVA	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	$0.004665	$19,456	0.00%
1797	B@	Bankcoin	https://coinmarketcap.com/currencies/bankcoin/	$0.001873	$19,279	0.29%
1798	PROC	ProCurrency	https://coinmarketcap.com/currencies/procurrency/	$0.000183	$19,018	-3.57%
1799	MRO	Mero Currency	https://coinmarketcap.com/currencies/mero-currency/	$0.002172	$18,960	35.82%
1800	ALX	ALAX	https://coinmarketcap.com/currencies/alax/	$0.000911	$18,902	0.00%
1801	EZW	EZOOW	https://coinmarketcap.com/currencies/ezoow/	$0.000002	$18,835	0.00%
1802	PAK	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	$0.000274	$18,819	0.38%
1803	KZC	KZ Cash	https://coinmarketcap.com/currencies/kz-cash/	$0.012033	$18,819	-29.70%
1804	QURO	Qurito	https://coinmarketcap.com/currencies/qurito/	$0.001805	$18,785	0.00%
1805	ZBA	Zoomba	https://coinmarketcap.com/currencies/zoomba/	$0.000813	$18,769	-0.98%
1806	CRB	Creditbit	https://coinmarketcap.com/currencies/creditbit/	$0.001101	$18,600	-8.15%
1807	ORI	Origami	https://coinmarketcap.com/currencies/origami/	$0.004389	$18,549	1.29%
1808	BOST	BoostCoin	https://coinmarketcap.com/currencies/boostcoin/	$0.001559	$18,483	-34.24%
1809	EMPR	empowr coin	https://coinmarketcap.com/currencies/empowr-coin/	$1.5e-09	$18,460	-0.38%
1810	CDM	CDMCOIN	https://coinmarketcap.com/currencies/cdmcoin/	$0.000008	$18,338	0.00%
1811	PNX	Phantomx	https://coinmarketcap.com/currencies/phantomx/	$0.000381	$17,918	0.00%
1812	PKB	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	$0.003740	$17,815	0.00%
1813	KNT	Kora Network ...	https://coinmarketcap.com/currencies/kora-network-token/	$0.000053	$17,801	0.81%
1814	STU	bitJob	https://coinmarketcap.com/currencies/student-coin/	$0.000201	$17,659	5.42%
1815	LTCR	Litecred	https://coinmarketcap.com/currencies/litecred/	$0.000581	$17,566	0.00%
1816	BTCRED	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	$0.000825	$17,333	-17.89%
1817	VOISE	Voise	https://coinmarketcap.com/currencies/voisecom/	$0.000032	$17,320	0.00%
1818	OBT	Orbis Token	https://coinmarketcap.com/currencies/orbis-token/	$0.000901	$17,263	0.00%
1819	XIND	INDINODE	https://coinmarketcap.com/currencies/indinode/	$0.000018	$17,165	101.13%
1820	GOSS	Gossipcoin	https://coinmarketcap.com/currencies/gossipcoin/	$0.000556	$17,067	3.43%
1821	SHB	SkyHub Coin	https://coinmarketcap.com/currencies/skyhub-coin/	$0.032465	$17,025	16.72%
1822	ELE	Elementrem	https://coinmarketcap.com/currencies/elementrem/	$0.000649	$16,998	1.63%
1823	TKP	TOKPIE	https://coinmarketcap.com/currencies/tokpie/	$0.004490	$16,898	4.66%
1824	CF	Californium	https://coinmarketcap.com/currencies/californium/	$0.006884	$16,844	0.65%
1825	EUC	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	$0.001356	$16,836	0.00%
1826	FBN	Fivebalance	https://coinmarketcap.com/currencies/fivebalance/	$0.000029	$16,613	-17.29%
1827	ACOIN	Acoin	https://coinmarketcap.com/currencies/acoin/	$0.013608	$16,603	0.83%
1828	SOL	Sola Token	https://coinmarketcap.com/currencies/sola-token/	$0.000571	$16,519	0.00%
1829	IBT	ICOBay	https://coinmarketcap.com/currencies/icobay/	$0.000024	$16,289	-0.20%
1830	CPU	CPUchain	https://coinmarketcap.com/currencies/cpuchain/	$0.001926	$16,227	0.48%
1831	SHVR	Shivers	https://coinmarketcap.com/currencies/shivers/	$0.000293	$15,952	0.00%
1832	BNC	Bionic	https://coinmarketcap.com/currencies/bionic/	$0.000030	$15,908	7.05%
1833	EGX	EagleX	https://coinmarketcap.com/currencies/eaglex/	$0.000459	$15,399	-1.62%
1834	NAT	Natmin Pure E...	https://coinmarketcap.com/currencies/natmin-pure-escrow/	$0.000150	$15,348	0.55%
1835	ZYD	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	$0.002454	$15,321	0.00%
1836	ENTS	EUNOMIA	https://coinmarketcap.com/currencies/eunomia/	$9.1e-07	$15,016	-48.17%
1837	MICRO	Micromines	https://coinmarketcap.com/currencies/micromines/	$8.2e-07	$14,734	5.18%
1838	SCRT	SecretCoin	https://coinmarketcap.com/currencies/secretcoin/	$0.003485	$14,737	0.46%
1839	CNT	Centurion	https://coinmarketcap.com/currencies/centurion/	$0.000189	$14,697	0.00%
1840	MOJO	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	$0.001192	$14,637	-0.06%
1841	EVOS	EVOS	https://coinmarketcap.com/currencies/evos/	$0.001372	$14,548	-5.67%
1842	APC	Alpha Coin	https://coinmarketcap.com/currencies/alpha-coin/	$0.000441	$14,326	-3.01%
1843	KWATT	4NEW	https://coinmarketcap.com/currencies/4new/	$0.000232	$14,204	0.86%
1844	IMPL	Impleum	https://coinmarketcap.com/currencies/impleum/	$0.002476	$14,281	76.28%
1845	EVI	Evimeria	https://coinmarketcap.com/currencies/evimeria/	$9.2e-07	$14,232	0.57%
1846	ELLA	Ellaism	https://coinmarketcap.com/currencies/ellaism/	$0.000734	$14,207	-49.71%
1847	DATP	Decentralized...	https://coinmarketcap.com/currencies/decentralized-asset-trading-platform/	$0.000001	$13,848	-1.34%
1848	XXX	AdultChain	https://coinmarketcap.com/currencies/adultchain/	$0.000276	$13,773	0.00%
1849	NZL	Zealium	https://coinmarketcap.com/currencies/zealium/	$0.001284	$13,768	17.33%
1850	KWH	KWHCoin	https://coinmarketcap.com/currencies/kwhcoin/	$0.000007	$13,222	0.81%
1851	PNY	Peony	https://coinmarketcap.com/currencies/peony/	$0.010500	$13,087	-5.08%
1852	DRAGON	Dragon Option	https://coinmarketcap.com/currencies/dragon-option/	$0.000207	$12,725	-4.12%
1853	SET	Save Environm...	https://coinmarketcap.com/currencies/save-environment-token/	$0.013206	$12,696	-63.34%
1854	XG	GIGA	https://coinmarketcap.com/currencies/giga/	$0.000092	$12,420	-2.87%
1855	IQ	IQ.cash	https://coinmarketcap.com/currencies/iqcash/	$0.003145	$12,255	-3.77%
1856	SWC	Scanetchain	https://coinmarketcap.com/currencies/scanetchain/	$0.000014	$12,129	-92.53%
1857	BZL	BZLCOIN	https://coinmarketcap.com/currencies/bzlcoin/	$0.005497	$12,113	-38.62%
1858	TAJ	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	$0.000926	$11,891	0.00%
1859	OLMP	Olympic	https://coinmarketcap.com/currencies/olympic/	$0.000099	$11,811	-39.82%
1860	HAVY	Havy	https://coinmarketcap.com/currencies/havy/	$0.000002	$11,783	27.10%
1861	POST	PostCoin	https://coinmarketcap.com/currencies/postcoin/	$0.000734	$11,642	-10.77%
1862	CARE	Carebit	https://coinmarketcap.com/currencies/carebit/	$0.000083	$11,572	52.13%
1863	GSR	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	$0.010271	$11,532	22.45%
1864	TOTO	Tourist Token	https://coinmarketcap.com/currencies/tourist-token/	$0.000003	$11,294	2.03%
1865	QBC	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	$0.001679	$11,253	0.00%
1866	VTA	Virtacoin	https://coinmarketcap.com/currencies/virtacoin/	$0.000002	$11,204	-44.96%
1867	KUN	KUN	https://coinmarketcap.com/currencies/kun/	$5.56	$11,115	4.84%
1868	FNTB	Fintab	https://coinmarketcap.com/currencies/fintab/	$0.003992	$11,095	0.00%
1869	PHON	Phonecoin	https://coinmarketcap.com/currencies/phonecoin/	$0.000092	$10,949	0.57%
1870	COU	Couchain	https://coinmarketcap.com/currencies/couchain/	$0.000002	$11,393	-26.85%
1871	DSR	Desire	https://coinmarketcap.com/currencies/desire/	$0.001100	$10,857	0.37%
1872	HVCO	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	$0.007261	$10,849	0.00%
1873	KTS	Klimatas	https://coinmarketcap.com/currencies/klimatas/	$0.014941	$10,801	-9.01%
1874	BSX	Bitspace	https://coinmarketcap.com/currencies/bitspace/	$0.000774	$10,754	0.00%
1875	AIX	Aigang	https://coinmarketcap.com/currencies/aigang/	$0.000359	$10,509	0.00%
1876	CCT	Crystal Clear 	https://coinmarketcap.com/currencies/crystal-clear/	$0.001834	$10,499	-25.49%
1877	ZUM	ZUM TOKEN	https://coinmarketcap.com/currencies/zum-token/	$0.000013	$10,330	3.64%
1878	LUNA	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	$0.006053	$10,329	8.28%
1879	MST	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	$0.016361	$10,313	0.00%
1880	XUN	UltraNote Coin	https://coinmarketcap.com/currencies/ultranote-coin/	$0.000039	$10,318	-9.08%
1881	BSC	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	$0.001834	$10,180	5.87%
1882	DTEM	Dystem	https://coinmarketcap.com/currencies/dystem/	$0.001825	$10,093	24.96%
1883	SCS	SpeedCash	https://coinmarketcap.com/currencies/speedcash/	$0.017293	$9,939	0.00%
1884	BTAD	Bitcoin Adult	https://coinmarketcap.com/currencies/bitcoin-adult/	$0.000278	$9,888	-18.26%
1885	SCRIV	SCRIV NETWORK	https://coinmarketcap.com/currencies/scriv-network/	$0.000399	$9,879	-12.59%
1886	IMS	Independent M...	https://coinmarketcap.com/currencies/independent-money-system/	$0.001834	$9,848	18.28%
1887	BUL	Bulleon	https://coinmarketcap.com/currencies/bulleon/	$0.008896	$9,753	4.44%
1888	CTRT	Cryptrust	https://coinmarketcap.com/currencies/cryptrust/	$0.000002	$9,695	1.82%
1889	INNBCL	InnovativeBio...	https://coinmarketcap.com/currencies/innovative-bioresearch-classic/	$2.9e-09	$9,405	11.58%
1890	RNTB	BitRent	https://coinmarketcap.com/currencies/bitrent/	$0.000011	$9,237	3.60%
1891	ARB	ARbit	https://coinmarketcap.com/currencies/arbit/	$0.000848	$9,181	0.00%
1892	DLC	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	$0.000999	$9,101	0.00%
1893	MASH	MASTERNET	https://coinmarketcap.com/currencies/masternet/	$0.000287	$9,098	-2.00%
1894	NDX	nDEX	https://coinmarketcap.com/currencies/ndex/	$6e-07	$9,016	-3.05%
1895	VIKKY	VikkyToken	https://coinmarketcap.com/currencies/vikkytoken/	$0.000002	$9,065	5.57%
1896	ATS	Authorship	https://coinmarketcap.com/currencies/authorship/	$0.000090	$8,977	0.00%
1897	ICOB	ICOBID	https://coinmarketcap.com/currencies/icobid/	$0.000084	$8,951	0.00%
1898	JS	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	$0.001099	$8,782	0.00%
1899	RAGNA	Ragnarok	https://coinmarketcap.com/currencies/ragnarok/	$0.000550	$8,476	50.85%
1900	CFL	CryptoFlow	https://coinmarketcap.com/currencies/cryptoflow/	$0.000092	$8,440	0.57%
1901	HSN	Helper Search...	https://coinmarketcap.com/currencies/helper-search-token/	$9.9e-07	$8,376	0.00%
1902	HGO	HireGo	https://coinmarketcap.com/currencies/hirego/	$0.001348	$8,366	0.00%
1903	ATH	Atheios	https://coinmarketcap.com/currencies/atheios/	$0.000459	$8,044	0.57%
1904	SHP	Sharpe Platfo...	https://coinmarketcap.com/currencies/sharpe-platform-token/	$0.000460	$8,007	0.00%
1905	GRIM	Grimcoin	https://coinmarketcap.com/currencies/grimcoin/	$0.000079	$7,931	0.00%
1906	ECHT	e-Chat	https://coinmarketcap.com/currencies/e-chat/	$0.000405	$7,753	0.53%
1907	NUKO	Nekonium	https://coinmarketcap.com/currencies/nekonium/	$0.000642	$7,704	0.57%
1908	ELD	electrumdark	https://coinmarketcap.com/currencies/electrumdark/	$0.001975	$7,700	-2.38%
1909	XOV	XOVBank	https://coinmarketcap.com/currencies/xovbank/	$0.000059	$7,680	15.24%
1910	MCW	Mocrow	https://coinmarketcap.com/currencies/mocrow/	$0.003620	$7,375	-0.38%
1911	ZUR	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	$0.000082	$7,150	0.00%
1912	VLT	Veltor	https://coinmarketcap.com/currencies/veltor/	$0.012845	$7,127	0.00%
1913	NYEX	Nyerium	https://coinmarketcap.com/currencies/nyerium/	$0.000275	$7,058	183.79%
1914	MOX	MoX	https://coinmarketcap.com/currencies/mox/	$0.001376	$6,916	7.75%
1915	CAB	Cabbage	https://coinmarketcap.com/currencies/cabbage/	$0.000658	$6,910	0.00%
1916	CYL	Crystal Token	https://coinmarketcap.com/currencies/crystal-token/	$0.012082	$6,819	-7.32%
1917	ENT	Eternity	https://coinmarketcap.com/currencies/eternity/	$0.001009	$6,764	0.32%
1918	OPC	OP Coin	https://coinmarketcap.com/currencies/op-coin/	$0.000004	$6,574	-41.40%
1919	PEX	PosEx	https://coinmarketcap.com/currencies/posex/	$0.002645	$6,489	0.00%
1920	VIVO	VIVO	https://coinmarketcap.com/currencies/vivo/	$0.001284	$6,444	0.58%
1921	XENO	Xenoverse	https://coinmarketcap.com/currencies/xenoverse/	$0.001227	$6,379	-4.66%
1922	ICON	Iconic	https://coinmarketcap.com/currencies/iconic/	$0.010365	$6,146	0.00%
1923	MNP	MNPCoin	https://coinmarketcap.com/currencies/mnpcoin/	$0.002751	$6,031	-28.31%
1924	HST	Decision Token	https://coinmarketcap.com/currencies/decision-token/	$0.000183	$5,874	0.58%
1925	ICHX	IceChain	https://coinmarketcap.com/currencies/icechain/	$0.000007	$5,655	-0.38%
1926	BRAT	BROTHER	https://coinmarketcap.com/currencies/brat/	$0.000035	$5,598	0.00%
1927	BWS	Bitcoin W Spe...	https://coinmarketcap.com/currencies/bitcoin-w-spectrum/	$0.000095	$5,475	0.00%
1928	OCC	Octoin Coin	https://coinmarketcap.com/currencies/octoin-coin/	$0.009843	$5,464	0.93%
1929	YLC	YoloCash	https://coinmarketcap.com/currencies/yolocash/	$0.000185	$5,449	-14.78%
1930	URALS	UralsCoin	https://coinmarketcap.com/currencies/uralscoin/	$0.000362	$5,406	-13.69%
1931	BUNNY	BunnyToken	https://coinmarketcap.com/currencies/bunnytoken/	$0.000022	$5,366	-6.94%
1932	AKA	Akroma	https://coinmarketcap.com/currencies/akroma/	$0.000275	$5,276	0.57%
1933	CMT	Comet	https://coinmarketcap.com/currencies/comet/	$0.006012	$5,248	0.00%
1934	SPDR	SPIDER VPS	https://coinmarketcap.com/currencies/spider-vps/	$0.001742	$5,206	16.87%
1935	FTXT	FUTURAX	https://coinmarketcap.com/currencies/futurax/	$0.000001	$5,109	-17.33%
1936	DELTA	DeltaChain	https://coinmarketcap.com/currencies/delta-chain/	$6.8e-07	$5,050	-62.70%
1937	KURT	Kurrent	https://coinmarketcap.com/currencies/kurrent/	$0.000082	$5,032	0.00%
1938	MILO	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	$0.000459	$4,957	0.77%
1939	ICT	ICOCalendar.T...	https://coinmarketcap.com/currencies/icocalendar-today/	$0.003976	$4,805	-0.04%
1940	CCN	CustomContrac...	https://coinmarketcap.com/currencies/customcontractnetwork/	$0.000003	$4,794	0.00%
1941	PRJ	Project Coin	https://coinmarketcap.com/currencies/project-coin/	$0.000092	$4,742	226.90%
1942	IBTC	iBTC	https://coinmarketcap.com/currencies/ibtc/	$0.000108	$4,705	46.44%
1943	ELLI	Elliot Coin	https://coinmarketcap.com/currencies/elliot-coin/	$0.000183	$4,681	0.40%
1944	VEC2	VectorAI	https://coinmarketcap.com/currencies/vector/	$0.000250	$4,608	0.00%
1945	ETG	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	$0.000381	$4,566	3.39%
1946	CNNC	Cannation	https://coinmarketcap.com/currencies/cannation/	$0.001834	$4,543	0.00%
1947	DALC	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	$0.006053	$4,488	-11.16%
1948	LPC	Lightpaycoin	https://coinmarketcap.com/currencies/lightpaycoin/	$0.000754	$4,368	-69.60%
1949	DIN	Dinero	https://coinmarketcap.com/currencies/dinero/	$0.000458	$4,102	26.07%
1950	LTCU	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	$0.003972	$4,096	0.00%
1951	PXI	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	$0.000183	$4,023	0.57%
1952	BCARD	CARDbuyers	https://coinmarketcap.com/currencies/cardbuyers/	$0.000092	$4,015	-49.72%
1953	TVNT	TravelNote	https://coinmarketcap.com/currencies/travelnote/	$0.001833	$3,946	0.00%
1954	EVC	Eva Cash	https://coinmarketcap.com/currencies/eva-cash/	$0.004247	$3,822	-44.78%
1955	BENJI	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	$0.000188	$3,805	0.00%
1956	QBIC	Qbic	https://coinmarketcap.com/currencies/qbic/	$0.000800	$3,747	0.00%
1957	CREVA	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	$0.000101	$3,687	0.00%
1958	WBB	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	$0.019350	$3,520	-15.72%
1959	MERO	Mero	https://coinmarketcap.com/currencies/mero/	$0.000549	$3,287	0.00%
1960	VOLT	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	$0.000184	$3,047	0.71%
1961	CFUN	CFun	https://coinmarketcap.com/currencies/cfun/	$0.000007	$3,016	0.00%
1962	MRI	Mirai	https://coinmarketcap.com/currencies/mirai/	$0.000872	$2,992	-13.75%
1963	OCL	Oceanlab	https://coinmarketcap.com/currencies/oceanlab/	$0.000064	$2,965	236.35%
1964	PLNC	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	$0.000170	$2,905	0.00%
1965	SOCC	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	$0.000275	$2,890	0.45%
1966	LGS	LogisCoin	https://coinmarketcap.com/currencies/logiscoin/	$0.001228	$2,887	0.00%
1967	LTK	LitecoinToken	https://coinmarketcap.com/currencies/litecoin-token/	$3e-08	$2,824	-0.04%
1968	PRTX	Printex	https://coinmarketcap.com/currencies/printex/	$0.000082	$2,816	0.00%
1969	LBTC	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	$0.000092	$2,654	-5.27%
1970	DCTO	Decentralized...	https://coinmarketcap.com/currencies/decentralized-crypto-token/	$0.000003	$2,606	-18.34%
1971	SIM	Simmitri	https://coinmarketcap.com/currencies/simmitri/	$0.000037	$2,600	0.00%
1972	STR	Staker	https://coinmarketcap.com/currencies/staker/	$0.001742	$2,588	11.93%
1973	WSP	Wispr	https://coinmarketcap.com/currencies/wispr/	$0.000082	$2,541	0.00%
1974	PONZI	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	$0.002843	$2,448	-2.57%
1975	CXT	Coinonat	https://coinmarketcap.com/currencies/coinonat/	$0.000276	$2,379	0.83%
1976	BIT	BitMoney	https://coinmarketcap.com/currencies/bitmoney/	$0.000028	$2,282	-69.92%
1977	HWC	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	$0.000092	$2,125	0.57%
1978	OROX	Cointorox	https://coinmarketcap.com/currencies/cointorox/	$0.000384	$2,122	0.81%
1979	ETHM	Ethereum Meta	https://coinmarketcap.com/currencies/ethereum-meta/	$0.000016	$2,083	-65.22%
1980	IBANK	iBank	https://coinmarketcap.com/currencies/ibank/	$0.000459	$2,078	0.72%
1981	TRAID	Traid	https://coinmarketcap.com/currencies/traid/	$0.000092	$1,979	0.57%
1982	SONO	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	$0.000917	$1,912	-8.57%
1983	FLM	FolmCoin	https://coinmarketcap.com/currencies/folmcoin/	$0.000183	$1,772	0.57%
1984	NANOX	Project-X	https://coinmarketcap.com/currencies/project-x/	$22468.57	$1,758	0.57%
1985	BLN	Bolenum	https://coinmarketcap.com/currencies/bolenum/	$6.6e-08	$1,658	0.00%
1986	CLM	Claymore	https://coinmarketcap.com/currencies/claymore/	$0.000051	$1,597	-0.38%
1987	LRM	LRM Coin	https://coinmarketcap.com/currencies/lrm-coin/	$0.000147	$1,460	0.57%
1988	PAXEX	PAXEX	https://coinmarketcap.com/currencies/paxex/	$0.000083	$1,450	-54.74%
1989	COAL	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	$0.000275	$1,238	0.58%
1990	QNO	QYNO	https://coinmarketcap.com/currencies/qyno/	$0.001009	$1,085	0.56%
1991	X12	X12 Coin	https://coinmarketcap.com/currencies/x12-coin/	$0.000083	$1,007	0.00%
1992	BNN	BrokerNekoNet...	https://coinmarketcap.com/currencies/brokernekonetwork/	$3.2e-07	$951	0.00%
1993	XCG	Xchange	https://coinmarketcap.com/currencies/xchange/	$0.000094	$914	0.00%
1994	BUMBA	BumbaCoin	https://coinmarketcap.com/currencies/bumbacoin/	$0.000036	$844	0.00%
1995	SANDG	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	$0.000275	$844	0.71%
1996	AAA	Abulaba	https://coinmarketcap.com/currencies/abulaba/	$0.000055	$823	84.38%
1997	GMCN	GambleCoin	https://coinmarketcap.com/currencies/gamblecoin/	$0.000075	$822	0.00%
1998	BTX	Bitcoin X	https://coinmarketcap.com/currencies/bitcoin-x/	$0.000281	$804	-48.67%
1999	CONX	Concoin	https://coinmarketcap.com/currencies/concoin/	$0.001010	$752	0.71%
2000	SPEC	SpectrumNetwork	https://coinmarketcap.com/currencies/spectrum-network/	$6.8e-07	$643	0.00%
2001	POSS	Posscoin	https://coinmarketcap.com/currencies/posscoin/	$1.9e-08	$571	0.00%
2002	BENZ	Benz	https://coinmarketcap.com/currencies/benz/	$0.000088	$523	37.92%
2003	ARGUS	Argus	https://coinmarketcap.com/currencies/argus/	$0.000367	$422	0.00%
2004	VOCO	Provoco Token	https://coinmarketcap.com/currencies/provoco-token/	$0.000001	$410	21.35%
2005	AZART	Azart	https://coinmarketcap.com/currencies/azart/	$0.000092	$380	0.57%
2006	DDX	dietbitcoin	https://coinmarketcap.com/currencies/dietbitcoin/	$0.000097	$284	-3.98%
2007	XLB	StellarPay	https://coinmarketcap.com/currencies/stellarpay/	$0.000075	$255	-26.56%
2008	ITZ	Interzone	https://coinmarketcap.com/currencies/interzone/	$0.000092	$243	0.58%
2009	HMC	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	$0.000275	$154	-1.72%
2010	JIYO	Jiyo [OLD]	https://coinmarketcap.com/currencies/jiyo-old/	$0.000018	$112	0.68%
2011	BLCR	Blacer Coin	https://coinmarketcap.com/currencies/blacer-coin/	$0.000642	$105	134.66%
2012	BITS	Bitcoinus	https://coinmarketcap.com/currencies/bitcoinus/	$0.000001	$85	-13.42%
2013	SONG	SongCoin	https://coinmarketcap.com/currencies/songcoin/	$0.000002	$62	0.00%
2014	HUSD	HUSD	https://coinmarketcap.com/currencies/husd/	$1.00	?	0.01%
2015	CKUSD	CK USD	https://coinmarketcap.com/currencies/ckusd/	$0.156563	?	7.41%
2016	GOM	Gomics	https://coinmarketcap.com/currencies/gomics/	$0.428110	?	-1.08%
2017	DFT	DigiFinexToken	https://coinmarketcap.com/currencies/digifinextoken/	$0.613999	?	7.51%
2018	YTA	YottaChain	https://coinmarketcap.com/currencies/yottachain/	$0.117024	?	5.51%
2019	NODE	Whole Network	https://coinmarketcap.com/currencies/whole-network/	$0.013743	?	2.41%
2020	PLG	Pledge Coin	https://coinmarketcap.com/currencies/pledge-coin/	$0.005977	?	-3.85%
2021	FIL	Filecoin [Fut...	https://coinmarketcap.com/currencies/filecoin/	$4.66	?	0.16%
2022	EC	Echoin	https://coinmarketcap.com/currencies/echoin/	$0.024548	?	4.13%
2023	DAD	DAD Chain	https://coinmarketcap.com/currencies/dad-chain/	$0.372869	?	?
2024	SERO	Super Zero	https://coinmarketcap.com/currencies/super-zero/	$0.086572	?	1.63%
2025	MT	MyToken	https://coinmarketcap.com/currencies/mytoken/	$0.001680	?	-6.29%
2026	CET	CoinEx Token	https://coinmarketcap.com/currencies/coinex-token/	$0.027943	?	3.45%
2027	ONG	Ontology Gas	https://coinmarketcap.com/currencies/ontology-gas/	$0.159770	?	0.20%
2028	FOIN	FOIN	https://coinmarketcap.com/currencies/foin/	$1625.89	?	-13.48%
2029	ONE	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	$0.003859	?	0.81%
2030	EM	Eminer	https://coinmarketcap.com/currencies/eminer/	$0.016853	?	-4.24%
2031	ADK	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	$2.72	?	0.06%
2032	DVP	Decentralized...	https://coinmarketcap.com/currencies/decentralized-vulnerability-platform/	$0.013571	?	11.72%
2033	OF	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	$0.000191	?	-9.79%
2034	WIN	WinToken	https://coinmarketcap.com/currencies/wintoken/	$0.001273	?	-9.95%
2035	VIDY	VIDY	https://coinmarketcap.com/currencies/vidy/	$0.002261	?	11.53%
2036	XUC	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	$1.14	?	-1.88%
2037	STX	Blockstack	https://coinmarketcap.com/currencies/blockstack/	$0.190578	?	-2.23%
2038	FAIR	FairGame	https://coinmarketcap.com/currencies/fairgame/	$0.003009	?	2.86%
2039	OCE	OceanEx Token	https://coinmarketcap.com/currencies/oceanex-token/	$0.003003	?	-6.78%
2040	MIN	MINDOL	https://coinmarketcap.com/currencies/mindol/	$0.318360	?	-1.36%
2041	PLA	PLANET	https://coinmarketcap.com/currencies/planet/	$0.315254	?	1.31%
2042	AT	ABCC Token	https://coinmarketcap.com/currencies/abcc-token/	$0.051044	?	-0.65%
2043	BTMX	BitMax Token	https://coinmarketcap.com/currencies/bitmax-token/	$0.070600	?	-0.91%
2044	CONI	Coni	https://coinmarketcap.com/currencies/coni/	$0.019388	?	1.78%
2045	CON	CONUN	https://coinmarketcap.com/currencies/conun/	$0.005166	?	18.39%
2046	VOLLAR	V-Dimension	https://coinmarketcap.com/currencies/v-dimension/	$0.660522	?	-0.30%
2047	TEP	Tepleton	https://coinmarketcap.com/currencies/tepleton/	$2.78	?	8.33%
2048	BU	BUMO	https://coinmarketcap.com/currencies/bumo/	$0.012963	?	27.95%
2049	MIX	MixMarvel	https://coinmarketcap.com/currencies/mixmarvel/	$0.007755	?	2.09%
2050	TSHP	12Ships	https://coinmarketcap.com/currencies/12ships/	$0.017781	?	3.76%
2051	VD	VinDax Coin	https://coinmarketcap.com/currencies/vindax-coin/	$0.043379	?	-3.27%
2052	VLX	Velas	https://coinmarketcap.com/currencies/velas/	$0.023541	?	-5.61%
2053	XSR	Xensor	https://coinmarketcap.com/currencies/xensor/	$0.068539	?	1.57%
2054	YO	Yobit Token	https://coinmarketcap.com/currencies/yobit-token/	$1106.69	?	0.37%
2055	PAXG	PAX Gold	https://coinmarketcap.com/currencies/pax-gold/	$1491.55	?	0.76%
2056	DREP	DREP	https://coinmarketcap.com/currencies/drep/	$0.002507	?	0.29%
2057	CHT	CoinHe Token	https://coinmarketcap.com/currencies/coinhe-token/	$0.565241	?	-0.32%
2058	SHE	ShineChain	https://coinmarketcap.com/currencies/shinechain/	$0.000828	?	1.18%
2059	ALP	ALP Coin	https://coinmarketcap.com/currencies/alp-coin/	$0.259811	?	3.28%
2060	STC	StarChain	https://coinmarketcap.com/currencies/starchain/	$0.004963	?	-5.80%
2061	GET	Themis	https://coinmarketcap.com/currencies/themis/	$0.008155	?	1.28%
2062	DOT	Polkadot [IOU]	https://coinmarketcap.com/currencies/polkadot-iou/	$102.43	?	3.57%
2063	BOLTT	Boltt Coin 	https://coinmarketcap.com/currencies/boltt-coin/	$0.021237	?	-16.04%
2064	ROOBEE	ROOBEE	https://coinmarketcap.com/currencies/roobee/	$0.004848	?	-0.59%
2065	ETM	En-Tan-Mo	https://coinmarketcap.com/currencies/en-tan-mo/	$0.043494	?	6.81%
2066	GTN	GlitzKoin	https://coinmarketcap.com/currencies/glitzkoin/	$0.169099	?	2.24%
2067	CENT	CENTERCOIN	https://coinmarketcap.com/currencies/centercoin/	$0.001835	?	-1.54%
2068	BIA	Bilaxy Token	https://coinmarketcap.com/currencies/bilaxy-token/	$0.004403	?	2.23%
2069	VTHO	VeThor Token	https://coinmarketcap.com/currencies/vethor-token/	$0.000389	?	6.05%
2070	BKBT	BeeKan	https://coinmarketcap.com/currencies/beekan/	$0.000560	?	31.43%
2071	VOL	Volume Network	https://coinmarketcap.com/currencies/volume-network/	$0.028176	?	7.87%
2072	BAW	BAWnetwork	https://coinmarketcap.com/currencies/bawnetwork/	$0.000017	?	3.12%
2073	USE	Usechain Token	https://coinmarketcap.com/currencies/usechain-token/	$0.001057	?	1.75%
2074	IIC	Intelligent I...	https://coinmarketcap.com/currencies/intelligent-investment-chain/	$0.000226	?	11.16%
2075	KNOW	KNOW	https://coinmarketcap.com/currencies/know/	$0.001627	?	-18.01%
2076	E2C	Electronic En...	https://coinmarketcap.com/currencies/electronic-energy-coin/	$0.016863	?	-0.33%
2077	TRAT	Tratok	https://coinmarketcap.com/currencies/tratok/	$0.003147	?	2.62%
2078	DAPPT	Dapp Token	https://coinmarketcap.com/currencies/dapp-token/	$0.001169	?	-3.89%
2079	IDT	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	$0.006538	?	0.62%
2080	CIC	CIChain	https://coinmarketcap.com/currencies/cichain/	$0.000744	?	-1.05%
2081	TSR	Tesra	https://coinmarketcap.com/currencies/tesra/	$0.071579	?	-0.59%
2082	CNNS	CNNS	https://coinmarketcap.com/currencies/cnns/	$0.006423	?	0.40%
2083	NSS	NSS Coin	https://coinmarketcap.com/currencies/nss-coin/	$0.045157	?	-0.19%
2084	TMTG	The Midas Tou...	https://coinmarketcap.com/currencies/the-midas-touch-gold/	$0.000703	?	-0.67%
2085	WHEN	WHEN Token	https://coinmarketcap.com/currencies/when-token/	$0.004638	?	-0.17%
2086	NNB	NNB Token	https://coinmarketcap.com/currencies/nnb-token/	$0.002251	?	2.00%
2087	ZVC	ZVCHAIN	https://coinmarketcap.com/currencies/zvchain/	$0.171900	?	-11.69%
2088	LTK	LinkToken	https://coinmarketcap.com/currencies/linktoken/	$0.052093	?	2.56%
2089	YCC	Yuan Chain Coin	https://coinmarketcap.com/currencies/yuan-chain-coin/	$0.013541	?	1.21%
2090	WETH	WETH	https://coinmarketcap.com/currencies/weth/	$177.40	?	-1.81%
2091	TRN	Treelion	https://coinmarketcap.com/currencies/treelion/	$0.379667	?	19.74%
2092	DUO	DUO Network T...	https://coinmarketcap.com/currencies/duo-network-token/	$0.010545	?	2.12%
2093	LOL	EMOGI Network	https://coinmarketcap.com/currencies/emogi-network/	$0.002076	?	7.07%
2094	DPN	DIPNET	https://coinmarketcap.com/currencies/dipnet/	$0.000455	?	2.57%
2095	DILI	D Community	https://coinmarketcap.com/currencies/d-community/	$0.000610	?	-1.88%
2096	GOS	Gosama	https://coinmarketcap.com/currencies/gosama/	$0.141578	?	-1.04%
2097	CAI	Cai Token	https://coinmarketcap.com/currencies/cai-token/	$0.000099	?	1.23%
2098	MEET	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	$0.006926	?	-16.61%
2099	LIGHT	LightChain	https://coinmarketcap.com/currencies/lightchain/	$0.000012	?	1.67%
2100	LAMBS	Lambda Space ...	https://coinmarketcap.com/currencies/lambda-space-token/	$0.039908	?	1.43%
2101	PC	Promotion Coin	https://coinmarketcap.com/currencies/promotion-coin/	$0.000257	?	15.50%
2102	PLY	PlayCoin [QRC20]	https://coinmarketcap.com/currencies/playcoin/	$0.003610	?	-2.53%
2103	BQT	Blockchain Qu...	https://coinmarketcap.com/currencies/blockchain-quotations-index-token/	$0.015468	?	0.84%
2104	BPRO	Bitcloud Pro	https://coinmarketcap.com/currencies/bitcloud-pro/	$0.003817	?	-2.92%
2105	EDU	EduCoin	https://coinmarketcap.com/currencies/edu-coin/	$0.000153	?	8.26%
2106	TOS	ThingsOperati...	https://coinmarketcap.com/currencies/thingsoperatingsystem/	$0.001735	?	1.53%
2107	SPAZ	Swapcoinz	https://coinmarketcap.com/currencies/swapcoinz/	$0.021868	?	?
2108	SON	Simone	https://coinmarketcap.com/currencies/simone/	$751.07	?	0.00%
2109	HDAC	Hdac	https://coinmarketcap.com/currencies/hdac/	$0.028971	?	-0.28%
2110	CSM	Consentium	https://coinmarketcap.com/currencies/consentium/	$0.087692	?	-26.20%
2111	UC	YouLive Coin	https://coinmarketcap.com/currencies/youlive-coin/	$0.000263	?	1.41%
2112	IZI	IZIChain	https://coinmarketcap.com/currencies/izichain/	$0.000834	?	-58.37%
2113	CRN	ChronoCoin	https://coinmarketcap.com/currencies/chronocoin/	$0.020234	?	5.24%
2114	DXG	Dexter G	https://coinmarketcap.com/currencies/dexter-g/	$0.750011	?	-0.28%
2115	NOVA	NOVA	https://coinmarketcap.com/currencies/nova/	$0.000178	?	1.16%
2116	BUT	BitUP Token	https://coinmarketcap.com/currencies/bitup-token/	$0.002560	?	7.72%
2117	SPRKL	Sparkle	https://coinmarketcap.com/currencies/sparkle/	$0.027764	?	-11.06%
2118	BLOC	Blockcloud	https://coinmarketcap.com/currencies/blockcloud/	$0.001729	?	-6.22%
2119	UCT	Ubique Chain ...	https://coinmarketcap.com/currencies/ubique-chain-of-things/	$0.009453	?	-16.00%
2120	OPNN	Opennity	https://coinmarketcap.com/currencies/opennity/	$0.000211	?	-1.07%
2121	VERS	Versess Coin	https://coinmarketcap.com/currencies/versess-coin/	$45.36	?	0.42%
2122	CBC	CryptoBossCoin	https://coinmarketcap.com/currencies/cryptobosscoin/	$0.115018	?	?
2123	TOPC	TopChain	https://coinmarketcap.com/currencies/topchain/	$0.007131	?	1.84%
2124	DSC	Dash Cash	https://coinmarketcap.com/currencies/dash-cash/	$2.10	?	12.34%
2125	PTN	PalletOne	https://coinmarketcap.com/currencies/palletone/	$0.006547	?	-3.55%
2126	EGCC	Engine	https://coinmarketcap.com/currencies/engine/	$0.000422	?	11.96%
2127	AUNIT	Aunite	https://coinmarketcap.com/currencies/aunite/	$0.034400	?	16.62%
2128	DWS	DWS	https://coinmarketcap.com/currencies/dws/	$0.000356	?	0.88%
2129	HIT	HitChain	https://coinmarketcap.com/currencies/hitchain/	$0.000065	?	0.28%
2130	GST	Game Stars	https://coinmarketcap.com/currencies/game-stars/	$0.000310	?	-7.80%
2131	KEY	KEY	https://coinmarketcap.com/currencies/key/	$0.001384	?	2.94%
2132	ACDC	Volt	https://coinmarketcap.com/currencies/volt/	$0.000077	?	-9.06%
2133	EtLyteT	Ethlyte Crypto	https://coinmarketcap.com/currencies/ethlyte-crypto/	$0.215550	?	35.83%
2134	IOUX	IOU	https://coinmarketcap.com/currencies/iou/	$0.228860	?	0.32%
2135	UBTC	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	$1.47	?	25.93%
2136	LOT	Lukki Operati...	https://coinmarketcap.com/currencies/lukki-operating-token/	$0.009297	?	-4.30%
2137	CCC	Coindom	https://coinmarketcap.com/currencies/coindom/	$0.003462	?	-0.81%
2138	DEFI	Defi	https://coinmarketcap.com/currencies/defi/	$0.053961	?	16.78%
2139	MEX	MEX	https://coinmarketcap.com/currencies/mex/	$0.000596	?	0.29%
2140	LAD	Ladder Networ...	https://coinmarketcap.com/currencies/ladder-network-token/	$0.013095	?	-0.16%
2141	DACC	DACC	https://coinmarketcap.com/currencies/dacc/	$0.000034	?	-8.06%
2142	SBTC	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	$2.07	?	-0.68%
2143	SPIN	SPIN Protocol	https://coinmarketcap.com/currencies/spin-protocol/	$0.001457	?	-12.80%
2144	CRE	Cybereits	https://coinmarketcap.com/currencies/cybereits/	$0.001607	?	-0.20%
2145	CIPX	Colletrix	https://coinmarketcap.com/currencies/colletrix/	$0.003831	?	-0.03%
2146	BTCB	Bitcoin BEP2	https://coinmarketcap.com/currencies/bitcoin-bep2/	$9134.83	?	0.88%
2147	TOKO	Tokoin	https://coinmarketcap.com/currencies/tokoin/	$0.082431	?	-0.05%
2148	FTO	FuturoCoin	https://coinmarketcap.com/currencies/futurocoin/	$0.260179	?	-14.34%
2149	MAG	Maggie	https://coinmarketcap.com/currencies/maggie/	$0.000697	?	1.07%
2150	CHEX	CHEX	https://coinmarketcap.com/currencies/chex/	$0.005506	?	-2.30%
2151	EST	Esports Token	https://coinmarketcap.com/currencies/esports-token/	$0.000682	?	-0.86%
2152	TOSC	T.OS	https://coinmarketcap.com/currencies/t-os/	$0.011840	?	8.47%
2153	INSUR	InsurChain	https://coinmarketcap.com/currencies/insurchain/	$0.000167	?	-1.93%
2154	CEL	Celsius	https://coinmarketcap.com/currencies/celsius/	$0.049272	?	-3.08%
2155	PROB	ProBit Token	https://coinmarketcap.com/currencies/probit-token/	$0.054795	?	-1.90%
2156	ALP	Alphacon	https://coinmarketcap.com/currencies/alphacon/	$0.006283	?	5.66%
2157	EDS	Endorsit	https://coinmarketcap.com/currencies/endorsit/	$0.000077	?	2.28%
2158	FUNDZ	FundToken	https://coinmarketcap.com/currencies/fundtoken/	$0.005869	?	-2.11%
2159	IOEX	IOEX	https://coinmarketcap.com/currencies/ioex/	$0.027592	?	-2.73%
2160	CAR	CarBlock	https://coinmarketcap.com/currencies/carblock/	$0.000774	?	0.64%
2161	BCX	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	$0.000985	?	15.01%
2162	MCH	MeconCash	https://coinmarketcap.com/currencies/meconcash/	$0.279224	?	76.66%
2163	ACU	Aitheon	https://coinmarketcap.com/currencies/aitheon/	$0.004050	?	0.80%
2164	CARAT	CARAT	https://coinmarketcap.com/currencies/carat/	$0.647838	?	1.18%
2165	XIN	Infinity Econ...	https://coinmarketcap.com/currencies/infinity-economics/	$0.002293	?	12.21%
2166	ILK	INLOCK	https://coinmarketcap.com/currencies/inlock/	$0.002913	?	?
2167	M2O	M2O	https://coinmarketcap.com/currencies/m2o/	$0.000402	?	-6.85%
2168	BCDN	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	$0.004347	?	-1.97%
2169	RPZX	Rapidz	https://coinmarketcap.com/currencies/rapidz/	$0.001008	?	-27.58%
2170	BEST	Bitpanda Ecos...	https://coinmarketcap.com/currencies/bitpanda-ecosystem-token/	$0.069305	?	-0.81%
2171	TKT	Twinkle	https://coinmarketcap.com/currencies/twinkle/	$0.002825	?	15.10%
2172	CHT	Countinghouse	https://coinmarketcap.com/currencies/countinghouse/	$1.90	?	-23.52%
2173	MZK	Muzika	https://coinmarketcap.com/currencies/muzika/	$0.004874	?	-6.64%
2174	SEER	SEER	https://coinmarketcap.com/currencies/seer/	$0.000767	?	10.11%
2175	VENA	VENA	https://coinmarketcap.com/currencies/vena/	$0.001792	?	-4.94%
2176	OATH	Oath Protocol	https://coinmarketcap.com/currencies/oath-protocol/	$0.000307	?	-4.65%
2177	HINT	Hintchain	https://coinmarketcap.com/currencies/hintchain/	$0.006320	?	-0.36%
2178	MRS	Marginless	https://coinmarketcap.com/currencies/marginless/	$0.000002	?	17.90%
2179	VSC	vSportCoin	https://coinmarketcap.com/currencies/vsportcoin/	$0.001202	?	8.20%
2180	EBASE	EURBASE	https://coinmarketcap.com/currencies/eurbase/	$1.09	?	-2.47%
2181	7E	7Eleven	https://coinmarketcap.com/currencies/7eleven/	$0.000048	?	8.60%
2182	TMN	TranslateMe N...	https://coinmarketcap.com/currencies/translateme-network-token/	$0.001516	?	4.34%
2183	XRM	AERUM	https://coinmarketcap.com/currencies/aerum/	$0.012902	?	?
2184	EXT	Experience Token	https://coinmarketcap.com/currencies/experience-token/	$0.000109	?	-13.62%
2185	MEDIBIT	MediBit	https://coinmarketcap.com/currencies/medibit/	$0.000006	?	39.04%
2186	AGRS	Agoras Tokens	https://coinmarketcap.com/currencies/agoras-tokens/	$0.174750	?	-1.57%
2187	LPT	Livepeer	https://coinmarketcap.com/currencies/livepeer/	$2.27	?	-9.39%
2188	B91	B91	https://coinmarketcap.com/currencies/b91/	$0.026268	?	84.04%
2189	VJC	VENJOCOIN	https://coinmarketcap.com/currencies/venjocoin/	$7.51	?	3.22%
2190	CUST	Custody Token	https://coinmarketcap.com/currencies/custody-token/	$0.008472	?	-1.63%
2191	SLT	Social Lendin...	https://coinmarketcap.com/currencies/social-lending-token/	$0.002164	?	-0.67%
2192	TCH	Tchain	https://coinmarketcap.com/currencies/tchain/	$0.002939	?	-2.25%
2193	GVE	Globalvillage...	https://coinmarketcap.com/currencies/globalvillage-ecosystem/	$0.000311	?	1.34%
2194	PHV	PATHHIVE 	https://coinmarketcap.com/currencies/phv/	$0.015413	?	1.26%
2195	MSD	MSD	https://coinmarketcap.com/currencies/msd/	$0.004217	?	3.16%
2196	ATLS	Atlas Token	https://coinmarketcap.com/currencies/atlas-token/	$0.014854	?	0.77%
2197	DEEP	DeepCloud AI	https://coinmarketcap.com/currencies/deepcloud-ai/	$0.002070	?	17.79%
2198	SHOW	Show	https://coinmarketcap.com/currencies/show/	$0.000750	?	-2.03%
2199	BGBP	Binance GBP S...	https://coinmarketcap.com/currencies/binance-gbp-stable-coin/	$1.31	?	0.49%
2200	CIT	CariNet	https://coinmarketcap.com/currencies/carinet/	$0.002864	?	-3.86%
2201	SOP	SoPay	https://coinmarketcap.com/currencies/sopay/	$0.000422	?	4.12%
2202	CMS	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	$0.069510	?	-5.22%
2203	CMS	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	$0.069174	?	-0.21%
2204	ROM	ROMToken	https://coinmarketcap.com/currencies/romtoken/	$0.000026	?	13.79%
2205	CB	COINBIG	https://coinmarketcap.com/currencies/coinbig/	$0.002864	?	1.81%
2206	ZNN	Zenon	https://coinmarketcap.com/currencies/zenon/	$1.18	?	24.30%
2207	PXC	Pixie Coin	https://coinmarketcap.com/currencies/pixie-coin/	$0.000896	?	-6.78%
2208	WEBN	WEBN token	https://coinmarketcap.com/currencies/webn-token/	$0.000003	?	-1.83%
2209	EMT	Emanate	https://coinmarketcap.com/currencies/emanate/	$0.016113	?	-0.17%
2210	GSE	GSENetwork	https://coinmarketcap.com/currencies/gsenetwork/	$0.000102	?	-0.38%
2211	KXC	KingXChain	https://coinmarketcap.com/currencies/kingxchain/	$0.000001	?	-27.42%
2212	BRZ	Brazilian Dig...	https://coinmarketcap.com/currencies/brz/	$0.245489	?	-0.38%
2213	QUBE	Qube	https://coinmarketcap.com/currencies/qube/	$0.000274	?	-27.87%
2214	MIDAS	Midas	https://coinmarketcap.com/currencies/midas/	$0.548260	?	0.77%
2215	OTB	OTCBTC Token	https://coinmarketcap.com/currencies/otcbtc-token/	$0.010359	?	-1.14%
2216	ORS	ORS Group	https://coinmarketcap.com/currencies/ors-group/	$0.030100	?	28.01%
2217	BRC	Baer Chain	https://coinmarketcap.com/currencies/baer-chain/	$2.64	?	51.75%
2218	CREX	Crex Token	https://coinmarketcap.com/currencies/crex-token/	$6.17	?	0.26%
2219	INC	Influence Chain	https://coinmarketcap.com/currencies/influence-chain/	$0.000719	?	0.40%
2220	GOM	GoMoney	https://coinmarketcap.com/currencies/gomoney/	$0.001867	?	-12.56%
2221	ALLN	Airline & Lif...	https://coinmarketcap.com/currencies/airline-and-life-networking-token/	$0.061536	?	13.16%
2222	BIFI	Bitcoin File	https://coinmarketcap.com/currencies/bitcoin-file/	$0.002330	?	15.77%
2223	MAPR	Maya Preferre...	https://coinmarketcap.com/currencies/maya-preferred-223/	$914.44	?	12.11%
2224	F1C	Future1coin	https://coinmarketcap.com/currencies/future1coin/	$0.001143	?	16.81%
2225	CDC	Commerce Data...	https://coinmarketcap.com/currencies/commerce-data-connection/	$0.000104	?	40.40%
2226	TV	Ti-Value	https://coinmarketcap.com/currencies/ti-value/	$0.015829	?	-2.94%
2227	BUB	Bubble	https://coinmarketcap.com/currencies/bubble/	$0.018800	?	34.76%
2228	GOLD	Golden Token	https://coinmarketcap.com/currencies/golden-token/	$0.011612	?	-11.83%
2229	BCEO	bitCEO	https://coinmarketcap.com/currencies/bitceo/	$0.043687	?	0.81%
2230	VOLTZ	Voltz	https://coinmarketcap.com/currencies/voltz/	$0.333055	?	20.46%
2231	USC	USDCoin	https://coinmarketcap.com/currencies/usdcoin/	$0.624629	?	-2.37%
2232	TRP	Tronipay	https://coinmarketcap.com/currencies/tronipay/	$0.036685	?	-9.12%
2233	IDEAL	IDEALCOIN	https://coinmarketcap.com/currencies/idealcoin/	$0.008759	?	16.90%
2234	1X2	1X2 COIN	https://coinmarketcap.com/currencies/1x2-coin/	$0.073917	?	-7.44%
2235	HOT	HOT Token	https://coinmarketcap.com/currencies/hot-token/	$0.002342	?	-4.18%
2236	SDUSD	SDUSD	https://coinmarketcap.com/currencies/sdusd/	$0.814465	?	-0.06%
2237	BUD	BUDDY	https://coinmarketcap.com/currencies/buddy/	$0.000001	?	-21.28%
2238	XTX	Xtock	https://coinmarketcap.com/currencies/xtock/	$0.000196	?	7.30%
2239	IOV	IOV BlockChain	https://coinmarketcap.com/currencies/iov-blockchain/	$0.000303	?	-2.42%
2240	DT	Dragon Token	https://coinmarketcap.com/currencies/dragon-token/	$2.37	?	-0.02%
2241	MGC	MGC Token	https://coinmarketcap.com/currencies/mgc-token/	$0.003340	?	-0.12%
2242	LEMO	LemoChain	https://coinmarketcap.com/currencies/lemochain/	$0.004973	?	-0.78%
2243	URAC	Uranus	https://coinmarketcap.com/currencies/uranus/	$0.000717	?	-14.03%
2244	TCN	TCOIN	https://coinmarketcap.com/currencies/tcoin/	$0.018709	?	12.12%
2245	BLACK	eosBLACK	https://coinmarketcap.com/currencies/eosblack/	$0.000545	?	47.79%
2246	ECT	SuperEdge	https://coinmarketcap.com/currencies/superedge/	$0.000032	?	4.46%
2247	READ	Read	https://coinmarketcap.com/currencies/read/	$0.003054	?	2.11%
2248	KGC	Krypton Galax...	https://coinmarketcap.com/currencies/krypton-galaxy-coin/	$0.000958	?	-1.05%
2249	ODEX	One DEX	https://coinmarketcap.com/currencies/one-dex/	$3.2e-07	?	-14.40%
2250	XCD	CapdaxToken	https://coinmarketcap.com/currencies/capdaxtoken/	$0.002999	?	-0.74%
2251	SWTC	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	$0.000562	?	-5.77%
2252	XCT	xCrypt Token	https://coinmarketcap.com/currencies/xcrypt-token/	$0.001457	?	7.08%
2253	QUSD	QUSD	https://coinmarketcap.com/currencies/qusd/	$0.012802	?	0.35%
2254	AGRO	Agrocoin	https://coinmarketcap.com/currencies/agrocoin/	$0.277933	?	-2.56%
2255	XLMG	Stellar Gold	https://coinmarketcap.com/currencies/stellar-gold/	$0.002044	?	-0.59%
2256	SPRK	Sparkster	https://coinmarketcap.com/currencies/sparkster/	$0.001535	?	22.15%
2257	ETT	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel-eth/	$0.002843	?	-8.29%
2258	GRX	GOLD Reward T...	https://coinmarketcap.com/currencies/gold-reward-token/	$0.000550	?	0.58%
2259	JNB	Jinbi Token	https://coinmarketcap.com/currencies/jinbi-token/	$16.27	?	-22.25%
2260	TER	TerraNova	https://coinmarketcap.com/currencies/terranova/	$0.034024	?	6.62%
2261	PLUS1	PlusOneCoin	https://coinmarketcap.com/currencies/plusonecoin/	$0.039312	?	12.41%
2262	BHIG	BuckHathCoin	https://coinmarketcap.com/currencies/buck-hath-coin/	$0.029126	?	6.91%
2263	BIT	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	$0.004310	?	3.82%
2264	TUDA	Tutor's Diary	https://coinmarketcap.com/currencies/tutors-diary/	$0.003229	?	-13.59%
2265	777	BiNGO.Fun	https://coinmarketcap.com/currencies/bingo-fun/	$0.000197	?	-4.24%
2266	MINX	InnovaMinex	https://coinmarketcap.com/currencies/innovaminex/	$0.066814	?	1.35%
2267	DOOH	Bidooh DOOH T...	https://coinmarketcap.com/currencies/bidooh-dooh-token/	$0.000031	?	-0.11%
2268	GOD	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	$0.193616	?	-97.20%
2269	XTRD	XTRD	https://coinmarketcap.com/currencies/xtrd/	$0.000585	?	-18.13%
2270	SMARTUP	Smartup	https://coinmarketcap.com/currencies/smartup/	$0.000238	?	-9.88%
2271	USDX	USDX	https://coinmarketcap.com/currencies/usdx/	$0.293341	?	?
2272	MERI	Merebel	https://coinmarketcap.com/currencies/merebel/	$0.193505	?	0.52%
2273	GMBC	Gamblica	https://coinmarketcap.com/currencies/gamblica/	$0.000347	?	10.16%
2274	BLINK	Blockmason Link	https://coinmarketcap.com/currencies/blockmason-link/	$0.000402	?	-2.04%
2275	RALLY	Rally	https://coinmarketcap.com/currencies/rally/	$0.000458	?	-3.47%
2276	VLU	Valuto	https://coinmarketcap.com/currencies/valuto/	$0.000275	?	-24.57%
2277	ZB	Zerobank	https://coinmarketcap.com/currencies/zerobank/	$0.007712	?	-11.54%
2278	WC	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	$0.019442	?	9.04%
2279	AV	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	$0.054200	?	0.92%
2280	DRA	Diruna	https://coinmarketcap.com/currencies/diruna/	$0.000160	?	49.87%
2281	BZKY	BIZKEY	https://coinmarketcap.com/currencies/bizkey/	$0.000075	?	-5.00%
2282	HLX	Hilux	https://coinmarketcap.com/currencies/hilux/	$0.001192	?	-47.70%
2283	NAM	NAM COIN	https://coinmarketcap.com/currencies/nam-coin/	$0.000048	?	20.48%
2284	IFP	Infinipay	https://coinmarketcap.com/currencies/infinipay/	$0.000110	?	-13.80%
2285	MESSE	MESSE TOKEN	https://coinmarketcap.com/currencies/messe-token/	$0.002172	?	-0.38%
2286	SXC	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	$0.001651	?	0.58%
2287	SKT	SealBlock Token	https://coinmarketcap.com/currencies/sealblock-token/	$0.000002	?	-41.94%
2288	SCC	StockChain	https://coinmarketcap.com/currencies/stockchain/	$0.000065	?	2.15%
2289	NEWOS	NewsToken	https://coinmarketcap.com/currencies/newstoken/	$0.000243	?	0.60%
2290	TRO	TRUNK COIN	https://coinmarketcap.com/currencies/trunk-coin/	$0.000367	?	0.57%
2291	PROUD	PROUD Money	https://coinmarketcap.com/currencies/proud-money/	$0.001559	?	-10.01%
2292	HPY	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	$0.001077	?	-0.03%
2293	SNO	SaveNode	https://coinmarketcap.com/currencies/savenode/	$0.000092	?	-41.59%
2294	OCUL	Oculor	https://coinmarketcap.com/currencies/oculor/	$0.000018	?	101.15%
2295	LVL	LevelApp Token	https://coinmarketcap.com/currencies/levelapp-token/	$0.000010	?	-89.69%
2296	CAN	Content and A...	https://coinmarketcap.com/currencies/content-and-ad-network/	$0.000201	?	0.16%
2297	HNDC	HondaisCoin	https://coinmarketcap.com/currencies/hondaiscoin/	$0.000009	?	0.05%
2298	RBBT	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	$9.9e-07	?	0.00%
2299	XQN	Quotient	https://coinmarketcap.com/currencies/quotient/	$0.000083	?	0.00%
2300	AXIOM	Axiom	https://coinmarketcap.com/currencies/axiom/	$0.003541	?	0.00%
2301	CLUB	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	$0.057506	?	0.27%
2302	FRN	Francs	https://coinmarketcap.com/currencies/francs/	$0.003983	?	0.00%
2303	ACES	Aces	https://coinmarketcap.com/currencies/aces/	$0.000124	?	0.00%
2304	TELL	Tellurion	https://coinmarketcap.com/currencies/tellurion/	$6.2e-07	?	0.00%
2305	BLAZR	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	$0.000165	?	0.00%
2306	EMB	EmberCoin	https://coinmarketcap.com/currencies/embercoin/	$3.2e-08	?	0.00%
2307	WINK	Wink	https://coinmarketcap.com/currencies/wink/	$0.000280	?	0.00%
2308	SIGMA	SIGMAcoin	https://coinmarketcap.com/currencies/sigmacoin/	$0.000732	?	0.81%
2309	MCC	Moving Cloud ...	https://coinmarketcap.com/currencies/moving-cloud-coin/	$0.000246	?	0.00%
2310	ELITE	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	$0.003680	?	0.00%
2311	BTCM	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	$0.001019	?	1.60%
2312	OC	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	$0.000377	?	0.00%
2313	VLC	ValueChain	https://coinmarketcap.com/currencies/valuechain/	$0.002560	?	1.21%
2314	AVH	Animation Vis...	https://coinmarketcap.com/currencies/animation-vision-cash/	$0.000163	?	0.00%
2315	SUP	Superior Coin	https://coinmarketcap.com/currencies/superior-coin/	$0.000083	?	0.00%
2316	LST	Lendroid Supp...	https://coinmarketcap.com/currencies/lendroid-support-token/	$0.000228	?	1.15%
2317	SNIP	SnipCoin	https://coinmarketcap.com/currencies/snipcoin/	$0.000021	?	0.00%
2318	CNET	ContractNet	https://coinmarketcap.com/currencies/contractnet/	$0.008335	?	0.00%
2319	SAL	SalPay	https://coinmarketcap.com/currencies/salpay/	$0.004579	?	0.95%
2320	FT	FToken	https://coinmarketcap.com/currencies/ftoken/	$0.042012	?	1.63%
2321	WT	WeToken	https://coinmarketcap.com/currencies/wetoken/	$0.000101	?	0.00%
2322	WIKI	Wiki Token	https://coinmarketcap.com/currencies/wiki-token/	$0.610292	?	0.00%
2323	BOC	BingoCoin	https://coinmarketcap.com/currencies/bingocoin/	$0.001315	?	0.00%
2324	RDC	Ordocoin	https://coinmarketcap.com/currencies/ordocoin/	$0.000009	?	0.78%
2325	CEDEX	CEDEX Coin	https://coinmarketcap.com/currencies/cedex-coin/	$0.014618	?	0.00%
2326	OBTC	Obitan Chain	https://coinmarketcap.com/currencies/obitan-chain/	$0.000041	?	0.00%
2327	HYB	Hybrid Block	https://coinmarketcap.com/currencies/hybrid-block/	$0.000348	?	0.00%
2328	RRC	RRCoin	https://coinmarketcap.com/currencies/rrcoin/	$0.000103	?	0.00%
2329	YUKI	YUKI	https://coinmarketcap.com/currencies/yuki/	$0.000002	?	1.48%
2330	COTN	CottonCoin	https://coinmarketcap.com/currencies/cottoncoin/	$0.000275	?	0.00%
2331	CEN	Centaure	https://coinmarketcap.com/currencies/centaure/	$0.000092	?	0.76%
2332	GZE	GazeCoin	https://coinmarketcap.com/currencies/gazecoin/	$0.001184	?	0.00%
2333	MOLK	MobilinkToken	https://coinmarketcap.com/currencies/mobilinktoken/	$0.001152	?	0.00%
2334	CCC	Concierge Coin	https://coinmarketcap.com/currencies/concierge-coin/	$0.000467	?	0.00%
2335	ALC	ALLCOIN	https://coinmarketcap.com/currencies/allcoin/	$0.000568	?	7.70%
2336	CHE	Crypto Harbor...	https://coinmarketcap.com/currencies/crypto-harbor-exchange/	$0.000016	?	0.00%
2337	CMIT	CMITCOIN	https://coinmarketcap.com/currencies/cmitcoin/	$0.000004	?	1.26%
2338	COBRA	Cobrabytes	https://coinmarketcap.com/currencies/cobrabytes/	$0.000092	?	0.57%
2339	AEC	EmaratCoin	https://coinmarketcap.com/currencies/emaratcoin/	$0.000373	?	0.00%
2340	SZC	ShopZcoin	https://coinmarketcap.com/currencies/shopzcoin/	$0.000184	?	0.00%
2341	BGG	Bgogo Token	https://coinmarketcap.com/currencies/bgogo-token/	$0.001088	?	-2.66%
2342	TOK	TOKOK	https://coinmarketcap.com/currencies/tokok/	$0.003766	?	1.85%
2343	XSM	SpectrumCash	https://coinmarketcap.com/currencies/spectrumcash/	$0.000007	?	0.00%
2344	DXR	DEXTER	https://coinmarketcap.com/currencies/dexter/	$534.25	?	-0.68%
2345	RC20	RoboCalls	https://coinmarketcap.com/currencies/robocalls/	$0.000093	?	2.25%
2346	BBGC	Big Bang Game...	https://coinmarketcap.com/currencies/big-bang-game-coin/	$0.000081	?	-17.89%
2347	OBX	OOOBTC TOKEN	https://coinmarketcap.com/currencies/ooobtc-token/	$0.000745	?	0.00%
2348	HUDDL	HUDDL	https://coinmarketcap.com/currencies/huddl/	$0.001988	?	0.00%
2349	UTS	UTEMIS	https://coinmarketcap.com/currencies/utemis/	$0.000225	?	0.00%
2350	HN	Hellenic Node	https://coinmarketcap.com/currencies/hellenic-node/	$0.000103	?	0.00%
2351	XMV	MoneroV 	https://coinmarketcap.com/currencies/monero-v/	$0.005513	?	2.63%
2352	TQN	Toqqn	https://coinmarketcap.com/currencies/toqqn/	$0.000091	?	0.00%
2353	LBN	Lucky Block N...	https://coinmarketcap.com/currencies/lucky-block-network/	$0.013456	?	0.00%
2354	NOIZ	NOIZchain	https://coinmarketcap.com/currencies/noizchain/	$0.379485	?	-3.40%
2355	ACC	ACChain	https://coinmarketcap.com/currencies/acchain/	$0.010108	?	0.00%
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 2355, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

