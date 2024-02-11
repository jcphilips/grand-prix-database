--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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
-- Name: drivers; Type: TABLE; Schema: public; Owner: jarrodphilips
--

CREATE TABLE public.drivers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    nationality character varying(100) NOT NULL
);


ALTER TABLE public.drivers OWNER TO jarrodphilips;

--
-- Name: race_results; Type: TABLE; Schema: public; Owner: jarrodphilips
--

CREATE TABLE public.race_results (
    race_id integer,
    driver_id integer,
    team_id integer,
    points integer,
    race_position integer
);


ALTER TABLE public.race_results OWNER TO jarrodphilips;

--
-- Name: races; Type: TABLE; Schema: public; Owner: jarrodphilips
--

CREATE TABLE public.races (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    location character varying(100) NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.races OWNER TO jarrodphilips;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: jarrodphilips
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    nationality character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO jarrodphilips;

--
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: jarrodphilips
--

COPY public.drivers (id, name, nationality) FROM stdin;
1	Adolfo Schwelm Cruz	Argentina
2	Alberto Crespo	Argentina
3	Alberto Rodriguez Larreta	Argentina
4	Alfredo Pián	Argentina
5	Carlos Menditeguy	Argentina
6	Carlos Reutemann	Argentina
7	Clemar Bucci	Argentina
8	Esteban Tuero	Argentina
9	Gastón Mazzacane	Argentina
10	Jesús Iglesias	Argentina
11	Jorge Daponte	Argentina
12	José Froilán González	Argentina
13	Juan Manuel Bordeu	Argentina
14	Juan Manuel Fangio	Argentina
15	Miguel Ángel Guerra	Argentina
16	Nasif Estéfano	Argentina
17	Norberto Fontana	Argentina
18	Onofre Marimón	Argentina
19	Oscar Alfredo Gálvez	Argentina
20	Oscar Larrauri	Argentina
21	Pablo Birger	Argentina
22	Ricardo Zunino	Argentina
23	Roberto Bonomi	Argentina
24	Roberto Mieres	Argentina
25	Alejandro de Tomaso	Argentina
26	Alan Jones	Australia
27	Brian McGuire	Australia
28	Daniel Ricciardo	Australia
29	David Brabham	Australia
30	David Walker	Australia
31	Frank Gardner	Australia
32	Gary Brabham	Australia
33	Jack Brabham	Australia
34	Ken Kavanagh	Australia
35	Larry Perkins	Australia
36	Mark Webber	Australia
37	Oscar Piastri	Australia
38	Paul England	Australia
39	Paul Hawkins	Australia
40	Tim Schenken	Australia
41	Tony Gaze	Australia
42	Vern Schuppan	Australia
43	Warwick Brown	Australia
44	Alexander Wurz	Austria
45	Christian Klien	Austria
46	Dieter Quester	Austria
47	Gerhard Berger	Austria
48	Hans Binder	Austria
49	Harald Ertl	Austria
50	Helmut Marko	Austria
51	Helmuth Koinigg	Austria
52	Jo Gartner	Austria
53	Jochen Rindt	Austria
54	Karl Oppitzhauser	Austria
55	Karl Wendlinger	Austria
56	Niki Lauda	Austria
57	Otto Stuppacher	Austria
58	Patrick Friesacher	Austria
59	Roland Ratzenberger	Austria
60	Alain de Changy	Belgium
61	André Milhoux	Belgium
62	André Pilette	Belgium
63	Arthur Legat	Belgium
64	Bernard de Dryver	Belgium
65	Bertrand Gachot	Belgium
66	Charles de Tornaco	Belgium
67	Christian Goethals	Belgium
68	Eric van de Poele	Belgium
69	Georges Berger	Belgium
70	Jacky Ickx	Belgium
71	Jacques Swaters	Belgium
72	Jérôme d'Ambrosio	Belgium
73	Johnny Claes	Belgium
74	Lucien Bianchi	Belgium
75	Olivier Gendebien	Belgium
76	Patrick Nève	Belgium
77	Paul Frère	Belgium
78	Philippe Adams	Belgium
79	Roger Laurent	Belgium
80	Stoffel Vandoorne	Belgium
81	Teddy Pilette	Belgium
82	Thierry Boutsen	Belgium
83	Willy Mairesse	Belgium
84	Alex Ribeiro	Brazil
85	Antônio Pizzonia	Brazil
86	Ayrton Senna	Brazil
87	Bruno Senna	Brazil
88	Carlos Pace	Brazil
89	Chico Landi	Brazil
90	Chico Serra	Brazil
91	Christian Fittipaldi	Brazil
92	Cristiano da Matta	Brazil
93	Emerson Fittipaldi	Brazil
94	Enrique Bernoldi	Brazil
95	Felipe Massa	Brazil
96	Felipe Nasr	Brazil
97	Fritz d'Orey	Brazil
98	Gino Bianco	Brazil
99	Hermano da Silva Ramos	Brazil
100	Ingo Hoffmann	Brazil
101	Lucas di Grassi	Brazil
102	Luciano Burti	Brazil
103	Luiz Bueno	Brazil
104	Maurício Gugelmin	Brazil
105	Nelson Piquet Jr.	Brazil
106	Nelson Piquet	Brazil
107	Pedro Diniz	Brazil
108	Pietro Fittipaldi	Brazil
109	Raul Boesel	Brazil
110	Ricardo Rosset	Brazil
111	Ricardo Zonta	Brazil
112	Roberto Moreno	Brazil
113	Rubens Barrichello	Brazil
114	Tarso Marques	Brazil
115	Wilson Fittipaldi	Brazil
116	Al Pease	Canada
117	Allen Berg	Canada
118	Bill Brack	Canada
119	Eppie Wietzes	Canada
120	Ernie de Vos	Canada
121	George Eaton	Canada
122	Gilles Villeneuve	Canada
123	Jacques Villeneuve Sr.	Canada
124	Jacques Villeneuve	Canada
125	John Cannon	Canada
126	John Cordts	Canada
127	Lance Stroll	Canada
128	Nicholas Latifi	Canada
129	Peter Broeker	Canada
130	Peter Ryan	Canada
131	Eliseo Salazar	Chile
132	Zhou Guanyu	China
133	Juan Pablo Montoya	Colombia
134	Ricardo Londoño	Colombia
135	Roberto Guerrero	Colombia
136	Tomáš Enge	Czech Republic
137	Jac Nellemann	Denmark
138	Jan Magnussen	Denmark
139	Kevin Magnussen	Denmark
140	Nicolas Kiesa	Denmark
141	Tom Belsø	Denmark
142	Ernst Klodwig	East Germany
143	Rudolf Krause	East Germany
144	Theo Fitzau	East Germany
145	Edgar Barth	East Germany, West Germany
146	Heikki Kovalainen	Finland
147	JJ Lehto	Finland
148	Keke Rosberg	Finland
149	Kimi Räikkönen	Finland
150	Leo Kinnunen	Finland
151	Mika Häkkinen	Finland
152	Mika Salo	Finland
153	Mikko Kozarowitzky	Finland
154	Valtteri Bottas	Finland
155	Alain Prost	France
156	Aldo Gordini	France
157	André Guelfi	France
158	André Simon	France
159	Bernard Collomb	France
160	Charles Pic	France
161	Charles Pozzi	France
162	Didier Pironi	France
163	Élie Bayol	France
164	Éric Bernard	France
165	Érik Comas	France
166	Esteban Ocon	France
167	Eugène Chaboud	France
168	Eugène Martin	France
169	Franck Lagorce	France
170	Franck Montagny	France
171	François Cevert	France
172	François Hesnault	France
173	François Mazet	France
174	François Migault	France
175	François Picard	France
176	Georges Grignard	France
177	Gérard Larrousse	France
178	Guy Ligier	France
179	Guy Mairesse	France
180	Henri Louveau	France
181	Henri Pescarolo	France
182	Jacques Laffite	France
183	Jacques Pollet	France
184	Jean Alesi	France
185	Jean Behra	France
186	Jean Lucas	France
187	Jean Lucienbonnet	France
188	Jean-Christophe Boullion	France
189	Jean-Éric Vergne	France
190	Jean-Louis Schlesser	France
191	Jean-Marc Gounon	France
192	Jean-Pierre Beltoise	France
193	Jean-Pierre Jabouille	France
194	Jean-Pierre Jarier	France
195	Jo Schlesser	France
196	Johnny Servoz-Gavin	France
197	José Dolhem	France
198	Jules Bianchi	France
199	Louis Rosier	France
200	Marcel Balsa	France
201	Maurice Trintignant	France
202	Max Jean	France
203	Michel Leclère	France
204	Mike Sparken	France
205	Olivier Grouillard	France
206	Olivier Panis	France
207	Pascal Fabre	France
208	Patrick Depailler	France
209	Patrick Gaillard	France
210	Patrick Tambay	France
211	Paul Belmondo	France
212	Philippe Alliot	France
213	Philippe Étancelin	France
214	Philippe Streiff	France
215	Pierre Gasly	France
216	Pierre Levegh	France
217	Pierre-Henri Raphanel	France
218	Raymond Sommer	France
219	René Arnoux	France
220	Robert Manzon	France
221	Roger Loyer	France
222	Romain Grosjean	France
223	Sébastien Bourdais	France
224	Stéphane Sarrazin	France
225	Yannick Dalmas	France
226	Yves Giraud-Cabantous	France
227	Adrian Sutil	Germany
228	André Lotterer	Germany
229	Heinz-Harald Frentzen	Germany
230	Markus Winkelhock	Germany
231	Michael Bartels	Germany
232	Michael Schumacher	Germany
233	Mick Schumacher	Germany
234	Nick Heidfeld	Germany
235	Nico Hülkenberg	Germany
236	Nico Rosberg	Germany
237	Pascal Wehrlein	Germany
238	Ralf Schumacher	Germany
239	Sebastian Vettel	Germany
240	Timo Glock	Germany
241	Zsolt Baumgartner	Hungary
242	Karun Chandhok	India
243	Narain Karthikeyan	India
244	Rio Haryanto	Indonesia
245	David Kennedy	Ireland
246	Derek Daly	Ireland
247	Joe Kelly	Ireland
248	Ralph Firman	Ireland
249	Tommy Byrne	Ireland
250	Alberto Ascari	Italy
251	Alberto Colombo	Italy
252	Alessandro Nannini	Italy
253	Alessandro Pesenti-Rossi	Italy
254	Alessandro Zanardi	Italy
255	Alex Caffi	Italy
256	Andrea de Adamich	Italy
257	Andrea de Cesaris	Italy
258	Andrea Montermini	Italy
259	Antonio Giovinazzi	Italy
260	Arturo Merzario	Italy
261	Beppe Gabbiani	Italy
262	Bruno Giacomelli	Italy
263	Carlo Abate	Italy
264	Carlo Facetti	Italy
265	Cesare Perdisa	Italy
266	Claudio Langes	Italy
267	Clemente Biondetti	Italy
268	Consalvo Sanesi	Italy
269	Corrado Fabi	Italy
270	Domenico Schiattarella	Italy
271	Dorino Serafini	Italy
272	Elio de Angelis	Italy
273	Emanuele Naspetti	Italy
274	Emanuele Pirro	Italy
275	Enrico Bertaggia	Italy
276	Ernesto Brambilla	Italy
277	Ernesto Prinoth	Italy
278	Eugenio Castellotti	Italy
279	Fabrizio Barbazza	Italy
280	Felice Bonetto	Italy
281	Franco Comotti	Italy
282	Franco Rol	Italy
283	Gabriele Tarquini	Italy
284	Gaetano Starrabba	Italy
285	Geki	Italy
286	Gerino Gerini	Italy
287	Giancarlo Baghetti	Italy
288	Giancarlo Fisichella	Italy
289	Gianfranco Brancatelli	Italy
290	Gianmaria Bruni	Italy
291	Gianni Morbidelli	Italy
292	Gimax	Italy
293	Gino Munaron	Italy
294	Giorgio Bassi	Italy
295	Giorgio Francia	Italy
296	Giorgio Pantano	Italy
297	Giorgio Scarlatti	Italy
298	Giovanna Amati	Italy
299	Giovanni de Riu	Italy
300	Giovanni Lavaggi	Italy
301	Giulio Cabianca	Italy
302	Ignazio Giunti	Italy
303	Ivan Capelli	Italy
304	Jarno Trulli	Italy
305	Lamberto Leoni	Italy
306	Lella Lombardi	Italy
307	Lorenzo Bandini	Italy
308	Luca Badoer	Italy
309	Ludovico Scarfiotti	Italy
310	Luigi Fagioli	Italy
311	Luigi Musso	Italy
312	Luigi Piotti	Italy
313	Luigi Taramazzo	Italy
314	Luigi Villoresi	Italy
315	Marco Apicella	Italy
316	Maria Teresa de Filippis	Italy
317	Massimiliano Papis	Italy
318	Massimo Natili	Italy
319	Mauro Baldi	Italy
320	Menato Boffa	Italy
321	Michele Alboreto	Italy
322	Nanni Galli	Italy
323	Nello Pagani	Italy
324	Nicola Larini	Italy
325	Nino Farina	Italy
326	Nino Vaccarella	Italy
327	Paolo Barilla	Italy
328	Piercarlo Ghinzani	Italy
329	Pierluigi Martini	Italy
330	Piero Carini	Italy
331	Piero Drogo	Italy
332	Piero Dusio	Italy
333	Piero Scotti	Italy
334	Piero Taruffi	Italy
335	Renato Pirocchi	Italy
336	Renzo Zorzi	Italy
337	Riccardo Paletti	Italy
338	Riccardo Patrese	Italy
339	Roberto Bussinello	Italy
340	Roberto Lippi	Italy
341	Sergio Mantovani	Italy
342	Siegfried Stohr	Italy
343	Stefano Modena	Italy
344	Teo Fabi	Italy
345	Umberto Maglioli	Italy
346	Vincenzo Sospiri	Italy
347	Vitantonio Liuzzi	Italy
348	Vittorio Brambilla	Italy
349	Aguri Suzuki	Japan
350	Hideki Noda	Japan
351	Hiroshi Fushida	Japan
352	Kamui Kobayashi	Japan
353	Kazuki Nakajima	Japan
354	Kazuyoshi Hoshino	Japan
355	Kunimitsu Takahashi	Japan
356	Masahiro Hasemi	Japan
357	Masami Kuwashima	Japan
358	Naoki Hattori	Japan
359	Noritake Takahara	Japan
360	Sakon Yamamoto	Japan
361	Satoru Nakajima	Japan
362	Shinji Nakano	Japan
363	Taki Inoue	Japan
364	Takuma Sato	Japan
365	Toranosuke Takagi	Japan
366	Toshio Suzuki	Japan
367	Ukyo Katayama	Japan
368	Yuji Ide	Japan
369	Yuki Tsunoda	Japan
370	Rikky von Opel	Liechtenstein
371	Alex Yoong	Malaysia
372	Esteban Gutiérrez	Mexico
373	Héctor Rebaque	Mexico
374	Moisés Solana	Mexico
375	Pedro Rodríguez	Mexico
376	Ricardo Rodríguez	Mexico
377	Sergio Pérez	Mexico
378	André Testut	Monaco
379	Charles Leclerc	Monaco
380	Louis Chiron	Monaco
381	Olivier Beretta	Monaco
382	Robert Doornbos	Monaco
383	Robert La Caze	Morocco
384	Ben Pon	Netherlands
385	Boy Hayje	Netherlands
386	Carel Godin de Beaufort	Netherlands
387	Christijan Albers	Netherlands
388	Dries van der Lof	Netherlands
389	Giedo van der Garde	Netherlands
390	Gijs van Lennep	Netherlands
391	Huub Rothengatter	Netherlands
392	Jan Flinterman	Netherlands
393	Jan Lammers	Netherlands
394	Jos Verstappen	Netherlands
395	Max Verstappen	Netherlands
396	Michael Bleekemolen	Netherlands
397	Nyck de Vries	Netherlands
398	Rob Slotemaker	Netherlands
399	Roelof Wunderink	Netherlands
400	Brendon Hartley	New Zealand
401	Bruce McLaren	New Zealand
402	Chris Amon	New Zealand
403	Denny Hulme	New Zealand
404	Graham McRae	New Zealand
405	Howden Ganley	New Zealand
406	John Nicholson	New Zealand
407	Liam Lawson	New Zealand
408	Mike Thackwell	New Zealand
409	Tony Shelly	New Zealand
410	Robert Kubica	Poland
411	Casimiro de Oliveira	Portugal
412	Mário de Araújo Cabral	Portugal
413	Pedro Chaves	Portugal
414	Pedro Lamy	Portugal
415	Tiago Monteiro	Portugal
416	Nikita Mazepin	Russia
417	Clive Puzey	Rhodesia
418	John Love	Rhodesia
419	Ray Reed	Rhodesia
420	Sam Tingle	Rhodesia
421	Gary Hocking	Rhodesia and Nyasaland
422	Daniil Kvyat	Russia
423	Sergey Sirotkin	Russia
424	Vitaly Petrov	Russia
425	Alex Blignaut	South Africa
426	Basil van Rooyen	South Africa
427	Brausch Niemann	South Africa
428	Bruce Johnstone	South Africa
429	Dave Charlton	South Africa
430	David Clapham	South Africa
431	Desiré Wilson	South Africa
432	Doug Serrurier	South Africa
433	Eddie Keizan	South Africa
434	Ernie Pieterse	South Africa
435	Guy Tunmer	South Africa
436	Ian Scheckter	South Africa
437	Jackie Pretorius	South Africa
438	Jody Scheckter	South Africa
439	Luki Botha	South Africa
440	Mike Harris	South Africa
441	Neville Lederle	South Africa
442	Paddy Driver	South Africa
443	Peter de Klerk	South Africa
444	Syd van der Vyver	South Africa
445	Tony Maggs	South Africa
446	Trevor Blokdyk	South Africa
447	William Ferguson	South Africa
448	Adrián Campos	Spain
449	Alex Soler-Roig	Spain
450	Alfonso de Portago	Spain
451	Antonio Creus	Spain
452	Carlos Sainz Jr.	Spain
453	Emilio de Villota	Spain
454	Emilio Zapico	Spain
455	Fernando Alonso	Spain
456	Jaime Alguersuari	Spain
457	Juan Jover	Spain
458	Luis Pérez-Sala	Spain
459	Marc Gené	Spain
460	Paco Godia	Spain
461	Pedro de la Rosa	Spain
462	Roberto Merhi	Spain
463	Bertil Roos	Sweden
464	Conny Andersson	Sweden
465	Erik Lundgren	Sweden
466	Gunnar Nilsson	Sweden
467	Jo Bonnier	Sweden
468	Marcus Ericsson	Sweden
469	Reine Wisell	Sweden
470	Ronnie Peterson	Sweden
471	Slim Borgudd	Sweden
472	Stefan Johansson	Sweden
473	Torsten Palm	Sweden
474	Albert Scherrer	Switzerland
475	Andrea Chiesa	Switzerland
476	Clay Regazzoni	Switzerland
477	Emmanuel de Graffenried	Switzerland
478	Franco Forini	Switzerland
479	Gregor Foitek	Switzerland
480	Heini Walter	Switzerland
481	Heinz Schiller	Switzerland
482	Jean-Claude Rudaz	Switzerland
483	Jean-Denis Délétraz	Switzerland
484	Jo Siffert	Switzerland
485	Jo Vonlanthen	Switzerland
486	Loris Kessel	Switzerland
487	Marc Surer	Switzerland
488	Max de Terra	Switzerland
489	Michael May	Switzerland
490	Ottorino Volonterio	Switzerland
491	Peter Hirt	Switzerland
492	Peter Monteverdi	Switzerland
493	Rudi Fischer	Switzerland
494	Rudolf Schoeller	Switzerland
495	Sébastien Buemi	Switzerland
496	Silvio Moser	Switzerland
497	Toni Branca	Switzerland
498	Alexander Albon	Thailand
499	Birabongse Bhanudej	Thailand
500	Alan Brown	United Kingdom
501	Alan Rees	United Kingdom
502	Alan Rollinson	United Kingdom
503	Alan Stacey	United Kingdom
504	Allan McNish	United Kingdom
505	Andy Sutcliffe	United Kingdom
506	Anthony Davidson	United Kingdom
507	Archie Scott Brown	United Kingdom
508	Arthur Owen	United Kingdom
509	Bernie Ecclestone	United Kingdom
510	Bill Aston	United Kingdom
511	Bill Moss	United Kingdom
512	Bill Whitehouse	United Kingdom
513	Bob Anderson	United Kingdom
514	Bob Evans	United Kingdom
515	Bob Gerard	United Kingdom
516	Brian Gubby	United Kingdom
517	Brian Hart	United Kingdom
518	Brian Henton	United Kingdom
519	Brian Naylor	United Kingdom
520	Brian Redman	United Kingdom
521	Brian Shawe-Taylor	United Kingdom
522	Bruce Halford	United Kingdom
523	Chris Bristow	United Kingdom
524	Chris Craft	United Kingdom
525	Chris Irwin	United Kingdom
526	Chris Lawrence	United Kingdom
527	Cliff Allison	United Kingdom
528	Colin Chapman	United Kingdom
529	Colin Davis	United Kingdom
530	Cuth Harrison	United Kingdom
531	Damien Magee	United Kingdom
532	Damon Hill	United Kingdom
533	Dave Morgan	United Kingdom
534	David Coulthard	United Kingdom
535	David Hampshire	United Kingdom
536	David Hobbs	United Kingdom
537	David Murray	United Kingdom
538	David Piper	United Kingdom
539	David Prophet	United Kingdom
540	David Purley	United Kingdom
541	Dennis Poore	United Kingdom
542	Dennis Taylor	United Kingdom
543	Derek Bell	United Kingdom
544	Derek Warwick	United Kingdom
545	Desmond Titterington	United Kingdom
546	Dick Gibson	United Kingdom
547	Divina Galica	United Kingdom
548	Don Beauman	United Kingdom
549	Duncan Hamilton	United Kingdom
550	Eddie Irvine	United Kingdom
551	Eric Brandon	United Kingdom
552	Eric Thompson	United Kingdom
553	Geoff Lees	United Kingdom
554	Geoffrey Crossley	United Kingdom
555	George Abecassis	United Kingdom
556	George Russell	United Kingdom
557	Gerry Ashmore	United Kingdom
558	Graham Hill	United Kingdom
559	Graham Whitehead	United Kingdom
560	Guy Edwards	United Kingdom
561	Henry Taylor	United Kingdom
562	Horace Gould	United Kingdom
563	Ian Ashley	United Kingdom
564	Ian Burgess	United Kingdom
565	Ian Raby	United Kingdom
566	Ian Stewart	United Kingdom
567	Innes Ireland	United Kingdom
568	Ivor Bueb	United Kingdom
569	Jack Aitken	United Kingdom
570	Jack Fairman	United Kingdom
571	Jackie Lewis	United Kingdom
572	Jackie Oliver	United Kingdom
573	Jackie Stewart	United Kingdom
574	James Hunt	United Kingdom
575	Jenson Button	United Kingdom
576	Jim Clark	United Kingdom
577	Jim Crawford	United Kingdom
578	Jimmy Stewart	United Kingdom
579	Joe Fry	United Kingdom
580	John Barber	United Kingdom
581	John Campbell-Jones	United Kingdom
582	John James	United Kingdom
583	John Miles	United Kingdom
584	John Rhodes	United Kingdom
585	John Riseley-Prichard	United Kingdom
586	John Surtees	United Kingdom
587	John Taylor	United Kingdom
588	John Watson	United Kingdom
589	Johnny Dumfries	United Kingdom
590	Johnny Herbert	United Kingdom
591	Jolyon Palmer	United Kingdom
592	Jonathan Palmer	United Kingdom
593	Jonathan Williams	United Kingdom
594	Julian Bailey	United Kingdom
595	Justin Wilson	United Kingdom
596	Keith Greene	United Kingdom
597	Ken Downing	United Kingdom
598	Ken Richardson	United Kingdom
599	Ken Wharton	United Kingdom
600	Kenneth McAlpine	United Kingdom
601	Kenny Acheson	United Kingdom
602	Lance Macklin	United Kingdom
603	Lando Norris	United Kingdom
604	Les Leston	United Kingdom
605	Leslie Johnson	United Kingdom
606	Leslie Marr	United Kingdom
607	Leslie Thorne	United Kingdom
608	Lewis Hamilton	United Kingdom
609	Mark Blundell	United Kingdom
610	Martin Brundle	United Kingdom
611	Martin Donnelly	United Kingdom
612	Max Chilton	United Kingdom
613	Mike Beuttler	United Kingdom
614	Mike Hailwood	United Kingdom
615	Mike Hawthorn	United Kingdom
616	Mike MacDowel	United Kingdom
617	Mike Parkes	United Kingdom
618	Mike Spence	United Kingdom
619	Mike Taylor	United Kingdom
620	Mike Wilds	United Kingdom
621	Nigel Mansell	United Kingdom
622	Paul di Resta	United Kingdom
623	Paul Emery	United Kingdom
624	Perry McCarthy	United Kingdom
625	Peter Arundell	United Kingdom
626	Peter Ashdown	United Kingdom
627	Peter Collins	United Kingdom
628	Peter Gethin	United Kingdom
629	Peter Walker	United Kingdom
630	Peter Westbury	United Kingdom
631	Peter Whitehead	United Kingdom
632	Philip Fotheringham-Parker	United Kingdom
633	Piers Courage	United Kingdom
634	Reg Parnell	United Kingdom
635	Richard Attwood	United Kingdom
636	Richard Robarts	United Kingdom
637	Robin Montgomerie-Charrington	United Kingdom
638	Robin Widdows	United Kingdom
639	Rodney Nuckey	United Kingdom
640	Roger Williamson	United Kingdom
641	Ron Flockhart	United Kingdom
642	Roy Salvadori	United Kingdom
643	Rupert Keegan	United Kingdom
644	Stephen South	United Kingdom
645	Stirling Moss	United Kingdom
646	Stuart Lewis-Evans	United Kingdom
647	Ted Whiteaway	United Kingdom
648	Tiff Needell	United Kingdom
649	Tim Parnell	United Kingdom
650	Tom Bridger	United Kingdom
651	Tom Pryce	United Kingdom
652	Tony Brise	United Kingdom
653	Tony Brooks	United Kingdom
654	Tony Crook	United Kingdom
655	Tony Marsh	United Kingdom
656	Tony Rolt	United Kingdom
657	Tony Trimmer	United Kingdom
658	Trevor Taylor	United Kingdom
659	Vic Elford	United Kingdom
660	Vic Wilson	United Kingdom
661	Will Stevens	United Kingdom
662	A. J. Foyt	United States
663	Al Herman	United States
664	Al Keller	United States
665	Alexander Rossi	United States
666	Alfonso Thiele	United States
667	Andy Linden	United States
668	Art Bisch	United States
669	Art Cross	United States
670	Bayliss Levrett	United States
671	Bill Cantrell	United States
672	Bill Cheesbourg	United States
673	Bill Holland	United States
674	Bill Homeier	United States
675	Bill Mackey	United States
676	Bill Schindler	United States
677	Bill Vukovich	United States
678	Billy Garrett	United States
679	Bob Bondurant	United States
680	Bob Christie	United States
681	Bob Drake	United States
682	Bob Said	United States
683	Bob Scott	United States
684	Bob Sweikert	United States
685	Bob Veith	United States
686	Bobby Ball	United States
687	Bobby Grim	United States
688	Bobby Rahal	United States
689	Bobby Unser	United States
690	Brett Lunger	United States
691	Bruce Kessler	United States
692	Bud Tingelstad	United States
693	Cal Niday	United States
694	Carl Forberg	United States
695	Carl Scarborough	United States
696	Carroll Shelby	United States
697	Cecil Green	United States
698	Chet Miller	United States
699	Chuck Arnold	United States
700	Chuck Daigh	United States
701	Chuck Stevenson	United States
702	Chuck Weyant	United States
703	Cliff Griffith	United States
704	Dan Gurney	United States
705	Danny Kladis	United States
706	Danny Ongais	United States
707	Danny Sullivan	United States
708	Dempsey Wilson	United States
709	Dick Rathmann	United States
710	Don Branson	United States
711	Don Edmunds	United States
712	Don Freeland	United States
713	Duane Carter	United States
714	Duke Dinsmore	United States
715	Duke Nalon	United States
716	Ed Elisian	United States
717	Eddie Cheever	United States
718	Eddie Johnson	United States
719	Eddie Russo	United States
720	Eddie Sachs	United States
721	Elmer George	United States
722	Emil Andres	United States
723	Ernie McCoy	United States
724	Frank Armi	United States
725	Frank Dochnal	United States
726	Fred Agabashian	United States
727	Fred Gamble	United States
728	Fred Wacker	United States
729	Gene Force	United States
730	Gene Hartley	United States
731	George Amick	United States
732	George Connor	United States
733	George Constantine	United States
734	George Follmer	United States
735	George Fonder	United States
736	Gus Hutchison	United States
737	Hap Sharp	United States
738	Harry Blanchard	United States
739	Harry Schell	United States
740	Henry Banks	United States
741	Herbert MacKay-Fraser	United States
742	Jack McGrath	United States
743	Jack Turner	United States
744	Jackie Holmes	United States
745	Jay Chamberlain	United States
746	Jerry Hoyt	United States
747	Jerry Unser Jr.	United States
748	Jim Hall	United States
749	Jim Hurtubise	United States
750	Jim McWithey	United States
751	Jim Rathmann	United States
752	Jim Rigsby	United States
753	Jimmy Bryan	United States
754	Jimmy Davies	United States
755	Jimmy Daywalt	United States
756	Jimmy Jackson	United States
757	Jimmy Reece	United States
758	Joe James	United States
759	John Fitch	United States
760	Johnnie Parsons	United States
761	Johnnie Tolan	United States
762	Johnny Boyd	United States
763	Johnny Mantz	United States
764	Johnny McDowell	United States
765	Johnny Thomson	United States
766	Joie Chitwood	United States
767	Jud Larson	United States
768	Keith Andrews	United States
769	Kevin Cogan	United States
770	Lance Reventlow	United States
771	Larry Crockett	United States
772	Lee Wallard	United States
773	Len Duncan	United States
774	Len Sutton	United States
775	Lloyd Ruby	United States
776	Logan Sargeant	United States
777	Mack Hellings	United States
778	Manny Ayulo	United States
779	Mario Andretti	United States
780	Mark Donohue	United States
781	Marshall Teague	United States
782	Masten Gregory	United States
783	Mauri Rose	United States
784	Michael Andretti	United States
785	Mike Fisher	United States
786	Mike Magill	United States
787	Mike Nazaruk	United States
788	Myron Fohr	United States
789	Pat Flaherty	United States
790	Pat O'Connor	United States
791	Paul Goldsmith	United States
792	Paul Russo	United States
793	Pete Lovely	United States
794	Peter Revson	United States
795	Phil Cade	United States
796	Phil Hill	United States
797	Ray Crawford	United States
798	Red Amick	United States
799	Richie Ginther	United States
800	Rob Schroeder	United States
801	Robert O'Brien	United States
802	Rodger Ward	United States
803	Roger Penske	United States
804	Ronnie Bucknum	United States
805	Sam Hanks	United States
806	Sam Posey	United States
807	Scott Speed	United States
808	Shorty Templeman	United States
809	Skip Barber	United States
810	Spider Webb	United States
811	Thomas Monarch	United States
812	Timmy Mayer	United States
813	Tom Jones	United States
814	Tony Bettenhausen	United States
815	Tony Settember	United States
816	Troy Ruttman	United States
817	Walt Ader	United States
818	Walt Brown	United States
819	Walt Faulkner	United States
820	Walt Hansgen	United States
821	Wayne Weiler	United States
822	Alberto Uria	Uruguay
823	Asdrúbal Fontes Bayardo	Uruguay
824	Eitel Cantoni	Uruguay
825	Óscar González	Uruguay
826	Ettore Chimeri	Venezuela
827	Johnny Cecotto	Venezuela
828	Pastor Maldonado	Venezuela
829	Adolf Brudes	West Germany
830	Bernd Schneider	West Germany
831	Christian Danner	West Germany
832	Ernst Loof	West Germany
833	Erwin Bauer	West Germany
834	Fritz Riess	West Germany
835	Gerhard Mitter	West Germany
836	Günther Seiffert	West Germany
837	Hans Herrmann	West Germany
838	Hans Heyer	West Germany
839	Hans Klenk	West Germany
840	Hans Stuck	West Germany
841	Hans-Joachim Stuck	West Germany
842	Harry Merkel	West Germany
843	Helm Glöckler	West Germany
844	Helmut Niedermayr	West Germany
845	Hermann Lang	West Germany
846	Hubert Hahne	West Germany
847	Joachim Winkelhock	West Germany
848	Jochen Mass	West Germany
849	Josef Peters	West Germany
850	Karl Kling	West Germany
851	Karl-Günther Bechem	West Germany
852	Kurt Adolff	West Germany
853	Kurt Ahrens Jr.	West Germany
854	Kurt Kuhnke	West Germany
855	Ludwig Fischer	West Germany
856	Manfred Winkelhock	West Germany
857	Oswald Karch	West Germany
858	Paul Pietsch	West Germany
859	Rolf Stommelen	West Germany
860	Stefan Bellof	West Germany
861	Theo Helfrich	West Germany
862	Toni Ulmen	West Germany
863	Volker Weidler	West Germany
864	Willi Heeks	West Germany
865	Willi Krakau	West Germany
866	Wolfgang Seidel	West Germany
867	Wolfgang von Trips	West Germany
\.


--
-- Data for Name: race_results; Type: TABLE DATA; Schema: public; Owner: jarrodphilips
--

COPY public.race_results (race_id, driver_id, team_id, points, race_position) FROM stdin;
\.


--
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: jarrodphilips
--

COPY public.races (id, name, location, date) FROM stdin;
1	1950 British Grand Prix	Silverstone Circuit, Silverstone, England	1950-05-13
2	1950 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1950-05-21
3	1950 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1950-05-30
4	1950 Swiss Grand Prix	Bremgarten Circuit, Bern, Switzerland	1950-06-04
5	1950 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1950-06-18
6	1950 French Grand Prix	Reims-Gueux Circuit, Gueux, France	1950-07-02
7	1950 Italian Grand Prix	Autodromo Nazionale di Monza, Monza, Italy	1950-09-03
8	1951 Swiss Grand Prix	Bremgarten Circuit, Berne, Switzerland	1951-06-27
9	1951 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1951-05-30
10	1951 Belgian Grand Prix	Spa-Francorchamps circuit, Spa, Belgium	1951-07-18
11	1951 French Grand Prix	Reims-Gueux Circuit, Reims, France	1951-07-01
12	1951 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1951-07-14
13	1951 German Grand Prix	Nürburgring, Nürburg, Germany	1951-07-29
14	1951 Italian Grand Prix	Circuito di Monza, Monza, Italy	1951-09-16
15	1951 Spanish Grand Prix	Pedralbes Circuit, Barcelona, Spain	1951-10-28
16	1952 Swiss Grand Prix	Bremgarten Circuit, Berne, Switzerland	1952-06-22
17	1952 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1952-05-30
18	1952 Belgian Grand Prix	Spa-Francorchamps circuit, Spa, Belgium	1952-06-22
19	1952 French Grand Prix	Rouen-Les-Essarts Circuit, Rouen, France	1952-07-06
20	1952 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1952-07-19
21	1952 German Grand Prix	Nürburgring, Nürburg, Germany	1952-08-03
22	1952 Dutch Grand Prix	Zandvoort Circuit, Zandvoort, Netherlands	1952-08-17
23	1952 Italian Grand Prix	Circuito di Monza, Monza, Italy	1952-09-07
24	1953 Argentine Grand Prix	Autódromo 17 de Octubre, Buenos Aires, Argentina	1953-01-18
25	1953 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1953-05-30
26	1953 Dutch Grand Prix	Zandvoort Circuit, Zandvoort, Netherlands	1953-06-07
27	1953 Belgian Grand Prix	Spa-Francorchamps circuit, Spa, Belgium	1953-06-21
28	1953 French Grand Prix	Reims-Gueux Circuit, Reims, France	1953-07-05
29	1953 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1953-07-18
30	1953 German Grand Prix	Nürburgring, Nürburg, Germany	1953-08-02
31	1953 Swiss Grand Prix	Bremgarten Circuit, Berne, Switzerland	1953-08-23
32	1953 Italian Grand Prix	Circuito di Monza, Monza, Italy	1953-09-13
33	1954 Argentine Grand Prix	Autódromo 17 de Octubre, Buenos Aires, Argentina	1954-01-17
34	1954 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1954-05-31
35	1954 Belgian Grand Prix	Spa-Francorchamps circuit, Spa, Belgium	1954-06-20
36	1954 French Grand Prix	Reims-Gueux Circuit, Reims, France	1954-07-04
37	1954 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1954-07-17
38	1954 German Grand Prix	Nürburgring, Nürburg, Germany	1954-08-01
39	1954 Swiss Grand Prix	Bremgarten Circuit, Berne, Switzerland	1954-08-22
40	1954 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1954-09-05
41	1954 Spanish Grand Prix	Pedralbes Circuit, Barcelona, Spain	1954-10-24
42	1955 Argentine Grand Prix	Autódromo 17 de Octubre, Buenos Aires, Argentina	1955-01-16
43	1955 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1955-05-22
44	1955 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1955-05-30
45	1955 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1955-06-05
46	1955 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1955-06-19
47	1955 British Grand Prix	Aintree Circuit, Aintree, Great Britain	1955-07-16
48	1955 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1955-09-11
49	1956 Argentine Grand Prix	Autódromo 17 de Octubre, Buenos Aires, Argentina	1956-01-22
50	1956 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1956-05-13
51	1956 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1956-05-30
52	1956 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1956-06-03
53	1956 French Grand Prix	Reims-Gueux Circuit, Reims, France	1956-06-24
54	1956 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1956-07-14
55	1956 German Grand Prix	Nürburgring, Nürburg, Germany	1956-08-05
56	1956 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1956-09-02
57	1957 Argentine Grand Prix	Autódromo 17 de Octubre, Buenos Aires, Argentina	1957-01-13
58	1957 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1957-05-19
59	1957 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1957-05-30
60	1957 French Grand Prix	Rouen-Les-Essarts Circuit, Rouen, France	1957-07-07
61	1957 British Grand Prix	Aintree Circuit, Aintree, Great Britain	1957-07-20
62	1957 German Grand Prix	Nürburgring, Nürburg, Germany	1957-08-04
63	1957 Pescara Grand Prix	Circuito di Pescara, Pescara, Italy	1957-08-18
64	1957 Italian Grand Prix	Monza Circuit, Monza, Italy	1957-09-08
65	1958 Argentine Grand Prix	Autódromo 17 de Octubre, Buenos Aires, Argentina	1958-01-19
66	1958 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1958-05-11
67	1958 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1958-05-25
68	1958 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1958-05-30
69	1958 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1958-06-08
70	1958 French Grand Prix	Reims-Gueux Circuit, Reims, France	1958-06-29
71	1958 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1958-07-19
72	1958 German Grand Prix	Nürburgring, Nürburg, Germany	1958-08-03
73	1958 Portuguese Grand Prix	Circuito Vasco Sameiro, Porto, Portugal	1958-08-24
74	1958 Italian Grand Prix	Monza Circuit, Monza, Italy	1958-09-07
75	1958 Moroccan Grand Prix	Ain-Diab Circuit, Casablanca, Morocco	1958-10-19
76	1959 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1959-05-10
77	1959 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1959-05-30
78	1959 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1959-05-31
79	1959 French Grand Prix	Reims-Gueux Circuit, Reims, France	1959-06-07
80	1959 British Grand Prix	Aintree Circuit, Aintree, Great Britain	1959-07-18
81	1959 German Grand Prix	AVUS, Berlin, Germany	1959-08-02
82	1959 Portuguese Grand Prix	Circuito Vasco Sameiro, Porto, Portugal	1959-08-23
83	1959 Italian Grand Prix	Monza Circuit, Monza, Italy	1959-09-13
84	1959 United States Grand Prix	Sebring International Raceway, Sebring, Florida, USA	1959-12-12
85	1960 Argentine Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1960-01-07
86	1960 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1960-05-29
87	1960 Indianapolis 500	Indianapolis Motor Speedway, Speedway, Indiana, USA	1960-05-30
88	1960 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1960-06-06
89	1960 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1960-06-19
90	1960 French Grand Prix	Reims-Gueux Circuit, Reims, France	1960-07-03
91	1960 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1960-07-16
92	1960 Portuguese Grand Prix	Circuito da Boavista, Porto, Portugal	1960-08-14
93	1960 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1960-09-04
94	1960 United States Grand Prix	Riverside International Raceway, Riverside, California, USA	1960-10-23
95	1961 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1961-05-14
96	1961 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1961-05-22
97	1961 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1961-06-18
98	1961 French Grand Prix	Reims-Gueux Circuit, Reims, France	1961-07-02
99	1961 British Grand Prix	Aintree Circuit, Aintree, Great Britain	1961-07-15
100	1961 German Grand Prix	Nürburgring, Nürburg, Germany	1961-07-30
101	1961 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1961-09-10
102	1961 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1961-10-08
103	1962 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1962-05-20
104	1962 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1962-06-03
105	1962 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1962-06-17
106	1962 French Grand Prix	Rouen-Les-Essarts Circuit, Rouen, France	1962-07-08
107	1962 British Grand Prix	Aintree Circuit, Aintree, Great Britain	1962-07-21
108	1962 German Grand Prix	Nürburgring, Nürburg, Germany	1962-08-05
109	1962 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1962-09-16
110	1962 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1962-10-07
111	1962 South African Grand Prix	Prince George Circuit, East London, South Africa	1962-12-29
112	1963 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1963-05-26
113	1963 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1963-06-09
114	1963 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1963-06-23
115	1963 French Grand Prix	Reims-Gueux Circuit, Reims, France	1963-07-07
116	1963 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1963-07-20
117	1963 German Grand Prix	Nürburgring, Nürburg, Germany	1963-08-04
118	1963 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1963-09-08
119	1963 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1963-10-06
120	1963 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1963-10-27
121	1963 South African Grand Prix	Prince George Circuit, East London, South Africa	1963-12-28
122	1964 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1964-05-10
123	1964 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1964-05-24
124	1964 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1964-06-07
125	1964 French Grand Prix	Rouen-Les-Essarts Circuit, Rouen, France	1964-06-28
126	1964 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1964-07-11
127	1964 German Grand Prix	Nürburgring, Nürburg, Germany	1964-08-02
128	1964 Austrian Grand Prix	Zeltweg Airfield, Zeltweg, Austria	1964-08-23
129	1964 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1964-09-06
130	1964 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1964-10-04
131	1964 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1964-11-01
132	1965 South African Grand Prix	Prince George Circuit, East London, South Africa	1965-01-01
133	1965 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1965-05-30
134	1965 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1965-06-13
135	1965 French Grand Prix	Circuit de Charade, Clermont-Ferrand, France	1965-06-27
136	1965 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1965-07-10
137	1965 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1965-07-17
138	1965 German Grand Prix	Nürburgring, Nürburg, Germany	1965-08-01
139	1965 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1965-09-05
140	1965 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1965-10-03
141	1965 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1965-10-24
142	1966 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1966-05-22
143	1966 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1966-06-12
144	1966 French Grand Prix	Reims-Gueux Circuit, Reims, France	1966-07-03
145	1966 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1966-07-16
146	1966 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1966-07-24
147	1966 German Grand Prix	Nürburgring, Nürburg, Germany	1966-08-07
148	1966 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1966-09-04
149	1966 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1966-10-02
150	1966 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1966-10-23
151	1967 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1967-01-02
152	1967 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1967-05-07
153	1967 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1967-06-04
154	1967 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1967-06-18
155	1967 French Grand Prix	Circuit de Charade, Clermont-Ferrand, France	1967-07-02
156	1967 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1967-07-15
157	1967 German Grand Prix	Nürburgring, Nürburg, Germany	1967-08-06
158	1967 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1967-08-27
159	1967 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1967-09-10
160	1967 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1967-10-01
161	1967 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1967-10-22
162	1968 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1968-01-01
163	1968 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1968-05-12
164	1968 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1968-05-26
165	1968 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1968-06-09
166	1968 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1968-06-23
167	1968 French Grand Prix	Rouen-les-Essarts Circuit, Rouen, France	1968-07-07
168	1968 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1968-07-20
169	1968 German Grand Prix	Nürburgring, Nürburg, Germany	1968-08-04
170	1968 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1968-09-08
171	1968 Canadian Grand Prix	Circuit Mont-Tremblant, Mont-Tremblant, Quebec, Canada	1968-09-22
172	1968 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1968-10-06
173	1968 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1968-11-03
174	1969 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1969-03-01
175	1969 Spanish Grand Prix	Circuito del Montjuïc, Barcelona, Spain	1969-05-04
176	1969 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1969-05-18
177	1969 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1969-06-21
178	1969 French Grand Prix	Circuit de Charade, Clermont-Ferrand, France	1969-07-06
179	1969 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1969-07-19
180	1969 German Grand Prix	Nürburgring, Nürburg, Germany	1969-08-03
181	1969 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1969-09-07
182	1969 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1969-09-20
183	1969 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1969-10-05
184	1969 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1969-10-19
185	1970 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1970-03-07
186	1970 Spanish Grand Prix	Circuito del Jarama, Madrid, Spain	1970-04-19
187	1970 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1970-05-10
188	1970 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1970-06-07
189	1970 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1970-06-21
190	1970 French Grand Prix	Circuit de Charade, Clermont-Ferrand, France	1970-07-05
191	1970 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1970-07-18
192	1970 German Grand Prix	Hockenheimring, Hockenheim, Germany	1970-08-02
193	1970 Austrian Grand Prix	Österreichring, Spielberg, Austria	1970-08-16
194	1970 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1970-09-06
195	1970 Canadian Grand Prix	Mont-Tremblant Circuit, Saint-Jovite, Quebec, Canada	1970-09-20
196	1970 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1970-10-04
197	1970 Mexican Grand Prix	Magdalena Mixhuca Circuit, Mexico City, Mexico	1970-10-25
198	1971 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1971-03-06
199	1971 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1971-04-18
200	1971 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1971-05-23
201	1971 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1971-06-20
202	1971 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1971-07-04
203	1971 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1971-07-17
204	1971 German Grand Prix	Nürburgring, Nürburg, Germany	1971-08-01
205	1971 Austrian Grand Prix	Österreichring, Spielberg, Austria	1971-08-15
206	1971 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1971-09-05
207	1971 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1971-09-19
208	1971 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1971-10-03
209	1972 Argentine Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1972-01-23
210	1972 South African Grand Prix	Circuit Kyalami, Midrand, South Africa	1972-03-04
211	1972 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1972-05-01
212	1972 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1972-05-14
213	1972 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1972-06-04
214	1972 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1972-07-02
215	1972 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1972-07-15
216	1972 German Grand Prix	Nürburgring, Nürburg, Germany	1972-07-30
217	1972 Austrian Grand Prix	Österreichring, Spielberg, Austria	1972-08-13
218	1972 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1972-09-10
219	1972 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1972-09-24
220	1972 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1972-10-08
221	1973 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1973-01-28
222	1973 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1973-02-11
223	1973 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1973-03-03
224	1973 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1973-04-29
225	1973 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1973-05-20
226	1973 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1973-06-03
227	1973 Swedish Grand Prix	Scandinavian Raceway, Anderstorp, Sweden	1973-06-17
228	1973 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1973-07-01
229	1973 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1973-07-14
230	1973 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1973-07-29
231	1973 German Grand Prix	Nürburgring, Nürburg, Germany	1973-08-05
232	1973 Austrian Grand Prix	Österreichring, Spielberg, Austria	1973-08-19
233	1973 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1973-09-09
234	1973 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1973-09-23
235	1973 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1973-10-07
236	1974 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1974-01-13
237	1974 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1974-02-24
238	1974 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1974-03-30
239	1974 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1974-04-28
240	1974 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1974-05-12
241	1974 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1974-05-26
242	1974 Swedish Grand Prix	Scandinavian Raceway, Anderstorp, Sweden	1974-06-09
243	1974 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1974-06-23
244	1974 French Grand Prix	Circuit de Dijon-Prenois, Prenois, France	1974-07-07
245	1974 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1974-07-20
246	1974 German Grand Prix	Nürburgring, Nürburg, Germany	1974-08-04
247	1974 Austrian Grand Prix	Österreichring, Spielberg, Austria	1974-08-18
248	1974 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1974-09-08
249	1974 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1974-09-22
250	1974 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1974-10-06
251	1975 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1975-01-12
252	1975 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1975-01-26
253	1975 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1975-03-01
254	1975 Spanish Grand Prix	Montjuïc Circuit, Barcelona, Spain	1975-04-27
255	1975 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1975-05-11
256	1975 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1975-05-25
257	1975 Swedish Grand Prix	Scandinavian Raceway, Anderstorp, Sweden	1975-06-08
258	1975 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1975-06-22
259	1975 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1975-07-06
260	1975 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1975-07-20
261	1975 German Grand Prix	Nürburgring, Nürburg, Germany	1975-08-03
262	1975 Austrian Grand Prix	Österreichring, Spielberg, Austria	1975-08-17
263	1975 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1975-09-07
264	1975 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1975-10-05
265	1976 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1976-01-25
266	1976 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1976-03-06
267	1976 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1976-03-28
268	1976 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1976-05-02
269	1976 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1976-05-16
270	1976 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1976-05-30
271	1976 Swedish Grand Prix	Scandinavian Raceway, Anderstorp, Sweden	1976-06-13
272	1976 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1976-07-04
273	1976 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1976-07-18
274	1976 German Grand Prix	Nürburgring, Nürburg, Germany	1976-08-01
275	1976 Austrian Grand Prix	Österreichring, Spielberg, Austria	1976-08-15
276	1976 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1976-08-29
277	1976 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1976-09-05
278	1976 Canadian Grand Prix	Circuit Mosport Park, Bowmanville, Ontario, Canada	1976-09-26
279	1976 United States Grand Prix East	Watkins Glen International, Watkins Glen, New York, USA	1976-10-10
280	1976 Japanese Grand Prix	Fuji Speedway, Oyama, Shizuoka, Japan	1976-10-24
281	1977 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1977-01-09
282	1977 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1977-01-23
283	1977 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1977-03-05
284	1977 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1977-04-03
285	1977 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1977-05-08
286	1977 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1977-05-22
287	1977 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1977-06-05
288	1977 Swedish Grand Prix	Scandinavian Raceway, Anderstorp, Sweden	1977-06-19
289	1977 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1977-07-03
290	1977 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1977-07-16
291	1977 German Grand Prix	Hockenheimring, Hockenheim, Germany	1977-07-31
292	1977 Austrian Grand Prix	Österreichring, Spielberg, Austria	1977-08-14
293	1977 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1977-08-28
294	1977 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1977-09-11
295	1977 United States Grand Prix East	Watkins Glen International, Watkins Glen, New York, USA	1977-10-02
296	1977 Canadian Grand Prix	Mosport Park, Bowmanville, Ontario, Canada	1977-10-09
297	1977 Japanese Grand Prix	Fuji Speedway, Oyama, Shizuoka, Japan	1977-10-23
298	1978 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1978-01-15
299	1978 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1978-01-29
300	1978 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1978-03-04
301	1978 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1978-04-02
302	1978 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1978-05-07
303	1978 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1978-05-21
304	1978 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1978-06-04
305	1978 Swedish Grand Prix	Scandinavian Raceway, Anderstorp, Sweden	1978-06-18
306	1978 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1978-07-02
307	1978 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1978-07-16
308	1978 German Grand Prix	Hockenheimring, Hockenheim, Germany	1978-07-30
309	1978 Austrian Grand Prix	Österreichring, Spielberg, Austria	1978-08-13
310	1978 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1978-08-27
311	1978 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1978-09-10
312	1978 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1978-10-08
313	1978 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1978-10-15
314	1979 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1979-01-21
315	1979 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1979-02-04
316	1979 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1979-03-03
317	1979 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1979-04-08
318	1979 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1979-04-29
319	1979 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1979-05-13
320	1979 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1979-05-27
321	1979 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1979-06-01
322	1979 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1979-07-14
323	1979 German Grand Prix	Hockenheimring, Hockenheim, Germany	1979-07-29
324	1979 Austrian Grand Prix	Österreichring, Spielberg, Austria	1979-08-12
325	1979 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1979-08-26
326	1979 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1979-09-09
327	1979 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1979-09-30
328	1979 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1979-10-07
329	1980 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1980-01-13
330	1980 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1980-01-27
331	1980 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1980-03-01
332	1980 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1980-03-30
333	1980 Belgian Grand Prix	Circuit de Zolder, Heusden-Zolder, Belgium	1980-05-04
334	1980 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1980-05-18
335	1980 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1980-06-08
336	1980 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1980-07-13
337	1980 German Grand Prix	Hockenheimring, Hockenheim, Germany	1980-07-27
338	1980 Austrian Grand Prix	Österreichring, Spielberg, Austria	1980-08-10
339	1980 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1980-08-17
340	1980 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1980-09-07
341	1980 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1980-09-28
342	1980 United States Grand Prix	Watkins Glen International, Watkins Glen, New York, USA	1980-10-05
343	1981 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1981-03-15
344	1981 Brazilian Grand Prix	Interlagos Circuit, São Paulo, Brazil	1981-03-29
345	1981 Argentinian Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1981-04-12
346	1981 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1981-05-03
347	1981 Belgian Grand Prix	Circuit Zolder, Heusden-Zolder, Belgium	1981-05-17
348	1981 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1981-05-31
349	1981 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1981-06-21
350	1981 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1981-07-05
351	1981 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1981-07-18
352	1981 German Grand Prix	Hockenheimring, Hockenheim, Germany	1981-08-02
353	1981 Austrian Grand Prix	Österreichring, Spielberg, Austria	1981-08-16
354	1981 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1981-08-30
355	1981 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1981-09-13
356	1981 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1981-09-27
357	1981 Caesars Palace Grand Prix	Caesars Palace, Las Vegas, Nevada, USA	1981-10-17
358	1982 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1982-01-23
359	1982 Brazilian Grand Prix	Jacarepaguá Circuit, Rio de Janeiro, Brazil	1982-03-21
360	1982 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1982-04-04
361	1982 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1982-04-25
362	1982 Belgian Grand Prix	Circuit Zolder, Heusden-Zolder, Belgium	1982-05-09
363	1982 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1982-05-23
364	1982 Detroit Grand Prix	Detroit Street Circuit, Detroit, Michigan, USA	1982-06-06
365	1982 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1982-06-13
366	1982 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1982-07-03
367	1982 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1982-07-18
368	1982 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1982-07-25
369	1982 German Grand Prix	Hockenheimring, Hockenheim, Germany	1982-08-08
370	1982 Austrian Grand Prix	Österreichring, Spielberg, Austria	1982-08-15
371	1982 Swiss Grand Prix	Circuit Dijon-Prenois, Prenois, France	1982-08-29
372	1982 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1982-09-05
373	1982 Caesars Palace Grand Prix	Caesars Palace, Las Vegas, Nevada, USA	1982-09-12
374	1983 Brazilian Grand Prix	Autódromo Internacional Nelson Piquet, Rio de Janeiro, Brazil	1983-03-13
375	1983 United States Grand Prix West	Long Beach Circuit, Long Beach, California, USA	1983-03-27
376	1983 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1983-04-17
377	1983 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1983-05-01
378	1983 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1983-05-15
379	1983 Belgian Grand Prix	Circuit Zolder, Heusden-Zolder, Belgium	1983-05-22
380	1983 Detroit Grand Prix	Detroit Street Circuit, Detroit, Michigan, USA	1983-06-05
381	1983 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1983-06-12
382	1983 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1983-07-16
383	1983 German Grand Prix	Hockenheimring, Hockenheim, Germany	1983-07-30
384	1983 Austrian Grand Prix	Österreichring, Spielberg, Austria	1983-08-14
385	1983 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1983-08-28
386	1983 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1983-09-11
387	1983 European Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1983-09-25
388	1983 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1983-10-15
389	1984 Brazilian Grand Prix	Jacarepaguá Circuit, Rio de Janeiro, Brazil	1984-03-25
390	1984 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1984-03-07
391	1984 Belgian Grand Prix	Circuit Zolder, Heusden-Zolder, Belgium	1984-03-31
392	1984 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1984-05-06
393	1984 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1984-05-20
394	1984 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1984-06-03
395	1984 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1984-06-17
396	1984 Detroit Grand Prix	Detroit Street Circuit, Detroit, Michigan, USA	1984-06-24
397	1984 Dallas Grand Prix	Fair Park, Dallas, Texas, USA	1984-07-08
398	1984 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1984-07-22
399	1984 German Grand Prix	Hockenheimring, Hockenheim, Germany	1984-08-05
400	1984 Austrian Grand Prix	Österreichring, Spielberg, Austria	1984-08-19
401	1984 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	1984-09-02
402	1984 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1984-09-09
403	1984 European Grand Prix	Nürburgring, Nürburg, Germany	1984-10-07
404	1984 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1984-10-21
405	1985 Brazilian Grand Prix	Autódromo Internacional Nelson Piquet/Jacarepaguá	1985-04-07
406	1985 Portuguese Grand Prix	Autódromo do Estoril, Estoril	1985-04-21
407	1985 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola	1985-05-05
408	1985 Monaco Grand Prix	Circuit de Monaco, Monte Carlo	1985-05-19
409	1985 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal	1985-06-16
410	1985 Detroit Grand Prix	Detroit Street Circuit, Detroit	1985-06-23
411	1985 French Grand Prix	Circuit Paul Ricard, Le Castellet	1985-07-07
412	1985 British Grand Prix	Silverstone Circuit, Silverstone	1985-07-21
413	1985 German Grand Prix	Nürburgring, Nürburg	1985-08-04
414	1985 Austrian Grand Prix	Österreichring, Spielberg	1985-08-18
415	1985 Dutch Grand Prix	Circuit Zandvoort, Zandvoort	1985-08-25
416	1985 Italian Grand Prix	Autodromo Nazionale Monza, Monza	1985-09-08
417	1985 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa	1985-09-15
418	1985 European Grand Prix	Brands Hatch Circuit, Kent	1985-09-29
419	1985 South African Grand Prix	Kyalami Circuit, Midrand	1985-10-19
420	1985 Australian Grand Prix	Adelaide Street Circuit, Adelaide	1985-11-03
421	1986 Brazilian Grand Prix	Jacarepaguá Circuit, Rio de Janeiro, Brazil	1986-03-23
422	1986 Spanish Grand Prix	Circuito Permanente del Jarama, Madrid, Spain	1986-04-13
423	1986 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1986-04-27
424	1986 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1986-05-11
425	1986 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa, Belgium	1986-05-25
426	1986 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal, Quebec, Canada	1986-06-15
427	1986 Detroit Grand Prix	Detroit Street Circuit, Detroit, Michigan, USA	1986-06-22
428	1986 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1986-07-06
429	1986 British Grand Prix	Brands Hatch Circuit, Kent, Great Britain	1986-07-13
430	1986 German Grand Prix	Hockenheimring, Hockenheim, Germany	1986-07-27
431	1986 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1986-08-10
432	1986 Austrian Grand Prix	Österreichring, Spielberg, Austria	1986-08-17
433	1986 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1986-09-07
434	1986 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1986-09-21
435	1986 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	1986-10-12
436	1986 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1986-10-26
437	1987 Brazilian Grand Prix	Jacarepaguá Circuit, Rio de Janeiro, Brazil	1987-04-12
438	1987 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1987-05-03
439	1987 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa, Belgium	1987-05-17
440	1987 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1987-05-31
441	1987 Detroit Grand Prix	Detroit Street Circuit, Detroit, Michigan, USA	1987-06-21
442	1987 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1987-07-05
443	1987 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1987-07-12
444	1987 German Grand Prix	Hockenheimring, Hockenheim, Germany	1987-07-26
445	1987 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1987-08-09
446	1987 Austrian Grand Prix	Österreichring, Spielberg, Austria	1987-08-16
447	1987 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1987-09-06
448	1987 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1987-09-20
449	1987 Spanish Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera, Spain	1987-10-27
450	1987 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	1987-11-15
451	1987 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1987-11-01
452	1987 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1987-11-14
453	1988 Brazilian Grand Prix	Autódromo Internacional Nelson Piquet/Jacarepaguá	1988-04-03
454	1988 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola	1988-05-01
455	1988 Monaco Grand Prix	Circuit de Monaco, Monte Carlo	1988-05-15
456	1988 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City	1988-05-29
457	1988 Canadian Grand Prix	Circuit Île Notre-Dame, Montreal	1988-06-12
458	1988 Detroit Grand Prix	Detroit Street Circuit, Detroit	1988-06-19
459	1988 French Grand Prix	Circuit Paul Ricard, Le Castellet	1988-07-03
460	1988 British Grand Prix	Silverstone Circuit, Silverstone	1988-07-10
461	1988 German Grand Prix	Hockenheimring, Hockenheim	1988-07-31
462	1988 Hungarian Grand Prix	Hungaroring, Budapest	1988-08-07
463	1988 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa	1988-08-28
464	1988 Italian Grand Prix	Autodromo Nazionale Monza, Monza	1988-09-11
465	1988 Portuguese Grand Prix	Autódromo do Estoril, Estoril	1988-09-25
466	1988 Spanish Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera	1988-10-02
467	1988 Japanese Grand Prix	Suzuka Circuit, Suzuka	1988-10-30
468	1988 Australian Grand Prix	Adelaide Street Circuit, Adelaide	1988-11-13
469	1989 Brazilian Grand Prix	Autódromo Internacional Nelson Piquet, Rio de Janeiro	1989-03-26
470	1989 San Marino Grand Prix	Autodromo Dino Ferrari, Imola	1989-04-23
471	1989 Monaco Grand Prix	Circuit de Monaco, Monte Carlo	1989-05-07
472	1989 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City	1989-05-28
473	1989 United States Grand Prix	Phoenix Street Circuit, Phoenix, Arizona	1989-06-04
474	1989 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal	1989-06-18
475	1989 French Grand Prix	Circuit Paul Ricard, Le Castellet	1989-07-09
476	1989 British Grand Prix	Silverstone Circuit, Silverstone	1989-07-16
477	1989 German Grand Prix	Hockenheimring, Hockenheim	1989-07-30
478	1989 Hungarian Grand Prix	Hungaroring, Budapest	1989-08-13
479	1989 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa	1989-08-27
480	1989 Italian Grand Prix	Autodromo Nazionale Monza, Monza	1989-09-10
481	1989 Portuguese Grand Prix	Autódromo do Estoril, Estoril	1989-09-24
482	1989 Spanish Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera	1989-10-01
483	1989 Japanese Grand Prix	Suzuka Circuit, Suzuka	1989-10-22
484	1989 Australian Grand Prix	Adelaide Street Circuit, Adelaide	1989-11-05
485	1990 United States Grand Prix	Phoenix Street Circuit, Phoenix, Arizona, USA	1990-03-11
486	1990 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1990-03-25
487	1990 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1990-04-15
488	1990 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1990-05-06
489	1990 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1990-06-10
490	1990 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	1990-06-24
491	1990 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1990-07-08
492	1990 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1990-07-15
493	1990 German Grand Prix	Hockenheimring, Hockenheim, Germany	1990-07-29
494	1990 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1990-08-12
495	1990 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa, Belgium	1990-08-26
496	1990 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1990-09-09
497	1990 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1990-09-23
498	1990 Spanish Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera, Spain	1990-09-30
499	1990 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1990-10-21
500	1990 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1990-11-04
501	1991 United States Grand Prix	Phoenix Street Circuit, Phoenix, Arizona, USA	1991-03-10
502	1991 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1991-03-24
503	1991 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1991-04-28
504	1991 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1991-05-12
505	1991 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1991-06-02
506	1991 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	1991-06-16
507	1991 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	1991-07-07
508	1991 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1991-07-14
509	1991 German Grand Prix	Hockenheimring, Hockenheim, Germany	1991-07-28
510	1991 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1991-08-11
511	1991 Belgian Grand Prix	Circuit Spa-Francorchamps, Spa, Belgium	1991-08-25
512	1991 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1991-09-08
513	1991 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1991-09-22
514	1991 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1991-09-29
515	1991 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1991-10-20
516	1991 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1991-11-03
517	1992 South African Grand Prix	Kyalami Circuit, Midrand, South Africa	1992-03-01
518	1992 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	1992-03-22
519	1992 Brazilian Grand Prix	Autódromo Internacional Nelson Piquet, Rio de Janeiro, Brazil	1992-04-05
520	1992 Spanish Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera, Spain	1992-05-03
521	1992 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1992-05-17
522	1992 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1992-05-31
523	1992 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1992-06-14
524	1992 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1992-07-05
525	1992 British Grand Prix	Silverstone Circuit, Silverstone, Great Britain	1992-07-12
526	1992 German Grand Prix	Hockenheimring, Hockenheim, Germany	1992-07-26
527	1992 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1992-08-09
528	1992 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1992-08-30
529	1992 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1992-09-13
530	1992 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1992-09-27
531	1992 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1992-10-11
532	1992 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1992-11-08
533	1993 South African Grand Prix	Kyalami Grand Prix Circuit, Midrand, South Africa	1993-03-14
534	1993 Brazilian Grand Prix	Autódromo José Carlos Pace, São Paulo, Brazil	1993-03-28
535	1993 European Grand Prix	Donington Park Circuit, Leicestershire, England	1993-04-11
536	1993 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1993-04-25
537	1993 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1993-05-09
538	1993 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1993-05-23
539	1993 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1993-06-13
540	1993 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1993-06-27
541	1993 British Grand Prix	Silverstone Circuit, Silverstone, England	1993-07-11
542	1993 German Grand Prix	Hockenheimring, Hockenheim, Germany	1993-08-01
543	1993 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1993-08-15
544	1993 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1993-08-29
545	1993 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1993-09-12
546	1993 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1993-09-26
547	1993 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1993-10-24
548	1993 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1993-11-07
549	1994 Brazilian Grand Prix	Autódromo José Carlos Pace, São Paulo, Brazil	1994-03-27
550	1994 Pacific Grand Prix	TI Circuit Aida, Mimasaka, Japan	1994-04-17
551	1994 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1994-05-01
552	1994 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1994-05-15
553	1994 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1994-05-29
554	1994 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1994-06-12
555	1994 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1994-07-03
556	1994 British Grand Prix	Silverstone Circuit, Silverstone, England	1994-07-10
557	1994 German Grand Prix	Hockenheimring, Hockenheim, Germany	1994-07-31
558	1994 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1994-08-14
559	1994 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1994-08-28
560	1994 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1994-09-11
561	1994 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1994-09-25
562	1994 European Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera, Spain	1994-10-16
563	1994 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1994-11-06
564	1994 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1994-11-13
565	1995 Brazilian Grand Prix	Autódromo Internacional Nelson Piquet, Rio de Janeiro, Brazil	1995-03-26
566	1995 Argentine Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1995-04-09
567	1995 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1995-04-30
568	1995 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1995-05-14
569	1995 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1995-05-28
570	1995 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1995-06-11
571	1995 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1995-07-02
572	1995 British Grand Prix	Silverstone Circuit, Silverstone, England	1995-07-16
573	1995 German Grand Prix	Hockenheimring, Hockenheim, Germany	1995-07-30
574	1995 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1995-08-13
575	1995 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1995-08-27
576	1995 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1995-09-10
577	1995 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1995-09-24
578	1995 European Grand Prix	Nürburgring, Nürburg, Germany	1995-10-01
579	1995 Pacific Grand Prix	TI Circuit Aida, Mimasaka, Japan	1995-10-22
580	1995 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1995-10-29
581	1995 Australian Grand Prix	Adelaide Street Circuit, Adelaide, Australia	1995-11-12
582	1996 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	1996-03-10
583	1996 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1996-03-31
584	1996 Argentine Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1996-04-07
585	1996 European Grand Prix	Nürburgring, Nürburg, Germany	1996-04-28
586	1996 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1996-05-05
587	1996 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1996-05-19
588	1996 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1996-06-02
589	1996 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1996-06-16
590	1996 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1996-07-07
591	1996 British Grand Prix	Silverstone Circuit, Silverstone, England	1996-07-21
592	1996 German Grand Prix	Hockenheimring, Hockenheim, Germany	1996-08-04
593	1996 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1996-08-18
594	1996 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1996-08-25
595	1996 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1996-09-08
596	1996 Portuguese Grand Prix	Autódromo do Estoril, Estoril, Portugal	1996-09-22
597	1996 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1996-10-13
598	1997 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	1997-03-09
599	1997 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1997-03-30
600	1997 Argentine Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1997-04-13
601	1997 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1997-04-27
602	1997 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1997-05-11
603	1997 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1997-05-25
604	1997 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1997-06-15
605	1997 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1997-06-29
606	1997 British Grand Prix	Silverstone Circuit, Silverstone, England	1997-07-13
607	1997 German Grand Prix	Hockenheimring, Hockenheim, Germany	1997-08-03
608	1997 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1997-08-10
609	1997 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1997-08-24
610	1997 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1997-09-07
611	1997 Austrian Grand Prix	A1-Ring, Spielberg, Austria	1997-09-21
612	1997 Luxembourg Grand Prix	Nürburgring, Nürburg, Germany	1997-10-26
613	1997 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1997-10-12
614	1997 European Grand Prix	Circuito Permanente de Jerez, Jerez de la Frontera, Spain	1997-10-26
615	1998 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	1998-03-08
616	1998 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1998-03-29
617	1998 Argentine Grand Prix	Autódromo Oscar Alfredo Gálvez, Buenos Aires, Argentina	1998-04-12
618	1998 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1998-04-26
619	1998 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1998-05-10
620	1998 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1998-05-24
621	1998 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1998-06-07
622	1998 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1998-06-28
623	1998 British Grand Prix	Silverstone Circuit, Silverstone, England	1998-07-12
624	1998 Austrian Grand Prix	A1-Ring, Spielberg, Austria	1998-07-26
625	1998 German Grand Prix	Hockenheimring, Hockenheim, Germany	1998-08-02
626	1998 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1998-08-16
627	1998 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1998-08-30
628	1998 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1998-09-13
629	1998 Luxembourg Grand Prix	Nürburgring, Nürburg, Germany	1998-09-27
630	1998 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1998-11-01
631	1999 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	1999-03-07
632	1999 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	1999-04-11
633	1999 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	1999-05-02
634	1999 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	1999-05-16
635	1999 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	1999-05-30
636	1999 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	1999-06-13
637	1999 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	1999-06-27
638	1999 British Grand Prix	Silverstone Circuit, Silverstone, England	1999-07-11
639	1999 Austrian Grand Prix	A1-Ring, Spielberg, Austria	1999-07-25
640	1999 German Grand Prix	Hockenheimring, Hockenheim, Germany	1999-08-01
641	1999 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	1999-08-15
642	1999 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	1999-08-29
643	1999 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	1999-09-12
644	1999 European Grand Prix	Nürburgring, Nürburg, Germany	1999-09-26
645	1999 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	1999-10-17
646	1999 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	1999-10-31
647	2000 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2000-03-12
648	2000 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2000-03-26
649	2000 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2000-04-09
650	2000 British Grand Prix	Silverstone Circuit, Silverstone, England	2000-04-23
651	2000 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2000-05-07
652	2000 European Grand Prix	Nürburgring, Nürburg, Germany	2000-05-21
653	2000 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2000-06-04
654	2000 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2000-06-18
655	2000 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2000-07-02
656	2000 Austrian Grand Prix	A1-Ring, Spielberg, Austria	2000-07-16
657	2000 German Grand Prix	Hockenheimring, Hockenheim, Germany	2000-07-30
658	2000 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2000-08-13
659	2000 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2000-08-27
660	2000 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2000-09-10
661	2000 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2000-09-24
662	2000 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2000-10-08
663	2000 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2000-10-22
664	2001 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2001-03-04
665	2001 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2001-03-18
666	2001 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2001-04-01
667	2001 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2001-04-15
668	2001 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2001-04-29
669	2001 Austrian Grand Prix	A1-Ring, Spielberg, Austria	2001-05-13
670	2001 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2001-05-27
671	2001 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2001-06-10
672	2001 European Grand Prix	Nürburgring, Nürburg, Germany	2001-06-24
673	2001 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2001-07-01
674	2001 British Grand Prix	Silverstone Circuit, Silverstone, England	2001-07-15
675	2001 German Grand Prix	Hockenheimring, Hockenheim, Germany	2001-07-29
676	2001 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2001-08-19
677	2001 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2001-09-02
678	2001 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2001-09-16
679	2001 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2001-09-30
680	2001 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2001-10-14
681	2002 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2002-03-03
682	2002 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2002-03-17
683	2002 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2002-03-31
684	2002 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2002-04-14
685	2002 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2002-04-28
686	2002 Austrian Grand Prix	A1-Ring, Spielberg, Austria	2002-05-12
687	2002 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2002-05-26
688	2002 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2002-06-09
689	2002 European Grand Prix	Nürburgring, Nürburg, Germany	2002-06-23
690	2002 British Grand Prix	Silverstone Circuit, Silverstone, England	2002-07-07
691	2002 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2002-07-21
692	2002 German Grand Prix	Hockenheimring, Hockenheim, Germany	2002-08-04
693	2002 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2002-08-18
694	2002 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2002-09-01
695	2002 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2002-09-15
696	2002 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2002-09-29
697	2002 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2002-10-13
698	2003 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2003-03-09
699	2003 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2003-03-23
700	2003 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2003-04-06
701	2003 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2003-04-20
702	2003 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2003-05-04
703	2003 Austrian Grand Prix	A1-Ring, Spielberg, Austria	2003-05-18
704	2003 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2003-06-01
705	2003 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2003-06-15
706	2003 European Grand Prix	Nürburgring, Nürburg, Germany	2003-06-29
707	2003 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2003-07-06
708	2003 British Grand Prix	Silverstone Circuit, Silverstone, England	2003-07-20
709	2003 German Grand Prix	Hockenheimring, Hockenheim, Germany	2003-08-03
710	2003 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2003-08-24
711	2003 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2003-09-14
712	2003 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2003-09-28
713	2003 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2003-10-12
714	2004 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2004-03-07
715	2004 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2004-03-21
716	2004 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2004-04-04
717	2004 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2004-04-25
718	2004 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2004-05-09
719	2004 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2004-05-23
720	2004 European Grand Prix	Nürburgring, Nürburg, Germany	2004-05-30
721	2004 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2004-06-13
722	2004 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2004-06-20
723	2004 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2004-07-04
724	2004 British Grand Prix	Silverstone Circuit, Silverstone, England	2004-07-11
725	2004 German Grand Prix	Hockenheimring, Hockenheim, Germany	2004-07-25
726	2004 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2004-08-15
727	2004 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2004-08-29
728	2004 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2004-09-12
729	2004 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2004-09-26
730	2004 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2004-10-10
731	2004 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2004-10-24
732	2005 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2005-03-06
733	2005 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2005-03-20
734	2005 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2005-04-03
735	2005 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2005-04-24
736	2005 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2005-05-08
737	2005 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2005-05-22
738	2005 European Grand Prix	Nürburgring, Nürburg, Germany	2005-05-29
739	2005 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2005-06-12
740	2005 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2005-06-19
741	2005 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2005-07-03
742	2005 British Grand Prix	Silverstone Circuit, Silverstone, England	2005-07-10
743	2005 German Grand Prix	Hockenheimring, Hockenheim, Germany	2005-07-24
744	2005 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2005-07-31
745	2005 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2005-08-21
746	2005 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2005-09-04
747	2005 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2005-09-11
748	2005 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2005-09-25
749	2005 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2005-10-09
750	2005 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2005-10-16
751	2006 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2006-03-12
752	2006 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2006-03-19
753	2006 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2006-04-02
754	2006 San Marino Grand Prix	Autodromo Enzo e Dino Ferrari, Imola, Italy	2006-04-23
755	2006 European Grand Prix	Nürburgring, Nürburg, Germany	2006-05-07
756	2006 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2006-05-14
757	2006 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2006-05-28
758	2006 British Grand Prix	Silverstone Circuit, Silverstone, England	2006-06-11
759	2006 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2006-06-25
760	2006 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2006-07-02
761	2006 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2006-07-16
762	2006 German Grand Prix	Hockenheimring, Hockenheim, Germany	2006-07-30
763	2006 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2006-08-06
764	2006 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2006-08-27
765	2006 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2006-09-10
766	2006 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2006-10-01
767	2006 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2006-10-08
768	2006 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2006-10-22
769	2007 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2007-03-18
770	2007 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2007-04-08
771	2007 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2007-04-15
772	2007 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2007-04-13
773	2007 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2007-05-27
774	2007 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2007-06-10
775	2007 United States Grand Prix	Indianapolis Motor Speedway, Speedway, Indiana, USA	2007-06-17
776	2007 French Grand Prix	Circuit de Nevers Magny-Cours, Magny-Cours, France	2007-07-01
777	2007 British Grand Prix	Silverstone Circuit, Silverstone, England	2007-07-08
778	2007 European Grand Prix	Nürburgring, Nürburg, Germany	2007-07-22
779	2007 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2007-08-05
780	2007 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2007-08-26
781	2007 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2007-09-09
782	2007 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2007-09-16
783	2007 Japanese Grand Prix	Fuji Speedway, Shizuoka Prefecture, Japan	2007-09-30
784	2007 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2007-10-07
785	2007 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2007-10-21
786	2008 Australian Grand Prix	Albert Park, Melbourne	2008-03-16
787	2008 Malaysian Grand Prix	Sepang International Circuit	2008-03-23
788	2008 Bahrain Grand Prix	Bahrain International Circuit, Sakhir	2008-04-06
789	2008 Spanish Grand Prix	Circuit de Catalunya, Barcelona	2008-04-27
790	2008 Turkish Grand Prix	Istanbul Park	2008-05-11
791	2008 Monaco Grand Prix	Monte-Carlo	2008-05-25
792	2008 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal	2008-06-08
793	2008 French Grand Prix	Circuit de Nevers, Magny-Cours	2008-06-22
794	2008 British Grand Prix	Silverstone	2008-07-06
795	2008 German Grand Prix	Hockenheimring	2008-07-20
796	2008 Hungarian Grand Prix	Hungaroring	2008-08-03
797	2008 European Grand Prix	Valencia Street Circuit	2008-08-24
798	2008 Belgian Grand Prix	Spa-Francorchamps	2008-09-07
799	2008 Italian Grand Prix	Autodromo Nazionale Monza	2008-09-14
800	2008 Singapore Grand Prix	Singapore Street Circuit (night race)	2008-09-28
801	2008 Japanese Grand Prix	Fuji Speedway	2008-10-12
802	2008 Chinese Grand Prix	Shanghai International Circuit	2008-10-19
803	2008 Brazilian Grand Prix	Autodromo Jose Carlos Pace, Interlagos, Sao Paulo	2008-11-02
804	2009 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2009-03-29
805	2009 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2009-04-05
806	2009 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2009-04-19
807	2009 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2009-04-26
808	2009 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2009-05-10
809	2009 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2009-05-24
810	2009 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2009-06-07
811	2009 British Grand Prix	Silverstone Circuit, Silverstone, England	2009-06-21
812	2009 German Grand Prix	Nürburgring, Nürburg, Germany	2009-07-12
813	2009 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2009-07-26
814	2009 European Grand Prix	Valencia Street Circuit, Valencia, Spain	2009-08-23
815	2009 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2009-08-30
816	2009 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2009-09-13
817	2009 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2009-09-27
818	2009 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2009-10-04
819	2009 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2009-10-18
820	2009 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2009-11-01
821	2010 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2010-03-14
822	2010 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2010-03-28
823	2010 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2010-04-04
824	2010 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2010-04-18
825	2010 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2010-05-09
826	2010 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2010-05-16
827	2010 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2010-05-30
828	2010 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2010-06-13
829	2010 European Grand Prix	Valencia Street Circuit, Valencia, Spain	2010-06-27
830	2010 British Grand Prix	Silverstone Circuit, Silverstone, England	2010-07-11
831	2010 German Grand Prix	Hockenheimring, Hockenheim, Germany	2010-07-25
832	2010 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2010-08-01
833	2010 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2010-08-29
834	2010 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2010-09-12
835	2010 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2010-09-26
836	2010 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2010-10-10
837	2010 Korean Grand Prix	Korean International Circuit, Yeongam, South Korea	2010-10-24
838	2010 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2010-11-07
839	2010 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2010-11-14
840	2011 Australian Grand Prix	Melbourne Grand Prix Circuit, Melbourne, Australia	2011-03-27
841	2011 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2011-04-10
842	2011 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2011-04-17
843	2011 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2011-05-08
844	2011 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2011-05-22
845	2011 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2011-05-29
846	2011 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2011-06-12
847	2011 European Grand Prix	Valencia Street Circuit, Valencia, Spain	2011-06-26
848	2011 British Grand Prix	Silverstone Circuit, Silverstone, England	2011-07-10
849	2011 German Grand Prix	Nürburgring, Nürburg, Germany	2011-07-24
850	2011 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2011-07-31
851	2011 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2011-08-28
852	2011 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2011-09-11
853	2011 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2011-09-25
854	2011 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2011-10-09
855	2011 Korean Grand Prix	Korean International Circuit, Yeongam, South Korea	2011-10-16
856	2011 Indian Grand Prix	Buddh International Circuit, Greater Noida, India	2011-10-30
857	2011 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2011-11-13
858	2011 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2011-11-27
859	2012 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2012-03-18
860	2012 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2012-03-25
861	2012 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2012-04-15
862	2012 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2012-04-22
863	2012 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2012-05-13
864	2012 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2012-05-27
865	2012 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2012-06-10
866	2012 European Grand Prix	Valencia Street Circuit, Valencia, Spain	2012-06-24
867	2012 British Grand Prix	Silverstone Circuit, Silverstone, England	2012-07-08
868	2012 German Grand Prix	Hockenheimring, Hockenheim, Germany	2012-07-22
869	2012 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2012-07-29
870	2012 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2012-09-02
871	2012 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2012-09-09
872	2012 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2012-09-23
873	2012 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2012-10-07
874	2012 Korean Grand Prix	Korean International Circuit, Yeongam, South Korea	2012-10-14
875	2012 Indian Grand Prix	Buddh International Circuit, Greater Noida, India	2012-10-28
876	2012 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2012-11-04
877	2012 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2012-11-18
878	2012 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2012-11-25
879	2013 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2013-03-17
880	2013 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2013-03-24
881	2013 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2013-04-14
882	2013 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2013-04-21
883	2013 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2013-05-12
884	2013 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2013-05-26
885	2013 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2013-06-09
886	2013 British Grand Prix	Silverstone Circuit, Silverstone, England	2013-06-30
887	2013 German Grand Prix	Nürburgring, Nürburg, Germany	2013-07-07
888	2013 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2013-07-28
889	2013 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2013-08-25
890	2013 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2013-09-08
891	2013 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2013-09-22
892	2013 Korean Grand Prix	Korean International Circuit, Yeongam, South Korea	2013-10-06
893	2013 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2013-10-13
894	2013 Indian Grand Prix	Buddh International Circuit, Greater Noida, India	2013-10-27
895	2013 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2013-11-03
896	2013 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2013-11-17
897	2013 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2013-11-24
898	2014 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2014-03-16
899	2014 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2014-03-30
900	2014 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2014-04-06
901	2014 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2014-04-20
902	2014 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2014-05-11
903	2014 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2014-05-25
904	2014 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2014-06-08
905	2014 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2014-06-22
906	2014 British Grand Prix	Silverstone Circuit, Silverstone, England	2014-07-06
907	2014 German Grand Prix	Hockenheimring, Hockenheim, Germany	2014-07-20
908	2014 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2014-07-27
909	2014 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2014-08-24
910	2014 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2014-09-07
911	2014 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2014-09-21
912	2014 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2014-10-05
913	2014 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2014-10-12
914	2014 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2014-11-02
915	2014 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2014-11-09
916	2014 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2014-11-23
917	2015 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2015-03-15
918	2015 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2015-03-29
919	2015 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2015-04-12
920	2015 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2015-04-19
921	2015 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2015-05-10
922	2015 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2015-05-24
923	2015 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2015-06-07
924	2015 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2015-06-21
925	2015 British Grand Prix	Silverstone Circuit, Silverstone, England	2015-07-05
926	2015 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2015-07-26
927	2015 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2015-08-23
928	2015 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2015-09-06
929	2015 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2015-09-20
930	2015 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2015-10-25
931	2015 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2015-10-11
932	2015 United States Grand Prix	Circuit of the Americas, Austin, Texas, United States	2015-10-25
933	2015 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2015-11-01
934	2015 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2015-11-15
935	2015 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2015-11-29
936	2016 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2016-03-20
937	2016 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2016-04-03
938	2016 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2016-04-17
939	2016 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2016-05-01
940	2016 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2016-05-15
941	2016 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2016-05-29
942	2016 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2016-06-12
943	2016 European Grand Prix	Baku City Circuit, Baku, Azerbaijan	2016-06-19
944	2016 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2016-07-03
945	2016 British Grand Prix	Silverstone Circuit, Silverstone, England	2016-07-10
946	2016 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2016-07-24
947	2016 German Grand Prix	Hockenheimring, Hockenheim, Germany	2016-07-31
948	2016 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2016-08-28
949	2016 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2016-09-04
950	2016 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2016-09-18
951	2016 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2016-10-02
952	2016 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2016-10-09
953	2016 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2016-10-23
954	2016 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2016-10-30
955	2016 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2016-11-13
956	2016 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2016-11-27
957	2017 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2017-03-26
958	2017 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2017-04-09
959	2017 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2017-04-16
960	2017 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2017-04-30
961	2017 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2017-05-14
962	2017 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2017-05-28
963	2017 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2017-06-11
964	2017 Azerbaijan Grand Prix	Baku City Circuit, Baku, Azerbaijan	2017-06-25
965	2017 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2017-07-09
966	2017 British Grand Prix	Silverstone Circuit, Silverstone, England	2017-07-16
967	2017 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2017-07-30
968	2017 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2017-08-27
969	2017 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2017-09-03
970	2017 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2017-09-17
971	2017 Malaysian Grand Prix	Sepang International Circuit, Sepang, Malaysia	2017-10-01
972	2017 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2017-10-08
973	2017 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2017-10-22
974	2017 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2017-10-29
975	2017 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2017-11-12
976	2017 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2017-11-26
977	2018 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2018-03-25
978	2018 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2018-04-08
979	2018 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2018-04-15
980	2018 Azerbaijan Grand Prix	Baku City Circuit, Baku, Azerbaijan	2018-04-29
981	2018 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2018-05-13
982	2018 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2018-05-27
983	2018 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2018-06-10
984	2018 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	2018-06-24
985	2018 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2018-07-01
986	2018 British Grand Prix	Silverstone Circuit, Silverstone, England	2018-07-08
987	2018 German Grand Prix	Hockenheimring, Hockenheim, Germany	2018-07-22
988	2018 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2018-07-29
989	2018 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2018-08-26
990	2018 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2018-09-02
991	2018 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2018-09-16
992	2018 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2018-09-30
993	2018 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2018-10-07
994	2018 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2018-10-21
995	2018 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2018-10-28
996	2018 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2018-11-11
997	2018 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2018-11-25
998	2019 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2019-03-17
999	2019 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2019-03-31
1000	2019 Chinese Grand Prix	Shanghai International Circuit, Shanghai, China	2019-04-14
1001	2019 Azerbaijan Grand Prix	Baku City Circuit, Baku, Azerbaijan	2019-04-28
1002	2019 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2019-05-12
1003	2019 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2019-05-26
1004	2019 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2019-06-09
1005	2019 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	2019-06-23
1006	2019 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2019-07-07
1007	2019 British Grand Prix	Silverstone Circuit, Silverstone, England	2019-07-14
1008	2019 German Grand Prix	Hockenheimring, Hockenheim, Germany	2019-07-28
1009	2019 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2019-08-04
1010	2019 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2019-08-25
1011	2019 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2019-09-08
1012	2019 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2019-09-22
1013	2019 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2019-09-29
1014	2019 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2019-10-13
1015	2019 Mexican Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2019-10-27
1016	2019 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2019-11-03
1017	2019 Brazilian Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2019-11-17
1018	2019 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2019-12-01
1019	2020 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2020-07-05
1020	2020 Styrian Grand Prix	Red Bull Ring, Spielberg, Austria	2020-07-12
1021	2020 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2020-07-19
1022	2020 British Grand Prix	Silverstone Circuit, Silverstone, England	2020-08-02
1023	70th Anniversary Grand Prix	Silverstone Circuit, Silverstone, England	2020-08-09
1024	2020 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2020-08-16
1025	2020 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2020-08-30
1026	2020 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2020-09-06
1027	2020 Tuscan Grand Prix	Mugello Circuit, Scarperia e San Piero, Italy	2020-09-13
1028	2020 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2020-09-27
1029	2020 Eifel Grand Prix	Nürburgring, Nürburg, Germany	2020-10-11
1030	2020 Portuguese Grand Prix	Algarve International Circuit, Portimão, Portugal	2020-10-25
1031	2020 Emilia Romagna Grand Prix	Autodromo Internazionale Enzo e Dino Ferrari, Imola, Italy	2020-11-01
1032	2020 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2020-11-15
1033	2020 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2020-11-29
1034	2020 Sakhir Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2020-12-06
1035	2020 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2020-12-13
1036	2021 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2021-03-28
1037	2021 Emilia Romagna Grand Prix	Autodromo Internazionale Enzo e Dino Ferrari, Imola, Italy	2021-04-18
1038	2021 Portuguese Grand Prix	Algarve International Circuit, Portimão, Portugal	2021-05-02
1039	2021 Spanish Grand Prix	Circuit de Catalunya, Barcelona, Spain	2021-05-09
1040	2021 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2021-05-23
1041	2021 Azerbaijan Grand Prix	Baku City Circuit, Baku, Azerbaijan	2021-06-06
1042	2021 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	2021-06-20
1043	2021 Styrian Grand Prix	Red Bull Ring, Spielberg, Austria	2021-07-04
1044	2021 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2021-07-11
1045	2021 British Grand Prix	Silverstone Circuit, Silverstone, England	2021-07-18
1046	2021 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2021-08-01
1047	2021 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2021-08-29
1048	2021 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	2021-09-05
1049	2021 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2021-09-12
1050	2021 Russian Grand Prix	Sochi Autodrom, Sochi, Russia	2021-09-26
1051	2021 Turkish Grand Prix	Istanbul Park Circuit, Istanbul, Turkey	2021-10-10
1052	2021 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2021-10-24
1053	2021 Mexican City Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2021-11-07
1054	2021 São Paulo Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2021-11-14
1055	2021 Qatar Grand Prix	Losail International Circuit, Lusail, Qatar	2021-11-21
1056	2021 Saudi Arabian Grand Prix	Jeddah Corniche Circuit, Jeddah, Saudi Arabia	2021-12-05
1057	2021 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2021-12-12
1058	2022 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2022-03-20
1059	2022 Saudi Arabian Grand Prix	Jeddah Corniche Circuit, Jeddah, Saudi Arabia	2022-03-27
1060	2022 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2022-04-10
1061	2022 Emilia Romagna Grand Prix	Autodromo Internazionale Enzo e Dino Ferrari, Imola, Italy	2022-04-24
1062	2022 Miami Grand Prix	Miami International Autodrome, Miami Gardens, Florida, USA	2022-05-08
1063	2022 Spanish Grand Prix	Circuit de Barcelona-Catalunya, Montmeló, Spain	2022-05-22
1064	2022 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2022-05-29
1065	2022 Azerbaijan Grand Prix	Baku City Circuit, Baku, Azerbaijan	2022-06-12
1066	2022 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2022-06-19
1067	2022 British Grand Prix	Silverstone Circuit, Silverstone, England	2022-07-03
1068	2022 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2022-07-10
1069	2022 French Grand Prix	Circuit Paul Ricard, Le Castellet, France	2022-07-24
1070	2022 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2022-07-31
1071	2022 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2022-08-28
1072	2022 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	2022-09-04
1073	2022 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2022-09-11
1074	2022 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2022-09-30
1075	2022 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2022-10-09
1076	2022 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2022-10-23
1077	2022 Mexican City Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2022-10-30
1078	2022 São Paulo Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2022-11-13
1079	2022 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2022-11-20
1080	2023 Bahrain Grand Prix	Bahrain International Circuit, Sakhir, Bahrain	2023-03-05
1081	2023 Saudi Arabian Grand Prix	Jeddah Corniche Circuit, Jeddah, Saudi Arabia	2023-03-19
1082	2023 Australian Grand Prix	Albert Park Grand Prix Circuit, Melbourne, Australia	2023-04-02
1083	2023 Azerbaijan Grand Prix	Baku City Circuit, Baku, Azerbaijan	2023-04-30
1084	2023 Miami Grand Prix	Miami International Autodrome, Miami Gardens, Florida, USA	2023-05-07
1085	2023 Monaco Grand Prix	Circuit de Monaco, Monte Carlo, Monaco	2023-05-28
1086	2023 Spanish Grand Prix	Circuit de Barcelona-Catalunya, Montmeló, Spain	2023-06-04
1087	2023 Canadian Grand Prix	Circuit Gilles Villeneuve, Montreal, Quebec, Canada	2023-06-18
1088	2023 Austrian Grand Prix	Red Bull Ring, Spielberg, Austria	2023-07-02
1089	2023 British Grand Prix	Silverstone Circuit, Silverstone, England	2023-07-09
1090	2023 Hungarian Grand Prix	Hungaroring, Budapest, Hungary	2023-07-23
1091	2023 Belgian Grand Prix	Circuit de Spa-Francorchamps, Spa, Belgium	2023-07-30
1092	2023 Dutch Grand Prix	Circuit Zandvoort, Zandvoort, Netherlands	2023-08-27
1093	2023 Italian Grand Prix	Autodromo Nazionale Monza, Monza, Italy	2023-09-03
1094	2023 Singapore Grand Prix	Marina Bay Street Circuit, Singapore	2023-09-17
1095	2023 Japanese Grand Prix	Suzuka Circuit, Suzuka, Japan	2023-09-24
1096	2023 Qatar Grand Prix	Losail International Circuit, Lusail, Qatar	2023-10-08
1097	2023 United States Grand Prix	Circuit of the Americas, Austin, Texas, USA	2023-10-22
1098	2023 Mexican City Grand Prix	Autódromo Hermanos Rodríguez, Mexico City, Mexico	2023-10-29
1099	2023 São Paulo Grand Prix	Autódromo José Carlos Pace, Interlagos, São Paulo, Brazil	2023-11-05
1100	2023 Las Vegas Grand Prix	Las Vegas Street Circuit, Las Vegas, Nevada, USA	2023-11-18
1101	2023 Abu Dhabi Grand Prix	Yas Marina Circuit, Abu Dhabi, United Arab Emirates	2023-11-26
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: jarrodphilips
--

COPY public.teams (id, name, nationality) FROM stdin;
1	Alfa Romeo-Sauber	Switzerland
2	AlphaTauri	Italy
3	Alpine F1 Team	France
4	Arrows	Great Britain
5	AGS	France
6	Andrea Moda	Italy
7	ATS	Italy
8	Aston Martin	Great Britain
9	Benetton	Italy
10	BMW Sauber	Switzerland
11	Brabham	Great Britain
12	Brawn GP	Great Britain
13	BRM	Great Britain
14	Caterham F1 Team	Malaysia
15	Connaught	Great Britain
16	Cooper	Great Britain
17	DAMS	France
18	De Tomaso	Italy
19	Eifelland	Germany
20	EMKA	Germany
21	Ensign	Great Britain
22	Ferrari	Italy
23	Force India	India
24	Footwork	Great Britain
25	Haas F1 Team	United States
26	Hesketh	Great Britain
27	HRT	Spain
28	Honda	Japan
29	Jordan	Ireland
30	Ken Tyrrell Racing	Great Britain
31	Life Racing	Italy
32	Lola	Great Britain
33	Lotus	Great Britain
34	Manor Motorsport	Great Britain
35	Marussia F1 Team	Russia
36	McLaren	Great Britain
37	Mercedes	Germany
38	Minardi	Italy
39	OSCA	Italy
40	Onyx	Great Britain
41	Porsche	Germany
42	Prost Grand Prix	France
43	RAM	Great Britain
44	Red Bull	Austria
45	Renault	France
46	Sauber	Switzerland
47	Scuderia Italia	Italy
48	Shadow	Great Britain
49	Simtek	Great Britain
50	Spirit	Great Britain
51	Spyker F1 Team	Netherlands
52	Stewart	Great Britain
53	Super Aguri	Japan
54	Surtees	Great Britain
55	Talbot	Great Britain
56	Tecno	Italy
57	Theodore Racing	Hong Kong
58	Toleman	Great Britain
59	Toro Rosso	Italy
60	Toyota	Japan
61	Vanwall	Great Britain
62	Virgin Racing	Russia
63	Williams	Great Britain
64	Wolf	Canada
65	Zakspeed	Germany
\.


--
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: jarrodphilips
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);


--
-- Name: races races_pkey; Type: CONSTRAINT; Schema: public; Owner: jarrodphilips
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: jarrodphilips
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: race_results race_results_driver_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jarrodphilips
--

ALTER TABLE ONLY public.race_results
    ADD CONSTRAINT race_results_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.drivers(id);


--
-- Name: race_results race_results_race_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jarrodphilips
--

ALTER TABLE ONLY public.race_results
    ADD CONSTRAINT race_results_race_id_fkey FOREIGN KEY (race_id) REFERENCES public.races(id);


--
-- Name: race_results race_results_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jarrodphilips
--

ALTER TABLE ONLY public.race_results
    ADD CONSTRAINT race_results_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- PostgreSQL database dump complete
--

