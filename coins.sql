--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-4)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

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
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
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

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	9668.50
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	241.32
3	Tether	https://coinmarketcap.com/currencies/tether/	1.00
4	XRP	https://coinmarketcap.com/currencies/xrp/	0.203978
5	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	256.83
6	Bitcoin SV	https://coinmarketcap.com/currencies/bitcoin-sv/	196.76
7	Litecoin	https://coinmarketcap.com/currencies/litecoin/	47.09
8	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	17.68
9	EOS	https://coinmarketcap.com/currencies/eos/	2.83
10	Cardano	https://coinmarketcap.com/currencies/cardano/	0.085419
11	Tezos	https://coinmarketcap.com/currencies/tezos/	2.94
12	Crypto.com Coin	https://coinmarketcap.com/currencies/crypto-com-coin/	0.100713
13	Stellar	https://coinmarketcap.com/currencies/stellar/	0.079628
14	Chainlink	https://coinmarketcap.com/currencies/chainlink/	4.38
15	UNUS SED LEO	https://coinmarketcap.com/currencies/unus-sed-leo/	1.23
16	Monero	https://coinmarketcap.com/currencies/monero/	67.69
17	TRON	https://coinmarketcap.com/currencies/tron/	0.016939
18	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	4.33
19	Neo	https://coinmarketcap.com/currencies/neo/	11.87
20	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	6.87
21	Dash	https://coinmarketcap.com/currencies/dash/	78.22
22	HedgeTrade	https://coinmarketcap.com/currencies/hedgetrade/	2.57
23	USD Coin	https://coinmarketcap.com/currencies/usd-coin/	1.00
24	IOTA	https://coinmarketcap.com/currencies/iota/	0.241893
25	Cosmos	https://coinmarketcap.com/currencies/cosmos/	3.11
26	Zcash	https://coinmarketcap.com/currencies/zcash/	52.92
27	Maker	https://coinmarketcap.com/currencies/maker/	477.06
28	NEM	https://coinmarketcap.com/currencies/nem/	0.045922
29	Ontology	https://coinmarketcap.com/currencies/ontology/	0.573666
30	VeChain	https://coinmarketcap.com/currencies/vechain/	0.006740
31	Basic Attention Token	https://coinmarketcap.com/currencies/basic-attention-token/	0.245596
32	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	0.002595
33	OKB	https://coinmarketcap.com/currencies/okb/	5.38
34	FTX Token	https://coinmarketcap.com/currencies/ftx-token/	2.97
35	THETA	https://coinmarketcap.com/currencies/theta/	0.282960
36	Paxos Standard	https://coinmarketcap.com/currencies/paxos-standard/	1.00
37	OMG Network	https://coinmarketcap.com/currencies/omg/	1.65
38	DigiByte	https://coinmarketcap.com/currencies/digibyte/	0.017506
39	0x	https://coinmarketcap.com/currencies/0x/	0.322310
40	Decred	https://coinmarketcap.com/currencies/decred/	17.36
41	Hedera Hashgraph	https://coinmarketcap.com/currencies/hedera-hashgraph/	0.044137
42	ICON	https://coinmarketcap.com/currencies/icon/	0.337954
43	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	0.017987
44	Algorand	https://coinmarketcap.com/currencies/algorand/	0.233311
45	Qtum	https://coinmarketcap.com/currencies/qtum/	1.80
46	Lisk	https://coinmarketcap.com/currencies/lisk/	1.37
47	Synthetix Network Token	https://coinmarketcap.com/currencies/synthetix-network-token/	0.900491
48	Binance USD	https://coinmarketcap.com/currencies/binance-usd/	1.00
49	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	0.202795
50	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	9.31
51	Augur	https://coinmarketcap.com/currencies/augur/	14.09
52	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	0.768252
53	TrueUSD	https://coinmarketcap.com/currencies/trueusd/	1.00
54	Multi-collateral DAI	https://coinmarketcap.com/currencies/multi-collateral-dai/	1.00
55	Nano	https://coinmarketcap.com/currencies/nano/	0.966443
56	Hyperion	https://coinmarketcap.com/currencies/hyperion/	0.406226
57	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	0.020138
58	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	1.84
59	Waves	https://coinmarketcap.com/currencies/waves/	1.13
60	HUSD	https://coinmarketcap.com/currencies/husd/	1.00
61	Siacoin	https://coinmarketcap.com/currencies/siacoin/	0.002694
62	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	0.579173
63	ZB Token	https://coinmarketcap.com/currencies/zb-token/	0.231837
64	Holo	https://coinmarketcap.com/currencies/holo/	0.000647
65	WAX	https://coinmarketcap.com/currencies/wax/	0.081404
66	Status	https://coinmarketcap.com/currencies/status/	0.027712
67	Quant	https://coinmarketcap.com/currencies/quant/	7.73
68	Flexacoin	https://coinmarketcap.com/currencies/flexacoin/	0.003269
69	Komodo	https://coinmarketcap.com/currencies/komodo/	0.749550
70	MCO	https://coinmarketcap.com/currencies/crypto-com/	5.29
71	DxChain Token	https://coinmarketcap.com/currencies/dxchain-token/	0.001667
72	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	0.970830
73	Ren	https://coinmarketcap.com/currencies/ren/	0.090755
74	Hive	https://coinmarketcap.com/currencies/hive-blockchain/	0.261174
75	Steem	https://coinmarketcap.com/currencies/steem/	0.208908
76	Aave	https://coinmarketcap.com/currencies/aave/	0.059223
77	Bytom	https://coinmarketcap.com/currencies/bytom/	0.070784
78	Nervos Network	https://coinmarketcap.com/currencies/nervos-network/	0.004308
79	Electroneum	https://coinmarketcap.com/currencies/electroneum/	0.007431
80	Verge	https://coinmarketcap.com/currencies/verge/	0.004417
81	Matic Network	https://coinmarketcap.com/currencies/matic-network/	0.020701
82	Energi	https://coinmarketcap.com/currencies/energi/	2.44
83	Nexo	https://coinmarketcap.com/currencies/nexo/	0.125999
84	BitTorrent	https://coinmarketcap.com/currencies/bittorrent/	0.000329
85	Loopring	https://coinmarketcap.com/currencies/loopring/	0.065132
86	Divi	https://coinmarketcap.com/currencies/divi/	0.038972
87	Seele-N	https://coinmarketcap.com/currencies/seele/	0.091600
88	Numeraire	https://coinmarketcap.com/currencies/numeraire/	24.38
89	Blockstack	https://coinmarketcap.com/currencies/blockstack/	0.141460
90	IOST	https://coinmarketcap.com/currencies/iostoken/	0.005166
91	BitShares	https://coinmarketcap.com/currencies/bitshares/	0.022360
92	Terra	https://coinmarketcap.com/currencies/terra-luna/	0.213245
93	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	0.133868
94	Unibright	https://coinmarketcap.com/currencies/unibright/	0.407902
95	Celsius	https://coinmarketcap.com/currencies/celsius/	0.253569
96	SOLVE	https://coinmarketcap.com/currencies/solve/	0.177118
97	HyperCash	https://coinmarketcap.com/currencies/hypercash/	1.34
98	ABBC Coin	https://coinmarketcap.com/currencies/abbc-coin/	0.103909
99	Chiliz	https://coinmarketcap.com/currencies/chiliz/	0.012455
100	Horizen	https://coinmarketcap.com/currencies/horizen/	6.14
101	Decentraland	https://coinmarketcap.com/currencies/decentraland/	0.041213
102	Xensor	https://coinmarketcap.com/currencies/xensor/	0.047556
103	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	0.051968
104	Zcoin	https://coinmarketcap.com/currencies/zcoin/	4.85
105	Ardor	https://coinmarketcap.com/currencies/ardor/	0.049858
106	aelf	https://coinmarketcap.com/currencies/aelf/	0.091001
107	v.systems	https://coinmarketcap.com/currencies/v-systems/	0.024085
108	Aion	https://coinmarketcap.com/currencies/aion/	0.112201
109	CyberVein	https://coinmarketcap.com/currencies/cybervein/	0.045418
110	PAX Gold	https://coinmarketcap.com/currencies/pax-gold/	1695.35
111	Aeternity	https://coinmarketcap.com/currencies/aeternity/	0.145268
112	Crypterium	https://coinmarketcap.com/currencies/crpt/	0.442327
113	BHEX Token	https://coinmarketcap.com/currencies/bhex-token/	0.154028
114	RSK Infrastructure Framework	https://coinmarketcap.com/currencies/rsk-infrastructure-framework/	0.069670
115	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	0.001437
116	Streamr	https://coinmarketcap.com/currencies/streamr/	0.059807
117	Bancor	https://coinmarketcap.com/currencies/bancor/	0.582276
118	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	0.095026
119	Ripio Credit Network	https://coinmarketcap.com/currencies/ripio-credit-network/	0.077380
120	iExec RLC	https://coinmarketcap.com/currencies/rlc/	0.488492
121	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	0.054727
122	Stratis	https://coinmarketcap.com/currencies/stratis/	0.369804
123	Gatechain Token	https://coinmarketcap.com/currencies/gatechain-token/	0.544958
124	Digitex Futures	https://coinmarketcap.com/currencies/digitex-futures/	0.042274
125	STASIS EURO	https://coinmarketcap.com/currencies/stasis-euro/	1.12
126	Thunder Token	https://coinmarketcap.com/currencies/thunder-token/	0.006572
127	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	0.187743
128	Band Protocol	https://coinmarketcap.com/currencies/band-protocol/	1.72
129	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	0.000150
130	Aragon	https://coinmarketcap.com/currencies/aragon/	1.10
131	Kava	https://coinmarketcap.com/currencies/kava/	1.04
132	Insolar	https://coinmarketcap.com/currencies/insolar/	0.864041
133	GXChain	https://coinmarketcap.com/currencies/gxchain/	0.522749
134	Eidoo	https://coinmarketcap.com/currencies/eidoo/	0.469015
135	Swipe	https://coinmarketcap.com/currencies/swipe/	0.502629
136	Theta Fuel	https://coinmarketcap.com/currencies/theta-fuel/	0.008411
137	Beam	https://coinmarketcap.com/currencies/beam/	0.500538
138	NULS	https://coinmarketcap.com/currencies/nuls/	0.323308
139	Elastos	https://coinmarketcap.com/currencies/elastos/	1.63
140	Orbs	https://coinmarketcap.com/currencies/orbs/	0.013932
141	Ocean Protocol	https://coinmarketcap.com/currencies/ocean-protocol/	0.085566
142	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	26.65
143	MX Token	https://coinmarketcap.com/currencies/mx-token/	0.156262
144	Huobi Pool Token	https://coinmarketcap.com/currencies/huobi-pool-token/	0.005774
145	TomoChain	https://coinmarketcap.com/currencies/tomochain/	0.401129
146	Ark	https://coinmarketcap.com/currencies/ark/	0.232305
147	12Ships	https://coinmarketcap.com/currencies/12ships/	0.005713
148	Cortex	https://coinmarketcap.com/currencies/cortex/	0.108206
149	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	0.112727
150	Elrond	https://coinmarketcap.com/currencies/elrond/	0.002719
151	IoTeX	https://coinmarketcap.com/currencies/iotex/	0.004652
152	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	0.358982
153	Wanchain	https://coinmarketcap.com/currencies/wanchain/	0.201667
154	Enigma	https://coinmarketcap.com/currencies/enigma/	0.332787
155	Reserve Rights	https://coinmarketcap.com/currencies/reserve-rights/	0.003584
156	Super Zero	https://coinmarketcap.com/currencies/super-zero/	0.091340
157	Project Pai	https://coinmarketcap.com/currencies/project-pai/	0.016576
158	PIVX	https://coinmarketcap.com/currencies/pivx/	0.427756
159	Grin	https://coinmarketcap.com/currencies/grin/	0.554389
160	Storm	https://coinmarketcap.com/currencies/storm/	0.003004
161	Polymath	https://coinmarketcap.com/currencies/polymath-network/	0.045142
162	Wirex Token	https://coinmarketcap.com/currencies/wirex-token/	0.009908
163	Tachyon Protocol	https://coinmarketcap.com/currencies/tachyon-protocol/	0.084450
164	TrueChain	https://coinmarketcap.com/currencies/truechain/	0.282652
165	Nash Exchange	https://coinmarketcap.com/currencies/nash-exchange/	0.951527
166	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	0.887108
167	Storj	https://coinmarketcap.com/currencies/storj/	0.134331
168	FunFair	https://coinmarketcap.com/currencies/funfair/	0.003198
169	Populous	https://coinmarketcap.com/currencies/populous/	0.391291
170	Metal	https://coinmarketcap.com/currencies/metal/	0.316291
171	Acute Angle Cloud	https://coinmarketcap.com/currencies/acute-angle-cloud/	0.082671
172	XinFin Network	https://coinmarketcap.com/currencies/xinfin-network/	0.003556
173	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	0.385249
174	Civic	https://coinmarketcap.com/currencies/civic/	0.028947
175	Ignis	https://coinmarketcap.com/currencies/ignis/	0.025205
176	BORA	https://coinmarketcap.com/currencies/bora/	0.027530
177	Loom Network	https://coinmarketcap.com/currencies/loom-network/	0.018990
178	Fetch.ai	https://coinmarketcap.com/currencies/fetch/	0.024532
179	Gas	https://coinmarketcap.com/currencies/gas/	1.77
180	Syscoin	https://coinmarketcap.com/currencies/syscoin/	0.030446
181	BHPCoin	https://coinmarketcap.com/currencies/bhp-coin/	0.871251
182	Dent	https://coinmarketcap.com/currencies/dent/	0.000215
183	WINk	https://coinmarketcap.com/currencies/wink-tronbet/	0.000089
184	DAD	https://coinmarketcap.com/currencies/dad/	0.257847
185	Harmony	https://coinmarketcap.com/currencies/harmony/	0.003725
186	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	0.060490
187	Factom	https://coinmarketcap.com/currencies/factom/	1.80
188	Newton	https://coinmarketcap.com/currencies/newton/	0.000794
189	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	0.294573
190	Fusion	https://coinmarketcap.com/currencies/fusion/	0.360963
191	Origin Protocol	https://coinmarketcap.com/currencies/origin-protocol/	0.231319
192	Tierion	https://coinmarketcap.com/currencies/tierion/	0.036690
193	BOSAGORA	https://coinmarketcap.com/currencies/bosagora/	0.055201
194	Aurora	https://coinmarketcap.com/currencies/aurora/	0.002337
195	Function X	https://coinmarketcap.com/currencies/function-x/	0.069420
196	Telcoin	https://coinmarketcap.com/currencies/telcoin/	0.000313
197	BitKan	https://coinmarketcap.com/currencies/bitkan/	0.002322
198	WazirX	https://coinmarketcap.com/currencies/wazirx/	0.134816
199	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	0.192212
200	Kusama	https://coinmarketcap.com/currencies/kusama/	5.99
201	HEX	https://coinmarketcap.com/currencies/hex/	0.003898
202	MINDOL	https://coinmarketcap.com/currencies/mindol/	2.49
203	Counos X	https://coinmarketcap.com/currencies/counos-x/	20.46
204	TNC Coin	https://coinmarketcap.com/currencies/tnc-coin/	0.154851
205	INO COIN	https://coinmarketcap.com/currencies/ino-coin/	1.88
206	ExtStock Token	https://coinmarketcap.com/currencies/extstock-token/	0.527236
207	TAGZ5	https://coinmarketcap.com/currencies/tagz5/	0.719116
208	PlayFuel	https://coinmarketcap.com/currencies/playfuel/	0.414314
209	BitBay	https://coinmarketcap.com/currencies/bitbay/	0.194820
210	MimbleWimbleCoin	https://coinmarketcap.com/currencies/mimblewimblecoin/	17.34
211	Insight Chain	https://coinmarketcap.com/currencies/insight-chain/	0.470427
212	ThoreCoin	https://coinmarketcap.com/currencies/thorecoin/	1876.68
213	VestChain	https://coinmarketcap.com/currencies/vestchain/	0.017105
214	Elamachain	https://coinmarketcap.com/currencies/elamachain/	0.249087
215	Advanced Internet Blocks	https://coinmarketcap.com/currencies/advanced-internet-blocks/	0.005732
216	Baer Chain	https://coinmarketcap.com/currencies/baer-chain/	0.755665
217	Metaverse Dualchain Network Architecture	https://coinmarketcap.com/currencies/metaverse-dualchain-network-architecture/	0.008901
218	GlitzKoin	https://coinmarketcap.com/currencies/glitzkoin/	0.406286
219	Bitball Treasure	https://coinmarketcap.com/currencies/bitball-treasure/	220.65
220	Homeros	https://coinmarketcap.com/currencies/homeros/	0.448594
221	botXcoin	https://coinmarketcap.com/currencies/botxcoin/	0.058272
222	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	1.71
223	Bloomzed Token	https://coinmarketcap.com/currencies/bloomzed-token/	4.52
224	Tratin	https://coinmarketcap.com/currencies/tratin/	0.000748
225	Mixin	https://coinmarketcap.com/currencies/mixin/	162.00
226	ERC20	https://coinmarketcap.com/currencies/erc20/	0.073051
227	Velas	https://coinmarketcap.com/currencies/velas/	0.055912
228	Counos Coin	https://coinmarketcap.com/currencies/counos-coin/	4.93
229	CRYPTOBUCKS	https://coinmarketcap.com/currencies/cryptobucks/	0.016594
230	QCash	https://coinmarketcap.com/currencies/qcash/	0.141796
231	Idea Chain Coin	https://coinmarketcap.com/currencies/idea-chain-coin/	2.99
232	NewYork Exchange	https://coinmarketcap.com/currencies/newyork-exchange/	9.65
233	Bitbook Gambling	https://coinmarketcap.com/currencies/bitbook-gambling/	0.164978
234	Centrality	https://coinmarketcap.com/currencies/centrality/	0.069322
235	Beldex	https://coinmarketcap.com/currencies/beldex/	0.057455
236	Sologenic	https://coinmarketcap.com/currencies/sologenic/	0.274917
237	BitcoinHD	https://coinmarketcap.com/currencies/bitcoinhd/	8.52
238	STEM CELL COIN	https://coinmarketcap.com/currencies/stem-cell-coin/	0.154815
239	Poseidon Network	https://coinmarketcap.com/currencies/poseidon-network/	0.022531
240	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	0.185438
241	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	0.000250
242	Joule	https://coinmarketcap.com/currencies/joule/	0.045230
243	Bankera	https://coinmarketcap.com/currencies/bankera/	0.001767
244	Tap	https://coinmarketcap.com/currencies/tap/	0.083204
245	Breezecoin	https://coinmarketcap.com/currencies/breezecoin/	0.420335
246	PRIZM	https://coinmarketcap.com/currencies/prizm/	0.023692
247	DeviantCoin	https://coinmarketcap.com/currencies/deviantcoin/	1.40
248	Buggyra Coin Zero	https://coinmarketcap.com/currencies/buggyra-coin-zero/	0.016939
249	FABRK	https://coinmarketcap.com/currencies/fabrk/	0.006988
250	Handshake	https://coinmarketcap.com/currencies/handshake/	0.116963
251	Massnet	https://coinmarketcap.com/currencies/massnet/	0.433743
252	CWV Chain	https://coinmarketcap.com/currencies/cwv-chain/	0.008647
253	inSure	https://coinmarketcap.com/currencies/insure/	0.008432
254	BTU Protocol	https://coinmarketcap.com/currencies/btu-protocol/	0.322685
255	Qubitica	https://coinmarketcap.com/currencies/qubitica/	35.84
256	USDK	https://coinmarketcap.com/currencies/usdk/	1.00
257	Vitae	https://coinmarketcap.com/currencies/vitae/	1.46
258	Rocket Pool	https://coinmarketcap.com/currencies/rocket-pool/	2.61
259	PLATINCOIN	https://coinmarketcap.com/currencies/platincoin/	5.26
260	UNI COIN	https://coinmarketcap.com/currencies/uni-coin/	0.431557
261	BitMax Token	https://coinmarketcap.com/currencies/bitmax-token/	0.038881
262	SynchroBitcoin	https://coinmarketcap.com/currencies/synchrobitcoin/	0.361703
263	AgaveCoin	https://coinmarketcap.com/currencies/agavecoin/	0.063394
264	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	0.002612
265	XeniosCoin	https://coinmarketcap.com/currencies/xenioscoin/	0.324083
266	1irstcoin	https://coinmarketcap.com/currencies/1irstcoin/	0.674928
267	Folgory Coin	https://coinmarketcap.com/currencies/folgory-coin/	1.50
268	Karatgold Coin	https://coinmarketcap.com/currencies/karatgold-coin/	0.005138
269	ZEON	https://coinmarketcap.com/currencies/zeon/	0.000869
270	Hellenic Coin	https://coinmarketcap.com/currencies/helleniccoin/	0.307688
271	THORChain	https://coinmarketcap.com/currencies/thorchain/	0.134689
272	Dynamic Trading Rights	https://coinmarketcap.com/currencies/dynamic-trading-rights/	0.013704
273	ThoreNext	https://coinmarketcap.com/currencies/thorenext/	0.976997
274	Ultiledger	https://coinmarketcap.com/currencies/ultiledger/	0.016377
275	Loki	https://coinmarketcap.com/currencies/loki/	0.425898
276	CRYPTO20	https://coinmarketcap.com/currencies/c20/	0.505695
277	Ecoreal Estate	https://coinmarketcap.com/currencies/ecoreal-estate/	0.096228
278	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	0.000502
279	Cryptoindex.com 100	https://coinmarketcap.com/currencies/cryptoindex-com-100/	0.298780
280	LuckySevenToken	https://coinmarketcap.com/currencies/luckyseventoken/	0.270456
281	Bitcoin 2	https://coinmarketcap.com/currencies/bitcoin2/	1.01
282	Jewel	https://coinmarketcap.com/currencies/jewel/	0.320387
283	NEXT	https://coinmarketcap.com/currencies/next/	0.432270
284	General Attention Currency	https://coinmarketcap.com/currencies/general-attention-currency/	1.73
285	Ethereum Meta	https://coinmarketcap.com/currencies/ethereum-meta/	0.000333
286	CONTRACOIN	https://coinmarketcap.com/currencies/contracoin/	0.999461
287	Envion	https://coinmarketcap.com/currencies/envion/	0.126067
288	TrustVerse	https://coinmarketcap.com/currencies/trustverse/	0.046680
289	Bonorum	https://coinmarketcap.com/currencies/bonorum/	45.71
290	BitForex Token	https://coinmarketcap.com/currencies/bitforex-token/	0.003577
291	ZBG Token	https://coinmarketcap.com/currencies/zbg-token/	0.054381
292	B2BX	https://coinmarketcap.com/currencies/b2bx/	0.772223
293	Chimpion	https://coinmarketcap.com/currencies/chimpion/	0.466354
294	Obyte	https://coinmarketcap.com/currencies/obyte/	19.61
295	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	1.43
296	ILCoin	https://coinmarketcap.com/currencies/ilcoin/	0.028987
297	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	69.11
298	VideoCoin	https://coinmarketcap.com/currencies/videocoin/	0.120482
299	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.006867
300	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	0.016727
301	Travala.com	https://coinmarketcap.com/currencies/travala/	0.350574
302	Bit-Z Token	https://coinmarketcap.com/currencies/bit-z-token/	0.105088
303	GAPS	https://coinmarketcap.com/currencies/gaps/	1.34
304	Orchid	https://coinmarketcap.com/currencies/orchid/	0.200009
305	Apollo Currency	https://coinmarketcap.com/currencies/apollo-currency/	0.000891
306	Nexus	https://coinmarketcap.com/currencies/nexus/	0.197160
307	Everipedia	https://coinmarketcap.com/currencies/everipedia/	0.001675
308	EDC Blockchain	https://coinmarketcap.com/currencies/edc-blockchain/	0.004724
309	TOP	https://coinmarketcap.com/currencies/top/	0.002460
310	Wrapped Bitcoin	https://coinmarketcap.com/currencies/wrapped-bitcoin/	9702.41
311	Ankr	https://coinmarketcap.com/currencies/ankr/	0.002400
312	Neutrino Dollar	https://coinmarketcap.com/currencies/neutrino-dollar/	0.998574
313	MovieBloc	https://coinmarketcap.com/currencies/moviebloc/	0.001777
314	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	5.64
315	Dragon Coins	https://coinmarketcap.com/currencies/dragon-coins/	0.034758
316	RChain	https://coinmarketcap.com/currencies/rchain/	0.024767
317	CryptalDash	https://coinmarketcap.com/currencies/cryptaldash/	0.011934
318	Nxt	https://coinmarketcap.com/currencies/nxt/	0.011916
319	Lambda	https://coinmarketcap.com/currencies/lambda/	0.018229
320	Constellation	https://coinmarketcap.com/currencies/constellation/	0.009303
321	TTC	https://coinmarketcap.com/currencies/ttc/	0.027439
322	COTI	https://coinmarketcap.com/currencies/coti/	0.022738
323	Spectre.ai Dividend Token	https://coinmarketcap.com/currencies/spectre-dividend/	0.142578
324	NKN	https://coinmarketcap.com/currencies/nkn/	0.025021
325	FIBOS	https://coinmarketcap.com/currencies/fibos/	0.010943
326	Fantom	https://coinmarketcap.com/currencies/fantom/	0.006390
327	Solana	https://coinmarketcap.com/currencies/solana/	0.661220
328	Request	https://coinmarketcap.com/currencies/request/	0.014505
329	MediBloc	https://coinmarketcap.com/currencies/medibloc/	0.004466
330	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	0.051680
331	WOM Protocol	https://coinmarketcap.com/currencies/wom-protocol/	0.113176
332	The Force Protocol	https://coinmarketcap.com/currencies/the-force-protocol/	0.036223
333	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	0.029468
334	Elitium	https://coinmarketcap.com/currencies/elitium/	1.00
335	Monolith	https://coinmarketcap.com/currencies/monolith/	0.341710
336	Burst	https://coinmarketcap.com/currencies/burst/	0.005328
337	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	0.128749
338	Asch	https://coinmarketcap.com/currencies/asch/	0.117886
339	Invictus Hyperion Fund	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	0.092350
340	Machine Xchange Coin	https://coinmarketcap.com/currencies/machine-xchange-coin/	0.004380
341	LTO Network	https://coinmarketcap.com/currencies/lto-network/	0.049560
342	Celer Network	https://coinmarketcap.com/currencies/celer-network/	0.002882
343	Carry	https://coinmarketcap.com/currencies/carry/	0.002098
344	ShipChain	https://coinmarketcap.com/currencies/shipchain/	0.022480
345	Blocknet	https://coinmarketcap.com/currencies/blocknet/	1.56
346	Ultra	https://coinmarketcap.com/currencies/ultra/	0.042487
347	Contentos	https://coinmarketcap.com/currencies/contentos/	0.008375
348	QASH	https://coinmarketcap.com/currencies/qash/	0.030205
349	Rakon	https://coinmarketcap.com/currencies/rakon/	0.092797
350	Tael	https://coinmarketcap.com/currencies/tael/	0.125185
351	Arcblock	https://coinmarketcap.com/currencies/arcblock/	0.104814
352	Davinci Coin	https://coinmarketcap.com/currencies/davinci-coin/	0.002570
353	MicroBitcoin	https://coinmarketcap.com/currencies/microbitcoin/	0.000054
354	IRISnet	https://coinmarketcap.com/currencies/irisnet/	0.014357
355	Gemini Dollar	https://coinmarketcap.com/currencies/gemini-dollar/	1.00
356	IDEX	https://coinmarketcap.com/currencies/idex/	0.020040
357	GoChain	https://coinmarketcap.com/currencies/gochain/	0.010356
358	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	0.106284
359	Anchor	https://coinmarketcap.com/currencies/anchor/	0.786055
360	Diamond Platform Token	https://coinmarketcap.com/currencies/diamond-platform-token/	5.84
361	Voyager Token	https://coinmarketcap.com/currencies/voyager-token/	0.044889
362	Cred	https://coinmarketcap.com/currencies/libra-credit/	0.011875
363	CONUN	https://coinmarketcap.com/currencies/conun/	0.003488
364	Measurable Data Token	https://coinmarketcap.com/currencies/measurable-data-token/	0.010314
365	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	46.55
366	REPO	https://coinmarketcap.com/currencies/repo/	0.089731
367	LiquidApps	https://coinmarketcap.com/currencies/liquid-apps/	0.016974
368	Bread	https://coinmarketcap.com/currencies/bread/	0.110215
369	Sport and Leisure	https://coinmarketcap.com/currencies/sport-and-leisure/	0.014481
370	Egoras	https://coinmarketcap.com/currencies/egoras/	0.000150
371	QuarkChain	https://coinmarketcap.com/currencies/quarkchain/	0.005673
372	Propy	https://coinmarketcap.com/currencies/propy/	0.138682
373	Aencoin	https://coinmarketcap.com/currencies/aencoin/	0.035555
374	Proton	https://coinmarketcap.com/currencies/proton/	0.015454
375	Emirex Token	https://coinmarketcap.com/currencies/emirex-token/	0.391388
376	Aladdin	https://coinmarketcap.com/currencies/aladdin/	0.000223
377	LATOKEN	https://coinmarketcap.com/currencies/latoken/	0.025451
378	Kin	https://coinmarketcap.com/currencies/kin/	0.000006
379	Content Value Network	https://coinmarketcap.com/currencies/content-value-network/	0.011244
380	DMarket	https://coinmarketcap.com/currencies/dmarket/	0.167160
381	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	0.108510
382	FNB Protocol	https://coinmarketcap.com/currencies/fnb-protocol/	0.003957
383	Santiment Network Token	https://coinmarketcap.com/currencies/santiment/	0.148160
384	Moeda Loyalty Points	https://coinmarketcap.com/currencies/moeda-loyalty-points/	0.475149
385	Yap Stone	https://coinmarketcap.com/currencies/yap-stone/	0.062135
386	Kleros	https://coinmarketcap.com/currencies/kleros/	0.020169
387	Standard Tokenization Protocol	https://coinmarketcap.com/currencies/standard-tokenization-protocol/	0.013135
388	Wixlar	https://coinmarketcap.com/currencies/wixlar/	0.003860
389	Electra	https://coinmarketcap.com/currencies/electra/	0.000321
390	Cocos-BCX	https://coinmarketcap.com/currencies/cocos-bcx/	0.000378
391	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	0.011271
392	ODEM	https://coinmarketcap.com/currencies/odem/	0.040905
393	Neblio	https://coinmarketcap.com/currencies/neblio/	0.565163
394	Utrust	https://coinmarketcap.com/currencies/utrust/	0.019831
395	Gifto	https://coinmarketcap.com/currencies/gifto/	0.013003
396	MixMarvel	https://coinmarketcap.com/currencies/mixmarvel/	0.004447
397	Hxro	https://coinmarketcap.com/currencies/hxro/	0.087671
398	Single Collateral DAI	https://coinmarketcap.com/currencies/single-collateral-dai/	1.29
399	DREP	https://coinmarketcap.com/currencies/drep/	0.003566
400	Skycoin	https://coinmarketcap.com/currencies/skycoin/	0.484139
401	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	0.101566
402	CoinEx Token	https://coinmarketcap.com/currencies/coinex-token/	0.012365
403	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	0.108824
404	AdEx	https://coinmarketcap.com/currencies/adx-net/	0.097742
405	VNX Exchange	https://coinmarketcap.com/currencies/vnx-exchange/	0.298606
406	Metadium	https://coinmarketcap.com/currencies/metadium/	0.006726
407	XMax	https://coinmarketcap.com/currencies/xmax/	0.000414
408	NavCoin	https://coinmarketcap.com/currencies/nav-coin/	0.121271
409	Nectar	https://coinmarketcap.com/currencies/nectar/	0.100940
410	ARPA Chain	https://coinmarketcap.com/currencies/arpa-chain/	0.011250
411	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	0.013253
412	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	0.013581
413	Morpheus.Network	https://coinmarketcap.com/currencies/morpheus-network/	0.241638
414	Safex Token	https://coinmarketcap.com/currencies/safex-token/	0.004308
415	Mainframe	https://coinmarketcap.com/currencies/mainframe/	0.000853
416	OTOCASH	https://coinmarketcap.com/currencies/otocash/	0.376400
417	sUSD	https://coinmarketcap.com/currencies/susd/	1.01
418	Baz Token	https://coinmarketcap.com/currencies/baz-token/	7.24
419	GreenPower	https://coinmarketcap.com/currencies/greenpower/	0.002432
420	MOAC	https://coinmarketcap.com/currencies/moac/	0.124301
421	Raiden Network Token	https://coinmarketcap.com/currencies/raiden-network-token/	0.153693
422	TROY	https://coinmarketcap.com/currencies/troy/	0.003220
423	Polis	https://coinmarketcap.com/currencies/polis/	0.780234
424	YOU COIN	https://coinmarketcap.com/currencies/you-coin/	0.013716
425	TenX	https://coinmarketcap.com/currencies/tenx/	0.051896
426	Namecoin	https://coinmarketcap.com/currencies/namecoin/	0.510264
427	TaaS	https://coinmarketcap.com/currencies/taas/	0.906564
428	Credits	https://coinmarketcap.com/currencies/credits/	0.040287
429	SaluS	https://coinmarketcap.com/currencies/salus/	7.32
430	Agrocoin	https://coinmarketcap.com/currencies/agrocoin/	0.060466
431	AMO Coin	https://coinmarketcap.com/currencies/amo-coin/	0.000413
432	Dusk Network	https://coinmarketcap.com/currencies/dusk-network/	0.029606
433	Endor Protocol	https://coinmarketcap.com/currencies/endor-protocol/	0.005143
434	Moss Coin	https://coinmarketcap.com/currencies/moss-coin/	0.019793
435	Tellor	https://coinmarketcap.com/currencies/tellor/	5.82
436	Particl	https://coinmarketcap.com/currencies/particl/	0.795367
437	Safe	https://coinmarketcap.com/currencies/safe/	0.344027
438	Cosmo Coin	https://coinmarketcap.com/currencies/cosmo-coin/	0.010635
439	Aergo	https://coinmarketcap.com/currencies/aergo/	0.026899
440	Chromia	https://coinmarketcap.com/currencies/chromia/	0.021834
441	Peercoin	https://coinmarketcap.com/currencies/peercoin/	0.262674
442	AirSwap	https://coinmarketcap.com/currencies/airswap/	0.046048
443	FLETA	https://coinmarketcap.com/currencies/fleta/	0.006911
444	LINA	https://coinmarketcap.com/currencies/lina/	0.023368
445	Dimension Chain	https://coinmarketcap.com/currencies/dimension-chain/	0.027279
446	ChainX	https://coinmarketcap.com/currencies/chainx/	1.27
447	VITE	https://coinmarketcap.com/currencies/vite/	0.014503
448	OST	https://coinmarketcap.com/currencies/ost/	0.009033
449	LCX	https://coinmarketcap.com/currencies/lcx/	0.012440
450	Sentinel Protocol	https://coinmarketcap.com/currencies/sentinel-protocol/	0.016681
451	Perlin	https://coinmarketcap.com/currencies/perlin/	0.018757
452	Wings	https://coinmarketcap.com/currencies/wings/	0.068273
453	Digix Gold Token	https://coinmarketcap.com/currencies/digix-gold-token/	55.30
454	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	0.001959
455	suterusu	https://coinmarketcap.com/currencies/suterusu/	0.005864
456	Lightning Bitcoin	https://coinmarketcap.com/currencies/lightning-bitcoin/	1.66
457	PressOne	https://coinmarketcap.com/currencies/pressone/	0.022282
458	Game.com	https://coinmarketcap.com/currencies/game/	0.008300
459	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	0.000028
460	#MetaHash	https://coinmarketcap.com/currencies/metahash/	0.003320
461	T.OS	https://coinmarketcap.com/currencies/t-os/	0.007248
462	Dune Network	https://coinmarketcap.com/currencies/dune-network/	0.013281
463	Tokenomy	https://coinmarketcap.com/currencies/tokenomy/	0.030869
464	United Traders Token	https://coinmarketcap.com/currencies/uttoken/	0.162092
465	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	1.07
466	King DAG	https://coinmarketcap.com/currencies/king-dag/	0.126188
467	Po.et	https://coinmarketcap.com/currencies/poet/	0.001837
468	QuickX Protocol	https://coinmarketcap.com/currencies/quickx-protocol/	0.012011
469	Contents Protocol	https://coinmarketcap.com/currencies/contents-protocol/	0.001933
470	DAPS Coin	https://coinmarketcap.com/currencies/daps-coin/	0.000112
471	Pillar	https://coinmarketcap.com/currencies/pillar/	0.022766
472	GNY	https://coinmarketcap.com/currencies/gny/	0.030629
473	Prometeus	https://coinmarketcap.com/currencies/prometeus/	0.906606
474	JUST	https://coinmarketcap.com/currencies/just/	0.007362
475	Neumark	https://coinmarketcap.com/currencies/neumark/	0.151212
476	DigitalBits	https://coinmarketcap.com/currencies/digitalbits/	0.017209
477	Castweet	https://coinmarketcap.com/currencies/castweet/	1.56
478	Nimiq	https://coinmarketcap.com/currencies/nimiq/	0.000955
479	Zenon	https://coinmarketcap.com/currencies/zenon/	1.41
480	SALT	https://coinmarketcap.com/currencies/salt/	0.071741
481	Haven Protocol	https://coinmarketcap.com/currencies/haven-protocol/	0.454589
482	All Sports	https://coinmarketcap.com/currencies/all-sports/	0.003824
483	Quantum Resistant Ledger	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	0.080622
484	CryptoVerificationCoin	https://coinmarketcap.com/currencies/cryptoverificationcoin/	9.84
485	Ampleforth	https://coinmarketcap.com/currencies/ampleforth/	0.972703
486	Origo	https://coinmarketcap.com/currencies/origo/	0.013195
487	PlayChip	https://coinmarketcap.com/currencies/playchip/	0.000408
488	Achain	https://coinmarketcap.com/currencies/achain/	0.005925
489	Ivy	https://coinmarketcap.com/currencies/ivy/	0.006368
490	ROOBEE	https://coinmarketcap.com/currencies/roobee/	0.004120
491	EDUCare	https://coinmarketcap.com/currencies/educare/	0.007849
492	LNX Protocol	https://coinmarketcap.com/currencies/lnx-protocol/	0.020882
493	Wagerr	https://coinmarketcap.com/currencies/wagerr/	0.029712
494	Telos	https://coinmarketcap.com/currencies/telos/	0.021393
495	Valor Token	https://coinmarketcap.com/currencies/valor-token/	0.281500
496	Robotina	https://coinmarketcap.com/currencies/robotina/	0.018558
497	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	0.007676
498	Effect.AI	https://coinmarketcap.com/currencies/effect-ai/	0.022205
499	V-ID	https://coinmarketcap.com/currencies/v-id/	0.120143
500	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.024585
501	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.024582
502	CoinMetro Token	https://coinmarketcap.com/currencies/coinmetro-token/	0.026420
503	Levolution	https://coinmarketcap.com/currencies/levolution/	0.139982
504	SymVerse	https://coinmarketcap.com/currencies/symverse/	0.082015
505	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	0.004294
506	Darico Ecosystem Coin	https://coinmarketcap.com/currencies/darcio-ecosystem-coin/	0.086478
507	INT Chain	https://coinmarketcap.com/currencies/int-chain/	0.012034
508	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	0.011007
509	IQeon	https://coinmarketcap.com/currencies/iqeon/	0.980712
510	SonoCoin	https://coinmarketcap.com/currencies/sonocoin/	0.190584
511	Everus	https://coinmarketcap.com/currencies/everus/	0.011466
512	Zano	https://coinmarketcap.com/currencies/zano/	0.524243
513	Kcash	https://coinmarketcap.com/currencies/kcash/	0.011925
514	ChronoCoin	https://coinmarketcap.com/currencies/chronocoin/	0.002381
515	HYCON	https://coinmarketcap.com/currencies/hycon/	0.002375
516	EveryCoin	https://coinmarketcap.com/currencies/everycoin/	0.000561
517	Everex	https://coinmarketcap.com/currencies/everex/	0.230015
518	Revain	https://coinmarketcap.com/currencies/revain/	0.010717
519	HitChain	https://coinmarketcap.com/currencies/hitchain/	0.000084
520	Monero Classic	https://coinmarketcap.com/currencies/monero-classic/	0.274423
521	Atlas Protocol	https://coinmarketcap.com/currencies/atlas-protocol/	0.002006
522	Aeon	https://coinmarketcap.com/currencies/aeon/	0.323891
523	Melon	https://coinmarketcap.com/currencies/melon/	4.06
524	Metronome	https://coinmarketcap.com/currencies/metronome/	0.481203
525	Bezant	https://coinmarketcap.com/currencies/bezant/	0.006100
526	Ruff	https://coinmarketcap.com/currencies/ruff/	0.005127
527	Cartesi	https://coinmarketcap.com/currencies/cartesi/	0.034021
528	USDQ	https://coinmarketcap.com/currencies/usdq/	0.906114
529	Stakenet	https://coinmarketcap.com/currencies/stakenet/	0.049769
530	ProximaX	https://coinmarketcap.com/currencies/proximax/	0.000812
531	Observer	https://coinmarketcap.com/currencies/observer/	0.002330
532	CryptoFranc	https://coinmarketcap.com/currencies/cryptofranc/	1.04
533	SmartCash	https://coinmarketcap.com/currencies/smartcash/	0.003459
534	Electronic Energy Coin	https://coinmarketcap.com/currencies/electronic-energy-coin/	0.011254
535	Bitcoin Rhodium	https://coinmarketcap.com/currencies/bitcoin-rhodium/	5.04
536	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	0.008936
537	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	0.003594
538	U Network	https://coinmarketcap.com/currencies/u-network/	0.000691
539	Gulden	https://coinmarketcap.com/currencies/gulden/	0.009374
540	Polybius	https://coinmarketcap.com/currencies/polybius/	1.21
541	Ambrosus	https://coinmarketcap.com/currencies/amber/	0.013348
542	NOIA Network	https://coinmarketcap.com/currencies/noia-network/	0.018167
543	NPCoin	https://coinmarketcap.com/currencies/npcoin/	0.064941
544	FLO	https://coinmarketcap.com/currencies/flo/	0.030634
545	Ubiq	https://coinmarketcap.com/currencies/ubiq/	0.107848
546	WePower	https://coinmarketcap.com/currencies/wepower/	0.007523
547	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	0.026933
548	0Chain	https://coinmarketcap.com/currencies/0chain/	0.113643
549	DDKoin	https://coinmarketcap.com/currencies/ddkoin/	2.64
550	ETERNAL TOKEN	https://coinmarketcap.com/currencies/eternal-token/	0.048087
551	XYO	https://coinmarketcap.com/currencies/xyo/	0.000350
552	Dock	https://coinmarketcap.com/currencies/dock/	0.007572
553	Mithril	https://coinmarketcap.com/currencies/mithril/	0.005238
554	BlockStamp	https://coinmarketcap.com/currencies/blockstamp/	0.169824
555	Sentivate	https://coinmarketcap.com/currencies/sentivate/	0.001862
556	YOYOW	https://coinmarketcap.com/currencies/yoyow/	0.009294
557	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	0.001107
558	BackPacker Coin	https://coinmarketcap.com/currencies/backpacker-coin/	1.00
638	QLC Chain	https://coinmarketcap.com/currencies/qlink/	0.013053
559	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	0.996657
560	VNDC	https://coinmarketcap.com/currencies/vndc/	0.000043
561	Digital Asset Guarantee Token	https://coinmarketcap.com/currencies/digital-asset-guarantee-token/	0.133245
562	APIX	https://coinmarketcap.com/currencies/apix/	0.046764
563	Morpheus Labs	https://coinmarketcap.com/currencies/morpheus-labs/	0.012523
564	ALQO	https://coinmarketcap.com/currencies/alqo/	0.067357
565	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	0.061708
566	GHOSTPRISM	https://coinmarketcap.com/currencies/ghostprism/	2.11
567	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	0.232221
568	Flash	https://coinmarketcap.com/currencies/flash/	0.004735
569	ZVCHAIN	https://coinmarketcap.com/currencies/zvchain/	0.006762
570	JUST Stablecoin	https://coinmarketcap.com/currencies/just-stablecoin/	1.00
571	BitCapitalVendor	https://coinmarketcap.com/currencies/bitcapitalvendor/	0.004457
572	Hiveterminal Token	https://coinmarketcap.com/currencies/hiveterminal-token/	0.008408
573	StakeCubeCoin	https://coinmarketcap.com/currencies/stakecubecoin/	0.653627
574	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	0.000006
575	Peculium	https://coinmarketcap.com/currencies/peculium/	0.002023
576	Matrix AI Network	https://coinmarketcap.com/currencies/matrix-ai-network/	0.023699
577	Viacoin	https://coinmarketcap.com/currencies/viacoin/	0.179879
578	qiibee	https://coinmarketcap.com/currencies/qiibee/	0.005798
579	Etheroll	https://coinmarketcap.com/currencies/etheroll/	0.584606
580	bitCNY	https://coinmarketcap.com/currencies/bitcny/	0.142394
581	LockTrip	https://coinmarketcap.com/currencies/lockchain/	0.272730
582	IPChain	https://coinmarketcap.com/currencies/ipchain/	0.050198
583	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	0.014237
584	Cashaa	https://coinmarketcap.com/currencies/cashaa/	0.006873
585	apM Coin	https://coinmarketcap.com/currencies/apm-coin/	0.080397
586	Eminer	https://coinmarketcap.com/currencies/eminer/	0.003286
587	doc.com Token	https://coinmarketcap.com/currencies/doc-com-token/	0.005241
588	Phore	https://coinmarketcap.com/currencies/phore/	0.186531
589	NAGA	https://coinmarketcap.com/currencies/naga/	0.054404
590	IONChain	https://coinmarketcap.com/currencies/ionchain/	0.032219
591	district0x	https://coinmarketcap.com/currencies/district0x/	0.006463
592	Egretia	https://coinmarketcap.com/currencies/egretia/	0.000919
593	AppCoins	https://coinmarketcap.com/currencies/appcoins/	0.038595
594	High Performance Blockchain	https://coinmarketcap.com/currencies/high-performance-blockchain/	0.088350
595	LINKA	https://coinmarketcap.com/currencies/linka/	0.005543
596	MVL	https://coinmarketcap.com/currencies/mvl/	0.000458
597	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	0.764099
598	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	0.400854
599	VIDY	https://coinmarketcap.com/currencies/vidy/	0.000612
600	FOAM	https://coinmarketcap.com/currencies/foam/	0.012836
601	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	0.605153
602	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	0.043902
603	BQT	https://coinmarketcap.com/currencies/bqt/	0.006458
604	Dero	https://coinmarketcap.com/currencies/dero/	0.383170
605	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	0.007135
606	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	0.326815
607	Pirate Chain	https://coinmarketcap.com/currencies/pirate-chain/	0.023314
608	Lykke	https://coinmarketcap.com/currencies/lykke/	0.011588
609	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	0.005983
610	Bitcore	https://coinmarketcap.com/currencies/bitcore/	0.205547
611	Ondori	https://coinmarketcap.com/currencies/ondori/	0.000097
612	OAX	https://coinmarketcap.com/currencies/oax/	0.048868
613	Covesting	https://coinmarketcap.com/currencies/covesting/	0.200994
614	DAOstack	https://coinmarketcap.com/currencies/daostack/	0.075260
615	Xaurum	https://coinmarketcap.com/currencies/xaurum/	0.050458
616	BOX Token	https://coinmarketcap.com/currencies/box-token/	0.035995
617	Ferrum Network	https://coinmarketcap.com/currencies/ferrum-network/	0.026763
618	Hi Mutual Society	https://coinmarketcap.com/currencies/hi-mutual-society/	0.008794
619	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	0.000477
620	Edge	https://coinmarketcap.com/currencies/edge/	0.035136
621	Maincoin	https://coinmarketcap.com/currencies/maincoin/	0.011284
622	Insights Network	https://coinmarketcap.com/currencies/insights-network/	0.017491
623	EURBASE	https://coinmarketcap.com/currencies/eurbase/	1.20
624	Ergo	https://coinmarketcap.com/currencies/ergo/	0.223602
625	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	0.000063
626	pEOS	https://coinmarketcap.com/currencies/peos/	0.004047
627	Selfkey	https://coinmarketcap.com/currencies/selfkey/	0.001091
628	Nestree	https://coinmarketcap.com/currencies/nestree/	0.004147
629	Krios	https://coinmarketcap.com/currencies/krios/	0.015623
630	VIBE	https://coinmarketcap.com/currencies/vibe/	0.012660
631	Global Social Chain	https://coinmarketcap.com/currencies/global-social-chain/	0.005883
632	Etherparty	https://coinmarketcap.com/currencies/etherparty/	0.003275
633	MenaPay	https://coinmarketcap.com/currencies/menapay/	0.024437
634	Kryll	https://coinmarketcap.com/currencies/kryll/	0.115738
635	GoCrypto Token	https://coinmarketcap.com/currencies/gocrypto-token/	0.015919
636	S4FE	https://coinmarketcap.com/currencies/s4fe/	0.012007
637	Blox	https://coinmarketcap.com/currencies/blox/	0.004695
639	Viberate	https://coinmarketcap.com/currencies/viberate/	0.016170
640	SunContract	https://coinmarketcap.com/currencies/suncontract/	0.025417
641	Pigeoncoin	https://coinmarketcap.com/currencies/pigeoncoin/	0.000574
642	Universa	https://coinmarketcap.com/currencies/universa/	0.001663
643	Zel	https://coinmarketcap.com/currencies/zel/	0.029046
644	Monetha	https://coinmarketcap.com/currencies/monetha/	0.007551
645	MargiX	https://coinmarketcap.com/currencies/margix/	0.025535
646	SONM	https://coinmarketcap.com/currencies/sonm/	0.008408
647	QunQun	https://coinmarketcap.com/currencies/qunqun/	0.004221
648	BLOCKv	https://coinmarketcap.com/currencies/blockv/	0.001001
649	Cryptocean	https://coinmarketcap.com/currencies/cryptocean/	0.362859
650	Credo	https://coinmarketcap.com/currencies/credo/	0.005398
651	UGAS	https://coinmarketcap.com/currencies/ugas/	0.017006
652	CargoX	https://coinmarketcap.com/currencies/cargox/	0.018407
653	CUTcoin	https://coinmarketcap.com/currencies/cutcoin/	0.028418
654	PCHAIN	https://coinmarketcap.com/currencies/pchain/	0.003718
655	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	0.004216
656	UCA Coin	https://coinmarketcap.com/currencies/uca-coin/	0.004173
657	CanonChain	https://coinmarketcap.com/currencies/cononchain/	0.004827
658	VeriBlock	https://coinmarketcap.com/currencies/veriblock/	0.004542
659	NIX	https://coinmarketcap.com/currencies/nix/	0.064557
660	Tripio	https://coinmarketcap.com/currencies/tripio/	0.000743
661	Global Digital Content	https://coinmarketcap.com/currencies/global-digital-content/	0.000863
662	Presearch	https://coinmarketcap.com/currencies/presearch/	0.018164
663	ShareToken	https://coinmarketcap.com/currencies/sharetoken/	0.002477
664	Sense	https://coinmarketcap.com/currencies/sense/	0.005374
665	Ternio	https://coinmarketcap.com/currencies/ternio/	0.008175
666	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	0.009752
667	BaaSid	https://coinmarketcap.com/currencies/baasid/	0.000556
668	Counterparty	https://coinmarketcap.com/currencies/counterparty/	1.04
669	Nyzo	https://coinmarketcap.com/currencies/nyzo/	0.228197
670	DATA	https://coinmarketcap.com/currencies/data/	0.000234
671	VeriDocGlobal	https://coinmarketcap.com/currencies/veridocglobal/	0.000323
672	Blockmason Credit Protocol	https://coinmarketcap.com/currencies/blockmason/	0.023097
673	Atomic Wallet Coin	https://coinmarketcap.com/currencies/atomic-wallet-coin/	0.263328
674	PumaPay	https://coinmarketcap.com/currencies/pumapay/	0.000101
675	MintCoin	https://coinmarketcap.com/currencies/mintcoin/	0.000106
676	Red Pulse Phoenix	https://coinmarketcap.com/currencies/red-pulse/	0.003190
677	Akropolis	https://coinmarketcap.com/currencies/akropolis/	0.002241
678	POA	https://coinmarketcap.com/currencies/poa/	0.011983
679	EOSDT	https://coinmarketcap.com/currencies/eosdt/	0.994002
680	Aeron	https://coinmarketcap.com/currencies/aeron/	0.130698
681	MEET.ONE	https://coinmarketcap.com/currencies/meetone/	0.001356
682	MediShares	https://coinmarketcap.com/currencies/medishares/	0.003298
683	Global Cryptocurrency	https://coinmarketcap.com/currencies/global-cryptocurrency/	0.002029
684	ContentBox	https://coinmarketcap.com/currencies/contentbox/	0.002759
685	Cardstack	https://coinmarketcap.com/currencies/cardstack/	0.001083
686	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	0.046956
687	Constant	https://coinmarketcap.com/currencies/constant/	49.84
688	Newscrypto	https://coinmarketcap.com/currencies/newscrypto/	0.026528
689	Paypex	https://coinmarketcap.com/currencies/paypex/	0.036637
690	USDx stablecoin	https://coinmarketcap.com/currencies/usdx-stablecoin/	1.00
691	JD Coin	https://coinmarketcap.com/currencies/jd-coin/	0.103835
692	Phantasma	https://coinmarketcap.com/currencies/phantasma/	0.044020
693	Refereum	https://coinmarketcap.com/currencies/refereum/	0.000491
694	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	0.093481
695	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	0.040870
696	Futurepia	https://coinmarketcap.com/currencies/futurepia/	0.002713
697	Tokoin	https://coinmarketcap.com/currencies/tokoin/	0.013577
698	BitMart Token	https://coinmarketcap.com/currencies/bitmart-token/	0.014107
699	ECC	https://coinmarketcap.com/currencies/eccoin/	0.000097
700	Humanscape	https://coinmarketcap.com/currencies/humanscape/	0.005073
701	TokenPay	https://coinmarketcap.com/currencies/tokenpay/	0.140784
702	SIX	https://coinmarketcap.com/currencies/six/	0.008724
703	Eterbase Coin	https://coinmarketcap.com/currencies/eterbase-coin/	0.002434
704	MEXC Token	https://coinmarketcap.com/currencies/mexc-token/	0.002571
705	Esportbits	https://coinmarketcap.com/currencies/esportbits/	0.103316
706	Themis	https://coinmarketcap.com/currencies/themis/	0.003950
707	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	0.000193
708	PlayCoin [ERC20]	https://coinmarketcap.com/currencies/playcoin-erc20/	0.002349
709	CEEK VR	https://coinmarketcap.com/currencies/ceek-vr/	0.004271
710	Litex	https://coinmarketcap.com/currencies/litex/	0.002320
711	Waves Enterprise	https://coinmarketcap.com/currencies/waves-enterprise/	0.067655
712	Lympo	https://coinmarketcap.com/currencies/lympo/	0.002802
713	Beaxy	https://coinmarketcap.com/currencies/beaxy/	0.008514
714	Apex	https://coinmarketcap.com/currencies/apex/	0.004453
715	EOS Force	https://coinmarketcap.com/currencies/eos-force/	0.002377
716	IntelliShare	https://coinmarketcap.com/currencies/intellishare/	0.009256
717	Content Neutrality Network	https://coinmarketcap.com/currencies/content-neutrality-network/	0.000058
718	Nucleus Vision	https://coinmarketcap.com/currencies/nucleus-vision/	0.000326
719	VINchain	https://coinmarketcap.com/currencies/vinchain/	0.003807
720	INLOCK	https://coinmarketcap.com/currencies/inlock/	0.001887
721	PolySwarm	https://coinmarketcap.com/currencies/polyswarm/	0.001430
722	Sentinel	https://coinmarketcap.com/currencies/sentinel/	0.001104
723	Artfinity	https://coinmarketcap.com/currencies/artfinity/	0.017616
724	Rublix	https://coinmarketcap.com/currencies/rublix/	0.105689
725	Hydro	https://coinmarketcap.com/currencies/hydrogen/	0.000198
726	Myriad	https://coinmarketcap.com/currencies/myriad/	0.001256
727	Lunyr	https://coinmarketcap.com/currencies/lunyr/	0.940082
728	Vetri	https://coinmarketcap.com/currencies/vetri/	0.007010
729	Quark	https://coinmarketcap.com/currencies/quark/	0.008118
730	Snetwork	https://coinmarketcap.com/currencies/snetwork/	0.010536
731	Bitrue Coin	https://coinmarketcap.com/currencies/bitrue-coin/	0.039256
732	DEX	https://coinmarketcap.com/currencies/dex/	0.011169
733	Emercoin	https://coinmarketcap.com/currencies/emercoin/	0.046735
734	BidiPass	https://coinmarketcap.com/currencies/bidipass/	0.008319
735	Lamden	https://coinmarketcap.com/currencies/lamden/	0.014700
736	Cube	https://coinmarketcap.com/currencies/cube/	0.000308
737	Nuggets	https://coinmarketcap.com/currencies/nuggets/	0.001206
738	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	0.008038
739	Okschain	https://coinmarketcap.com/currencies/okschain/	0.001825
740	Spendcoin	https://coinmarketcap.com/currencies/spendcoin/	0.000907
741	Boolberry	https://coinmarketcap.com/currencies/boolberry/	0.155749
742	EXMO Coin	https://coinmarketcap.com/currencies/exmo-coin/	0.002849
743	TERA	https://coinmarketcap.com/currencies/tera/	0.002422
744	Cryptaur	https://coinmarketcap.com/currencies/cryptaur/	0.000163
745	Skrumble Network	https://coinmarketcap.com/currencies/skrumble-network/	0.001980
746	Lition	https://coinmarketcap.com/currencies/lition/	0.056891
747	BitGreen	https://coinmarketcap.com/currencies/bitgreen/	0.183491
748	MIR COIN	https://coinmarketcap.com/currencies/mir-coin/	0.002288
749	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	0.000628
750	BitTube	https://coinmarketcap.com/currencies/bit-tube/	0.007949
751	PotCoin	https://coinmarketcap.com/currencies/potcoin/	0.008891
752	Diamond	https://coinmarketcap.com/currencies/diamond/	0.570956
753	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	0.028955
754	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	0.036806
755	Clipper Coin	https://coinmarketcap.com/currencies/clipper-coin/	0.000661
756	VNT Chain	https://coinmarketcap.com/currencies/vnt-chain/	0.000722
757	Rotharium	https://coinmarketcap.com/currencies/rotharium/	0.580907
758	1SG	https://coinmarketcap.com/currencies/1sg/	0.871971
759	BOScoin	https://coinmarketcap.com/currencies/boscoin/	0.002226
760	Odyssey	https://coinmarketcap.com/currencies/odyssey/	0.000307
761	Credit Tag Chain	https://coinmarketcap.com/currencies/credit-tag-chain/	0.031938
762	AMLT	https://coinmarketcap.com/currencies/amlt/	0.007637
763	Vipstar Coin	https://coinmarketcap.com/currencies/vipstar-coin/	0.000039
764	Wowbit	https://coinmarketcap.com/currencies/wowbit/	0.006859
765	MultiVAC	https://coinmarketcap.com/currencies/multivac/	0.000457
766	Grid+	https://coinmarketcap.com/currencies/grid/	0.048325
767	GoWithMi	https://coinmarketcap.com/currencies/gowithmi/	0.000696
768	Smartlands	https://coinmarketcap.com/currencies/smartlands/	0.371074
769	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	0.004698
770	Pundi X NEM	https://coinmarketcap.com/currencies/pundi-x-nem/	0.000102
771	Abyss Token	https://coinmarketcap.com/currencies/abyss-token/	0.008233
772	NaPoleonX	https://coinmarketcap.com/currencies/napoleonx/	0.077361
773	Verasity	https://coinmarketcap.com/currencies/verasity/	0.000484
774	Pluton	https://coinmarketcap.com/currencies/pluton/	2.21
775	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	0.002654
776	carVertical	https://coinmarketcap.com/currencies/carvertical/	0.000242
777	Mobius	https://coinmarketcap.com/currencies/mobius/	0.003575
778	RSK Smart Bitcoin	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	9679.57
779	BetProtocol	https://coinmarketcap.com/currencies/betprotocol/	0.001009
780	Metrix Coin	https://coinmarketcap.com/currencies/metrix-coin/	0.000107
781	Cajutel	https://coinmarketcap.com/currencies/cajutel/	1.36
782	Airbloc	https://coinmarketcap.com/currencies/airbloc/	0.007238
783	Switcheo	https://coinmarketcap.com/currencies/switcheo/	0.003479
784	ZumCoin	https://coinmarketcap.com/currencies/zumcoin/	0.001836
785	Fast Access Blockchain	https://coinmarketcap.com/currencies/fast-access-blockchain/	0.063700
786	Blockport	https://coinmarketcap.com/currencies/blockport/	0.030731
787	Trias	https://coinmarketcap.com/currencies/trias/	0.000765
788	Flowchain	https://coinmarketcap.com/currencies/flowchain/	2.34
789	Radium	https://coinmarketcap.com/currencies/radium/	0.436434
790	Mysterium	https://coinmarketcap.com/currencies/mysterium/	0.074100
791	Curecoin	https://coinmarketcap.com/currencies/curecoin/	0.071329
792	Fatcoin	https://coinmarketcap.com/currencies/fatcoin/	0.013904
793	LikeCoin	https://coinmarketcap.com/currencies/likecoin/	0.005122
794	FintruX Network	https://coinmarketcap.com/currencies/fintrux-network/	0.018264
795	Bottos	https://coinmarketcap.com/currencies/bottos/	0.003167
796	Naka Bodhi Token	https://coinmarketcap.com/currencies/naka-bodhi-token/	0.028586
797	Penta	https://coinmarketcap.com/currencies/penta/	0.000081
798	CashBet Coin	https://coinmarketcap.com/currencies/cashbet-coin/	0.010930
799	ZClassic	https://coinmarketcap.com/currencies/zclassic/	0.191909
800	Restart Energy MWAT	https://coinmarketcap.com/currencies/restart-energy-mwat/	0.003754
801	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	0.074716
802	WeShow Token	https://coinmarketcap.com/currencies/weshow-token/	0.010545
803	Crown	https://coinmarketcap.com/currencies/crown/	0.067535
804	Trade Token X	https://coinmarketcap.com/currencies/trade-token-x/	0.019568
805	Stealth	https://coinmarketcap.com/currencies/stealth/	0.046032
806	Streamity	https://coinmarketcap.com/currencies/streamity/	0.031396
807	TEMCO	https://coinmarketcap.com/currencies/temco/	0.000502
808	Denarius	https://coinmarketcap.com/currencies/denarius-d/	0.223249
809	Clams	https://coinmarketcap.com/currencies/clams/	0.393606
810	PlatonCoin	https://coinmarketcap.com/currencies/platoncoin/	0.276675
811	Change	https://coinmarketcap.com/currencies/change/	0.082056
812	Vexanium	https://coinmarketcap.com/currencies/vexanium/	0.002286
813	WeOwn	https://coinmarketcap.com/currencies/we-own/	0.016117
814	bitUSD	https://coinmarketcap.com/currencies/bitusd/	0.823315
815	PegNet	https://coinmarketcap.com/currencies/pegnet/	0.000856
816	SINOVATE	https://coinmarketcap.com/currencies/sinovate/	0.002234
817	OKCash	https://coinmarketcap.com/currencies/okcash/	0.021135
818	HoryouToken	https://coinmarketcap.com/currencies/horyoutoken/	0.001449
819	PTON	https://coinmarketcap.com/currencies/pton/	0.000105
820	THEKEY	https://coinmarketcap.com/currencies/thekey/	0.000253
821	Egoras Dollar	https://coinmarketcap.com/currencies/egoras-dollar/	0.206463
822	LinkEye	https://coinmarketcap.com/currencies/linkeye/	0.002604
823	indaHash	https://coinmarketcap.com/currencies/indahash/	0.003905
824	Sakura Bloom	https://coinmarketcap.com/currencies/sakura-bloom/	0.000603
825	BOLT	https://coinmarketcap.com/currencies/bolt/	0.001569
826	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	0.003015
827	ROAD	https://coinmarketcap.com/currencies/road/	0.019580
828	ATC Coin	https://coinmarketcap.com/currencies/atc-coin/	0.004058
829	Blue Whale EXchange	https://coinmarketcap.com/currencies/blue-whale-exchange/	0.035783
830	Callisto Network	https://coinmarketcap.com/currencies/callisto-network/	0.000614
831	1World	https://coinmarketcap.com/currencies/1world/	0.062042
832	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	0.098762
833	Tolar	https://coinmarketcap.com/currencies/tolar/	0.006051
834	VegaWallet Token	https://coinmarketcap.com/currencies/vegawallet-token/	0.095026
835	Caspian	https://coinmarketcap.com/currencies/caspian/	0.003398
836	Nasdacoin	https://coinmarketcap.com/currencies/nasdacoin/	0.068667
837	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	0.003442
838	Xaya	https://coinmarketcap.com/currencies/xaya/	0.034713
839	OneLedger	https://coinmarketcap.com/currencies/oneledger/	0.003692
840	Rise	https://coinmarketcap.com/currencies/rise/	0.009954
841	Banca	https://coinmarketcap.com/currencies/banca/	0.000084
842	Azbit	https://coinmarketcap.com/currencies/azbit/	0.000018
843	Pivot Token	https://coinmarketcap.com/currencies/pivot-token/	0.000289
844	Raven Protocol	https://coinmarketcap.com/currencies/raven-protocol/	0.000352
845	PIBBLE	https://coinmarketcap.com/currencies/pibble/	0.000127
846	Kuai Token	https://coinmarketcap.com/currencies/kuai-token/	0.139975
847	DAEX	https://coinmarketcap.com/currencies/daex/	0.004137
848	Auctus	https://coinmarketcap.com/currencies/auctus/	0.022216
849	iEthereum	https://coinmarketcap.com/currencies/iethereum/	0.081085
850	Databroker	https://coinmarketcap.com/currencies/databroker/	0.018910
851	Incent	https://coinmarketcap.com/currencies/incent/	0.031360
852	Chrono.tech	https://coinmarketcap.com/currencies/chrono-tech/	2.03
853	CoinDeal Token	https://coinmarketcap.com/currencies/coindeal-token/	0.030536
854	BOOM	https://coinmarketcap.com/currencies/boom/	0.001831
855	Isiklar Coin	https://coinmarketcap.com/currencies/isiklar-coin/	0.608367
856	BOMB	https://coinmarketcap.com/currencies/bomb/	1.55
857	Iconiq Lab Token	https://coinmarketcap.com/currencies/iconiq-lab-token/	0.367028
858	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	0.005231
859	Aryacoin	https://coinmarketcap.com/currencies/aryacoin/	0.008734
860	Tixl	https://coinmarketcap.com/currencies/tixl/	29.24
861	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	0.076344
862	AmonD	https://coinmarketcap.com/currencies/amond/	0.001739
863	YEE	https://coinmarketcap.com/currencies/yee/	0.001010
864	Dynamic	https://coinmarketcap.com/currencies/dynamic/	0.091901
865	Colu Local Network	https://coinmarketcap.com/currencies/colu-local-network/	0.013675
866	Ether Zero	https://coinmarketcap.com/currencies/ether-zero/	0.008013
867	Unification	https://coinmarketcap.com/currencies/unification/	0.039436
868	DreamTeam Token	https://coinmarketcap.com/currencies/dreamteam-token/	0.037206
869	HyperExchange	https://coinmarketcap.com/currencies/hyperexchange/	0.022846
870	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	0.009170
871	DECOIN	https://coinmarketcap.com/currencies/decoin/	0.049479
872	Winding Tree	https://coinmarketcap.com/currencies/winding-tree/	0.062735
873	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	0.078727
874	Zipper	https://coinmarketcap.com/currencies/zip/	0.000083
875	MB8 Coin	https://coinmarketcap.com/currencies/mb8-coin/	0.008355
876	NativeCoin	https://coinmarketcap.com/currencies/native-coin/	0.057252
877	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	0.000367
878	Asian Fintech	https://coinmarketcap.com/currencies/asian-fintech/	0.005285
879	Titan Coin	https://coinmarketcap.com/currencies/titan-coin/	0.001450
880	ParkinGo	https://coinmarketcap.com/currencies/parkingo/	0.068587
881	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	0.039849
882	Education Ecosystem	https://coinmarketcap.com/currencies/education-ecosystem/	0.005785
883	Quanta Utility Token	https://coinmarketcap.com/currencies/quanta-utility-token/	0.000035
884	SoMee.Social	https://coinmarketcap.com/currencies/ongsocial/	0.015541
885	Stronghold Token	https://coinmarketcap.com/currencies/stronghold-token/	0.000368
886	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	0.282047
887	Origin Sport	https://coinmarketcap.com/currencies/origin-sport/	0.004224
888	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	0.006571
889	WinCash	https://coinmarketcap.com/currencies/wincash/	0.834398
890	Fountain	https://coinmarketcap.com/currencies/fountain/	0.013988
891	Substratum	https://coinmarketcap.com/currencies/substratum/	0.003187
892	Axe	https://coinmarketcap.com/currencies/axe/	0.231994
893	Amoveo	https://coinmarketcap.com/currencies/amoveo/	17.93
894	Brickblock	https://coinmarketcap.com/currencies/brickblock/	0.016063
895	Cloudbric	https://coinmarketcap.com/currencies/cloudbric/	0.002164
896	Traceability Chain	https://coinmarketcap.com/currencies/traceability-chain/	0.001399
897	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	0.020197
898	PayPie	https://coinmarketcap.com/currencies/paypie/	0.014477
899	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	0.000598
900	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	0.042311
901	COS	https://coinmarketcap.com/currencies/cos/	0.005904
902	Flixxo	https://coinmarketcap.com/currencies/flixxo/	0.013763
903	DAOBet	https://coinmarketcap.com/currencies/daobet/	0.006914
904	Pascal	https://coinmarketcap.com/currencies/pascal/	0.036108
905	Blocktrade Token	https://coinmarketcap.com/currencies/blocktrade-token/	0.020534
906	Teloscoin	https://coinmarketcap.com/currencies/teloscoin/	0.007603
907	Footballcoin	https://coinmarketcap.com/currencies/footballcoin/	0.003050
908	Bismuth	https://coinmarketcap.com/currencies/bismuth/	0.083169
909	Humaniq	https://coinmarketcap.com/currencies/humaniq/	0.006148
910	Sparkpoint	https://coinmarketcap.com/currencies/sparkpoint/	0.000205
911	Sharder	https://coinmarketcap.com/currencies/sharder/	0.004009
912	Hush	https://coinmarketcap.com/currencies/hush/	0.123256
913	Nexty	https://coinmarketcap.com/currencies/nexty/	0.000007
914	TRONCLASSIC	https://coinmarketcap.com/currencies/tronclassic/	0.000002
915	RealTract	https://coinmarketcap.com/currencies/realtract/	0.000106
916	42-coin	https://coinmarketcap.com/currencies/42-coin/	26707.64
917	Remme	https://coinmarketcap.com/currencies/remme/	0.001188
918	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	0.000008
919	Bidesk	https://coinmarketcap.com/currencies/bidesk/	0.138845
920	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	0.381247
921	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	0.011493
922	Adshares	https://coinmarketcap.com/currencies/adshares/	0.031532
923	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	0.001593
924	Open Platform	https://coinmarketcap.com/currencies/open-platform/	0.001036
925	X-CASH	https://coinmarketcap.com/currencies/x-cash/	0.000020
926	Loopring [NEO]	https://coinmarketcap.com/currencies/loopring-neo/	0.009554
927	ATLANT	https://coinmarketcap.com/currencies/atlant/	0.019967
928	Midas	https://coinmarketcap.com/currencies/midas/	0.800298
929	PLANET	https://coinmarketcap.com/currencies/planet/	0.053438
930	ZeuxCoin	https://coinmarketcap.com/currencies/zeuxcoin/	0.005617
931	Spectre.ai Utility Token	https://coinmarketcap.com/currencies/spectre-utility/	0.043211
932	Zebi Token	https://coinmarketcap.com/currencies/zebi-token/	0.002555
933	Primecoin	https://coinmarketcap.com/currencies/primecoin/	0.032954
934	BANKEX	https://coinmarketcap.com/currencies/bankex/	0.002639
935	TurtleCoin	https://coinmarketcap.com/currencies/turtlecoin/	0.000014
936	Switch	https://coinmarketcap.com/currencies/switch/	0.092343
937	Blockchain Certified Data Token	https://coinmarketcap.com/currencies/blockchain-certified-data-token/	0.028954
938	Vision Industry Token	https://coinmarketcap.com/currencies/vision-industry-token/	0.000334
939	Kambria	https://coinmarketcap.com/currencies/kambria/	0.000834
940	GoldMint	https://coinmarketcap.com/currencies/goldmint/	0.534988
941	YGGDRASH	https://coinmarketcap.com/currencies/yeed/	0.000188
942	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	0.000031
943	Amon	https://coinmarketcap.com/currencies/amon/	0.001689
944	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	0.048003
945	UNIVERSAL CASH	https://coinmarketcap.com/currencies/ucash/	0.000097
946	KickToken	https://coinmarketcap.com/currencies/kick-token/	0.000018
947	Era Swap	https://coinmarketcap.com/currencies/era-swap/	0.050869
948	CPChain	https://coinmarketcap.com/currencies/cpchain/	0.002604
949	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	0.014581
950	SBank	https://coinmarketcap.com/currencies/sbank/	0.169784
951	GeoCoin	https://coinmarketcap.com/currencies/geocoin/	0.305279
952	HashBX	https://coinmarketcap.com/currencies/hashsbx/	0.001534
953	ADAMANT Messenger	https://coinmarketcap.com/currencies/adamant-messenger/	0.011435
954	AIDUS TOKEN	https://coinmarketcap.com/currencies/aidus-token/	0.002192
955	Linkey	https://coinmarketcap.com/currencies/linkey/	0.019138
956	Hashgard	https://coinmarketcap.com/currencies/hashgard/	0.000014
957	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	0.003080
958	Veil	https://coinmarketcap.com/currencies/veil/	0.013648
959	PayBX	https://coinmarketcap.com/currencies/paybx/	0.003338
960	Opacity	https://coinmarketcap.com/currencies/opacity/	0.007239
961	Noku	https://coinmarketcap.com/currencies/noku/	0.039150
962	Datum	https://coinmarketcap.com/currencies/datum/	0.000926
963	Terracoin	https://coinmarketcap.com/currencies/terracoin/	0.040399
964	SafeCapital	https://coinmarketcap.com/currencies/safecapital/	0.572915
965	Primas	https://coinmarketcap.com/currencies/primas/	0.017532
966	Liquidity Network	https://coinmarketcap.com/currencies/liquidity-network/	0.017306
967	Ouroboros	https://coinmarketcap.com/currencies/ouroboros/	0.037385
968	QChi	https://coinmarketcap.com/currencies/qchi/	0.028120
969	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	1.65
970	IQ.cash	https://coinmarketcap.com/currencies/iqcash/	0.083909
971	Quiztok	https://coinmarketcap.com/currencies/quiztok/	0.027860
972	Bitex Global XBX Coin	https://coinmarketcap.com/currencies/bitex-global-xbx-coin/	0.004534
973	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	0.099071
974	Shivom	https://coinmarketcap.com/currencies/shivom/	0.000984
975	CommerceBlock	https://coinmarketcap.com/currencies/commerceblock/	0.005114
976	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	0.163727
977	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	0.055050
978	Nework	https://coinmarketcap.com/currencies/nework/	0.006003
979	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	0.013787
980	Netbox Coin	https://coinmarketcap.com/currencies/netbox-coin/	0.020185
981	SpankChain	https://coinmarketcap.com/currencies/spankchain/	0.002906
982	KuboCoin	https://coinmarketcap.com/currencies/kubocoin/	0.000010
983	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	0.000002
984	MassGrid	https://coinmarketcap.com/currencies/massgrid/	0.011161
985	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	0.000097
986	IG Gold	https://coinmarketcap.com/currencies/ig-gold/	0.000098
987	Lendingblock	https://coinmarketcap.com/currencies/lendingblock/	0.001100
988	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	0.000009
989	Sphere	https://coinmarketcap.com/currencies/sphere/	0.068903
990	Uptrennd	https://coinmarketcap.com/currencies/uptrennd/	0.004458
991	Leverj	https://coinmarketcap.com/currencies/leverj/	0.007270
992	Edgeless	https://coinmarketcap.com/currencies/edgeless/	0.007333
993	Semux	https://coinmarketcap.com/currencies/semux/	0.066941
994	FansTime	https://coinmarketcap.com/currencies/fanstime/	0.000298
995	NuBits	https://coinmarketcap.com/currencies/nubits/	0.076986
996	Safe Haven	https://coinmarketcap.com/currencies/safe-haven/	0.000281
997	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	0.001506
998	Coineal Token	https://coinmarketcap.com/currencies/coineal-token/	0.002943
999	eosDAC	https://coinmarketcap.com/currencies/eosdac/	0.001264
1000	Faceter	https://coinmarketcap.com/currencies/faceter/	0.001766
1001	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	0.001616
1002	KARMA	https://coinmarketcap.com/currencies/karma-eos/	0.000151
1003	Eden	https://coinmarketcap.com/currencies/eden/	0.001366
1004	BonusCloud	https://coinmarketcap.com/currencies/bonuscloud/	0.000273
1005	Experty	https://coinmarketcap.com/currencies/experty/	0.029929
1006	Pinkcoin	https://coinmarketcap.com/currencies/pinkcoin/	0.001933
1007	IHT Real Estate Protocol	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	0.000817
1008	DABANKING	https://coinmarketcap.com/currencies/dabanking/	0.167402
1009	Proxeus	https://coinmarketcap.com/currencies/proxeus/	0.003805
1010	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	0.000009
1011	Mercury	https://coinmarketcap.com/currencies/mercury/	0.008021
1012	Omni	https://coinmarketcap.com/currencies/omni/	1.43
1013	Jarvis Network	https://coinmarketcap.com/currencies/jarvis-network/	0.027643
1014	Bitswift	https://coinmarketcap.com/currencies/bitswift/	0.206009
1015	Zero	https://coinmarketcap.com/currencies/zero/	0.095883
1016	Merculet	https://coinmarketcap.com/currencies/merculet/	0.000194
1017	LHT	https://coinmarketcap.com/currencies/lighthouse-token/	0.015844
1018	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	0.010244
1019	DACSEE	https://coinmarketcap.com/currencies/dacsee/	0.001048
1020	Ecobit	https://coinmarketcap.com/currencies/ecobit/	0.001764
1021	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	0.009857
1022	Business Credit Substitute	https://coinmarketcap.com/currencies/business-credit-substitute/	0.435980
1023	HOQU	https://coinmarketcap.com/currencies/hoqu/	0.004569
1024	Ubex	https://coinmarketcap.com/currencies/ubex/	0.000241
1025	Bitsdaq	https://coinmarketcap.com/currencies/bitsdaq/	0.000284
1026	TEAM (TokenStars)	https://coinmarketcap.com/currencies/tokenstars/	0.063464
1027	Conceal	https://coinmarketcap.com/currencies/conceal/	0.091106
1028	0xBitcoin	https://coinmarketcap.com/currencies/0xbtc/	0.129931
1029	Qitmeer	https://coinmarketcap.com/currencies/qitmeer/	0.001910
1030	Merebel	https://coinmarketcap.com/currencies/merebel/	0.119251
1031	ICE ROCK MINING	https://coinmarketcap.com/currencies/ice-rock-mining/	0.046841
1032	Digital Gold	https://coinmarketcap.com/currencies/digital-gold/	54.26
1033	Locus Chain	https://coinmarketcap.com/currencies/locus-chain/	0.000865
1034	Upfiring	https://coinmarketcap.com/currencies/upfiring/	0.033716
1035	PAC Global	https://coinmarketcap.com/currencies/pac-global/	0.000095
1036	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	0.015971
1037	Banano	https://coinmarketcap.com/currencies/banano/	0.000685
1038	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	0.009207
1039	ATN	https://coinmarketcap.com/currencies/atn/	0.008519
1040	PUBLISH	https://coinmarketcap.com/currencies/publish/	0.002879
1041	ProChain	https://coinmarketcap.com/currencies/prochain/	0.014480
1042	Eureka Coin	https://coinmarketcap.com/currencies/eureka-coin/	0.010783
1043	DomRaider	https://coinmarketcap.com/currencies/domraider/	0.001210
1044	MARK.SPACE	https://coinmarketcap.com/currencies/mark-space/	0.000879
1045	Delphy	https://coinmarketcap.com/currencies/delphy/	0.011335
1046	Gene Source Code Chain	https://coinmarketcap.com/currencies/gene-source-code-chain/	0.001855
1047	SafeInsure	https://coinmarketcap.com/currencies/safeinsure/	0.043699
1048	Lunes	https://coinmarketcap.com/currencies/lunes/	0.004614
1049	Color Platform	https://coinmarketcap.com/currencies/color-platform/	0.005031
1050	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	0.037864
1051	Matryx	https://coinmarketcap.com/currencies/matryx/	0.029321
1052	MobileGo	https://coinmarketcap.com/currencies/mobilego/	0.006796
1053	WeTrust	https://coinmarketcap.com/currencies/trust/	0.007371
1054	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	0.024218
1055	Sessia	https://coinmarketcap.com/currencies/sessia/	0.108077
1056	Cryptobuyer	https://coinmarketcap.com/currencies/cryptobuyer/	0.011727
1057	nOS	https://coinmarketcap.com/currencies/nos/	0.006404
1058	NEXT.coin	https://coinmarketcap.com/currencies/next-coin/	0.104939
1059	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	0.000092
1060	NuShares	https://coinmarketcap.com/currencies/nushares/	0.000235
1061	BitCrystals	https://coinmarketcap.com/currencies/bitcrystals/	0.028542
1062	TouchCon	https://coinmarketcap.com/currencies/touchcon/	0.006369
1063	Cappasity	https://coinmarketcap.com/currencies/cappasity/	0.001200
1064	STK	https://coinmarketcap.com/currencies/stk/	0.001905
1065	PHI Token	https://coinmarketcap.com/currencies/phi-token/	0.111340
1066	X8X Token	https://coinmarketcap.com/currencies/x8x-token/	0.008030
1067	Block-Chain.com	https://coinmarketcap.com/currencies/block-chain-com/	0.003092
1068	BitBall	https://coinmarketcap.com/currencies/bitball/	0.003308
1069	Qwertycoin	https://coinmarketcap.com/currencies/qwertycoin/	0.000005
1070	Coinsbit Token	https://coinmarketcap.com/currencies/coinsbit-token/	0.000476
1071	ESBC	https://coinmarketcap.com/currencies/esbc/	0.026595
1072	DOS Network	https://coinmarketcap.com/currencies/dos-network/	0.001858
1073	FREE Coin	https://coinmarketcap.com/currencies/free-coin/	7.15e-8
1074	Internxt	https://coinmarketcap.com/currencies/internxt/	0.986790
1075	MalwareChain	https://coinmarketcap.com/currencies/malwarechain/	0.316380
1076	Gold Bits Coin	https://coinmarketcap.com/currencies/gold-bits-coin/	0.005792
1077	EchoLink	https://coinmarketcap.com/currencies/echolink/	0.001224
1078	Skychain	https://coinmarketcap.com/currencies/skychain/	0.081659
1079	GMB	https://coinmarketcap.com/currencies/gmb/	0.001177
1080	Grimm	https://coinmarketcap.com/currencies/grimm/	0.013875
1081	Dovu	https://coinmarketcap.com/currencies/dovu/	0.001328
1082	USDX	https://coinmarketcap.com/currencies/usdx/	0.160004
1083	FYDcoin	https://coinmarketcap.com/currencies/fydcoin/	0.001307
1084	SureRemit	https://coinmarketcap.com/currencies/sureremit/	0.001183
1085	Insureum	https://coinmarketcap.com/currencies/insureum/	0.002753
1086	Espers	https://coinmarketcap.com/currencies/espers/	0.000026
1087	Bob's Repair	https://coinmarketcap.com/currencies/bobs-repair/	0.003198
1088	Minereum	https://coinmarketcap.com/currencies/minereum/	0.064158
1089	Zippie	https://coinmarketcap.com/currencies/zippie/	0.002159
1090	Mallcoin	https://coinmarketcap.com/currencies/mallcoin/	0.003311
1091	CoTrader	https://coinmarketcap.com/currencies/cotrader/	0.000037
1092	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	4.08
1093	Beetle Coin	https://coinmarketcap.com/currencies/beetle-coin/	0.002521
1094	Howdoo	https://coinmarketcap.com/currencies/howdoo/	0.005858
1095	StableUSD	https://coinmarketcap.com/currencies/stableusd/	0.996798
1096	SyncFab	https://coinmarketcap.com/currencies/syncfab/	0.002384
1097	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	0.007113
1098	Block-Logic	https://coinmarketcap.com/currencies/block-logic/	0.024449
1099	Ink	https://coinmarketcap.com/currencies/ink/	0.001204
1100	Proton Token	https://coinmarketcap.com/currencies/proton-token/	0.000067
1101	PIXEL	https://coinmarketcap.com/currencies/pixel/	0.015001
1102	Proton Token	https://coinmarketcap.com/currencies/proton-token/	0.000067
1103	Tarush	https://coinmarketcap.com/currencies/tarush/	0.000092
1104	UpToken	https://coinmarketcap.com/currencies/uptoken/	0.003760
1105	Manna	https://coinmarketcap.com/currencies/manna/	0.000827
1106	TurtleNetwork	https://coinmarketcap.com/currencies/turtlenetwork/	0.006174
1107	Expanse	https://coinmarketcap.com/currencies/expanse/	0.028793
1108	Bitcoin Confidential	https://coinmarketcap.com/currencies/bitcoin-confidential/	0.000073
1109	StrongHands	https://coinmarketcap.com/currencies/stronghands/	0.000033
1110	Rate3	https://coinmarketcap.com/currencies/rate3/	0.000605
1111	DEEX	https://coinmarketcap.com/currencies/deex/	0.009501
1112	Snovian.Space	https://coinmarketcap.com/currencies/snov/	0.001452
1113	BZEdge	https://coinmarketcap.com/currencies/bzedge/	0.000179
1114	BeatzCoin	https://coinmarketcap.com/currencies/beatzcoin/	0.000348
1115	Digital Insurance Token	https://coinmarketcap.com/currencies/digital-insurance-token/	0.002338
1116	Honest	https://coinmarketcap.com/currencies/honest/	0.006286
1117	Typerium	https://coinmarketcap.com/currencies/typerium/	0.000323
1118	WebDollar	https://coinmarketcap.com/currencies/webdollar/	0.000055
1119	GAMB	https://coinmarketcap.com/currencies/gamb/	0.000136
1120	NeoWorld Cash	https://coinmarketcap.com/currencies/neoworld-cash/	0.000023
1121	POPCHAIN	https://coinmarketcap.com/currencies/popchain/	0.000582
1122	MIB Coin	https://coinmarketcap.com/currencies/mib-coin/	0.005680
1123	Monarch	https://coinmarketcap.com/currencies/monarch/	0.014943
1124	Martkist	https://coinmarketcap.com/currencies/martkist/	0.047225
1125	AICHAIN	https://coinmarketcap.com/currencies/aichain/	0.000963
1126	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	0.002921
1127	Infinitus Token	https://coinmarketcap.com/currencies/infinitus-token/	0.037784
1128	Shift	https://coinmarketcap.com/currencies/shift/	0.037009
1129	Moneytoken	https://coinmarketcap.com/currencies/moneytoken/	0.000054
1130	ZPER	https://coinmarketcap.com/currencies/zper/	0.000389
1131	Sapien	https://coinmarketcap.com/currencies/sapien/	0.002225
1132	MESEFA	https://coinmarketcap.com/currencies/mesefa/	1.16
1133	Maecenas	https://coinmarketcap.com/currencies/maecenas/	0.008514
1134	EUNO	https://coinmarketcap.com/currencies/euno/	0.013022
1135	Waves Community Token	https://coinmarketcap.com/currencies/waves-community-token/	0.049773
1136	Vezt	https://coinmarketcap.com/currencies/vezt/	0.012313
1137	BiblePay	https://coinmarketcap.com/currencies/biblepay/	0.000213
1138	Auxilium	https://coinmarketcap.com/currencies/auxilium/	0.004163
1139	Max Property Group	https://coinmarketcap.com/currencies/max-property-group/	0.003449
1140	ImageCoin	https://coinmarketcap.com/currencies/imagecoin/	0.053136
1141	Birake	https://coinmarketcap.com/currencies/birake/	0.005615
1142	SnowGem	https://coinmarketcap.com/currencies/snowgem/	0.019188
1143	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	0.101527
1144	Bitcoin Free Cash	https://coinmarketcap.com/currencies/bitcoin-free-cash/	0.430941
1145	Olive	https://coinmarketcap.com/currencies/olive/	0.001744
1146	Aventus	https://coinmarketcap.com/currencies/aventus/	0.080085
1147	REAL	https://coinmarketcap.com/currencies/real/	0.047641
1148	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	0.010423
1149	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	0.000030
1150	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	0.024296
1151	Spiking	https://coinmarketcap.com/currencies/spiking/	0.001063
1152	Bitblocks	https://coinmarketcap.com/currencies/bitblocks/	0.002031
1153	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	0.000101
1154	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	0.144952
1155	Nexxo	https://coinmarketcap.com/currencies/nexxo/	0.002171
1156	SF Capital	https://coinmarketcap.com/currencies/sf-capital/	0.004619
1157	Golos Blockchain	https://coinmarketcap.com/currencies/golos-blockchain/	0.001944
1158	QuadrantProtocol	https://coinmarketcap.com/currencies/quadrantprotocol/	0.001287
1159	Internet of People	https://coinmarketcap.com/currencies/internet-of-people/	0.034212
1160	MidasProtocol	https://coinmarketcap.com/currencies/midasprotocol/	0.001632
1161	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	0.005734
1162	Bancacy	https://coinmarketcap.com/currencies/bancacy/	0.003382
1163	Zeepin	https://coinmarketcap.com/currencies/zeepin/	0.000903
1164	CryCash	https://coinmarketcap.com/currencies/crycash/	0.094207
1165	FLIP	https://coinmarketcap.com/currencies/flip/	0.008020
1166	OBITS	https://coinmarketcap.com/currencies/obits/	0.030825
1167	Qbao	https://coinmarketcap.com/currencies/qbao/	0.006821
1168	COVA	https://coinmarketcap.com/currencies/cova/	0.000177
1169	Alphacat	https://coinmarketcap.com/currencies/alphacat/	0.000160
1170	Playkey	https://coinmarketcap.com/currencies/playkey/	0.031504
1171	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	0.023397
1172	XcelToken Plus	https://coinmarketcap.com/currencies/xceltoken-plus/	0.000070
1173	On.Live	https://coinmarketcap.com/currencies/on-live/	0.019966
1174	CoinUs	https://coinmarketcap.com/currencies/coinus/	0.001272
1175	Lobstex	https://coinmarketcap.com/currencies/lobstex/	0.021960
1176	Quasarcoin	https://coinmarketcap.com/currencies/quasarcoin/	0.002541
1177	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	0.011918
1178	Patientory	https://coinmarketcap.com/currencies/patientory/	0.006073
1179	0xcert	https://coinmarketcap.com/currencies/0xcert/	0.001229
1180	HiCoin	https://coinmarketcap.com/currencies/hicoin/	0.000095
1181	Stox	https://coinmarketcap.com/currencies/stox/	0.008022
1182	OVCODE	https://coinmarketcap.com/currencies/ovcode/	0.009484
1183	adbank	https://coinmarketcap.com/currencies/adbank/	0.000560
1184	Ubricoin	https://coinmarketcap.com/currencies/ubricoin/	0.000178
1185	AllSafe	https://coinmarketcap.com/currencies/allsafe/	0.045106
1186	Novacoin	https://coinmarketcap.com/currencies/novacoin/	0.174715
1187	Actinium	https://coinmarketcap.com/currencies/actinium/	0.019269
1188	wave edu coin	https://coinmarketcap.com/currencies/wave-edu-coin/	0.002906
1189	Epic Cash	https://coinmarketcap.com/currencies/epic-cash/	0.055877
1190	ZIMBOCASH	https://coinmarketcap.com/currencies/zimbocash/	0.003679
1191	SPINDLE	https://coinmarketcap.com/currencies/spindle/	0.000115
1192	DECENT	https://coinmarketcap.com/currencies/decent/	0.007836
1193	RED	https://coinmarketcap.com/currencies/red/	0.003080
1194	Xriba	https://coinmarketcap.com/currencies/xriba/	0.004000
1195	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	0.001921
1196	NeuroChain	https://coinmarketcap.com/currencies/neurochain/	0.000923
1197	FuzeX	https://coinmarketcap.com/currencies/fuzex/	0.000436
1198	Nebula AI	https://coinmarketcap.com/currencies/nebula-ai/	0.000316
1199	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	0.013028
1200	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	0.031549
1201	Noir	https://coinmarketcap.com/currencies/noir/	0.019089
1202	Zen Protocol	https://coinmarketcap.com/currencies/zen-protocol/	0.017127
1203	Project WITH	https://coinmarketcap.com/currencies/project-with/	0.001149
1204	WinStars.live	https://coinmarketcap.com/currencies/winstars-live/	0.020347
1205	Scala	https://coinmarketcap.com/currencies/scala/	0.000045
1206	CREDIT	https://coinmarketcap.com/currencies/credit/	0.000018
1207	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	0.020830
1208	Safex Cash	https://coinmarketcap.com/currencies/safex-cash/	0.008209
1209	Zap	https://coinmarketcap.com/currencies/zap/	0.003009
1210	Webflix Token	https://coinmarketcap.com/currencies/webflix-token/	0.000171
1211	EBCoin	https://coinmarketcap.com/currencies/ebcoin/	0.000083
1212	Friendz	https://coinmarketcap.com/currencies/friends/	0.000721
1213	ION	https://coinmarketcap.com/currencies/ion/	0.028788
1214	LocalCoinSwap	https://coinmarketcap.com/currencies/local-coin-swap/	0.007151
1215	AMATEN	https://coinmarketcap.com/currencies/amaten/	0.067227
1216	Mindexcoin	https://coinmarketcap.com/currencies/mindexcoin/	0.000549
1217	Niobium Coin	https://coinmarketcap.com/currencies/niobium-coin/	0.006053
1218	Fortuna	https://coinmarketcap.com/currencies/fortuna/	0.000775
1219	Paytomat	https://coinmarketcap.com/currencies/paytomat/	0.002237
1220	smARTOFGIVING	https://coinmarketcap.com/currencies/smartofgiving/	0.005025
1221	Coinsuper Ecosystem Network	https://coinmarketcap.com/currencies/coinsuper-ecosystem-network/	0.000985
1222	Enecuum	https://coinmarketcap.com/currencies/enecuum/	0.007265
1223	Vites	https://coinmarketcap.com/currencies/vites/	0.000010
1224	TigerCash	https://coinmarketcap.com/currencies/tigercash/	0.006278
1225	adToken	https://coinmarketcap.com/currencies/adtoken/	0.000442
1226	HashCoin	https://coinmarketcap.com/currencies/hashcoin/	0.000027
1227	MineBee	https://coinmarketcap.com/currencies/minebee/	0.000191
1228	Halo Platform	https://coinmarketcap.com/currencies/halo-platform/	0.000058
1229	Trinity Network Credit	https://coinmarketcap.com/currencies/trinity-network-credit/	0.001043
1230	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	0.001353
1231	Almeela	https://coinmarketcap.com/currencies/almeela/	0.092927
1232	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	0.000584
1233	SnapCoin	https://coinmarketcap.com/currencies/snapcoin/	0.000735
1234	BitCash	https://coinmarketcap.com/currencies/bitcash/	0.015290
1235	DPRating	https://coinmarketcap.com/currencies/dprating/	0.000133
1236	BitScreener Token	https://coinmarketcap.com/currencies/bitscreener-token/	0.002466
1237	XEL	https://coinmarketcap.com/currencies/xel/	0.003672
1238	EnergiToken	https://coinmarketcap.com/currencies/energitoken/	0.000181
1239	Evedo	https://coinmarketcap.com/currencies/evedo/	0.025086
1240	Rapids	https://coinmarketcap.com/currencies/rapids/	0.000075
1241	FNKOS	https://coinmarketcap.com/currencies/fnkos/	0.002140
1242	Sentient Coin	https://coinmarketcap.com/currencies/consensus/	0.000245
1243	Graviocoin	https://coinmarketcap.com/currencies/graviocoin/	0.000291
1244	Solaris	https://coinmarketcap.com/currencies/solaris/	0.178282
1245	Pirl	https://coinmarketcap.com/currencies/pirl/	0.004582
1246	TV-TWO	https://coinmarketcap.com/currencies/tv-two/	0.000733
1247	Bittwatt	https://coinmarketcap.com/currencies/bittwatt/	0.001063
1248	Karbo	https://coinmarketcap.com/currencies/karbo/	0.038403
1249	FlypMe	https://coinmarketcap.com/currencies/flypme/	0.018456
1250	ODUWA	https://coinmarketcap.com/currencies/oduwa/	0.136212
1251	FortKnoxster	https://coinmarketcap.com/currencies/fortknoxster/	0.002133
1252	ZENZO	https://coinmarketcap.com/currencies/zenzo/	0.024136
1253	Vodi X	https://coinmarketcap.com/currencies/vodi-x/	0.000592
1254	Master Contract Token	https://coinmarketcap.com/currencies/master-contract-token/	0.000557
1255	DATx	https://coinmarketcap.com/currencies/datx/	0.000226
1256	Winco	https://coinmarketcap.com/currencies/winco/	0.000653
1257	Thrive Token	https://coinmarketcap.com/currencies/thrive-token/	0.003035
1258	Goldcoin	https://coinmarketcap.com/currencies/goldcoin/	0.007514
1259	BitNewChain	https://coinmarketcap.com/currencies/bitnewchain/	0.001739
1260	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	0.014978
1261	Ulord	https://coinmarketcap.com/currencies/ulord/	0.004326
1262	Datawallet	https://coinmarketcap.com/currencies/datawallet/	0.000791
1263	SpectrumCash	https://coinmarketcap.com/currencies/spectrumcash/	0.000095
1264	Mcashchain	https://coinmarketcap.com/currencies/mcashchain/	0.001735
1265	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	0.000001
1266	Raise	https://coinmarketcap.com/currencies/raise/	0.023647
1267	Lisk Machine Learning	https://coinmarketcap.com/currencies/lisk-machine-learning/	0.002546
1268	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	0.109772
1269	Rivetz	https://coinmarketcap.com/currencies/rivetz/	0.011629
1270	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	0.002609
1271	Jobchain	https://coinmarketcap.com/currencies/jobchain/	0.000077
1272	TraDove B2BCoin	https://coinmarketcap.com/currencies/b2bcoin/	0.000594
1273	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	148.41
1274	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	0.020679
1275	x42 Protocol	https://coinmarketcap.com/currencies/x42-protocol/	0.015944
1276	CoinFi	https://coinmarketcap.com/currencies/coinfi/	0.001459
1277	Qredit	https://coinmarketcap.com/currencies/qredit/	0.000434
1278	OLXA	https://coinmarketcap.com/currencies/olxa/	0.000214
1279	ONOToken	https://coinmarketcap.com/currencies/onotoken/	0.000017
1280	Megacoin	https://coinmarketcap.com/currencies/megacoin/	0.007537
1281	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	0.033241
1282	XPA	https://coinmarketcap.com/currencies/xpa/	0.005015
1283	Cashbery Coin	https://coinmarketcap.com/currencies/cashbery-coin/	0.004252
1284	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	0.001513
1285	Bitfex	https://coinmarketcap.com/currencies/bitfex/	0.002495
1286	View	https://coinmarketcap.com/currencies/view/	0.008020
1287	Memetic / PepeCoin	https://coinmarketcap.com/currencies/memetic/	0.009373
1288	Hyper Speed Network	https://coinmarketcap.com/currencies/hyper-speed-network/	0.002269
1289	Ether-1	https://coinmarketcap.com/currencies/ether-1/	0.005943
1290	Smartshare	https://coinmarketcap.com/currencies/smartshare/	0.000059
1291	DeltaChain	https://coinmarketcap.com/currencies/delta-chain/	0.000037
1292	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	0.000007
1293	Ubcoin Market	https://coinmarketcap.com/currencies/ubcoin-market/	0.000804
1294	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	0.046964
1295	Swace	https://coinmarketcap.com/currencies/swace/	0.000535
1296	Essentia	https://coinmarketcap.com/currencies/essentia/	0.000307
1297	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	0.000128
1298	RedFOX Labs	https://coinmarketcap.com/currencies/redfox-labs/	0.002074
1299	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	0.000509
1300	TrueFeedBack	https://coinmarketcap.com/currencies/truefeedback/	0.000126
1301	VouchForMe	https://coinmarketcap.com/currencies/insurepal/	0.001161
1302	NOW Token	https://coinmarketcap.com/currencies/now-token/	0.003228
1303	eXPerience Chain	https://coinmarketcap.com/currencies/experience-chain/	0.000003
1304	Rapidz	https://coinmarketcap.com/currencies/rapidz/	0.000353
1305	Maximine Coin	https://coinmarketcap.com/currencies/maximine-coin/	0.000159
1306	MTC Mesh Network	https://coinmarketcap.com/currencies/mtc-mesh-network/	0.000683
1307	Helix	https://coinmarketcap.com/currencies/helix/	0.010549
1308	Zilla	https://coinmarketcap.com/currencies/zilla/	0.004349
1309	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	0.024157
1310	EvenCoin	https://coinmarketcap.com/currencies/evencoin/	0.008282
1311	Bitcoin Incognito	https://coinmarketcap.com/currencies/bitcoin-incognito/	0.020100
1312	RightMesh	https://coinmarketcap.com/currencies/rightmesh/	0.003619
1313	IXT	https://coinmarketcap.com/currencies/ixledger/	0.007146
1314	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	0.000662
1315	BioCoin	https://coinmarketcap.com/currencies/biocoin/	0.000292
1316	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	0.003575
1317	Motocoin	https://coinmarketcap.com/currencies/motocoin/	0.012432
1318	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	0.000088
1319	BetterBetting	https://coinmarketcap.com/currencies/betterbetting/	0.000846
1320	Ultimate Secure Cash	https://coinmarketcap.com/currencies/ultimate-secure-cash/	0.023288
1321	Membrana	https://coinmarketcap.com/currencies/membrana/	0.001804
1322	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	0.002222
1323	Sentinel Chain	https://coinmarketcap.com/currencies/sentinel-chain/	0.001204
1324	Bulwark	https://coinmarketcap.com/currencies/bulwark/	0.015862
1325	Innovative Bioresearch Coin	https://coinmarketcap.com/currencies/innovative-bioresearch-coin/	0.661541
1326	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	0.001245
1327	savedroid	https://coinmarketcap.com/currencies/savedroid/	0.000087
1328	Decentralized Machine Learning	https://coinmarketcap.com/currencies/decentralized-machine-learning/	0.000849
1329	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	0.022032
1330	OptiToken	https://coinmarketcap.com/currencies/optitoken/	0.008117
1331	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	0.000002
1332	Sociall	https://coinmarketcap.com/currencies/sociall/	0.013698
1333	StarCoin	https://coinmarketcap.com/currencies/starcointv/	0.000149
1334	Global Awards Token	https://coinmarketcap.com/currencies/global-awards-token/	0.000328
1335	Plair	https://coinmarketcap.com/currencies/plair/	0.000011
1336	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	0.000011
1337	Blue Protocol	https://coinmarketcap.com/currencies/ethereum-blue/	0.005991
1338	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	0.002081
1339	W Green Pay	https://coinmarketcap.com/currencies/w-green-pay/	0.013065
1340	Celeum	https://coinmarketcap.com/currencies/celeum/	0.048252
1341	PlayGame	https://coinmarketcap.com/currencies/playgame/	0.000214
1342	TCASH	https://coinmarketcap.com/currencies/tcash/	0.006111
1343	Nerva	https://coinmarketcap.com/currencies/nerva/	0.012562
1344	Ties.DB	https://coinmarketcap.com/currencies/tiesdb/	0.005225
1345	Seal Network	https://coinmarketcap.com/currencies/seal-network/	0.000413
1346	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	0.023771
1347	Devery	https://coinmarketcap.com/currencies/devery/	0.003372
1348	Mao Zedong	https://coinmarketcap.com/currencies/mao-zedong/	0.033075
1349	TOKPIE	https://coinmarketcap.com/currencies/tokpie/	0.011520
1350	Trittium	https://coinmarketcap.com/currencies/trittium/	0.001639
1351	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	0.033178
1352	HorusPay	https://coinmarketcap.com/currencies/horuspay/	0.000241
1353	Social Send	https://coinmarketcap.com/currencies/social-send/	0.003875
1354	EncryptoTel [WAVES]	https://coinmarketcap.com/currencies/encryptotel/	0.003382
1355	ZUM TOKEN	https://coinmarketcap.com/currencies/zum-token/	0.000013
1356	LIFE	https://coinmarketcap.com/currencies/life/	0.000002
1357	Silent Notary	https://coinmarketcap.com/currencies/silent-notary/	0.000003
1358	VeriSafe	https://coinmarketcap.com/currencies/verisafe/	0.000019
1359	NFX Coin	https://coinmarketcap.com/currencies/nfx-coin/	0.001710
1360	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	0.017508
1361	Catex Token	https://coinmarketcap.com/currencies/catex-token/	0.000258
1362	GoNetwork	https://coinmarketcap.com/currencies/gonetwork/	0.002855
1363	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	0.000172
1364	EtherSportz	https://coinmarketcap.com/currencies/ethersportz/	0.073836
1365	Cubiex	https://coinmarketcap.com/currencies/cubiex/	0.002741
1366	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	0.028593
1367	Bezop	https://coinmarketcap.com/currencies/bezop/	0.003575
1368	Magi	https://coinmarketcap.com/currencies/magi/	0.019112
1369	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	0.013634
1370	Adelphoi	https://coinmarketcap.com/currencies/adelphoi/	0.009566
1371	ZCore	https://coinmarketcap.com/currencies/zcore/	0.031730
1372	Matrexcoin	https://coinmarketcap.com/currencies/matrexcoin/	0.011306
1373	uPlexa	https://coinmarketcap.com/currencies/uplexa/	0.000092
1374	BUZZCoin	https://coinmarketcap.com/currencies/buzzcoin/	0.000010
1375	Privatix	https://coinmarketcap.com/currencies/privatix/	0.175480
1376	AC3	https://coinmarketcap.com/currencies/ac3/	0.000392
1377	Truegame	https://coinmarketcap.com/currencies/tgame/	0.002239
1378	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	0.000194
1379	Atlantis Blue Digital Token	https://coinmarketcap.com/currencies/atlantis-blue-digital-token/	0.001039
1380	StrongHands Masternode	https://coinmarketcap.com/currencies/stronghands-masternode/	0.088352
1381	EventChain	https://coinmarketcap.com/currencies/eventchain/	0.005936
1382	Dether	https://coinmarketcap.com/currencies/dether/	0.002130
1383	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	0.001164
1384	3DCoin	https://coinmarketcap.com/currencies/3dcoin/	0.002624
1385	IP Exchange	https://coinmarketcap.com/currencies/ip-exchange/	0.000195
1386	Eristica	https://coinmarketcap.com/currencies/eristica/	0.001063
1387	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	0.000786
1388	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	0.042517
1389	FarmaTrust	https://coinmarketcap.com/currencies/farmatrust/	0.000302
1390	Startcoin	https://coinmarketcap.com/currencies/startcoin/	0.004008
1391	Crowd Machine	https://coinmarketcap.com/currencies/crowd-machine/	0.000383
1392	Freicoin	https://coinmarketcap.com/currencies/freicoin/	0.003196
1393	JET8	https://coinmarketcap.com/currencies/jet8/	0.000241
1394	Yocoin	https://coinmarketcap.com/currencies/yocoin/	0.000483
1395	Optimal Shelf Availability Token	https://coinmarketcap.com/currencies/optimal-shelf-availability-token/	0.000127
1396	OWNDATA	https://coinmarketcap.com/currencies/owndata/	0.000016
1397	GoldFund	https://coinmarketcap.com/currencies/goldfund/	0.001142
1398	Ignition	https://coinmarketcap.com/currencies/ignition/	0.135282
1399	PengolinCoin	https://coinmarketcap.com/currencies/pengolincoin/	0.018926
1400	Arbidex	https://coinmarketcap.com/currencies/arbidex/	0.008503
1401	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	0.002593
1402	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	0.000105
1403	Utrum	https://coinmarketcap.com/currencies/utrum/	0.002659
1404	Scanetchain	https://coinmarketcap.com/currencies/scanetchain/	0.000205
1405	Amino Network	https://coinmarketcap.com/currencies/amino-network/	0.003413
1406	Mithril Ore	https://coinmarketcap.com/currencies/mithril-ore/	13.04
1407	PAL Network	https://coinmarketcap.com/currencies/pal-network/	0.000387
1408	Ink Protocol	https://coinmarketcap.com/currencies/ink-protocol/	0.000423
1409	EXMR FDN	https://coinmarketcap.com/currencies/exmr-fdn/	0.026907
1410	Birdchain	https://coinmarketcap.com/currencies/birdchain/	0.001047
1411	GravityCoin	https://coinmarketcap.com/currencies/gravitycoin/	0.042192
1412	TrueDeck	https://coinmarketcap.com/currencies/truedeck/	0.005390
1413	FSBT API Token	https://coinmarketcap.com/currencies/fsbt-api-token/	0.047048
1414	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	0.003114
1415	Ryo Currency	https://coinmarketcap.com/currencies/ryo-currency/	0.007759
1416	Scorum Coins	https://coinmarketcap.com/currencies/scorum-coins/	0.005505
1417	GoByte	https://coinmarketcap.com/currencies/gobyte/	0.021726
1418	Swing	https://coinmarketcap.com/currencies/swing/	0.034497
1419	DAV Coin	https://coinmarketcap.com/currencies/dav-coin/	0.000229
1420	Ritocoin	https://coinmarketcap.com/currencies/ritocoin/	0.000113
1421	EurocoinToken	https://coinmarketcap.com/currencies/eurocoin-token/	0.041464
1422	Masari	https://coinmarketcap.com/currencies/masari/	0.011352
1423	Jarvis+	https://coinmarketcap.com/currencies/jarvis/	0.001578
1424	Neutron	https://coinmarketcap.com/currencies/neutron/	0.003933
1425	Lethean	https://coinmarketcap.com/currencies/lethean/	0.000193
1426	HelloGold	https://coinmarketcap.com/currencies/hellogold/	0.000584
1427	Alchemint Standards	https://coinmarketcap.com/currencies/alchemint-standards/	0.000483
1428	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	0.000009
1429	MyBit	https://coinmarketcap.com/currencies/mybit/	0.000981
1430	CrypticCoin	https://coinmarketcap.com/currencies/crypticcoin/	0.000058
1431	Q DAO Governance token v1.0	https://coinmarketcap.com/currencies/q-dao-governance-token/	2.11
1432	Blockpass	https://coinmarketcap.com/currencies/blockpass/	0.000888
1433	TrakInvest	https://coinmarketcap.com/currencies/trakinvest/	0.001762
1434	Sharpay	https://coinmarketcap.com/currencies/sharpay/	0.000142
1435	Veros	https://coinmarketcap.com/currencies/veros/	0.119537
1436	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	0.003916
1437	BitSend	https://coinmarketcap.com/currencies/bitsend/	0.005309
1438	BitClave	https://coinmarketcap.com/currencies/bitclave/	0.000290
1439	Matchpool	https://coinmarketcap.com/currencies/guppy/	0.001933
1440	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	0.001449
1441	PAYCENT	https://coinmarketcap.com/currencies/paycent/	0.012344
1442	Dynamite	https://coinmarketcap.com/currencies/dynamite/	0.381157
1443	Alt.Estate token	https://coinmarketcap.com/currencies/alt-estate-token/	0.000196
1444	Menlo One	https://coinmarketcap.com/currencies/menlo-one/	0.000470
1445	Chronologic	https://coinmarketcap.com/currencies/chronologic/	0.147777
1446	Maxcoin	https://coinmarketcap.com/currencies/maxcoin/	0.002298
1447	Equal	https://coinmarketcap.com/currencies/equal/	0.000425
1448	RealChain	https://coinmarketcap.com/currencies/realchain/	0.000277
1449	Starbase	https://coinmarketcap.com/currencies/starbase/	0.000748
1450	iDealCash	https://coinmarketcap.com/currencies/idealcash/	0.000097
1451	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	0.092668
1452	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	0.007257
1453	ALL BEST ICO	https://coinmarketcap.com/currencies/all-best-ico/	0.000757
1454	Relex	https://coinmarketcap.com/currencies/relex/	0.000072
1455	DeVault	https://coinmarketcap.com/currencies/devault/	0.000599
1456	WPP TOKEN	https://coinmarketcap.com/currencies/wpp-token/	0.000386
1457	Kuende	https://coinmarketcap.com/currencies/kuende/	0.000149
1458	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	105.98
1459	BoatPilot Token	https://coinmarketcap.com/currencies/boat-pilot-token/	0.001786
1460	imbrex	https://coinmarketcap.com/currencies/imbrex/	0.015199
1461	Naviaddress	https://coinmarketcap.com/currencies/naviaddress/	0.000543
1462	Helium Chain	https://coinmarketcap.com/currencies/helium-chain/	0.009663
1463	Dropil	https://coinmarketcap.com/currencies/dropil/	0.000006
1464	MMOCoin	https://coinmarketcap.com/currencies/mmocoin/	0.002104
1465	Gravity	https://coinmarketcap.com/currencies/gravity/	0.000097
1466	DOWCOIN	https://coinmarketcap.com/currencies/dowcoin/	0.010859
1467	Opus	https://coinmarketcap.com/currencies/opus/	0.000912
1468	eSDChain	https://coinmarketcap.com/currencies/esdchain/	0.001303
1469	Bigbom	https://coinmarketcap.com/currencies/bigbom/	0.000376
1470	MFCoin	https://coinmarketcap.com/currencies/mfcoin/	0.006045
1471	CryptoAds Marketplace	https://coinmarketcap.com/currencies/cryptoads-marketplace/	0.008749
1472	ZMINE	https://coinmarketcap.com/currencies/zmine/	0.000773
1473	Bitcoin CZ	https://coinmarketcap.com/currencies/bitcoin-cz/	0.043334
1474	CyberFM	https://coinmarketcap.com/currencies/cyberfm/	0.000002
1475	bitEUR	https://coinmarketcap.com/currencies/biteur/	1.13
1476	Limitless VIP	https://coinmarketcap.com/currencies/limitless-vip/	0.000097
1477	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	0.004928
1478	SWYFT	https://coinmarketcap.com/currencies/swyft/	0.169978
1479	MyWish	https://coinmarketcap.com/currencies/mywish/	0.012560
1480	Omnitude	https://coinmarketcap.com/currencies/omnitude/	0.001839
1481	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	0.000290
1482	Energycoin	https://coinmarketcap.com/currencies/energycoin/	0.000966
1483	Patron	https://coinmarketcap.com/currencies/patron/	0.000304
1484	Leadcoin	https://coinmarketcap.com/currencies/leadcoin/	0.000150
1485	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	0.000824
1486	AdHive	https://coinmarketcap.com/currencies/adhive/	0.000885
1487	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	6.68e-7
1488	Ethersocial	https://coinmarketcap.com/currencies/ethersocial/	0.002609
1489	ACE (TokenStars)	https://coinmarketcap.com/currencies/ace/	0.009491
1490	Graft	https://coinmarketcap.com/currencies/graft/	0.000193
1491	Lampix	https://coinmarketcap.com/currencies/lampix/	0.000843
1492	Bee Token	https://coinmarketcap.com/currencies/bee-token/	0.000479
1493	Blockparty (BOXX Token)	https://coinmarketcap.com/currencies/blockparty-boxx-token/	0.003416
1494	Business Credit Alliance Chain	https://coinmarketcap.com/currencies/business-credit-alliance-chain/	0.000221
1495	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	0.000097
1496	KZ Cash	https://coinmarketcap.com/currencies/kz-cash/	0.070501
1497	Artis Turba	https://coinmarketcap.com/currencies/artis-turba/	0.003675
1498	Bitnation	https://coinmarketcap.com/currencies/bitnation/	0.000004
1499	BlitzPredict	https://coinmarketcap.com/currencies/blitzpredict/	0.000281
1500	CryptoBonusMiles	https://coinmarketcap.com/currencies/cryptobonusmiles/	0.000026
1501	CryptoBonusMiles	https://coinmarketcap.com/currencies/cryptobonusmiles/	0.000026
1502	Civitas	https://coinmarketcap.com/currencies/civitas/	0.013818
1503	PUBLYTO Token	https://coinmarketcap.com/currencies/publyto-token/	0.000069
1504	HeartBout	https://coinmarketcap.com/currencies/heartbout/	0.001943
1505	Rupiah Token	https://coinmarketcap.com/currencies/rupiah-token/	0.000071
1506	Emphy	https://coinmarketcap.com/currencies/emphy/	0.013011
1507	Suretly	https://coinmarketcap.com/currencies/suretly/	0.435173
1508	ebakus	https://coinmarketcap.com/currencies/ebakus/	0.001124
1509	Parachute	https://coinmarketcap.com/currencies/parachute/	0.000224
1510	Elysian	https://coinmarketcap.com/currencies/elysian/	0.001035
1511	Storiqa	https://coinmarketcap.com/currencies/storiqa/	0.000009
1512	Fox Trading	https://coinmarketcap.com/currencies/fox-trading/	0.011418
1513	Gems	https://coinmarketcap.com/currencies/gems-protocol/	0.000084
1514	PRASM	https://coinmarketcap.com/currencies/prasm/	0.000044
1515	Kuverit	https://coinmarketcap.com/currencies/kuverit/	0.000049
1516	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	0.008793
1517	WandX	https://coinmarketcap.com/currencies/wandx/	0.008013
1518	Veles	https://coinmarketcap.com/currencies/veles/	0.081190
1519	BitBar	https://coinmarketcap.com/currencies/bitbar/	2.12
1520	Atonomi	https://coinmarketcap.com/currencies/atonomi/	0.000198
1521	SRCOIN	https://coinmarketcap.com/currencies/srcoin/	0.000019
1522	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	0.002899
1523	Zennies	https://coinmarketcap.com/currencies/zennies/	0.000096
1524	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	0.002716
1525	Golos	https://coinmarketcap.com/currencies/golos/	0.000401
1526	Alpha Token	https://coinmarketcap.com/currencies/alpha-token/	0.003095
1527	CaixaPay	https://coinmarketcap.com/currencies/caixapay/	0.001200
1528	Peony	https://coinmarketcap.com/currencies/peony/	0.028847
1529	Rentberry	https://coinmarketcap.com/currencies/rentberry/	0.000313
1530	Aditus	https://coinmarketcap.com/currencies/aditus/	0.000400
1531	MktCoin	https://coinmarketcap.com/currencies/mktcoin/	0.000077
1532	Unify	https://coinmarketcap.com/currencies/unify/	0.005121
1533	Blocktix	https://coinmarketcap.com/currencies/blocktix/	0.002315
1534	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	0.033436
1535	CROAT	https://coinmarketcap.com/currencies/croat/	0.001160
1536	Netko	https://coinmarketcap.com/currencies/netko/	0.008909
1537	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	0.000098
1538	MorCrypto Coin	https://coinmarketcap.com/currencies/morcrypto-coin/	0.004285
1539	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	0.000006
1540	BEAT	https://coinmarketcap.com/currencies/beat/	0.000730
1541	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	0.003672
1542	SwiftCash	https://coinmarketcap.com/currencies/swiftcash/	0.000580
1543	Energo	https://coinmarketcap.com/currencies/energo/	0.000148
1544	Rupee	https://coinmarketcap.com/currencies/rupee/	0.002275
1545	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	0.005599
1546	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	0.006088
1547	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	0.001933
1548	Plus-Coin	https://coinmarketcap.com/currencies/plus-coin/	0.000180
1549	Carboneum [C8] Token	https://coinmarketcap.com/currencies/carboneum-c8-token/	0.001620
1550	Universe	https://coinmarketcap.com/currencies/universe/	0.000966
1551	PYRO Network	https://coinmarketcap.com/currencies/pyro-network/	0.000101
1552	WOLLO	https://coinmarketcap.com/currencies/wollo/	0.001930
1553	HashNet BitEco	https://coinmarketcap.com/currencies/hashnet-biteco/	0.002799
1554	Coin Lion	https://coinmarketcap.com/currencies/coin-lion/	0.002574
1555	Kalkulus	https://coinmarketcap.com/currencies/kalkulus/	0.004638
1556	XDNA	https://coinmarketcap.com/currencies/xdna/	0.012509
1557	Aston	https://coinmarketcap.com/currencies/aston/	0.000098
1558	ProxyNode	https://coinmarketcap.com/currencies/proxynode/	0.000484
1559	Bonpay	https://coinmarketcap.com/currencies/bonpay/	0.006957
1560	Wavesbet	https://coinmarketcap.com/currencies/wavesbet/	0.000002
1561	Bitcoin Fast	https://coinmarketcap.com/currencies/bitcoin-fast/	0.006299
1562	Fire Lotto	https://coinmarketcap.com/currencies/fire-lotto/	0.002802
1563	PDATA	https://coinmarketcap.com/currencies/pdata/	0.000174
1564	BoutsPro	https://coinmarketcap.com/currencies/boutspro/	0.000991
1565	Vanta Network	https://coinmarketcap.com/currencies/vanta-network/	0.000041
1566	Profile Utility Token	https://coinmarketcap.com/currencies/profile-utility-token/	0.001676
1567	RoBET	https://coinmarketcap.com/currencies/robet/	0.094705
1568	Voise	https://coinmarketcap.com/currencies/voisecom/	0.000136
1569	Bitcoin Token	https://coinmarketcap.com/currencies/bitcoin-token/	0.008429
1570	PENG	https://coinmarketcap.com/currencies/peng/	0.000010
1571	Ethereum Gold Project	https://coinmarketcap.com/currencies/ethereum-gold-project/	0.000013
1572	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	0.000425
1573	Bethereum	https://coinmarketcap.com/currencies/bethereum/	0.000129
1574	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	0.002946
1575	MetaMorph	https://coinmarketcap.com/currencies/metamorph/	0.000480
1576	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	0.001353
1577	TENA	https://coinmarketcap.com/currencies/tena/	0.027056
1578	CryptoSoul	https://coinmarketcap.com/currencies/cryptosoul/	0.000255
1579	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	0.000387
1580	EtherGem	https://coinmarketcap.com/currencies/ethergem/	0.003679
1581	Cashpayz Token	https://coinmarketcap.com/currencies/cashpayz-token/	0.014602
1582	BBSCoin	https://coinmarketcap.com/currencies/bbscoin/	7.21e-7
1583	Signals Network	https://coinmarketcap.com/currencies/signals-network/	0.000803
1584	ANON	https://coinmarketcap.com/currencies/anon/	0.009276
1585	Transcodium	https://coinmarketcap.com/currencies/transcodium/	0.001159
1586	Capricoin	https://coinmarketcap.com/currencies/capricoin/	0.035108
1587	Hashshare	https://coinmarketcap.com/currencies/hashshare/	0.000742
1588	AirWire	https://coinmarketcap.com/currencies/airwire/	0.000580
1589	DogeCash	https://coinmarketcap.com/currencies/dogecash/	0.019036
1590	Asgard	https://coinmarketcap.com/currencies/asgard/	0.000088
1591	SounDAC	https://coinmarketcap.com/currencies/bitshares-music/	0.004649
1592	KanadeCoin	https://coinmarketcap.com/currencies/kanadecoin/	0.000012
1593	SnodeCoin	https://coinmarketcap.com/currencies/snodecoin/	0.001557
1594	BLOC.MONEY	https://coinmarketcap.com/currencies/bloc-money/	0.004445
1595	Opal	https://coinmarketcap.com/currencies/opal/	0.004368
1596	WIZBL	https://coinmarketcap.com/currencies/wizbl/	0.000441
1597	Synergy	https://coinmarketcap.com/currencies/synergy/	0.013396
1598	Webcoin	https://coinmarketcap.com/currencies/webcoin/	0.001463
1599	Bitstar	https://coinmarketcap.com/currencies/bitstar/	0.003076
1600	Fiii	https://coinmarketcap.com/currencies/fiii/	0.000134
1601	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	0.000091
1602	InterValue	https://coinmarketcap.com/currencies/intervalue/	0.000506
1603	Photon	https://coinmarketcap.com/currencies/photon/	0.000002
1604	Verify	https://coinmarketcap.com/currencies/verify/	0.004780
1605	Knekted	https://coinmarketcap.com/currencies/knekted/	0.000064
1606	Paragon	https://coinmarketcap.com/currencies/paragon/	0.002848
1607	Elementeum	https://coinmarketcap.com/currencies/elementeum/	0.012132
1608	MODEL-X-coin	https://coinmarketcap.com/currencies/model-x-coin/	0.005218
1609	BitCoen	https://coinmarketcap.com/currencies/bitcoen/	0.008878
1610	KAASO	https://coinmarketcap.com/currencies/kaaso/	0.000639
1611	Giant	https://coinmarketcap.com/currencies/giant-coin/	0.007944
1612	Social Activity Token	https://coinmarketcap.com/currencies/social-activity-token/	0.000483
1613	Gentarium	https://coinmarketcap.com/currencies/gentarium/	0.013915
1614	Kurrent	https://coinmarketcap.com/currencies/kurrent/	0.000990
1615	Linfinity	https://coinmarketcap.com/currencies/linfinity/	0.000067
1616	Vidulum	https://coinmarketcap.com/currencies/vidulum/	0.008409
1617	Asian Dragon	https://coinmarketcap.com/currencies/asian-dragon/	0.001136
1618	Streamit Coin	https://coinmarketcap.com/currencies/streamit-coin/	0.004695
1619	Commercium	https://coinmarketcap.com/currencies/commercium/	0.001353
1620	CDX Network	https://coinmarketcap.com/currencies/cdx-network/	0.001839
1621	Rimbit	https://coinmarketcap.com/currencies/rimbit/	0.000300
1622	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	0.007996
1623	Bitcoin Interest	https://coinmarketcap.com/currencies/bitcoin-interest/	0.003189
1624	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	0.007396
1625	Version	https://coinmarketcap.com/currencies/version/	0.000092
1626	WABnetwork	https://coinmarketcap.com/currencies/wabnetwork/	0.000006
1627	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	0.184722
1628	Taklimakan Network	https://coinmarketcap.com/currencies/taklimakan-network/	0.001256
1629	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	1690.50
1630	Biotron	https://coinmarketcap.com/currencies/biotron/	0.000870
1631	SignatureChain	https://coinmarketcap.com/currencies/signature-chain/	0.000074
1632	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	0.000014
1633	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	0.000166
1634	Neutral Dollar	https://coinmarketcap.com/currencies/neutral-dollar/	0.704487
1635	Paymon	https://coinmarketcap.com/currencies/paymon/	0.000092
1636	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	0.006667
1637	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	0.003285
1638	INMAX	https://coinmarketcap.com/currencies/inmax/	0.035094
1639	Bitradio	https://coinmarketcap.com/currencies/bitradio/	0.006216
1640	TOKYO	https://coinmarketcap.com/currencies/tokyo/	0.000200
1641	Klimatas	https://coinmarketcap.com/currencies/klimatas/	0.074867
1642	Niobio Cash	https://coinmarketcap.com/currencies/niobio-cash/	0.000382
1643	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	0.000092
1644	Galilel	https://coinmarketcap.com/currencies/galilel/	0.002697
1645	LALA World	https://coinmarketcap.com/currencies/lala-world/	0.000209
1646	Iridium	https://coinmarketcap.com/currencies/iridium/	0.002557
1647	FUZE Token	https://coinmarketcap.com/currencies/fuze-token/	62.90
1648	Worldcore	https://coinmarketcap.com/currencies/worldcore/	0.000290
1649	Narrative	https://coinmarketcap.com/currencies/narrative/	0.000625
1650	Bridge Protocol	https://coinmarketcap.com/currencies/bridge-protocol/	0.000229
1651	CYCLEAN	https://coinmarketcap.com/currencies/cyclean/	0.000075
1652	nDEX	https://coinmarketcap.com/currencies/ndex/	0.000003
1653	Bitether	https://coinmarketcap.com/currencies/bitether/	0.000895
1654	ImageCash	https://coinmarketcap.com/currencies/imagecash/	0.010726
1655	Ifoods Chain	https://coinmarketcap.com/currencies/ifoods-chain/	0.000020
1656	Mobile Crypto Pay Coin	https://coinmarketcap.com/currencies/mobile-crypto-pay-coin/	0.005906
1657	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	0.000483
1658	Bitcoin Zero	https://coinmarketcap.com/currencies/bitcoin-zero/	0.001764
1659	2GIVE	https://coinmarketcap.com/currencies/2give/	0.000094
1660	Thore Cash	https://coinmarketcap.com/currencies/thore-cash/	0.000888
1661	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	0.001158
1662	Impleum	https://coinmarketcap.com/currencies/impleum/	0.006667
1663	OPCoinX	https://coinmarketcap.com/currencies/opcoinx/	0.000290
1664	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	0.000538
1665	ZeusNetwork	https://coinmarketcap.com/currencies/zeusnetwork/	6.76e-7
1666	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	0.007356
1667	SparksPay	https://coinmarketcap.com/currencies/sparkspay/	0.005798
1668	Moneynet	https://coinmarketcap.com/currencies/moneynet/	0.000013
1669	VULCANO	https://coinmarketcap.com/currencies/vulcano/	0.000193
1670	BlockMesh	https://coinmarketcap.com/currencies/blockmesh/	0.000171
1671	PWR Coin	https://coinmarketcap.com/currencies/powercoin/	0.000005
1672	LOCIcoin	https://coinmarketcap.com/currencies/locicoin/	0.001119
1673	Arionum	https://coinmarketcap.com/currencies/arionum/	0.000290
1674	Hurify	https://coinmarketcap.com/currencies/hurify/	0.000191
1675	PluraCoin	https://coinmarketcap.com/currencies/pluracoin/	0.000097
1676	BTC Lite	https://coinmarketcap.com/currencies/btc-lite/	0.002416
1677	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	0.002126
1678	Bata	https://coinmarketcap.com/currencies/bata/	0.008793
1679	SiaCashCoin	https://coinmarketcap.com/currencies/siacashcoin/	0.000003
1680	No BS Crypto	https://coinmarketcap.com/currencies/no-bs-crypto/	0.000035
1681	Kind Ads Token	https://coinmarketcap.com/currencies/kind-ads-token/	0.001032
1682	ZINC	https://coinmarketcap.com/currencies/zinc/	0.007911
1683	Autonio	https://coinmarketcap.com/currencies/autonio/	0.000405
1684	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	0.003354
1685	APR Coin	https://coinmarketcap.com/currencies/apr-coin/	0.003285
1686	Thar Token	https://coinmarketcap.com/currencies/thar-token/	0.053232
1687	AiLink Token	https://coinmarketcap.com/currencies/ailink-token/	0.000008
1688	CommunityGeneration	https://coinmarketcap.com/currencies/communitygeneration/	0.000097
1689	Ethouse	https://coinmarketcap.com/currencies/ethouse/	0.000574
1690	XMCT	https://coinmarketcap.com/currencies/xmct/	0.000382
1691	Gossip Coin	https://coinmarketcap.com/currencies/gossipcoin/	0.001230
1692	Datarius Credit	https://coinmarketcap.com/currencies/datarius-credit/	0.000307
1693	IFX24	https://coinmarketcap.com/currencies/ifx24/	0.012893
1694	Advanced Technology Coin	https://coinmarketcap.com/currencies/arcticcoin/	0.001353
1695	Helex	https://coinmarketcap.com/currencies/helex/	0.548031
1696	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	0.000094
1697	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	0.004395
1698	Doge Token	https://coinmarketcap.com/currencies/doge-token/	0.000004
1699	Jade Currency	https://coinmarketcap.com/currencies/jade-currency/	0.000676
1700	Freyrchain	https://coinmarketcap.com/currencies/freyrchain/	0.000075
1701	REBL	https://coinmarketcap.com/currencies/rebl/	0.000215
1702	Italo	https://coinmarketcap.com/currencies/italo/	0.008613
1703	Pyrk	https://coinmarketcap.com/currencies/pyrk/	0.013840
1704	Swapcoinz	https://coinmarketcap.com/currencies/swapcoinz/	0.003389
1705	HOLD	https://coinmarketcap.com/currencies/hold/	0.000051
1706	vSlice	https://coinmarketcap.com/currencies/vslice/	0.001063
1707	HyperQuant	https://coinmarketcap.com/currencies/hyperquant/	0.000376
1708	Aigang	https://coinmarketcap.com/currencies/aigang/	0.001207
1709	iTicoin	https://coinmarketcap.com/currencies/iticoin/	1.10
1710	SelfSell	https://coinmarketcap.com/currencies/selfsell/	0.000089
1711	Guider	https://coinmarketcap.com/currencies/guider/	0.000140
1712	Moin	https://coinmarketcap.com/currencies/moin/	0.003769
1713	More Coin	https://coinmarketcap.com/currencies/more-coin/	0.017104
1714	Fantasy Sports	https://coinmarketcap.com/currencies/fantasy-sports/	0.007501
1715	Xuez	https://coinmarketcap.com/currencies/xuez/	0.009180
1716	GoldenPyrex	https://coinmarketcap.com/currencies/goldenpyrex/	0.003382
1717	XGOX	https://coinmarketcap.com/currencies/xgox/	0.000014
1718	TrueVett	https://coinmarketcap.com/currencies/truevett/	0.000187
1719	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	0.001567
1720	Jupiter	https://coinmarketcap.com/currencies/jupiter/	0.002415
1721	HeroNode	https://coinmarketcap.com/currencies/heronode/	0.000030
1722	GINcoin	https://coinmarketcap.com/currencies/gincoin/	0.004058
1723	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	0.011112
1724	Japan Content Token	https://coinmarketcap.com/currencies/japan-content-token/	0.000110
1725	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	0.000097
1726	QUINADS	https://coinmarketcap.com/currencies/quinads/	0.000002
1727	NetKoin	https://coinmarketcap.com/currencies/netkoin/	0.000007
1728	ConnectJob	https://coinmarketcap.com/currencies/connectjob/	0.000284
1729	Centauri	https://coinmarketcap.com/currencies/centauri/	0.000676
1730	1X2 COIN	https://coinmarketcap.com/currencies/1x2-coin/	0.006213
1731	EveriToken	https://coinmarketcap.com/currencies/everitoken/	0.001401
1732	UNICORN Token	https://coinmarketcap.com/currencies/unicorn-token/	0.000296
1733	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	0.001005
1734	HYPNOXYS	https://coinmarketcap.com/currencies/hypnoxys/	0.000002
1735	Global Currency Reserve	https://coinmarketcap.com/currencies/global-currency-reserve/	0.000290
1736	MesChain	https://coinmarketcap.com/currencies/meschain/	0.000040
1737	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	0.000572
1738	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	6.89e-7
1739	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	0.014495
1740	Soverain	https://coinmarketcap.com/currencies/soverain/	0.004293
1741	Arepacoin	https://coinmarketcap.com/currencies/arepacoin/	0.001782
1742	Blockburn	https://coinmarketcap.com/currencies/blockburn/	0.000058
1743	Arion	https://coinmarketcap.com/currencies/arion/	0.002416
1744	FantasyGold	https://coinmarketcap.com/currencies/fantasygold/	0.001855
1900	Cryptrust	https://coinmarketcap.com/currencies/cryptrust/	0.000002
1745	Thingschain	https://coinmarketcap.com/currencies/thingschain/	0.000003
1746	BUDDY	https://coinmarketcap.com/currencies/buddy/	0.000001
1747	Payfair	https://coinmarketcap.com/currencies/payfair/	0.000760
1748	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	0.000154
1749	Daneel	https://coinmarketcap.com/currencies/daneel/	0.001455
1750	Waletoken	https://coinmarketcap.com/currencies/waletoken/	0.000001
1751	IOTW	https://coinmarketcap.com/currencies/iotw/	0.000875
1752	Arqma	https://coinmarketcap.com/currencies/arqma/	0.005670
1753	Rubies	https://coinmarketcap.com/currencies/rubies/	0.002758
1754	Zealium	https://coinmarketcap.com/currencies/zealium/	0.002126
1755	InternationalCryptoX	https://coinmarketcap.com/currencies/internationalcryptox/	0.000066
1756	BitRewards	https://coinmarketcap.com/currencies/bitrewards/	0.000081
1757	Data Transaction Token	https://coinmarketcap.com/currencies/data-transaction-token/	0.000141
1758	BERNcash	https://coinmarketcap.com/currencies/berncash/	0.000390
1759	CYBR Token	https://coinmarketcap.com/currencies/cybr-token/	0.000739
1760	Abitshadow Token	https://coinmarketcap.com/currencies/abitshadow-token/	0.000155
1761	Bitsum	https://coinmarketcap.com/currencies/bitsum/	0.000016
1762	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	0.000290
1763	bitGold	https://coinmarketcap.com/currencies/bitgold/	143.14
1764	EtherInc	https://coinmarketcap.com/currencies/etherinc/	0.000085
1765	Cheesecoin	https://coinmarketcap.com/currencies/cheesecoin/	0.000068
1766	Coinchase Token	https://coinmarketcap.com/currencies/coinchase/	0.000017
1767	CyberMusic	https://coinmarketcap.com/currencies/cybermusic/	0.000002
1768	Aricoin	https://coinmarketcap.com/currencies/aricoin/	0.000193
1769	Exosis	https://coinmarketcap.com/currencies/exosis/	0.066690
1770	Parkgene	https://coinmarketcap.com/currencies/parkgene/	0.000086
1771	EthereumX	https://coinmarketcap.com/currencies/ethereumx/	0.000290
1772	STRAKS	https://coinmarketcap.com/currencies/straks/	0.001060
1773	IGToken	https://coinmarketcap.com/currencies/igtoken/	0.000007
1774	BLAST	https://coinmarketcap.com/currencies/blast/	0.000580
1775	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	0.001235
1776	Titcoin	https://coinmarketcap.com/currencies/titcoin/	0.000377
1777	Ether Kingdoms Token	https://coinmarketcap.com/currencies/ether-kingdoms-token/	0.003276
1778	Joint Ventures	https://coinmarketcap.com/currencies/joint-ventures/	0.001105
1779	The Currency Analytics	https://coinmarketcap.com/currencies/the-currency-analytics/	0.000179
1780	PRiVCY	https://coinmarketcap.com/currencies/privcy/	0.001455
1781	PureVidz	https://coinmarketcap.com/currencies/purevidz/	0.000191
1782	ShowHand	https://coinmarketcap.com/currencies/showhand/	3.86e-7
1783	Italian Lira	https://coinmarketcap.com/currencies/italian-lira/	9.55e-7
1784	xEURO	https://coinmarketcap.com/currencies/xeuro/	1.17
1785	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	0.000195
1786	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	0.000478
1787	EZOOW	https://coinmarketcap.com/currencies/ezoow/	0.000002
1788	Zenswap Network Token	https://coinmarketcap.com/currencies/zenswap-network-token/	0.000002
1789	Dollar International	https://coinmarketcap.com/currencies/dollar-international/	0.678443
1790	Iungo	https://coinmarketcap.com/currencies/iungo/	0.000584
1791	Level Up Coin	https://coinmarketcap.com/currencies/level-up/	0.000023
1792	MESG	https://coinmarketcap.com/currencies/mesg/	0.000321
1793	Blocklancer	https://coinmarketcap.com/currencies/blocklancer/	0.000193
1794	Universal Currency	https://coinmarketcap.com/currencies/universal-currency/	0.001449
1795	InterCrone	https://coinmarketcap.com/currencies/intercrone/	0.001558
1796	Eternity	https://coinmarketcap.com/currencies/eternity/	0.002802
1797	Beacon	https://coinmarketcap.com/currencies/beacon/	0.018114
1798	BitStation	https://coinmarketcap.com/currencies/bitstation/	0.000005
1799	Bela	https://coinmarketcap.com/currencies/belacoin/	0.000486
1800	FundRequest	https://coinmarketcap.com/currencies/fundrequest/	0.000475
1801	JSECOIN	https://coinmarketcap.com/currencies/jsecoin/	0.000051
1802	BitcoiNote	https://coinmarketcap.com/currencies/bitcoinote/	0.001933
1803	Bitcoin Classic	https://coinmarketcap.com/currencies/bitcoin-classic/	0.036923
1804	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	0.000002
1805	BitNautic Token	https://coinmarketcap.com/currencies/bitnautic-token/	0.001160
1806	P2P Global Network	https://coinmarketcap.com/currencies/p2p-global-network/	0.000505
1807	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	0.017877
1808	ROIyal Coin	https://coinmarketcap.com/currencies/roiyal-coin/	0.016620
1809	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	0.000239
1810	SCRIV NETWORK	https://coinmarketcap.com/currencies/scriv-network/	0.000866
1811	GenesisX	https://coinmarketcap.com/currencies/genesisx/	0.002042
1812	SkyHub Coin	https://coinmarketcap.com/currencies/skyhub-coin/	0.033196
1813	Scopuly	https://coinmarketcap.com/currencies/scopuly/	0.000009
1814	Citadel	https://coinmarketcap.com/currencies/citadel/	0.001933
1815	GoHelpFund	https://coinmarketcap.com/currencies/gohelpfund/	0.001739
1816	Castle	https://coinmarketcap.com/currencies/castle/	0.001160
1817	Origami	https://coinmarketcap.com/currencies/origami/	0.004883
1818	RefToken	https://coinmarketcap.com/currencies/reftoken/	0.020417
1819	Digital Money Bits	https://coinmarketcap.com/currencies/digital-money-bits/	0.000193
1820	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	0.001704
1821	Decentralized Asset Trading Platform	https://coinmarketcap.com/currencies/decentralized-asset-trading-platform/	0.000002
1822	Micromines	https://coinmarketcap.com/currencies/micromines/	0.000001
1823	ShareX	https://coinmarketcap.com/currencies/sharex/	0.000031
1824	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	0.002899
1825	Bitcoiin	https://coinmarketcap.com/currencies/bitcoiin/	0.000384
1826	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	0.000688
1827	Intelligent Trading Foundation	https://coinmarketcap.com/currencies/intelligent-trading-foundation/	0.001993
1828	INDINODE	https://coinmarketcap.com/currencies/indinode/	0.000019
1829	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	0.000387
1830	TrustNote	https://coinmarketcap.com/currencies/trustnote/	0.000061
1831	UChain	https://coinmarketcap.com/currencies/uchain/	0.000062
1832	Signatum	https://coinmarketcap.com/currencies/signatum/	0.000174
1833	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	0.000286
1834	Spectiv	https://coinmarketcap.com/currencies/signal-token/	0.000083
1835	GoPower	https://coinmarketcap.com/currencies/gopower/	0.000227
1836	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	0.004542
1837	EUNOMIA	https://coinmarketcap.com/currencies/eunomia/	0.000001
1838	EOS TRUST	https://coinmarketcap.com/currencies/eos-trust/	0.000002
1839	Cream	https://coinmarketcap.com/currencies/cream/	0.000401
1840	RPICoin	https://coinmarketcap.com/currencies/rpicoin/	0.000019
1841	BitRent	https://coinmarketcap.com/currencies/bitrent/	0.000021
1842	WXCOINS	https://coinmarketcap.com/currencies/wxcoins/	0.000575
1843	Natmin Pure Escrow	https://coinmarketcap.com/currencies/natmin-pure-escrow/	0.000110
1844	YENTEN	https://coinmarketcap.com/currencies/yenten/	0.000727
1845	BitStash	https://coinmarketcap.com/currencies/bitstash/	0.000006
1846	SHPING	https://coinmarketcap.com/currencies/shping/	0.000012
1847	ETHplode	https://coinmarketcap.com/currencies/ethplode/	0.000404
1848	SteepCoin	https://coinmarketcap.com/currencies/steepcoin/	0.000097
1849	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	0.000196
1850	Stipend	https://coinmarketcap.com/currencies/stipend/	0.001492
1851	Neural Protocol	https://coinmarketcap.com/currencies/neural-protocol/	0.000002
1852	Octoin Coin	https://coinmarketcap.com/currencies/octoin-coin/	0.030945
1853	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	0.002126
1854	Nitro	https://coinmarketcap.com/currencies/nitro/	0.000176
1855	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	0.000290
1856	Agora	https://coinmarketcap.com/currencies/agora/	0.000442
1857	Netrum	https://coinmarketcap.com/currencies/netrum/	0.007731
1858	Sola Token	https://coinmarketcap.com/currencies/sola-token/	0.000571
1859	SONDER	https://coinmarketcap.com/currencies/sonder/	0.000097
1860	TravelNote	https://coinmarketcap.com/currencies/travelnote/	0.007430
1861	Cyber Movie Chain	https://coinmarketcap.com/currencies/cyber-movie-chain/	7.80e-7
1862	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	0.001269
1863	CrowdWiz	https://coinmarketcap.com/currencies/crowdwiz/	0.003600
1864	Acash Coin	https://coinmarketcap.com/currencies/acash-coin/	0.000002
1865	Datacoin	https://coinmarketcap.com/currencies/datacoin/	0.000387
1866	Save Environment Token	https://coinmarketcap.com/currencies/save-environment-token/	0.015879
1867	Gold Poker	https://coinmarketcap.com/currencies/gold-poker/	0.002899
1868	Elementrem	https://coinmarketcap.com/currencies/elementrem/	0.000581
1869	UOS Network	https://coinmarketcap.com/currencies/uos-network/	0.001063
1870	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	0.005800
1871	Agrolot	https://coinmarketcap.com/currencies/agrolot/	0.000169
1872	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	0.000410
1873	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	1.19
1874	Acoin	https://coinmarketcap.com/currencies/acoin/	0.012138
1875	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	0.000049
1876	Nyerium	https://coinmarketcap.com/currencies/nyerium/	0.000524
1877	Fivebalance	https://coinmarketcap.com/currencies/fivebalance/	0.000026
1878	Gexan	https://coinmarketcap.com/currencies/gexan/	0.005602
1879	Connect Coin	https://coinmarketcap.com/currencies/connect-coin/	0.000367
1880	WITChain	https://coinmarketcap.com/currencies/witchain/	0.000007
1881	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	0.002852
1882	4NEW	https://coinmarketcap.com/currencies/4new/	0.000222
1883	YoloCash	https://coinmarketcap.com/currencies/yolocash/	0.000458
1884	Kabberry Coin	https://coinmarketcap.com/currencies/kabberry-coin/	0.000676
1885	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	0.028717
1886	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	0.000851
1887	Global Crypto Alliance	https://coinmarketcap.com/currencies/global-crypto-alliance/	0.000162
1888	Ellaism	https://coinmarketcap.com/currencies/ellaism/	0.000676
1889	Dragon Option	https://coinmarketcap.com/currencies/dragon-option/	0.000140
1890	EagleX	https://coinmarketcap.com/currencies/eaglex/	0.000387
1891	Guaranteed Ethurance Token Extra	https://coinmarketcap.com/currencies/guaranteed-ethurance-token-extra/	0.000043
1892	Tourist Token	https://coinmarketcap.com/currencies/tourist-token/	0.000003
1893	bitJob	https://coinmarketcap.com/currencies/student-coin/	0.000144
1894	Rupaya	https://coinmarketcap.com/currencies/rupaya/	0.000773
1895	BoostCoin	https://coinmarketcap.com/currencies/boostcoin/	0.001051
1896	Phonecoin	https://coinmarketcap.com/currencies/phonecoin/	0.000094
1897	ALAX	https://coinmarketcap.com/currencies/alax/	0.000591
1898	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	0.000157
1899	Bitcoin Adult	https://coinmarketcap.com/currencies/bitcoin-adult/	0.000290
1901	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	0.002321
1902	Bulleon	https://coinmarketcap.com/currencies/bulleon/	0.010516
1903	Spectrum	https://coinmarketcap.com/currencies/spectrum/	0.000010
1904	Magic Cube Coin	https://coinmarketcap.com/currencies/magic-cube-coin/	0.000096
1905	ARAW	https://coinmarketcap.com/currencies/araw/	0.000006
1906	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	0.002376
1907	CCUniverse	https://coinmarketcap.com/currencies/ccuniverse/	0.000030
1908	Open Trading Network	https://coinmarketcap.com/currencies/open-trading-network/	0.005315
1909	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	0.010436
1910	onLEXpa	https://coinmarketcap.com/currencies/onlexpa/	0.000056
1911	wys Token	https://coinmarketcap.com/currencies/wys-token/	0.000101
1912	Bionic	https://coinmarketcap.com/currencies/bionic/	0.000019
1913	Onix	https://coinmarketcap.com/currencies/onix/	0.000095
1914	Simmitri	https://coinmarketcap.com/currencies/simmitri/	0.000143
1915	Provoco Token	https://coinmarketcap.com/currencies/provoco-token/	1.00e-8
1916	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	0.000095
1917	X-Coin	https://coinmarketcap.com/currencies/x-coin/	0.000789
1918	Project Coin	https://coinmarketcap.com/currencies/project-coin/	0.000173
1919	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	0.000097
1920	Eva Cash	https://coinmarketcap.com/currencies/eva-cash/	0.010736
1921	EnterCoin	https://coinmarketcap.com/currencies/entercoin/	0.002996
1922	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	0.000391
1923	Galactrum	https://coinmarketcap.com/currencies/galactrum/	0.001836
1924	Havy	https://coinmarketcap.com/currencies/havy/	0.000001
1925	Digiwage	https://coinmarketcap.com/currencies/digiwage/	0.000193
1926	CryptoFlow	https://coinmarketcap.com/currencies/cryptoflow/	0.000098
1927	ICOBID	https://coinmarketcap.com/currencies/icobid/	0.000084
1928	Akroma	https://coinmarketcap.com/currencies/akroma/	0.000464
1929	PostCoin	https://coinmarketcap.com/currencies/postcoin/	0.000557
1930	TokenDesk	https://coinmarketcap.com/currencies/tokendesk/	0.000599
1931	KWHCoin	https://coinmarketcap.com/currencies/kwhcoin/	0.000005
1932	ICOCalendar.Today	https://coinmarketcap.com/currencies/icocalendar-today/	0.000017
1933	Atheios	https://coinmarketcap.com/currencies/atheios/	0.000483
1934	BitGuild PLAT	https://coinmarketcap.com/currencies/bitguild-plat/	0.000142
1935	Electrum Dark	https://coinmarketcap.com/currencies/electrum-dark-eld/	0.002103
1936	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	0.005431
1937	TRAXIA	https://coinmarketcap.com/currencies/traxia/	0.000025
1938	BitMoney	https://coinmarketcap.com/currencies/bitmoney/	0.000097
1939	Desire	https://coinmarketcap.com/currencies/desire/	0.000773
1940	Mainstream For The Underground	https://coinmarketcap.com/currencies/mainstream-for-the-underground/	0.000007
1941	CustomContractNetwork	https://coinmarketcap.com/currencies/customcontractnetwork/	0.000005
1942	Authorship	https://coinmarketcap.com/currencies/authorship/	0.000077
1943	Dash Green	https://coinmarketcap.com/currencies/dash-green/	0.003266
1944	Centurion	https://coinmarketcap.com/currencies/centurion/	0.000097
1945	Shivers	https://coinmarketcap.com/currencies/shivers/	0.000137
1946	Carebit	https://coinmarketcap.com/currencies/carebit/	0.000049
1947	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	0.010000
1948	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	0.000665
1949	FidexToken	https://coinmarketcap.com/currencies/fidex-token/	2.48e-7
1950	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	0.001148
1951	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	0.004155
1952	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	0.008890
1953	MASTERNET	https://coinmarketcap.com/currencies/masternet/	0.000215
1954	Stakinglab	https://coinmarketcap.com/currencies/stakinglab/	0.015944
1955	Asura Coin	https://coinmarketcap.com/currencies/asura-coin/	0.000029
1956	FUTURAX	https://coinmarketcap.com/currencies/futurax/	0.000002
1957	ARbit	https://coinmarketcap.com/currencies/arbit/	0.000584
1958	Ragnarok	https://coinmarketcap.com/currencies/ragnarok/	0.000387
1959	Peerguess	https://coinmarketcap.com/currencies/guess/	0.000103
1960	Litecred	https://coinmarketcap.com/currencies/litecred/	0.000196
1961	Couchain	https://coinmarketcap.com/currencies/couchain/	5.79e-7
1962	Ccore	https://coinmarketcap.com/currencies/ccore/	0.003443
1963	CFun	https://coinmarketcap.com/currencies/cfun/	0.000014
1964	Nekonium	https://coinmarketcap.com/currencies/nekonium/	0.000483
1965	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	0.000851
1966	Crowdholding	https://coinmarketcap.com/currencies/crowdholding/	0.000028
1967	Xchange	https://coinmarketcap.com/currencies/xchange/	0.000580
1968	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	0.000192
1969	VikkyToken	https://coinmarketcap.com/currencies/vikkytoken/	0.000001
1970	Gratz	https://coinmarketcap.com/currencies/gratz/	0.000173
1971	CPUchain	https://coinmarketcap.com/currencies/cpuchain/	0.000290
1972	Vivid Coin	https://coinmarketcap.com/currencies/vivid-coin/	0.000679
1973	EVOS	https://coinmarketcap.com/currencies/evos/	0.000483
1974	Alpha Coin	https://coinmarketcap.com/currencies/alpha-coin/	0.000162
1975	PAXEX	https://coinmarketcap.com/currencies/paxex/	0.000287
1976	iBTC	https://coinmarketcap.com/currencies/ibtc/	0.000097
1977	Kora Network Token	https://coinmarketcap.com/currencies/kora-network-token/	0.000014
1978	Mirai	https://coinmarketcap.com/currencies/mirai/	0.001406
1979	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	0.001062
1980	Phantomx	https://coinmarketcap.com/currencies/phantomx/	0.000097
1981	Crystal Clear	https://coinmarketcap.com/currencies/crystal-clear/	0.000820
1982	Playgroundz	https://coinmarketcap.com/currencies/playgroundz/	0.000162
1983	MoX	https://coinmarketcap.com/currencies/mox/	0.000870
1984	Absolute	https://coinmarketcap.com/currencies/absolute/	0.000333
1985	Escroco Emerald	https://coinmarketcap.com/currencies/escroco-emerald/	0.000005
1986	Independent Money System	https://coinmarketcap.com/currencies/independent-money-system/	0.000776
1987	XOVBank	https://coinmarketcap.com/currencies/xovbank/	0.000031
1988	Quantis Network	https://coinmarketcap.com/currencies/quantis-network/	0.000097
1989	MNPCoin	https://coinmarketcap.com/currencies/mnpcoin/	0.001739
1990	Crystal Token	https://coinmarketcap.com/currencies/crystal-token/	0.006550
1991	Helper Search Token	https://coinmarketcap.com/currencies/helper-search-token/	4.34e-7
1992	Fintab	https://coinmarketcap.com/currencies/fintab/	0.001300
1993	Bitcoinus	https://coinmarketcap.com/currencies/bitcoinus/	1.00e-8
1994	VectorAI	https://coinmarketcap.com/currencies/vector/	0.000189
1995	e-Chat	https://coinmarketcap.com/currencies/e-chat/	0.000181
1996	AceD	https://coinmarketcap.com/currencies/aced/	0.000286
1997	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	0.000194
1998	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	0.000364
1999	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	0.000091
2000	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	0.000588
2001	BunnyToken	https://coinmarketcap.com/currencies/bunnytoken/	0.000012
2002	Cannation	https://coinmarketcap.com/currencies/cannation/	0.001236
2003	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	0.000279
2004	Apollon	https://coinmarketcap.com/currencies/apollon/	0.000020
2005	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	0.001353
2006	SpeedCash	https://coinmarketcap.com/currencies/speedcash/	0.004831
2007	Silverway	https://coinmarketcap.com/currencies/silverway/	0.000018
2008	Xenoverse	https://coinmarketcap.com/currencies/xenoverse/	0.000502
2009	Helpico	https://coinmarketcap.com/currencies/helpico/	0.112244
2010	Californium	https://coinmarketcap.com/currencies/californium/	0.001080
2011	DNotes	https://coinmarketcap.com/currencies/dnotes/	0.000019
2012	Coinonat	https://coinmarketcap.com/currencies/coinonat/	0.000291
2013	Flit Token	https://coinmarketcap.com/currencies/flit-token/	7.39e-7
2014	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	0.000197
2015	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	0.001160
2016	Experience Points	https://coinmarketcap.com/currencies/experience-points/	0.000002
2017	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	0.003665
2018	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	0.000097
2019	Comet	https://coinmarketcap.com/currencies/comet/	0.002604
2020	Veltor	https://coinmarketcap.com/currencies/veltor/	0.004089
2021	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	0.000098
2022	Zoomba	https://coinmarketcap.com/currencies/zoomba/	0.000087
2023	Decentralized Crypto Token	https://coinmarketcap.com/currencies/decentralized-crypto-token/	0.000002
2024	Cabbage	https://coinmarketcap.com/currencies/cabbage/	0.000189
2025	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	0.000096
2026	LitecoinToken	https://coinmarketcap.com/currencies/litecoin-token/	2.01e-8
2027	PAWS Fund	https://coinmarketcap.com/currencies/paws-fund/	0.000959
2028	PosEx	https://coinmarketcap.com/currencies/posex/	0.000723
2029	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	0.009447
2030	Iconic	https://coinmarketcap.com/currencies/iconic/	0.002858
2031	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	0.000098
2032	BROTHER	https://coinmarketcap.com/currencies/brat/	0.000010
2033	Cointorox	https://coinmarketcap.com/currencies/cointorox/	0.000286
2034	Qbic	https://coinmarketcap.com/currencies/qbic/	0.000300
2035	Secrets of Zurich	https://coinmarketcap.com/currencies/secrets-of-zurich/	0.000001
2036	Project-X	https://coinmarketcap.com/currencies/project-x/	16534.01
2037	Dinero	https://coinmarketcap.com/currencies/dinero/	0.000138
2038	Staker	https://coinmarketcap.com/currencies/staker/	0.000773
2039	Nibble	https://coinmarketcap.com/currencies/nibbleclassic/	0.008214
2040	SportyCo	https://coinmarketcap.com/currencies/sportyco/	0.000021
2041	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	0.001082
2042	Orbis Token	https://coinmarketcap.com/currencies/orbis-token/	0.000057
2043	Trexcoin	https://coinmarketcap.com/currencies/trexcoin/	0.000021
2044	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	0.000098
2045	X12 Coin	https://coinmarketcap.com/currencies/x12-coin/	0.000083
2046	Benz	https://coinmarketcap.com/currencies/benz/	0.000159
2047	Elliot Coin	https://coinmarketcap.com/currencies/elliot-coin/	0.000038
2048	iBank	https://coinmarketcap.com/currencies/ibank/	0.000195
2049	QYNO	https://coinmarketcap.com/currencies/qyno/	0.000681
2050	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	0.000202
2051	Storeum	https://coinmarketcap.com/currencies/storeum/	0.000002
2052	Concoin	https://coinmarketcap.com/currencies/concoin/	0.000686
2053	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	0.000580
2054	999	https://coinmarketcap.com/currencies/999-coin/	0.000002
2055	Posscoin	https://coinmarketcap.com/currencies/posscoin/	1.49e-8
2056	Dystem	https://coinmarketcap.com/currencies/dystem/	0.000057
2057	Argus	https://coinmarketcap.com/currencies/argus/	0.000293
2058	LRM Coin	https://coinmarketcap.com/currencies/lrm-coin/	0.000019
2059	Abulaba	https://coinmarketcap.com/currencies/abulaba/	0.000007
2060	UltraNote Coin	https://coinmarketcap.com/currencies/ultranote-coin/	4.59e-7
2061	Newton Coin Project	https://coinmarketcap.com/currencies/newton-coin-project/	7.78e-7
2062	SongCoin	https://coinmarketcap.com/currencies/songcoin/	0.000002
2063	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	0.000088
2064	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	0.000063
2065	Yobit Token	https://coinmarketcap.com/currencies/yobit-token/	969.24
2066	Filecoin [Futures]	https://coinmarketcap.com/currencies/filecoin/	9.15
2067	CryptoEnergy	https://coinmarketcap.com/currencies/cryptoenergy/	43.96
2068	DEAPcoin	https://coinmarketcap.com/currencies/deapcoin/	0.009529
2069	Building Cities Beyond Blockchain	https://coinmarketcap.com/currencies/building-cities-beyond-blockchain/	2.89
2070	Bitcoin Vault	https://coinmarketcap.com/currencies/bitcoin-vault/	206.76
2071	NDN Link	https://coinmarketcap.com/currencies/ndn-link/	0.017054
2072	Arweave	https://coinmarketcap.com/currencies/arweave/	0.942824
2073	3X Long Ethereum Token	https://coinmarketcap.com/currencies/3x-long-ethereum-token/	281.30
2074	8X8 PROTOCOL	https://coinmarketcap.com/currencies/8x8-protocol/	0.084968
2075	FairGame	https://coinmarketcap.com/currencies/fairgame/	0.002636
2076	The Midas Touch Gold	https://coinmarketcap.com/currencies/the-midas-touch-gold/	0.054981
2077	BKEX Token	https://coinmarketcap.com/currencies/bkex-token/	0.080117
2078	3X Long BNB Token	https://coinmarketcap.com/currencies/3x-long-bnb-token/	130.23
2079	3x Long EOS Token	https://coinmarketcap.com/currencies/3x-long-eos-token/	4.99
2080	Ontology Gas	https://coinmarketcap.com/currencies/ontology-gas/	0.123496
2081	Soda Coin	https://coinmarketcap.com/currencies/soda-coin/	0.011507
2082	Zynecoin	https://coinmarketcap.com/currencies/zynecoin/	2.13
2083	Klaytn	https://coinmarketcap.com/currencies/klaytn/	0.224598
2084	Lux Bio Cell	https://coinmarketcap.com/currencies/lux-bio-cell/	0.007982
2085	QUEENBEE	https://coinmarketcap.com/currencies/queenbee/	0.010485
2086	xDai	https://coinmarketcap.com/currencies/xdai/	1.47
2087	LUCY	https://coinmarketcap.com/currencies/lucy/	0.239534
2088	YottaChain	https://coinmarketcap.com/currencies/yottachain/	0.057227
2089	Orient Walt	https://coinmarketcap.com/currencies/orient-walt/	0.475137
2090	Echoin	https://coinmarketcap.com/currencies/echoin/	0.003778
2091	ECOChain	https://coinmarketcap.com/currencies/ecochain/	1.74
2092	3X Short Ethereum Token	https://coinmarketcap.com/currencies/3x-short-ethereum-token/	0.889643
2093	HyperDAO	https://coinmarketcap.com/currencies/hyperdao/	0.022955
2094	Unknown Fair Object	https://coinmarketcap.com/currencies/unknown-fair-object/	3.78
2095	3X Long Bitcoin Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-token/	3226.81
2096	AAX Token	https://coinmarketcap.com/currencies/aax-token/	0.953139
2097	ELYSIA	https://coinmarketcap.com/currencies/elysia/	0.002547
2098	Brazilian Digital Token	https://coinmarketcap.com/currencies/brz/	0.194953
2099	FirmaChain	https://coinmarketcap.com/currencies/firmachain/	0.032108
2100	Bispex	https://coinmarketcap.com/currencies/bispex/	0.001211
2101	3x Long XRP Token	https://coinmarketcap.com/currencies/3x-long-xrp-token/	11.42
2102	MeconCash	https://coinmarketcap.com/currencies/meconcash/	0.098094
2103	3X Short Bitcoin Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-token/	1.62
2104	ABCC Token	https://coinmarketcap.com/currencies/abcc-token/	0.026785
2105	Sensorium	https://coinmarketcap.com/currencies/sensorium/	0.248943
2106	VARC	https://coinmarketcap.com/currencies/varc/	0.003674
2107	Largo Coin	https://coinmarketcap.com/currencies/largo-coin/	10.09
2108	Tweebaa	https://coinmarketcap.com/currencies/tweebaa/	1.54
2109	Creditcoin	https://coinmarketcap.com/currencies/creditcoin/	0.182170
2110	Kadena	https://coinmarketcap.com/currencies/kadena/	0.452877
2111	IZEROIUM	https://coinmarketcap.com/currencies/izeroium/	0.051404
2112	NOIZ	https://coinmarketcap.com/currencies/noizchain/	0.026378
2113	Decentralized Vulnerability Platform	https://coinmarketcap.com/currencies/decentralized-vulnerability-platform/	0.007005
2114	VinDax Coin	https://coinmarketcap.com/currencies/vindax-coin/	0.033117
2115	BIKI	https://coinmarketcap.com/currencies/biki/	0.041813
2116	BASIC	https://coinmarketcap.com/currencies/basic/	0.005421
2117	Medium	https://coinmarketcap.com/currencies/medium/	0.404653
2118	3x Short EOS Token	https://coinmarketcap.com/currencies/3x-short-eos-token/	6.80
2119	3x Short XRP Token	https://coinmarketcap.com/currencies/3x-short-xrp-token/	196.26
2120	Wallet Plus X	https://coinmarketcap.com/currencies/wallet-plus-x/	0.004277
2121	2key.network	https://coinmarketcap.com/currencies/2key-network/	0.069463
2122	BIZZCOIN	https://coinmarketcap.com/currencies/bizzcoin/	0.499469
2123	Keystone of Opportunity & Knowledge	https://coinmarketcap.com/currencies/keystone-of-opportunity-knowledge/	0.260510
2124	3X Short BNB Token	https://coinmarketcap.com/currencies/3x-short-bnb-token/	8.37
2125	Vinci	https://coinmarketcap.com/currencies/vinci/	1.23
2126	Coni	https://coinmarketcap.com/currencies/coni/	0.011005
2127	Kingdom Game 4.0	https://coinmarketcap.com/currencies/kingdom-game-4/	0.024237
2128	Gomics	https://coinmarketcap.com/currencies/gomics/	0.106102
2129	Energy Web Token	https://coinmarketcap.com/currencies/energy-web-token/	4.35
2130	Attila	https://coinmarketcap.com/currencies/attila/	0.104389
2131	PayProtocol	https://coinmarketcap.com/currencies/payprotocol/	0.152874
2132	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	0.931191
2133	BTSE	https://coinmarketcap.com/currencies/btse/	1.42
2134	GeoDB	https://coinmarketcap.com/currencies/geodb/	0.387090
2135	Precium	https://coinmarketcap.com/currencies/precium/	0.004842
2136	3x Short Litecoin Token	https://coinmarketcap.com/currencies/3x-short-litecoin-token/	1014.72
2137	BeeEx	https://coinmarketcap.com/currencies/beeex/	0.022070
2138	PANTHEON X	https://coinmarketcap.com/currencies/pantheon-x/	0.006983
2139	pTokens BTC	https://coinmarketcap.com/currencies/ptokens-btc/	9686.70
2140	KardiaChain	https://coinmarketcap.com/currencies/kardiachain/	0.002437
2141	VeThor Token	https://coinmarketcap.com/currencies/vethor-token/	0.000437
2142	BigBang Core	https://coinmarketcap.com/currencies/bigbang-core/	0.665489
2143	HOMIHELP	https://coinmarketcap.com/currencies/homihelp/	6.59
2144	Xank	https://coinmarketcap.com/currencies/xank/	0.084694
2145	DigiFinexToken	https://coinmarketcap.com/currencies/digifinextoken/	0.184086
2146	RAKUN	https://coinmarketcap.com/currencies/rakun/	0.006458
2147	Gleec	https://coinmarketcap.com/currencies/gleec/	0.107728
2148	3x Long Bitcoin Cash Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-cash-token/	10.70
2149	Saga	https://coinmarketcap.com/currencies/saga/	1.37
2150	Freecash	https://coinmarketcap.com/currencies/freecash/	0.151253
2151	MATH	https://coinmarketcap.com/currencies/math/	0.163320
2152	3x Short Bitcoin Cash Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-cash-token/	45.97
2153	3X Short TRX Token	https://coinmarketcap.com/currencies/3x-short-trx-token/	5.05
2154	LinkArt	https://coinmarketcap.com/currencies/linkart/	0.008375
2155	LUKSO	https://coinmarketcap.com/currencies/lukso/	0.285075
2156	XIO	https://coinmarketcap.com/currencies/xio/	0.057465
2157	Edgeware	https://coinmarketcap.com/currencies/edgeware/	0.005558
2158	CoinHe Token	https://coinmarketcap.com/currencies/coinhe-token/	0.062702
2159	KNOW	https://coinmarketcap.com/currencies/know/	0.001396
2160	Zelwin	https://coinmarketcap.com/currencies/zelwin/	2.31
2161	Polkadot [IOU]	https://coinmarketcap.com/currencies/polkadot-iou/	114.54
2162	CAPITAL X CELL	https://coinmarketcap.com/currencies/capital-x-cell/	0.305113
2163	KingMoney	https://coinmarketcap.com/currencies/kingmoney/	256.19
2164	Two Prime FF1 Token	https://coinmarketcap.com/currencies/two-prime-ff1-token/	3.50
2165	GHOST	https://coinmarketcap.com/currencies/ghost/	0.842666
2166	Dash Cash	https://coinmarketcap.com/currencies/dash-cash/	0.317764
2167	Celo	https://coinmarketcap.com/currencies/celo/	1.57
2168	3x Long Bitcoin SV Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-sv-token/	1.52
2169	MyToken	https://coinmarketcap.com/currencies/mytoken/	0.000962
2170	TopChain	https://coinmarketcap.com/currencies/topchain/	0.005545
2171	Aragon Court	https://coinmarketcap.com/currencies/aragon-court/	0.017034
2172	ShineChain	https://coinmarketcap.com/currencies/shinechain/	0.000561
2173	NNB Token	https://coinmarketcap.com/currencies/nnb-token/	0.000471
2174	The Transfer Token	https://coinmarketcap.com/currencies/the-transfer-token/	4.38
2175	Sparkle	https://coinmarketcap.com/currencies/sparkle/	0.106976
2176	3X Long TRX Token	https://coinmarketcap.com/currencies/3x-long-trx-token/	2.74
2177	Hintchain	https://coinmarketcap.com/currencies/hintchain/	0.002164
2178	LinkToken	https://coinmarketcap.com/currencies/linktoken/	0.017585
2179	Vid	https://coinmarketcap.com/currencies/vid/	0.010727
2180	3x Short Bitcoin SV Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-sv-token/	0.535610
2181	Yuan Chain Coin	https://coinmarketcap.com/currencies/yuan-chain-coin/	0.006107
2182	Ormeus Ecosystem	https://coinmarketcap.com/currencies/ormeus-ecosystem/	0.000558
2183	3x Long Litecoin Token	https://coinmarketcap.com/currencies/3x-long-litecoin-token/	3.71
2184	Hdac	https://coinmarketcap.com/currencies/hdac/	0.027716
2185	Ti-Value	https://coinmarketcap.com/currencies/ti-value/	0.006531
2186	Boogle	https://coinmarketcap.com/currencies/boogle/	0.004069
2187	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	1.18
2188	REBIT	https://coinmarketcap.com/currencies/rebit/	0.116432
2189	Metaprediction	https://coinmarketcap.com/currencies/metaprediction/	0.000002
2190	Bilaxy Token	https://coinmarketcap.com/currencies/bilaxy-token/	0.001583
2191	ViteX Coin	https://coinmarketcap.com/currencies/vitex-coin/	0.186276
2192	Bitscoin	https://coinmarketcap.com/currencies/bitscoin/	6.10
2193	OceanEx Token	https://coinmarketcap.com/currencies/oceanex-token/	0.000570
2194	LBK	https://coinmarketcap.com/currencies/lbk/	0.006219
2195	Whole Network	https://coinmarketcap.com/currencies/whole-network/	0.001276
2196	WETH	https://coinmarketcap.com/currencies/weth/	240.78
2197	Enzo	https://coinmarketcap.com/currencies/enzo/	0.014719
2198	Buzzshow	https://coinmarketcap.com/currencies/buzzshow/	0.015424
2199	Crypto Holding Frank Token	https://coinmarketcap.com/currencies/crypto-holding-frank-token/	1.04
2200	ARCS	https://coinmarketcap.com/currencies/arcs/	0.330509
2201	MarketPeak	https://coinmarketcap.com/currencies/marketpeak/	0.136697
2202	Tesra	https://coinmarketcap.com/currencies/tesra/	0.029003
2203	ECOSC	https://coinmarketcap.com/currencies/ecosc/	2.75
2204	Dapp Token	https://coinmarketcap.com/currencies/dapp-token/	0.000895
2205	Spice	https://coinmarketcap.com/currencies/spice/	0.000726
2206	Blockcloud	https://coinmarketcap.com/currencies/blockcloud/	0.000699
2207	Lukki Operating Token	https://coinmarketcap.com/currencies/lukki-operating-token/	0.005928
2208	EzyStayz	https://coinmarketcap.com/currencies/ezystayz/	0.002063
2209	Juventus Fan Token	https://coinmarketcap.com/currencies/juventus-fan-token/	8.17
2210	ProBit Token	https://coinmarketcap.com/currencies/probit-token/	0.194706
2211	Spockchain Network	https://coinmarketcap.com/currencies/spockchain-network/	0.000922
2212	Gosama	https://coinmarketcap.com/currencies/gosama/	0.201190
2213	CNNS	https://coinmarketcap.com/currencies/cnns/	0.003300
2214	Rivex	https://coinmarketcap.com/currencies/rivex/	0.054473
2215	Dawn Protocol	https://coinmarketcap.com/currencies/dawn-protocol/	0.135143
2216	Aitheon	https://coinmarketcap.com/currencies/aitheon/	0.001640
2217	V-Dimension	https://coinmarketcap.com/currencies/v-dimension/	0.839189
2218	UBU	https://coinmarketcap.com/currencies/ubu/	0.023158
2219	UMA	https://coinmarketcap.com/currencies/uma/	1.45
2220	QURAS	https://coinmarketcap.com/currencies/quras/	0.013748
2221	Tether Gold	https://coinmarketcap.com/currencies/tether-gold/	1683.33
2222	UltrAlpha	https://coinmarketcap.com/currencies/ultralpha/	0.068514
2223	InnovaMinex	https://coinmarketcap.com/currencies/innovaminex/	0.056698
2224	Marshal Lion Group Coin	https://coinmarketcap.com/currencies/marshal-lion-group-coin/	0.426499
2225	YouLive Coin	https://coinmarketcap.com/currencies/youlive-coin/	0.000157
2226	VEHICLE DATA ARTIFICIAL INTELLIGENCE PLATFORM	https://coinmarketcap.com/currencies/vehicle-data-artificial-intelligence-platform/	0.176436
2227	EMOGI Network	https://coinmarketcap.com/currencies/emogi-network/	0.000344
2228	TerraKRW	https://coinmarketcap.com/currencies/terra-krw/	0.000828
2229	Electronero	https://coinmarketcap.com/currencies/electronero/	0.000193
2230	DUO Network Token	https://coinmarketcap.com/currencies/duo-network-token/	0.007217
2231	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	0.713021
2232	BuySell	https://coinmarketcap.com/currencies/buysell/	4.80
2233	DWS	https://coinmarketcap.com/currencies/dws/	0.000088
2234	D Community	https://coinmarketcap.com/currencies/d-community/	0.000093
2235	ALP Coin	https://coinmarketcap.com/currencies/alp-coin/	0.260830
2236	HebeBlock	https://coinmarketcap.com/currencies/hebeblock/	0.004418
2237	1x Short Bitcoin Token	https://coinmarketcap.com/currencies/1x-short-bitcoin-token/	935.84
2238	Dexter G	https://coinmarketcap.com/currencies/dexter-g/	0.448878
2239	AtromG8	https://coinmarketcap.com/currencies/atromg8/	0.020328
2240	Axial Entertainment Digital Asset	https://coinmarketcap.com/currencies/axial-entertainment-digital-asset/	0.003351
2241	DARMA Cash	https://coinmarketcap.com/currencies/darma-cash/	0.151041
2242	Sylo	https://coinmarketcap.com/currencies/sylo/	0.004006
2243	BlockNoteX	https://coinmarketcap.com/currencies/blocknotex/	0.581846
2244	KEY	https://coinmarketcap.com/currencies/key/	0.000912
2245	Blockchain Quotations Index Token	https://coinmarketcap.com/currencies/blockchain-quotations-index-token/	0.007495
2246	Davion	https://coinmarketcap.com/currencies/davion/	0.544472
2247	Mogu	https://coinmarketcap.com/currencies/mogu/	0.049324
2248	Entherfound	https://coinmarketcap.com/currencies/entherfound/	0.912229
2249	Buxcoin	https://coinmarketcap.com/currencies/buxcoin/	0.937255
2250	Botton	https://coinmarketcap.com/currencies/botton/	0.926349
2251	Pledge Coin	https://coinmarketcap.com/currencies/pledge-coin/	0.000264
2252	Freight Trust & Clearing Network	https://coinmarketcap.com/currencies/freight-trust-clearing-network/	0.007073
2253	Hubi Token	https://coinmarketcap.com/currencies/hubi-token/	0.007485
2254	3x Long Tezos Token	https://coinmarketcap.com/currencies/3x-long-tezos-token/	1700.14
2255	Jack Token	https://coinmarketcap.com/currencies/jack-token/	0.066277
2256	LOA Protocol	https://coinmarketcap.com/currencies/loa-protocol/	0.022234
2257	iOWN Token	https://coinmarketcap.com/currencies/iown-token/	0.018820
2258	Maggie	https://coinmarketcap.com/currencies/maggie/	0.000162
2259	SPIN Protocol	https://coinmarketcap.com/currencies/spin-protocol/	0.001071
2260	Hinto	https://coinmarketcap.com/currencies/hinto/	0.292235
2261	1irstGold	https://coinmarketcap.com/currencies/1irstgold/	57.20
2262	Ultragate	https://coinmarketcap.com/currencies/ultragate/	0.003768
2263	Bitcloud Pro	https://coinmarketcap.com/currencies/bitcloud-pro/	0.001485
2264	Simone	https://coinmarketcap.com/currencies/simone/	298.94
2265	Cybereits	https://coinmarketcap.com/currencies/cybereits/	0.000825
2266	Ycash	https://coinmarketcap.com/currencies/ycash/	0.092733
2267	Hive Dollar	https://coinmarketcap.com/currencies/hive-dollar/	0.975950
2268	Paparazzi	https://coinmarketcap.com/currencies/paparazzi/	0.105736
2269	Agoras Tokens	https://coinmarketcap.com/currencies/agoras-tokens/	0.198568
2270	DEXA COIN	https://coinmarketcap.com/currencies/dexa-coin/	0.000022
2271	Davies	https://coinmarketcap.com/currencies/davies/	0.193152
2272	Affil Coin	https://coinmarketcap.com/currencies/affil-coin/	0.977765
2273	BitUP Token	https://coinmarketcap.com/currencies/bitup-token/	0.001351
2274	Perth Mint Gold Token	https://coinmarketcap.com/currencies/perth-mint-gold-token/	1698.95
2275	Joys Digital	https://coinmarketcap.com/currencies/joys-digital/	0.008667
2276	The Hustle App	https://coinmarketcap.com/currencies/the-hustle-app/	0.000796
2277	STK Coin	https://coinmarketcap.com/currencies/stk-coin/	0.020581
2278	Curio	https://coinmarketcap.com/currencies/curio/	0.443807
2279	Sudan Gold Coin	https://coinmarketcap.com/currencies/sudan-gold-coin/	0.061179
2280	AdsByWiFi	https://coinmarketcap.com/currencies/adsbywifi/	19.14
2281	THENODE	https://coinmarketcap.com/currencies/thenode/	0.229568
2282	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	0.007194
2283	Jinbi Token	https://coinmarketcap.com/currencies/jinbi-token/	108.30
2284	Treelion	https://coinmarketcap.com/currencies/treelion/	0.073946
2285	USDA	https://coinmarketcap.com/currencies/usda/	0.077324
2286	vSportCoin	https://coinmarketcap.com/currencies/vsportcoin/	0.001625
2287	BitKAM	https://coinmarketcap.com/currencies/bitkam/	0.001273
2288	Swapzilla	https://coinmarketcap.com/currencies/swapzilla/	1.37
2289	Minter Network	https://coinmarketcap.com/currencies/minter-network/	0.004403
2290	Tradeplus	https://coinmarketcap.com/currencies/tradeplus/	19.25
2291	Ubique Chain Of Things	https://coinmarketcap.com/currencies/ubique-chain-of-things/	0.018764
2292	MEX	https://coinmarketcap.com/currencies/mex/	0.000344
2293	BUMO	https://coinmarketcap.com/currencies/bumo/	0.004166
2294	BenePit Protocol	https://coinmarketcap.com/currencies/benepit-protocol/	0.000116
2295	Skillchain	https://coinmarketcap.com/currencies/skillchain/	0.026865
2296	ZelaaPayAE	https://coinmarketcap.com/currencies/zelaapayae/	0.062614
2297	Consentium	https://coinmarketcap.com/currencies/consentium/	0.058185
2298	Newsolution	https://coinmarketcap.com/currencies/newsolution/	0.005802
2299	Volume Network	https://coinmarketcap.com/currencies/volume-network/	0.002022
2300	Engine	https://coinmarketcap.com/currencies/engine/	0.000102
2301	DACC	https://coinmarketcap.com/currencies/dacc/	0.000020
2302	Bit Trust System	https://coinmarketcap.com/currencies/bit-trust-system/	0.014179
2303	HeartBout Pay	https://coinmarketcap.com/currencies/heartbout-pay/	0.003672
2304	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	0.000788
2305	WiBX	https://coinmarketcap.com/currencies/wibx/	0.001710
2306	Ethereum Message Search	https://coinmarketcap.com/currencies/ethereum-message-search/	2.24
2307	AK12	https://coinmarketcap.com/currencies/ak12/	1.44
2308	Ladder Network Token	https://coinmarketcap.com/currencies/ladder-network-token/	0.003237
2309	Globalvillage Ecosystem	https://coinmarketcap.com/currencies/globalvillage-ecosystem/	0.000161
2310	BeeKan	https://coinmarketcap.com/currencies/beekan/	0.000577
2311	Keep Network	https://coinmarketcap.com/currencies/keep-network/	0.339172
2312	DXdao	https://coinmarketcap.com/currencies/dxdao/	65.00
2313	En-Tan-Mo	https://coinmarketcap.com/currencies/en-tan-mo/	0.011300
2314	3x Short Tezos Token	https://coinmarketcap.com/currencies/3x-short-tezos-token/	2.97
2315	B91	https://coinmarketcap.com/currencies/b91/	0.023018
2316	Zuflo Coin	https://coinmarketcap.com/currencies/zuflo-coin/	0.001231
2317	ThingsOperatingSystem	https://coinmarketcap.com/currencies/thingsoperatingsystem/	0.001055
2318	Intelligent Investment Chain	https://coinmarketcap.com/currencies/intelligent-investment-chain/	0.000106
2319	Binance GBP Stable Coin	https://coinmarketcap.com/currencies/binance-gbp-stable-coin/	1.28
2320	Livepeer	https://coinmarketcap.com/currencies/livepeer/	2.23
2321	Global Reserve System	https://coinmarketcap.com/currencies/global-reserve-system/	12.10
2322	WowSecret	https://coinmarketcap.com/currencies/wowsecret/	0.001739
2323	Bluekey	https://coinmarketcap.com/currencies/bluekey/	0.000391
2324	DarkPay	https://coinmarketcap.com/currencies/darkpaycoin/	0.017392
2325	Commerce Data Connection	https://coinmarketcap.com/currencies/commerce-data-connection/	0.000116
2326	Korbot	https://coinmarketcap.com/currencies/korbot/	0.057781
2327	eosBLACK	https://coinmarketcap.com/currencies/eosblack/	0.000366
2328	LegalBlock	https://coinmarketcap.com/currencies/legalblock/	0.000400
2329	IOEX	https://coinmarketcap.com/currencies/ioex/	0.010295
2330	BITTO	https://coinmarketcap.com/currencies/bitto/	0.322676
2331	CITEX Token	https://coinmarketcap.com/currencies/citex-token/	0.006478
2332	Daikicoin	https://coinmarketcap.com/currencies/daikicoin/	0.008696
2333	Twinkle	https://coinmarketcap.com/currencies/twinkle/	0.000580
2334	Gric Coin	https://coinmarketcap.com/currencies/gric-coin/	0.025872
2335	MarcoPolo Protocol	https://coinmarketcap.com/currencies/marcopolo-protocol/	0.047987
2336	Golden Token	https://coinmarketcap.com/currencies/golden-token/	0.007479
2337	EduCoin	https://coinmarketcap.com/currencies/edu-coin/	0.000109
2338	NewsToken	https://coinmarketcap.com/currencies/newstoken/	0.000449
2339	Tchain	https://coinmarketcap.com/currencies/tchain/	0.001694
2340	MultiCoinCasino	https://coinmarketcap.com/currencies/multicoincasino/	0.009692
2341	weBloc	https://coinmarketcap.com/currencies/webloc/	0.000141
2342	CryptoBossCoin	https://coinmarketcap.com/currencies/cryptobosscoin/	0.011568
2343	ValueChain	https://coinmarketcap.com/currencies/valuechain/	0.001689
2344	London Football Exchange	https://coinmarketcap.com/currencies/london-football-exchange/	0.008183
2345	IBStoken	https://coinmarketcap.com/currencies/ibstoken/	0.019890
2346	LEVELG	https://coinmarketcap.com/currencies/levelg/	0.088969
2347	Esports Token	https://coinmarketcap.com/currencies/esports-token/	0.000344
2348	GSENetwork	https://coinmarketcap.com/currencies/gsenetwork/	0.000041
2349	Demeter Chain	https://coinmarketcap.com/currencies/demeter-chain/	0.000476
2350	PalletOne	https://coinmarketcap.com/currencies/palletone/	0.001906
2351	Tepleton	https://coinmarketcap.com/currencies/tepleton/	0.018008
2352	Vectorspace AI	https://coinmarketcap.com/currencies/vectorspace-ai/	0.155662
2353	Kratscoin	https://coinmarketcap.com/currencies/kratscoin/	0.485301
2354	WEBN token	https://coinmarketcap.com/currencies/webn-token/	0.000002
2355	PointPay	https://coinmarketcap.com/currencies/pointpay/	0.104258
2356	StellarPayGlobal	https://coinmarketcap.com/currencies/stellarpayglobal/	0.313724
2357	DeepCloud AI	https://coinmarketcap.com/currencies/deepcloud-ai/	0.000407
2358	CARAT	https://coinmarketcap.com/currencies/carat/	0.722959
2359	Bitsten Token	https://coinmarketcap.com/currencies/bitsten-token/	0.004445
2360	TeeCoin	https://coinmarketcap.com/currencies/teecoin/	0.000700
2361	Bitpanda Ecosystem Token	https://coinmarketcap.com/currencies/bitpanda-ecosystem-token/	0.093458
2362	MORELO	https://coinmarketcap.com/currencies/morelo/	0.004023
2363	MSD	https://coinmarketcap.com/currencies/msd/	0.005701
2364	Altbet	https://coinmarketcap.com/currencies/altbet/	0.022311
2365	VENJOCOIN	https://coinmarketcap.com/currencies/venjocoin/	3.02
2366	Sierracoin	https://coinmarketcap.com/currencies/sierracoin/	0.017567
2367	CaluraCoin	https://coinmarketcap.com/currencies/caluracoin/	0.010262
2368	Torex	https://coinmarketcap.com/currencies/torex/	0.014477
2369	Mochimo	https://coinmarketcap.com/currencies/mochimo/	0.047062
2370	Bitgrin	https://coinmarketcap.com/currencies/bitgrin/	0.004044
2371	HackenAI	https://coinmarketcap.com/currencies/hackenai/	0.007233
2372	Emrals	https://coinmarketcap.com/currencies/emrals/	0.013815
2373	Asian-African Capital Chain	https://coinmarketcap.com/currencies/asian-african-capital-chain/	0.058787
2374	Kahsh	https://coinmarketcap.com/currencies/kahsh/	0.038868
2375	Bitcoffeen	https://coinmarketcap.com/currencies/bitcoffeen/	1.34
2376	1Million Token	https://coinmarketcap.com/currencies/1million-token/	0.123390
2377	Blue Baikal	https://coinmarketcap.com/currencies/blue-baikal/	0.000008
2378	Bincentive	https://coinmarketcap.com/currencies/bincentive/	0.009550
2379	IDK	https://coinmarketcap.com/currencies/idk/	0.069798
2380	Sapphire	https://coinmarketcap.com/currencies/sapphire/	0.005989
2381	CelCoin	https://coinmarketcap.com/currencies/celcoin/	0.000589
2382	Vether	https://coinmarketcap.com/currencies/vether/	2.75
2383	Wisdom Chain	https://coinmarketcap.com/currencies/wisdom-chain/	0.112458
2384	Bitcoin BEP2	https://coinmarketcap.com/currencies/bitcoin-bep2/	9643.17
2385	Big Bang Game Coin	https://coinmarketcap.com/currencies/big-bang-game-coin/	0.000058
2386	FuturoCoin	https://coinmarketcap.com/currencies/futurocoin/	1.17
2387	SatoExchange Token	https://coinmarketcap.com/currencies/satoexchange-token/	0.001323
2388	Social Lending Token	https://coinmarketcap.com/currencies/social-lending-token/	0.000818
2389	Bali Coin	https://coinmarketcap.com/currencies/bali-coin/	0.020871
2390	1x Long Bitcoin Implied Volatility Token	https://coinmarketcap.com/currencies/1x-long-bitcoin-implied-volatility-token/	7541.69
2391	Vanywhere	https://coinmarketcap.com/currencies/vanywhere/	0.001546
2392	VeraOne	https://coinmarketcap.com/currencies/veraone/	54.73
2393	Krypton Galaxy Coin	https://coinmarketcap.com/currencies/krypton-galaxy-coin/	0.000299
2394	WHEN Token	https://coinmarketcap.com/currencies/when-token/	0.002338
2395	MGC Token	https://coinmarketcap.com/currencies/mgc-token/	0.001571
2396	TranslateMe Network Token	https://coinmarketcap.com/currencies/translateme-network-token/	0.001009
2397	Promotion Coin	https://coinmarketcap.com/currencies/promotion-coin/	0.000054
2398	ZCore Token	https://coinmarketcap.com/currencies/zcore-token/	0.337839
2399	OTCBTC Token	https://coinmarketcap.com/currencies/otcbtc-token/	0.002320
2400	Future1coin	https://coinmarketcap.com/currencies/future1coin/	0.001113
2401	GoalTime N	https://coinmarketcap.com/currencies/goaltime-n/	0.000139
2402	Beer Money	https://coinmarketcap.com/currencies/beer-money/	0.006137
2403	CryptoBharatCoin	https://coinmarketcap.com/currencies/cryptobharatcoin/	0.284850
2404	Blur	https://coinmarketcap.com/currencies/blur/	0.023093
2405	Volt	https://coinmarketcap.com/currencies/volt/	0.000049
2406	IOU	https://coinmarketcap.com/currencies/iou/	0.013319
2407	Infinity Esaham	https://coinmarketcap.com/currencies/infinity-esaham/	1.50
2408	Mavro	https://coinmarketcap.com/currencies/mavro/	2.93
2409	SKINCHAIN	https://coinmarketcap.com/currencies/skinchain/	0.000023
2410	ARMTOKEN	https://coinmarketcap.com/currencies/armtoken/	0.009151
2411	SOMESING	https://coinmarketcap.com/currencies/somesing/	0.001786
2412	NSS Coin	https://coinmarketcap.com/currencies/nss-coin/	0.012036
2413	Moozicore	https://coinmarketcap.com/currencies/moozicore/	0.000060
2414	Receive Access Ecosystem	https://coinmarketcap.com/currencies/receive-access-ecosystem/	0.321381
2415	Xenon	https://coinmarketcap.com/currencies/xenon-xen/	0.000151
2416	DMme	https://coinmarketcap.com/currencies/dmme/	0.006013
2417	Alchemy	https://coinmarketcap.com/currencies/alchemy/	0.926067
2418	Pixie Coin	https://coinmarketcap.com/currencies/pixie-coin/	0.000591
2419	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	0.000592
2420	BLOCKIDCOIN	https://coinmarketcap.com/currencies/blockidcoin/	44.45
2421	VOMER	https://coinmarketcap.com/currencies/vomer/	0.409398
2422	DOCH COIN	https://coinmarketcap.com/currencies/doch-coin/	0.064642
2423	Global Game Coin	https://coinmarketcap.com/currencies/global-game-coin/	2.98
2424	SappChain	https://coinmarketcap.com/currencies/sappchain/	0.000041
2425	SINERGIA	https://coinmarketcap.com/currencies/sinergia/	0.100403
2426	HUNT	https://coinmarketcap.com/currencies/hunt/	0.002173
2427	Experience Token	https://coinmarketcap.com/currencies/experience-token/	0.000012
2428	Sombe	https://coinmarketcap.com/currencies/sombe/	0.001762
2429	Coin Controller Cash	https://coinmarketcap.com/currencies/coin-controller-cash/	0.000221
2430	Simple Software Solutions	https://coinmarketcap.com/currencies/simple-software-solutions/	0.037877
2431	Wownero	https://coinmarketcap.com/currencies/wownero/	0.003550
2432	Charg Coin	https://coinmarketcap.com/currencies/charg-coin/	0.034302
2433	The global index chain	https://coinmarketcap.com/currencies/the-global-index-chain/	0.001593
2434	EXOR	https://coinmarketcap.com/currencies/exor/	0.002995
2435	SkyMap	https://coinmarketcap.com/currencies/skymap/	0.005011
2436	Crex Token	https://coinmarketcap.com/currencies/crex-token/	4.16
2437	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	0.056122
2438	StarChain	https://coinmarketcap.com/currencies/starchain/	0.000038
2439	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	0.001932
2440	BuckHathCoin	https://coinmarketcap.com/currencies/buck-hath-coin/	0.131656
2519	HGH Token	https://coinmarketcap.com/currencies/hgh-token/	0.000007
2441	Infinity Economics	https://coinmarketcap.com/currencies/infinity-economics/	0.001405
2442	xCrypt Token	https://coinmarketcap.com/currencies/xcrypt-token/	0.000097
2443	SoPay	https://coinmarketcap.com/currencies/sopay/	0.000057
2444	ScPrime	https://coinmarketcap.com/currencies/scprime/	0.011555
2445	SOLBIT	https://coinmarketcap.com/currencies/solbit/	0.000924
2446	Becaz	https://coinmarketcap.com/currencies/becaz/	0.628401
2447	Game Stars	https://coinmarketcap.com/currencies/game-stars/	0.000010
2448	CMITCOIN	https://coinmarketcap.com/currencies/cmitcoin/	0.000009
2449	XDAG	https://coinmarketcap.com/currencies/xdag/	0.001605
2450	BitcoinV	https://coinmarketcap.com/currencies/bitcoinv/	0.005490
2451	Boltt Coin	https://coinmarketcap.com/currencies/boltt-coin/	0.017285
2452	BTCSHORT	https://coinmarketcap.com/currencies/btcshort/	7351.48
2453	CENTERCOIN	https://coinmarketcap.com/currencies/centercoin/	0.000193
2454	RAKSUR	https://coinmarketcap.com/currencies/raksur/	0.000765
2455	AfroDex	https://coinmarketcap.com/currencies/afrodex/	7.24e-8
2456	TILWIKI	https://coinmarketcap.com/currencies/tilwiki/	1.45
2457	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	0.057031
2458	LemoChain	https://coinmarketcap.com/currencies/lemochain/	0.001898
2459	Defi	https://coinmarketcap.com/currencies/defi/	0.058102
2460	GazeCoin	https://coinmarketcap.com/currencies/gazecoin/	0.011208
2461	Bitcurate	https://coinmarketcap.com/currencies/bitcurate/	0.019310
2462	SovranoCoin	https://coinmarketcap.com/currencies/sovranocoin/	0.293660
2463	QUSD	https://coinmarketcap.com/currencies/qusd/	0.010833
2464	Odyssey	https://coinmarketcap.com/currencies/odyssey-ody/	0.011236
2465	B ONE PAYMENT	https://coinmarketcap.com/currencies/b-one-payment/	0.002540
2466	Bitcoin File	https://coinmarketcap.com/currencies/bitcoin-file/	0.000793
2467	Aunite	https://coinmarketcap.com/currencies/aunite/	0.013100
2468	Chainpay	https://coinmarketcap.com/currencies/chainpay/	1.03
2469	Emanate	https://coinmarketcap.com/currencies/emanate/	0.008599
2470	Cashhand	https://coinmarketcap.com/currencies/cashhand/	0.000483
2471	Aerotoken	https://coinmarketcap.com/currencies/aerotoken/	0.068461
2472	Historia	https://coinmarketcap.com/currencies/historia/	0.001739
2473	Tratok	https://coinmarketcap.com/currencies/tratok/	0.002795
2474	Kappi Network	https://coinmarketcap.com/currencies/kappi-network/	0.000002
2475	LOLTOKEN	https://coinmarketcap.com/currencies/loltoken/	0.000722
2476	Tutor's Diary	https://coinmarketcap.com/currencies/tutors-diary/	0.004928
2477	Uranus	https://coinmarketcap.com/currencies/uranus/	0.000554
2478	TerraNova	https://coinmarketcap.com/currencies/terranova/	0.007247
2479	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	0.002416
2480	MyTVchain	https://coinmarketcap.com/currencies/mytvchain/	0.002825
2481	Wolfs Group	https://coinmarketcap.com/currencies/wolfs-group/	0.121386
2482	Kryptofranc	https://coinmarketcap.com/currencies/kryptofranc/	0.000009
2483	MACH Project	https://coinmarketcap.com/currencies/mach-project/	0.014984
2484	Maya Preferred 223	https://coinmarketcap.com/currencies/maya-preferred-223/	56.84
2485	Universal Protocol Token	https://coinmarketcap.com/currencies/universal-protocol-token/	0.004155
2486	StockChain	https://coinmarketcap.com/currencies/stockchain/	0.000116
2487	Endorsit	https://coinmarketcap.com/currencies/endorsit/	0.000003
2488	Harcomia	https://coinmarketcap.com/currencies/harcomia/	0.523800
2489	Influence Chain	https://coinmarketcap.com/currencies/influence-chain/	0.000121
2490	EncryptoTel [ETH]	https://coinmarketcap.com/currencies/encryptotel-eth/	0.003768
2491	PocketNode	https://coinmarketcap.com/currencies/pocketnode/	0.000021
2492	Opennity	https://coinmarketcap.com/currencies/opennity/	0.000047
2493	Sparkster	https://coinmarketcap.com/currencies/sparkster/	0.000999
2494	GermanCoin	https://coinmarketcap.com/currencies/germancoin/	0.000178
2495	Litecoin SV	https://coinmarketcap.com/currencies/litecoin-sv/	0.212573
2496	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	0.002995
2497	SEER	https://coinmarketcap.com/currencies/seer/	0.000200
2498	SuperEdge	https://coinmarketcap.com/currencies/superedge/	0.000018
2499	Blockmason Link	https://coinmarketcap.com/currencies/blockmason-link/	0.000054
2500	NairaX	https://coinmarketcap.com/currencies/nairax/	0.003189
2501	Inverse Bitcoin Volatility Token	https://coinmarketcap.com/currencies/inverse-bitcoin-volatility-token/	3237.58
2502	Rally	https://coinmarketcap.com/currencies/rally/	0.000474
2503	United Bull Traders	https://coinmarketcap.com/currencies/united-bull-traders/	0.018097
2504	MDtoken	https://coinmarketcap.com/currencies/mdtoken/	0.001854
2505	Hanacoin	https://coinmarketcap.com/currencies/hanacoin/	0.000483
2506	MoneroV	https://coinmarketcap.com/currencies/monero-v/	0.001546
2507	DSLA Protocol	https://coinmarketcap.com/currencies/dsla-protocol/	0.000051
2508	cUSD Currency	https://coinmarketcap.com/currencies/cusd-currency/	0.002370
2509	Colletrix	https://coinmarketcap.com/currencies/colletrix/	0.000002
2510	SaveNode	https://coinmarketcap.com/currencies/savenode/	0.000193
2511	Custody Token	https://coinmarketcap.com/currencies/custody-token/	0.002477
2512	ArdCoin	https://coinmarketcap.com/currencies/ardcoin/	0.000483
2513	One DEX	https://coinmarketcap.com/currencies/one-dex/	1.93e-7
2514	Schilling-Coin	https://coinmarketcap.com/currencies/schilling-coin/	0.001159
2515	0cash	https://coinmarketcap.com/currencies/0cash/	0.000773
2516	CK USD	https://coinmarketcap.com/currencies/ckusd/	0.195698
2517	NOVA	https://coinmarketcap.com/currencies/nova/	0.000014
2518	Asac Coin	https://coinmarketcap.com/currencies/asac-coin/	0.000543
2520	Zerobank	https://coinmarketcap.com/currencies/zerobank/	0.006220
2521	HondaisCoin	https://coinmarketcap.com/currencies/hondaiscoin/	9.66e-7
2522	MediBit	https://coinmarketcap.com/currencies/medibit/	0.000001
2523	Pyrrhos Gold	https://coinmarketcap.com/currencies/pyrrhos-gold/	0.000284
2524	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	0.001488
2525	Secure Cash	https://coinmarketcap.com/currencies/secure-cash/	0.134211
2526	Mega Lottery Services Global	https://coinmarketcap.com/currencies/mega-lottery-services-global/	0.027873
2527	ASYAGRO	https://coinmarketcap.com/currencies/asyagro/	0.026546
2528	KingXChain	https://coinmarketcap.com/currencies/kingxchain/	0.000002
2529	MEETtoken	https://coinmarketcap.com/currencies/meettoken/	0.030437
2530	YUKI	https://coinmarketcap.com/currencies/yuki/	0.000002
2531	Smartup	https://coinmarketcap.com/currencies/smartup/	0.000025
2532	Tronipay	https://coinmarketcap.com/currencies/tronipay/	0.000427
2533	Stellar Gold	https://coinmarketcap.com/currencies/stellar-gold/	0.000898
2534	Lukiu	https://coinmarketcap.com/currencies/lukiu/	0.000158
2535	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	0.000230
2536	Dragon Token	https://coinmarketcap.com/currencies/dragon-token/	1.13
2537	SuperSkynet	https://coinmarketcap.com/currencies/superskynet/	0.000014
2538	Xtock	https://coinmarketcap.com/currencies/xtock/	0.000150
2539	Litbinex Coin	https://coinmarketcap.com/currencies/litbinex-coin/	0.000397
2540	ROMToken	https://coinmarketcap.com/currencies/romtoken/	0.000008
2541	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	0.000001
2542	PEPS Coin	https://coinmarketcap.com/currencies/peps-coin/	0.001155
2543	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	0.023190
2544	Valuto	https://coinmarketcap.com/currencies/valuto/	0.000193
2545	Global X Change Token	https://coinmarketcap.com/currencies/global-x-change-token/	0.095658
2546	ORS Group	https://coinmarketcap.com/currencies/ors-group/	0.020000
2547	Litecash	https://coinmarketcap.com/currencies/litecash/	0.000097
2548	PATHHIVE	https://coinmarketcap.com/currencies/phv/	0.005548
2549	Ixinium	https://coinmarketcap.com/currencies/ixinium/	0.282759
2550	1AI Token	https://coinmarketcap.com/currencies/1ai-token/	0.000097
2551	QPay	https://coinmarketcap.com/currencies/qpay/	0.000007
2552	PlusOneCoin	https://coinmarketcap.com/currencies/plusonecoin/	0.029181
2553	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	0.000097
2554	Oath Protocol	https://coinmarketcap.com/currencies/oath-protocol/	0.000008
2555	Bitcoin & Company Network	https://coinmarketcap.com/currencies/bitcoin-and-company-network/	0.000010
2556	Wiki Token	https://coinmarketcap.com/currencies/wiki-token/	0.449689
2557	Apple Network	https://coinmarketcap.com/currencies/apple-network/	0.000007
2558	Usechain Token	https://coinmarketcap.com/currencies/usechain-token/	0.000133
2559	Kemacoin	https://coinmarketcap.com/currencies/kemacoin/	0.000609
2560	Versess Coin	https://coinmarketcap.com/currencies/versess-coin/	16.50
2561	Quotient	https://coinmarketcap.com/currencies/quotient/	0.000191
2562	Bubble	https://coinmarketcap.com/currencies/bubble/	0.015038
2563	Axiom	https://coinmarketcap.com/currencies/axiom/	0.000393
2564	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	0.051410
2565	Francs	https://coinmarketcap.com/currencies/francs/	0.001434
2566	Aces	https://coinmarketcap.com/currencies/aces/	0.000124
2567	PROUD Money	https://coinmarketcap.com/currencies/proud-money/	0.001440
2568	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	0.000194
2569	EmberCoin	https://coinmarketcap.com/currencies/embercoin/	3.19e-8
2570	Wink	https://coinmarketcap.com/currencies/wink/	0.000097
2571	Moving Cloud Coin	https://coinmarketcap.com/currencies/moving-cloud-coin/	0.000191
2572	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	0.000783
2573	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	0.000096
2574	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	0.213152
2575	Qube	https://coinmarketcap.com/currencies/qube/	0.000078
2576	Read	https://coinmarketcap.com/currencies/read/	0.000990
2577	Animation Vision Cash	https://coinmarketcap.com/currencies/animation-vision-cash/	0.000189
2578	Lendroid Support Token	https://coinmarketcap.com/currencies/lendroid-support-token/	0.000287
2579	SalPay	https://coinmarketcap.com/currencies/salpay/	0.001537
2580	PlayCoin [QRC20]	https://coinmarketcap.com/currencies/playcoin/	0.002814
2581	CHEX	https://coinmarketcap.com/currencies/chex/	0.001205
2582	IOV BlockChain	https://coinmarketcap.com/currencies/iov-blockchain/	0.000137
2583	XTRD	https://coinmarketcap.com/currencies/xtrd/	0.000414
2584	NAM COIN	https://coinmarketcap.com/currencies/nam-coin/	0.000017
2585	CEDEX Coin	https://coinmarketcap.com/currencies/cedex-coin/	0.001879
2586	Obitan Chain	https://coinmarketcap.com/currencies/obitan-chain/	0.000041
2587	Hybrid Block	https://coinmarketcap.com/currencies/hybrid-block/	0.001147
2588	RRCoin	https://coinmarketcap.com/currencies/rrcoin/	0.000036
2589	Centaure	https://coinmarketcap.com/currencies/centaure/	0.000090
2590	MobilinkToken	https://coinmarketcap.com/currencies/mobilinktoken/	0.003375
2591	TCOIN	https://coinmarketcap.com/currencies/tcoin/	0.002396
2592	CapdaxToken	https://coinmarketcap.com/currencies/capdaxtoken/	0.004029
2593	Bgogo Token	https://coinmarketcap.com/currencies/bgogo-token/	0.000433
2594	TOKOK	https://coinmarketcap.com/currencies/tokok/	0.001863
2595	M2O	https://coinmarketcap.com/currencies/m2o/	0.000220
2596	BiNGO.Fun	https://coinmarketcap.com/currencies/bingo-fun/	0.000024
2597	RoboCalls	https://coinmarketcap.com/currencies/robocalls/	0.000027
2598	OOOBTC TOKEN	https://coinmarketcap.com/currencies/ooobtc-token/	0.001696
2599	HUDDL	https://coinmarketcap.com/currencies/huddl/	0.002367
2600	UTEMIS	https://coinmarketcap.com/currencies/utemis/	0.000225
2601	BIZKEY	https://coinmarketcap.com/currencies/bizkey/	0.000010
2602	bitCEO	https://coinmarketcap.com/currencies/bitceo/	0.049357
2603	Atlas Token	https://coinmarketcap.com/currencies/atlas-token/	0.000845
2604	Muzika	https://coinmarketcap.com/currencies/muzika/	0.002713
2605	Lucky Block Network	https://coinmarketcap.com/currencies/lucky-block-network/	0.013028
2606	LevelApp Token	https://coinmarketcap.com/currencies/levelapp-token/	0.000002
2607	Alphacon	https://coinmarketcap.com/currencies/alphacon/	0.000274
2608	SpectreSecurityCoin	https://coinmarketcap.com/currencies/spectre-security-coin/	0.000381
2609	7Eleven	https://coinmarketcap.com/currencies/7eleven/	3.66e-8
2610	VENA	https://coinmarketcap.com/currencies/vena/	0.000992
2611	Voltz	https://coinmarketcap.com/currencies/voltz/	0.004056
2612	LINK	https://coinmarketcap.com/currencies/link/	11.03
2613	City Coin	https://coinmarketcap.com/currencies/city-coin/	0.049373
2614	VERA	https://coinmarketcap.com/currencies/vera/	0.000098
2615	Ethlyte Crypto	https://coinmarketcap.com/currencies/ethlyte-crypto/	0.034326
2616	Creatanium	https://coinmarketcap.com/currencies/creatanium/	1.01
2617	QURA GLOBAL	https://coinmarketcap.com/currencies/qura-global/	0.000002
2618	FLEX	https://coinmarketcap.com/currencies/flex/	0.199188
2619	Unochain	https://coinmarketcap.com/currencies/unochain/	8.43e-7
2620	CitiOs	https://coinmarketcap.com/currencies/citios/	3.30
2621	Instantily	https://coinmarketcap.com/currencies/instantily/	0.002680
2622	Five Star Coin	https://coinmarketcap.com/currencies/five-star-coin/	0.001602
2623	ALA	https://coinmarketcap.com/currencies/ala/	0.000002
2624	PYRO Network (TRON)	https://coinmarketcap.com/currencies/pyro-network-tron/	0.000149
2625	Latamcash	https://coinmarketcap.com/currencies/latamcash/	0.075431
2626	EarnBet	https://coinmarketcap.com/currencies/earnbet/	0.031026
2627	Content and AD Network	https://coinmarketcap.com/currencies/content-and-ad-network/	0.000003
2628	LightChain	https://coinmarketcap.com/currencies/lightchain/	0.000001
2629	Superior Coin	https://coinmarketcap.com/currencies/superior-coin/	0.000071
2630	WeToken	https://coinmarketcap.com/currencies/wetoken/	0.000193
2631	FundToken	https://coinmarketcap.com/currencies/fundtoken/	0.000489
2632	DIPNET	https://coinmarketcap.com/currencies/dipnet/	0.000546
2633	BingoCoin	https://coinmarketcap.com/currencies/bingocoin/	0.001315
2634	CariNet	https://coinmarketcap.com/currencies/carinet/	0.001821
2635	USDCoin	https://coinmarketcap.com/currencies/usdcoin/	20.84
2636	COINBIG	https://coinmarketcap.com/currencies/coinbig/	0.002632
2637	Oculor	https://coinmarketcap.com/currencies/oculor/	0.000009
2638	BAWnetwork	https://coinmarketcap.com/currencies/bawnetwork/	0.000001
2639	GoMoney	https://coinmarketcap.com/currencies/gomoney/	0.001846
2640	Blacknet	https://coinmarketcap.com/currencies/blacknet/	0.001235
2641	Filenet	https://coinmarketcap.com/currencies/filenet/	0.316492
2642	Know Your Developer	https://coinmarketcap.com/currencies/know-your-developer/	0.003004
2643	Benscoin	https://coinmarketcap.com/currencies/benscoin/	18.99
2644	Compound Dai	https://coinmarketcap.com/currencies/compound-dai/	0.021532
2645	Zelerius	https://coinmarketcap.com/currencies/zelerius/	0.000094
2646	Ethash Miner	https://coinmarketcap.com/currencies/ethash-miner/	0.021288
2647	Scopuly Coin	https://coinmarketcap.com/currencies/scopuly-coin/	0.018558
2648	eToro Pound Sterling	https://coinmarketcap.com/currencies/etoro-pound-sterling/	?
2649	eToro New Zealand Dollar	https://coinmarketcap.com/currencies/etoro-new-zealand-dollar/	?
2650	eToro Australian Dollar	https://coinmarketcap.com/currencies/etoro-australian-dollar/	?
2651	eToro Euro	https://coinmarketcap.com/currencies/etoro-euro/	?
2652	Egas	https://coinmarketcap.com/currencies/egas/	0.000311
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 2652, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

