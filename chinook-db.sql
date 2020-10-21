CREATE TABLE albums
(
    id int PRIMARY KEY NOT NULL,
    title VARCHAR(160) NOT NULL,
    artist_id int NOT NULL
);

CREATE TABLE artists
(
    id int PRIMARY KEY NOT NULL,
    name VARCHAR(120)
);

CREATE TABLE customers
(
    id int PRIMARY KEY NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    company VARCHAR(80),
    address VARCHAR(70),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(40),
    postal_code VARCHAR(10),
    phone VARCHAR(24),
    fax VARCHAR(24),
    email VARCHAR(60) NOT NULL,
    support_rep_id int
);

CREATE TABLE employees
(
    id int PRIMARY KEY NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    title VARCHAR(30),
    reports_to INT,
    birth_date TIMESTAMP,
    hire_date TIMESTAMP,
    address VARCHAR(70),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(40),
    postal_code VARCHAR(10),
    phone VARCHAR(24),
    fax VARCHAR(24),
    email VARCHAR(60)
);

CREATE TABLE genres
(
    id int PRIMARY KEY NOT NULL,
    name VARCHAR(120)
);

CREATE TABLE invoices
(
    id int PRIMARY KEY NOT NULL,
    customer_id int NOT NULL,
    invoice_date TIMESTAMP NOT NULL,
    billing_address VARCHAR(70),
    billing_city VARCHAR(40),
    billing_state VARCHAR(40),
    billing_country VARCHAR(40),
    billing_postal_code VARCHAR(10),
    total NUMERIC(10,2) NOT NULL
);

CREATE TABLE invoice_lines
(
    id int PRIMARY KEY NOT NULL,
    invoice_id int NOT NULL,
    track_id int NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE media_types
(
    id int PRIMARY KEY NOT NULL,
    name VARCHAR(120)
);

CREATE TABLE playlists
(
    id int PRIMARY KEY NOT NULL,
    name VARCHAR(120)
);

CREATE TABLE playlist_track
(
    playlist_id int NOT NULL,
    track_id int NOT NULL
);

CREATE TABLE tracks
(
    id int PRIMARY KEY NOT NULL,
    name VARCHAR(200) NOT NULL,
    album_id int,
    media_type_id int NOT NULL,
    genre_id int,
    composer VARCHAR(220),
    milliseconds INT NOT NULL,
    bytes INT,
    unit_price NUMERIC(10,2) NOT NULL
);

INSERT INTO genres (id, name) VALUES (1, N'Rock');
INSERT INTO genres (id, name) VALUES (2, N'Jazz');
INSERT INTO genres (id, name) VALUES (3, N'Metal');
INSERT INTO genres (id, name) VALUES (4, N'Alternative & Punk');
INSERT INTO genres (id, name) VALUES (5, N'Rock And Roll');
INSERT INTO genres (id, name) VALUES (6, N'Blues');
INSERT INTO genres (id, name) VALUES (7, N'Latin');
INSERT INTO genres (id, name) VALUES (8, N'Reggae');
INSERT INTO genres (id, name) VALUES (9, N'Pop');
INSERT INTO genres (id, name) VALUES (10, N'Soundtrack');
INSERT INTO genres (id, name) VALUES (11, N'Bossa Nova');
INSERT INTO genres (id, name) VALUES (12, N'Easy Listening');
INSERT INTO genres (id, name) VALUES (13, N'Heavy Metal');
INSERT INTO genres (id, name) VALUES (14, N'R&B/Soul');
INSERT INTO genres (id, name) VALUES (15, N'Electronica/Dance');
INSERT INTO genres (id, name) VALUES (16, N'World');
INSERT INTO genres (id, name) VALUES (17, N'Hip Hop/Rap');
INSERT INTO genres (id, name) VALUES (18, N'Science Fiction');
INSERT INTO genres (id, name) VALUES (19, N'TV Shows');
INSERT INTO genres (id, name) VALUES (20, N'Sci Fi & Fantasy');
INSERT INTO genres (id, name) VALUES (21, N'Drama');
INSERT INTO genres (id, name) VALUES (22, N'Comedy');
INSERT INTO genres (id, name) VALUES (23, N'Alternative');
INSERT INTO genres (id, name) VALUES (24, N'Classical');
INSERT INTO genres (id, name) VALUES (25, N'Opera');

INSERT INTO media_types (id, name) VALUES (1, N'MPEG audio file');
INSERT INTO media_types (id, name) VALUES (2, N'Protected AAC audio file');
INSERT INTO media_types (id, name) VALUES (3, N'Protected MPEG-4 video file');
INSERT INTO media_types (id, name) VALUES (4, N'Purchased AAC audio file');
INSERT INTO media_types (id, name) VALUES (5, N'AAC audio file');


INSERT INTO artists (id, name) VALUES (1, N'AC/DC');
INSERT INTO artists (id, name) VALUES (2, N'Accept');
INSERT INTO artists (id, name) VALUES (3, N'Aerosmith');
INSERT INTO artists (id, name) VALUES (4, N'Alanis Morissette');
INSERT INTO artists (id, name) VALUES (5, N'Alice In Chains');
INSERT INTO artists (id, name) VALUES (6, N'Antônio Carlos Jobim');
INSERT INTO artists (id, name) VALUES (7, N'Apocalyptica');
INSERT INTO artists (id, name) VALUES (8, N'Audioslave');
INSERT INTO artists (id, name) VALUES (9, N'BackBeat');
INSERT INTO artists (id, name) VALUES (10, N'Billy Cobham');
INSERT INTO artists (id, name) VALUES (11, N'Black Label Society');
INSERT INTO artists (id, name) VALUES (12, N'Black Sabbath');
INSERT INTO artists (id, name) VALUES (13, N'Body Count');
INSERT INTO artists (id, name) VALUES (14, N'Bruce Dickinson');
INSERT INTO artists (id, name) VALUES (15, N'Buddy Guy');
INSERT INTO artists (id, name) VALUES (16, N'Caetano Veloso');
INSERT INTO artists (id, name) VALUES (17, N'Chico Buarque');
INSERT INTO artists (id, name) VALUES (18, N'Chico Science & Nação Zumbi');
INSERT INTO artists (id, name) VALUES (19, N'Cidade Negra');
INSERT INTO artists (id, name) VALUES (20, N'Cláudio Zoli');
INSERT INTO artists (id, name) VALUES (21, N'Various artistss');
INSERT INTO artists (id, name) VALUES (22, N'Led Zeppelin');
INSERT INTO artists (id, name) VALUES (23, N'Frank Zappa & Captain Beefheart');
INSERT INTO artists (id, name) VALUES (24, N'Marcos Valle');
INSERT INTO artists (id, name) VALUES (25, N'Milton Nascimento & Bebeto');
INSERT INTO artists (id, name) VALUES (26, N'Azymuth');
INSERT INTO artists (id, name) VALUES (27, N'Gilberto Gil');
INSERT INTO artists (id, name) VALUES (28, N'João Gilberto');
INSERT INTO artists (id, name) VALUES (29, N'Bebel Gilberto');
INSERT INTO artists (id, name) VALUES (30, N'Jorge Vercilo');
INSERT INTO artists (id, name) VALUES (31, N'Baby Consuelo');
INSERT INTO artists (id, name) VALUES (32, N'Ney Matogrosso');
INSERT INTO artists (id, name) VALUES (33, N'Luiz Melodia');
INSERT INTO artists (id, name) VALUES (34, N'Nando Reis');
INSERT INTO artists (id, name) VALUES (35, N'Pedro Luís & A Parede');
INSERT INTO artists (id, name) VALUES (36, N'O Rappa');
INSERT INTO artists (id, name) VALUES (37, N'Ed Motta');
INSERT INTO artists (id, name) VALUES (38, N'Banda Black Rio');
INSERT INTO artists (id, name) VALUES (39, N'Fernanda Porto');
INSERT INTO artists (id, name) VALUES (40, N'Os Cariocas');
INSERT INTO artists (id, name) VALUES (41, N'Elis Regina');
INSERT INTO artists (id, name) VALUES (42, N'Milton Nascimento');
INSERT INTO artists (id, name) VALUES (43, N'A Cor Do Som');
INSERT INTO artists (id, name) VALUES (44, N'Kid Abelha');
INSERT INTO artists (id, name) VALUES (45, N'Sandra De Sá');
INSERT INTO artists (id, name) VALUES (46, N'Jorge Ben');
INSERT INTO artists (id, name) VALUES (47, N'Hermeto Pascoal');
INSERT INTO artists (id, name) VALUES (48, N'Barão Vermelho');
INSERT INTO artists (id, name) VALUES (49, N'Edson, DJ Marky & DJ Patife Featuring Fernanda Porto');
INSERT INTO artists (id, name) VALUES (50, N'Metallica');
INSERT INTO artists (id, name) VALUES (51, N'Queen');
INSERT INTO artists (id, name) VALUES (52, N'Kiss');
INSERT INTO artists (id, name) VALUES (53, N'Spyro Gyra');
INSERT INTO artists (id, name) VALUES (54, N'Green Day');
INSERT INTO artists (id, name) VALUES (55, N'David Coverdale');
INSERT INTO artists (id, name) VALUES (56, N'Gonzaguinha');
INSERT INTO artists (id, name) VALUES (57, N'Os Mutantes');
INSERT INTO artists (id, name) VALUES (58, N'Deep Purple');
INSERT INTO artists (id, name) VALUES (59, N'Santana');
INSERT INTO artists (id, name) VALUES (60, N'Santana Feat. Dave Matthews');
INSERT INTO artists (id, name) VALUES (61, N'Santana Feat. Everlast');
INSERT INTO artists (id, name) VALUES (62, N'Santana Feat. Rob Thomas');
INSERT INTO artists (id, name) VALUES (63, N'Santana Feat. Lauryn Hill & Cee-Lo');
INSERT INTO artists (id, name) VALUES (64, N'Santana Feat. The Project G&B');
INSERT INTO artists (id, name) VALUES (65, N'Santana Feat. Maná');
INSERT INTO artists (id, name) VALUES (66, N'Santana Feat. Eagle-Eye Cherry');
INSERT INTO artists (id, name) VALUES (67, N'Santana Feat. Eric Clapton');
INSERT INTO artists (id, name) VALUES (68, N'Miles Davis');
INSERT INTO artists (id, name) VALUES (69, N'Gene Krupa');
INSERT INTO artists (id, name) VALUES (70, N'Toquinho & Vinícius');
INSERT INTO artists (id, name) VALUES (71, N'Vinícius De Moraes & Baden Powell');
INSERT INTO artists (id, name) VALUES (72, N'Vinícius De Moraes');
INSERT INTO artists (id, name) VALUES (73, N'Vinícius E Qurteto Em Cy');
INSERT INTO artists (id, name) VALUES (74, N'Vinícius E Odette Lara');
INSERT INTO artists (id, name) VALUES (75, N'Vinicius, Toquinho & Quarteto Em Cy');
INSERT INTO artists (id, name) VALUES (76, N'Creedence Clearwater Revival');
INSERT INTO artists (id, name) VALUES (77, N'Cássia Eller');
INSERT INTO artists (id, name) VALUES (78, N'Def Leppard');
INSERT INTO artists (id, name) VALUES (79, N'Dennis Chambers');
INSERT INTO artists (id, name) VALUES (80, N'Djavan');
INSERT INTO artists (id, name) VALUES (81, N'Eric Clapton');
INSERT INTO artists (id, name) VALUES (82, N'Faith No More');
INSERT INTO artists (id, name) VALUES (83, N'Falamansa');
INSERT INTO artists (id, name) VALUES (84, N'Foo Fighters');
INSERT INTO artists (id, name) VALUES (85, N'Frank Sinatra');
INSERT INTO artists (id, name) VALUES (86, N'Funk Como Le Gusta');
INSERT INTO artists (id, name) VALUES (87, N'Godsmack');
INSERT INTO artists (id, name) VALUES (88, N'Guns N'' Roses');
INSERT INTO artists (id, name) VALUES (89, N'Incognito');
INSERT INTO artists (id, name) VALUES (90, N'Iron Maiden');
INSERT INTO artists (id, name) VALUES (91, N'James Brown');
INSERT INTO artists (id, name) VALUES (92, N'Jamiroquai');
INSERT INTO artists (id, name) VALUES (93, N'JET');
INSERT INTO artists (id, name) VALUES (94, N'Jimi Hendrix');
INSERT INTO artists (id, name) VALUES (95, N'Joe Satriani');
INSERT INTO artists (id, name) VALUES (96, N'Jota Quest');
INSERT INTO artists (id, name) VALUES (97, N'João Suplicy');
INSERT INTO artists (id, name) VALUES (98, N'Judas Priest');
INSERT INTO artists (id, name) VALUES (99, N'Legião Urbana');
INSERT INTO artists (id, name) VALUES (100, N'Lenny Kravitz');
INSERT INTO artists (id, name) VALUES (101, N'Lulu Santos');
INSERT INTO artists (id, name) VALUES (102, N'Marillion');
INSERT INTO artists (id, name) VALUES (103, N'Marisa Monte');
INSERT INTO artists (id, name) VALUES (104, N'Marvin Gaye');
INSERT INTO artists (id, name) VALUES (105, N'Men At Work');
INSERT INTO artists (id, name) VALUES (106, N'Motörhead');
INSERT INTO artists (id, name) VALUES (107, N'Motörhead & Girlschool');
INSERT INTO artists (id, name) VALUES (108, N'Mônica Marianno');
INSERT INTO artists (id, name) VALUES (109, N'Mötley Crüe');
INSERT INTO artists (id, name) VALUES (110, N'Nirvana');
INSERT INTO artists (id, name) VALUES (111, N'O Terço');
INSERT INTO artists (id, name) VALUES (112, N'Olodum');
INSERT INTO artists (id, name) VALUES (113, N'Os Paralamas Do Sucesso');
INSERT INTO artists (id, name) VALUES (114, N'Ozzy Osbourne');
INSERT INTO artists (id, name) VALUES (115, N'Page & Plant');
INSERT INTO artists (id, name) VALUES (116, N'Passengers');
INSERT INTO artists (id, name) VALUES (117, N'Paul D''Ianno');
INSERT INTO artists (id, name) VALUES (118, N'Pearl Jam');
INSERT INTO artists (id, name) VALUES (119, N'Peter Tosh');
INSERT INTO artists (id, name) VALUES (120, N'Pink Floyd');
INSERT INTO artists (id, name) VALUES (121, N'Planet Hemp');
INSERT INTO artists (id, name) VALUES (122, N'R.E.M. Feat. Kate Pearson');
INSERT INTO artists (id, name) VALUES (123, N'R.E.M. Feat. KRS-One');
INSERT INTO artists (id, name) VALUES (124, N'R.E.M.');
INSERT INTO artists (id, name) VALUES (125, N'Raimundos');
INSERT INTO artists (id, name) VALUES (126, N'Raul Seixas');
INSERT INTO artists (id, name) VALUES (127, N'Red Hot Chili Peppers');
INSERT INTO artists (id, name) VALUES (128, N'Rush');
INSERT INTO artists (id, name) VALUES (129, N'Simply Red');
INSERT INTO artists (id, name) VALUES (130, N'Skank');
INSERT INTO artists (id, name) VALUES (131, N'Smashing Pumpkins');
INSERT INTO artists (id, name) VALUES (132, N'Soundgarden');
INSERT INTO artists (id, name) VALUES (133, N'Stevie Ray Vaughan & Double Trouble');
INSERT INTO artists (id, name) VALUES (134, N'Stone Temple Pilots');
INSERT INTO artists (id, name) VALUES (135, N'System Of A Down');
INSERT INTO artists (id, name) VALUES (136, N'Terry Bozzio, Tony Levin & Steve Stevens');
INSERT INTO artists (id, name) VALUES (137, N'The Black Crowes');
INSERT INTO artists (id, name) VALUES (138, N'The Clash');
INSERT INTO artists (id, name) VALUES (139, N'The Cult');
INSERT INTO artists (id, name) VALUES (140, N'The Doors');
INSERT INTO artists (id, name) VALUES (141, N'The Police');
INSERT INTO artists (id, name) VALUES (142, N'The Rolling Stones');
INSERT INTO artists (id, name) VALUES (143, N'The Tea Party');
INSERT INTO artists (id, name) VALUES (144, N'The Who');
INSERT INTO artists (id, name) VALUES (145, N'Tim Maia');
INSERT INTO artists (id, name) VALUES (146, N'Titãs');
INSERT INTO artists (id, name) VALUES (147, N'Battlestar Galactica');
INSERT INTO artists (id, name) VALUES (148, N'Heroes');
INSERT INTO artists (id, name) VALUES (149, N'Lost');
INSERT INTO artists (id, name) VALUES (150, N'U2');
INSERT INTO artists (id, name) VALUES (151, N'UB40');
INSERT INTO artists (id, name) VALUES (152, N'Van Halen');
INSERT INTO artists (id, name) VALUES (153, N'Velvet Revolver');
INSERT INTO artists (id, name) VALUES (154, N'Whitesnake');
INSERT INTO artists (id, name) VALUES (155, N'Zeca Pagodinho');
INSERT INTO artists (id, name) VALUES (156, N'The Office');
INSERT INTO artists (id, name) VALUES (157, N'Dread Zeppelin');
INSERT INTO artists (id, name) VALUES (158, N'Battlestar Galactica (Classic)');
INSERT INTO artists (id, name) VALUES (159, N'Aquaman');
INSERT INTO artists (id, name) VALUES (160, N'Christina Aguilera featuring BigElf');
INSERT INTO artists (id, name) VALUES (161, N'Aerosmith & Sierra Leone''s Refugee Allstars');
INSERT INTO artists (id, name) VALUES (162, N'Los Lonely Boys');
INSERT INTO artists (id, name) VALUES (163, N'Corinne Bailey Rae');
INSERT INTO artists (id, name) VALUES (164, N'Dhani Harrison & Jakob Dylan');
INSERT INTO artists (id, name) VALUES (165, N'Jackson Browne');
INSERT INTO artists (id, name) VALUES (166, N'Avril Lavigne');
INSERT INTO artists (id, name) VALUES (167, N'Big & Rich');
INSERT INTO artists (id, name) VALUES (168, N'Youssou N''Dour');
INSERT INTO artists (id, name) VALUES (169, N'Black Eyed Peas');
INSERT INTO artists (id, name) VALUES (170, N'Jack Johnson');
INSERT INTO artists (id, name) VALUES (171, N'Ben Harper');
INSERT INTO artists (id, name) VALUES (172, N'Snow Patrol');
INSERT INTO artists (id, name) VALUES (173, N'Matisyahu');
INSERT INTO artists (id, name) VALUES (174, N'The Postal Service');
INSERT INTO artists (id, name) VALUES (175, N'Jaguares');
INSERT INTO artists (id, name) VALUES (176, N'The Flaming Lips');
INSERT INTO artists (id, name) VALUES (177, N'Jack''s Mannequin & Mick Fleetwood');
INSERT INTO artists (id, name) VALUES (178, N'Regina Spektor');
INSERT INTO artists (id, name) VALUES (179, N'Scorpions');
INSERT INTO artists (id, name) VALUES (180, N'House Of Pain');
INSERT INTO artists (id, name) VALUES (181, N'Xis');
INSERT INTO artists (id, name) VALUES (182, N'Nega Gizza');
INSERT INTO artists (id, name) VALUES (183, N'Gustavo & Andres Veiga & Salazar');
INSERT INTO artists (id, name) VALUES (184, N'Rodox');
INSERT INTO artists (id, name) VALUES (185, N'Charlie Brown Jr.');
INSERT INTO artists (id, name) VALUES (186, N'Pedro Luís E A Parede');
INSERT INTO artists (id, name) VALUES (187, N'Los Hermanos');
INSERT INTO artists (id, name) VALUES (188, N'Mundo Livre S/A');
INSERT INTO artists (id, name) VALUES (189, N'Otto');
INSERT INTO artists (id, name) VALUES (190, N'Instituto');
INSERT INTO artists (id, name) VALUES (191, N'Nação Zumbi');
INSERT INTO artists (id, name) VALUES (192, N'DJ Dolores & Orchestra Santa Massa');
INSERT INTO artists (id, name) VALUES (193, N'Seu Jorge');
INSERT INTO artists (id, name) VALUES (194, N'Sabotage E Instituto');
INSERT INTO artists (id, name) VALUES (195, N'Stereo Maracana');
INSERT INTO artists (id, name) VALUES (196, N'Cake');
INSERT INTO artists (id, name) VALUES (197, N'Aisha Duo');
INSERT INTO artists (id, name) VALUES (198, N'Habib Koité and Bamada');
INSERT INTO artists (id, name) VALUES (199, N'Karsh Kale');
INSERT INTO artists (id, name) VALUES (200, N'The Posies');
INSERT INTO artists (id, name) VALUES (201, N'Luciana Souza/Romero Lubambo');
INSERT INTO artists (id, name) VALUES (202, N'Aaron Goldberg');
INSERT INTO artists (id, name) VALUES (203, N'Nicolaus Esterhazy Sinfonia');
INSERT INTO artists (id, name) VALUES (204, N'Temple of the Dog');
INSERT INTO artists (id, name) VALUES (205, N'Chris Cornell');
INSERT INTO artists (id, name) VALUES (206, N'Alberto Turco & Nova Schola Gregoriana');
INSERT INTO artists (id, name) VALUES (207, N'Richard Marlow & The Choir of Trinity College, Cambridge');
INSERT INTO artists (id, name) VALUES (208, N'English Concert & Trevor Pinnock');
INSERT INTO artists (id, name) VALUES (209, N'Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker');
INSERT INTO artists (id, name) VALUES (210, N'Hilary Hahn, Jeffrey Kahane, Los Angeles Chamber Orchestra & Margaret Batjer');
INSERT INTO artists (id, name) VALUES (211, N'Wilhelm Kempff');
INSERT INTO artists (id, name) VALUES (212, N'Yo-Yo Ma');
INSERT INTO artists (id, name) VALUES (213, N'Scholars Baroque Ensemble');
INSERT INTO artists (id, name) VALUES (214, N'Academy of St. Martin in the Fields & Sir Neville Marriner');
INSERT INTO artists (id, name) VALUES (215, N'Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner');
INSERT INTO artists (id, name) VALUES (216, N'Berliner Philharmoniker, Claudio Abbado & Sabine Meyer');
INSERT INTO artists (id, name) VALUES (217, N'Royal Philharmonic Orchestra & Sir Thomas Beecham');
INSERT INTO artists (id, name) VALUES (218, N'Orchestre Révolutionnaire et Romantique & John Eliot Gardiner');
INSERT INTO artists (id, name) VALUES (219, N'Britten Sinfonia, Ivor Bolton & Lesley Garrett');
INSERT INTO artists (id, name) VALUES (220, N'Chicago Symphony Chorus, Chicago Symphony Orchestra & Sir Georg Solti');
INSERT INTO artists (id, name) VALUES (221, N'Sir Georg Solti & Wiener Philharmoniker');
INSERT INTO artists (id, name) VALUES (222, N'Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair');
INSERT INTO artists (id, name) VALUES (223, N'London Symphony Orchestra & Sir Charles Mackerras');
INSERT INTO artists (id, name) VALUES (224, N'Barry Wordsworth & BBC Concert Orchestra');
INSERT INTO artists (id, name) VALUES (225, N'Herbert Von Karajan, Mirella Freni & Wiener Philharmoniker');
INSERT INTO artists (id, name) VALUES (226, N'Eugene Ormandy');
INSERT INTO artists (id, name) VALUES (227, N'Luciano Pavarotti');
INSERT INTO artists (id, name) VALUES (228, N'Leonard Bernstein & New York Philharmonic');
INSERT INTO artists (id, name) VALUES (229, N'Boston Symphony Orchestra & Seiji Ozawa');
INSERT INTO artists (id, name) VALUES (230, N'Aaron Copland & London Symphony Orchestra');
INSERT INTO artists (id, name) VALUES (231, N'Ton Koopman');
INSERT INTO artists (id, name) VALUES (232, N'Sergei Prokofiev & Yuri Temirkanov');
INSERT INTO artists (id, name) VALUES (233, N'Chicago Symphony Orchestra & Fritz Reiner');
INSERT INTO artists (id, name) VALUES (234, N'Orchestra of The Age of Enlightenment');
INSERT INTO artists (id, name) VALUES (235, N'Emanuel Ax, Eugene Ormandy & Philadelphia Orchestra');
INSERT INTO artists (id, name) VALUES (236, N'James Levine');
INSERT INTO artists (id, name) VALUES (237, N'Berliner Philharmoniker & Hans Rosbaud');
INSERT INTO artists (id, name) VALUES (238, N'Maurizio Pollini');
INSERT INTO artists (id, name) VALUES (239, N'Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett');
INSERT INTO artists (id, name) VALUES (240, N'Gustav Mahler');
INSERT INTO artists (id, name) VALUES (241, N'Felix Schmidt, London Symphony Orchestra & Rafael Frühbeck de Burgos');
INSERT INTO artists (id, name) VALUES (242, N'Edo de Waart & San Francisco Symphony');
INSERT INTO artists (id, name) VALUES (243, N'Antal Doráti & London Symphony Orchestra');
INSERT INTO artists (id, name) VALUES (244, N'Choir Of Westminster Abbey & Simon Preston');
INSERT INTO artists (id, name) VALUES (245, N'Michael Tilson Thomas & San Francisco Symphony');
INSERT INTO artists (id, name) VALUES (246, N'Chor der Wiener Staatsoper, Herbert Von Karajan & Wiener Philharmoniker');
INSERT INTO artists (id, name) VALUES (247, N'The King''s Singers');
INSERT INTO artists (id, name) VALUES (248, N'Berliner Philharmoniker & Herbert Von Karajan');
INSERT INTO artists (id, name) VALUES (249, N'Sir Georg Solti, Sumi Jo & Wiener Philharmoniker');
INSERT INTO artists (id, name) VALUES (250, N'Christopher O''Riley');
INSERT INTO artists (id, name) VALUES (251, N'Fretwork');
INSERT INTO artists (id, name) VALUES (252, N'Amy Winehouse');
INSERT INTO artists (id, name) VALUES (253, N'Calexico');
INSERT INTO artists (id, name) VALUES (254, N'Otto Klemperer & Philharmonia Orchestra');
INSERT INTO artists (id, name) VALUES (255, N'Yehudi Menuhin');
INSERT INTO artists (id, name) VALUES (256, N'Philharmonia Orchestra & Sir Neville Marriner');
INSERT INTO artists (id, name) VALUES (257, N'Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart');
INSERT INTO artists (id, name) VALUES (258, N'Les Arts Florissants & William Christie');
INSERT INTO artists (id, name) VALUES (259, N'The 12 Cellists of The Berlin Philharmonic');
INSERT INTO artists (id, name) VALUES (260, N'Adrian Leaper & Doreen de Feis');
INSERT INTO artists (id, name) VALUES (261, N'Roger Norrington, London Classical Players');
INSERT INTO artists (id, name) VALUES (262, N'Charles Dutoit & L''Orchestre Symphonique de Montréal');
INSERT INTO artists (id, name) VALUES (263, N'Equale Brass Ensemble, John Eliot Gardiner & Munich Monteverdi Orchestra and Choir');
INSERT INTO artists (id, name) VALUES (264, N'Kent Nagano and Orchestre de l''Opéra de Lyon');
INSERT INTO artists (id, name) VALUES (265, N'Julian Bream');
INSERT INTO artists (id, name) VALUES (266, N'Martin Roscoe');
INSERT INTO artists (id, name) VALUES (267, N'Göteborgs Symfoniker & Neeme Järvi');
INSERT INTO artists (id, name) VALUES (268, N'Itzhak Perlman');
INSERT INTO artists (id, name) VALUES (269, N'Michele Campanella');
INSERT INTO artists (id, name) VALUES (270, N'Gerald Moore');
INSERT INTO artists (id, name) VALUES (271, N'Mela Tenenbaum, Pro Musica Prague & Richard Kapp');
INSERT INTO artists (id, name) VALUES (272, N'Emerson String Quartet');
INSERT INTO artists (id, name) VALUES (273, N'C. Monteverdi, Nigel Rogers - Chiaroscuro; London Baroque; London Cornett & Sackbu');
INSERT INTO artists (id, name) VALUES (274, N'Nash Ensemble');
INSERT INTO artists (id, name) VALUES (275, N'Philip Glass Ensemble');

INSERT INTO albums (id, title, artist_id) VALUES (1, N'For Those About To Rock We Salute You', 1);
INSERT INTO albums (id, title, artist_id) VALUES (2, N'Balls to the Wall', 2);
INSERT INTO albums (id, title, artist_id) VALUES (3, N'Restless and Wild', 2);
INSERT INTO albums (id, title, artist_id) VALUES (4, N'Let There Be Rock', 1);
INSERT INTO albums (id, title, artist_id) VALUES (5, N'Big Ones', 3);
INSERT INTO albums (id, title, artist_id) VALUES (6, N'Jagged Little Pill', 4);
INSERT INTO albums (id, title, artist_id) VALUES (7, N'Facelift', 5);
INSERT INTO albums (id, title, artist_id) VALUES (8, N'Warner 25 Anos', 6);
INSERT INTO albums (id, title, artist_id) VALUES (9, N'Plays Metallica By Four Cellos', 7);
INSERT INTO albums (id, title, artist_id) VALUES (10, N'Audioslave', 8);
INSERT INTO albums (id, title, artist_id) VALUES (11, N'Out Of Exile', 8);
INSERT INTO albums (id, title, artist_id) VALUES (12, N'BackBeat Soundtrack', 9);
INSERT INTO albums (id, title, artist_id) VALUES (13, N'The Best Of Billy Cobham', 10);
INSERT INTO albums (id, title, artist_id) VALUES (14, N'Alcohol Fueled Brewtality Live! [Disc 1]', 11);
INSERT INTO albums (id, title, artist_id) VALUES (15, N'Alcohol Fueled Brewtality Live! [Disc 2]', 11);
INSERT INTO albums (id, title, artist_id) VALUES (16, N'Black Sabbath', 12);
INSERT INTO albums (id, title, artist_id) VALUES (17, N'Black Sabbath Vol. 4 (Remaster)', 12);
INSERT INTO albums (id, title, artist_id) VALUES (18, N'Body Count', 13);
INSERT INTO albums (id, title, artist_id) VALUES (19, N'Chemical Wedding', 14);
INSERT INTO albums (id, title, artist_id) VALUES (20, N'The Best Of Buddy Guy - The Millenium Collection', 15);
INSERT INTO albums (id, title, artist_id) VALUES (21, N'Prenda Minha', 16);
INSERT INTO albums (id, title, artist_id) VALUES (22, N'Sozinho Remix Ao Vivo', 16);
INSERT INTO albums (id, title, artist_id) VALUES (23, N'Minha Historia', 17);
INSERT INTO albums (id, title, artist_id) VALUES (24, N'Afrociberdelia', 18);
INSERT INTO albums (id, title, artist_id) VALUES (25, N'Da Lama Ao Caos', 18);
INSERT INTO albums (id, title, artist_id) VALUES (26, N'Acústico MTV [Live]', 19);
INSERT INTO albums (id, title, artist_id) VALUES (27, N'Cidade Negra - Hits', 19);
INSERT INTO albums (id, title, artist_id) VALUES (28, N'Na Pista', 20);
INSERT INTO albums (id, title, artist_id) VALUES (29, N'Axé Bahia 2001', 21);
INSERT INTO albums (id, title, artist_id) VALUES (30, N'BBC Sessions [Disc 1] [Live]', 22);
INSERT INTO albums (id, title, artist_id) VALUES (31, N'Bongo Fury', 23);
INSERT INTO albums (id, title, artist_id) VALUES (32, N'Carnaval 2001', 21);
INSERT INTO albums (id, title, artist_id) VALUES (33, N'Chill: Brazil (Disc 1)', 24);
INSERT INTO albums (id, title, artist_id) VALUES (34, N'Chill: Brazil (Disc 2)', 6);
INSERT INTO albums (id, title, artist_id) VALUES (35, N'Garage Inc. (Disc 1)', 50);
INSERT INTO albums (id, title, artist_id) VALUES (36, N'Greatest Hits II', 51);
INSERT INTO albums (id, title, artist_id) VALUES (37, N'Greatest Kiss', 52);
INSERT INTO albums (id, title, artist_id) VALUES (38, N'Heart of the Night', 53);
INSERT INTO albums (id, title, artist_id) VALUES (39, N'International Superhits', 54);
INSERT INTO albums (id, title, artist_id) VALUES (40, N'Into The Light', 55);
INSERT INTO albums (id, title, artist_id) VALUES (41, N'Meus Momentos', 56);
INSERT INTO albums (id, title, artist_id) VALUES (42, N'Minha História', 57);
INSERT INTO albums (id, title, artist_id) VALUES (43, N'MK III The Final Concerts [Disc 1]', 58);
INSERT INTO albums (id, title, artist_id) VALUES (44, N'Physical Graffiti [Disc 1]', 22);
INSERT INTO albums (id, title, artist_id) VALUES (45, N'Sambas De Enredo 2001', 21);
INSERT INTO albums (id, title, artist_id) VALUES (46, N'Supernatural', 59);
INSERT INTO albums (id, title, artist_id) VALUES (47, N'The Best of Ed Motta', 37);
INSERT INTO albums (id, title, artist_id) VALUES (48, N'The Essential Miles Davis [Disc 1]', 68);
INSERT INTO albums (id, title, artist_id) VALUES (49, N'The Essential Miles Davis [Disc 2]', 68);
INSERT INTO albums (id, title, artist_id) VALUES (50, N'The Final Concerts (Disc 2)', 58);
INSERT INTO albums (id, title, artist_id) VALUES (51, N'Up An'' Atom', 69);
INSERT INTO albums (id, title, artist_id) VALUES (52, N'Vinícius De Moraes - Sem Limite', 70);
INSERT INTO albums (id, title, artist_id) VALUES (53, N'Vozes do MPB', 21);
INSERT INTO albums (id, title, artist_id) VALUES (54, N'Chronicle, Vol. 1', 76);
INSERT INTO albums (id, title, artist_id) VALUES (55, N'Chronicle, Vol. 2', 76);
INSERT INTO albums (id, title, artist_id) VALUES (56, N'Cássia Eller - Coleção Sem Limite [Disc 2]', 77);
INSERT INTO albums (id, title, artist_id) VALUES (57, N'Cássia Eller - Sem Limite [Disc 1]', 77);
INSERT INTO albums (id, title, artist_id) VALUES (58, N'Come Taste The Band', 58);
INSERT INTO albums (id, title, artist_id) VALUES (59, N'Deep Purple In Rock', 58);
INSERT INTO albums (id, title, artist_id) VALUES (60, N'Fireball', 58);
INSERT INTO albums (id, title, artist_id) VALUES (61, N'Knocking at Your Back Door: The Best Of Deep Purple in the 80''s', 58);
INSERT INTO albums (id, title, artist_id) VALUES (62, N'Machine Head', 58);
INSERT INTO albums (id, title, artist_id) VALUES (63, N'Purpendicular', 58);
INSERT INTO albums (id, title, artist_id) VALUES (64, N'Slaves And Masters', 58);
INSERT INTO albums (id, title, artist_id) VALUES (65, N'Stormbringer', 58);
INSERT INTO albums (id, title, artist_id) VALUES (66, N'The Battle Rages On', 58);
INSERT INTO albums (id, title, artist_id) VALUES (67, N'Vault: Def Leppard''s Greatest Hits', 78);
INSERT INTO albums (id, title, artist_id) VALUES (68, N'Outbreak', 79);
INSERT INTO albums (id, title, artist_id) VALUES (69, N'Djavan Ao Vivo - Vol. 02', 80);
INSERT INTO albums (id, title, artist_id) VALUES (70, N'Djavan Ao Vivo - Vol. 1', 80);
INSERT INTO albums (id, title, artist_id) VALUES (71, N'Elis Regina-Minha História', 41);
INSERT INTO albums (id, title, artist_id) VALUES (72, N'The Cream Of Clapton', 81);
INSERT INTO albums (id, title, artist_id) VALUES (73, N'Unplugged', 81);
INSERT INTO albums (id, title, artist_id) VALUES (74, N'albums Of The Year', 82);
INSERT INTO albums (id, title, artist_id) VALUES (75, N'Angel Dust', 82);
INSERT INTO albums (id, title, artist_id) VALUES (76, N'King For A Day Fool For A Lifetime', 82);
INSERT INTO albums (id, title, artist_id) VALUES (77, N'The Real Thing', 82);
INSERT INTO albums (id, title, artist_id) VALUES (78, N'Deixa Entrar', 83);
INSERT INTO albums (id, title, artist_id) VALUES (79, N'In Your Honor [Disc 1]', 84);
INSERT INTO albums (id, title, artist_id) VALUES (80, N'In Your Honor [Disc 2]', 84);
INSERT INTO albums (id, title, artist_id) VALUES (81, N'One By One', 84);
INSERT INTO albums (id, title, artist_id) VALUES (82, N'The Colour And The Shape', 84);
INSERT INTO albums (id, title, artist_id) VALUES (83, N'My Way: The Best Of Frank Sinatra [Disc 1]', 85);
INSERT INTO albums (id, title, artist_id) VALUES (84, N'Roda De Funk', 86);
INSERT INTO albums (id, title, artist_id) VALUES (85, N'As Canções de Eu Tu Eles', 27);
INSERT INTO albums (id, title, artist_id) VALUES (86, N'Quanta Gente Veio Ver (Live)', 27);
INSERT INTO albums (id, title, artist_id) VALUES (87, N'Quanta Gente Veio ver--Bônus De Carnaval', 27);
INSERT INTO albums (id, title, artist_id) VALUES (88, N'Faceless', 87);
INSERT INTO albums (id, title, artist_id) VALUES (89, N'American Idiot', 54);
INSERT INTO albums (id, title, artist_id) VALUES (90, N'Appetite for Destruction', 88);
INSERT INTO albums (id, title, artist_id) VALUES (91, N'Use Your Illusion I', 88);
INSERT INTO albums (id, title, artist_id) VALUES (92, N'Use Your Illusion II', 88);
INSERT INTO albums (id, title, artist_id) VALUES (93, N'Blue Moods', 89);
INSERT INTO albums (id, title, artist_id) VALUES (94, N'A Matter of Life and Death', 90);
INSERT INTO albums (id, title, artist_id) VALUES (95, N'A Real Dead One', 90);
INSERT INTO albums (id, title, artist_id) VALUES (96, N'A Real Live One', 90);
INSERT INTO albums (id, title, artist_id) VALUES (97, N'Brave New World', 90);
INSERT INTO albums (id, title, artist_id) VALUES (98, N'Dance Of Death', 90);
INSERT INTO albums (id, title, artist_id) VALUES (99, N'Fear Of The Dark', 90);
INSERT INTO albums (id, title, artist_id) VALUES (100, N'Iron Maiden', 90);
INSERT INTO albums (id, title, artist_id) VALUES (101, N'Killers', 90);
INSERT INTO albums (id, title, artist_id) VALUES (102, N'Live After Death', 90);
INSERT INTO albums (id, title, artist_id) VALUES (103, N'Live At Donington 1992 (Disc 1)', 90);
INSERT INTO albums (id, title, artist_id) VALUES (104, N'Live At Donington 1992 (Disc 2)', 90);
INSERT INTO albums (id, title, artist_id) VALUES (105, N'No Prayer For The Dying', 90);
INSERT INTO albums (id, title, artist_id) VALUES (106, N'Piece Of Mind', 90);
INSERT INTO albums (id, title, artist_id) VALUES (107, N'Powerslave', 90);
INSERT INTO albums (id, title, artist_id) VALUES (108, N'Rock In Rio [CD1]', 90);
INSERT INTO albums (id, title, artist_id) VALUES (109, N'Rock In Rio [CD2]', 90);
INSERT INTO albums (id, title, artist_id) VALUES (110, N'Seventh Son of a Seventh Son', 90);
INSERT INTO albums (id, title, artist_id) VALUES (111, N'Somewhere in Time', 90);
INSERT INTO albums (id, title, artist_id) VALUES (112, N'The Number of The Beast', 90);
INSERT INTO albums (id, title, artist_id) VALUES (113, N'The X Factor', 90);
INSERT INTO albums (id, title, artist_id) VALUES (114, N'Virtual XI', 90);
INSERT INTO albums (id, title, artist_id) VALUES (115, N'Sex Machine', 91);
INSERT INTO albums (id, title, artist_id) VALUES (116, N'Emergency On Planet Earth', 92);
INSERT INTO albums (id, title, artist_id) VALUES (117, N'Synkronized', 92);
INSERT INTO albums (id, title, artist_id) VALUES (118, N'The Return Of The Space Cowboy', 92);
INSERT INTO albums (id, title, artist_id) VALUES (119, N'Get Born', 93);
INSERT INTO albums (id, title, artist_id) VALUES (120, N'Are You Experienced?', 94);
INSERT INTO albums (id, title, artist_id) VALUES (121, N'Surfing with the Alien (Remastered)', 95);
INSERT INTO albums (id, title, artist_id) VALUES (122, N'Jorge Ben Jor 25 Anos', 46);
INSERT INTO albums (id, title, artist_id) VALUES (123, N'Jota Quest-1995', 96);
INSERT INTO albums (id, title, artist_id) VALUES (124, N'Cafezinho', 97);
INSERT INTO albums (id, title, artist_id) VALUES (125, N'Living After Midnight', 98);
INSERT INTO albums (id, title, artist_id) VALUES (126, N'Unplugged [Live]', 52);
INSERT INTO albums (id, title, artist_id) VALUES (127, N'BBC Sessions [Disc 2] [Live]', 22);
INSERT INTO albums (id, title, artist_id) VALUES (128, N'Coda', 22);
INSERT INTO albums (id, title, artist_id) VALUES (129, N'Houses Of The Holy', 22);
INSERT INTO albums (id, title, artist_id) VALUES (130, N'In Through The Out Door', 22);
INSERT INTO albums (id, title, artist_id) VALUES (131, N'IV', 22);
INSERT INTO albums (id, title, artist_id) VALUES (132, N'Led Zeppelin I', 22);
INSERT INTO albums (id, title, artist_id) VALUES (133, N'Led Zeppelin II', 22);
INSERT INTO albums (id, title, artist_id) VALUES (134, N'Led Zeppelin III', 22);
INSERT INTO albums (id, title, artist_id) VALUES (135, N'Physical Graffiti [Disc 2]', 22);
INSERT INTO albums (id, title, artist_id) VALUES (136, N'Presence', 22);
INSERT INTO albums (id, title, artist_id) VALUES (137, N'The Song Remains The Same (Disc 1)', 22);
INSERT INTO albums (id, title, artist_id) VALUES (138, N'The Song Remains The Same (Disc 2)', 22);
INSERT INTO albums (id, title, artist_id) VALUES (139, N'A TempestadeTempestade Ou O Livro Dos Dias', 99);
INSERT INTO albums (id, title, artist_id) VALUES (140, N'Mais Do Mesmo', 99);
INSERT INTO albums (id, title, artist_id) VALUES (141, N'Greatest Hits', 100);
INSERT INTO albums (id, title, artist_id) VALUES (142, N'Lulu Santos - RCA 100 Anos De Música - Álbum 01', 101);
INSERT INTO albums (id, title, artist_id) VALUES (143, N'Lulu Santos - RCA 100 Anos De Música - Álbum 02', 101);
INSERT INTO albums (id, title, artist_id) VALUES (144, N'Misplaced Childhood', 102);
INSERT INTO albums (id, title, artist_id) VALUES (145, N'Barulhinho Bom', 103);
INSERT INTO albums (id, title, artist_id) VALUES (146, N'Seek And Shall Find: More Of The Best (1963-1981)', 104);
INSERT INTO albums (id, title, artist_id) VALUES (147, N'The Best Of Men At Work', 105);
INSERT INTO albums (id, title, artist_id) VALUES (148, N'Black albums', 50);
INSERT INTO albums (id, title, artist_id) VALUES (149, N'Garage Inc. (Disc 2)', 50);
INSERT INTO albums (id, title, artist_id) VALUES (150, N'Kill ''Em All', 50);
INSERT INTO albums (id, title, artist_id) VALUES (151, N'Load', 50);
INSERT INTO albums (id, title, artist_id) VALUES (152, N'Master Of Puppets', 50);
INSERT INTO albums (id, title, artist_id) VALUES (153, N'ReLoad', 50);
INSERT INTO albums (id, title, artist_id) VALUES (154, N'Ride The Lightning', 50);
INSERT INTO albums (id, title, artist_id) VALUES (155, N'St. Anger', 50);
INSERT INTO albums (id, title, artist_id) VALUES (156, N'...And Justice For All', 50);
INSERT INTO albums (id, title, artist_id) VALUES (157, N'Miles Ahead', 68);
INSERT INTO albums (id, title, artist_id) VALUES (158, N'Milton Nascimento Ao Vivo', 42);
INSERT INTO albums (id, title, artist_id) VALUES (159, N'Minas', 42);
INSERT INTO albums (id, title, artist_id) VALUES (160, N'Ace Of Spades', 106);
INSERT INTO albums (id, title, artist_id) VALUES (161, N'Demorou...', 108);
INSERT INTO albums (id, title, artist_id) VALUES (162, N'Motley Crue Greatest Hits', 109);
INSERT INTO albums (id, title, artist_id) VALUES (163, N'From The Muddy Banks Of The Wishkah [Live]', 110);
INSERT INTO albums (id, title, artist_id) VALUES (164, N'Nevermind', 110);
INSERT INTO albums (id, title, artist_id) VALUES (165, N'Compositores', 111);
INSERT INTO albums (id, title, artist_id) VALUES (166, N'Olodum', 112);
INSERT INTO albums (id, title, artist_id) VALUES (167, N'Acústico MTV', 113);
INSERT INTO albums (id, title, artist_id) VALUES (168, N'Arquivo II', 113);
INSERT INTO albums (id, title, artist_id) VALUES (169, N'Arquivo Os Paralamas Do Sucesso', 113);
INSERT INTO albums (id, title, artist_id) VALUES (170, N'Bark at the Moon (Remastered)', 114);
INSERT INTO albums (id, title, artist_id) VALUES (171, N'Blizzard of Ozz', 114);
INSERT INTO albums (id, title, artist_id) VALUES (172, N'Diary of a Madman (Remastered)', 114);
INSERT INTO albums (id, title, artist_id) VALUES (173, N'No More Tears (Remastered)', 114);
INSERT INTO albums (id, title, artist_id) VALUES (174, N'Tribute', 114);
INSERT INTO albums (id, title, artist_id) VALUES (175, N'Walking Into Clarksdale', 115);
INSERT INTO albums (id, title, artist_id) VALUES (176, N'Original Soundtracks 1', 116);
INSERT INTO albums (id, title, artist_id) VALUES (177, N'The Beast Live', 117);
INSERT INTO albums (id, title, artist_id) VALUES (178, N'Live On Two Legs [Live]', 118);
INSERT INTO albums (id, title, artist_id) VALUES (179, N'Pearl Jam', 118);
INSERT INTO albums (id, title, artist_id) VALUES (180, N'Riot Act', 118);
INSERT INTO albums (id, title, artist_id) VALUES (181, N'Ten', 118);
INSERT INTO albums (id, title, artist_id) VALUES (182, N'Vs.', 118);
INSERT INTO albums (id, title, artist_id) VALUES (183, N'Dark Side Of The Moon', 120);
INSERT INTO albums (id, title, artist_id) VALUES (184, N'Os Cães Ladram Mas A Caravana Não Pára', 121);
INSERT INTO albums (id, title, artist_id) VALUES (185, N'Greatest Hits I', 51);
INSERT INTO albums (id, title, artist_id) VALUES (186, N'News Of The World', 51);
INSERT INTO albums (id, title, artist_id) VALUES (187, N'Out Of Time', 122);
INSERT INTO albums (id, title, artist_id) VALUES (188, N'Green', 124);
INSERT INTO albums (id, title, artist_id) VALUES (189, N'New Adventures In Hi-Fi', 124);
INSERT INTO albums (id, title, artist_id) VALUES (190, N'The Best Of R.E.M.: The IRS Years', 124);
INSERT INTO albums (id, title, artist_id) VALUES (191, N'Cesta Básica', 125);
INSERT INTO albums (id, title, artist_id) VALUES (192, N'Raul Seixas', 126);
INSERT INTO albums (id, title, artist_id) VALUES (193, N'Blood Sugar Sex Magik', 127);
INSERT INTO albums (id, title, artist_id) VALUES (194, N'By The Way', 127);
INSERT INTO albums (id, title, artist_id) VALUES (195, N'Californication', 127);
INSERT INTO albums (id, title, artist_id) VALUES (196, N'Retrospective I (1974-1980)', 128);
INSERT INTO albums (id, title, artist_id) VALUES (197, N'Santana - As Years Go By', 59);
INSERT INTO albums (id, title, artist_id) VALUES (198, N'Santana Live', 59);
INSERT INTO albums (id, title, artist_id) VALUES (199, N'Maquinarama', 130);
INSERT INTO albums (id, title, artist_id) VALUES (200, N'O Samba Poconé', 130);
INSERT INTO albums (id, title, artist_id) VALUES (201, N'Judas 0: B-Sides and Rarities', 131);
INSERT INTO albums (id, title, artist_id) VALUES (202, N'Rotten Apples: Greatest Hits', 131);
INSERT INTO albums (id, title, artist_id) VALUES (203, N'A-Sides', 132);
INSERT INTO albums (id, title, artist_id) VALUES (204, N'Morning Dance', 53);
INSERT INTO albums (id, title, artist_id) VALUES (205, N'In Step', 133);
INSERT INTO albums (id, title, artist_id) VALUES (206, N'Core', 134);
INSERT INTO albums (id, title, artist_id) VALUES (207, N'Mezmerize', 135);
INSERT INTO albums (id, title, artist_id) VALUES (208, N'[1997] Black Light Syndrome', 136);
INSERT INTO albums (id, title, artist_id) VALUES (209, N'Live [Disc 1]', 137);
INSERT INTO albums (id, title, artist_id) VALUES (210, N'Live [Disc 2]', 137);
INSERT INTO albums (id, title, artist_id) VALUES (211, N'The Singles', 138);
INSERT INTO albums (id, title, artist_id) VALUES (212, N'Beyond Good And Evil', 139);
INSERT INTO albums (id, title, artist_id) VALUES (213, N'Pure Cult: The Best Of The Cult (For Rockers, Ravers, Lovers & Sinners) [UK]', 139);
INSERT INTO albums (id, title, artist_id) VALUES (214, N'The Doors', 140);
INSERT INTO albums (id, title, artist_id) VALUES (215, N'The Police Greatest Hits', 141);
INSERT INTO albums (id, title, artist_id) VALUES (216, N'Hot Rocks, 1964-1971 (Disc 1)', 142);
INSERT INTO albums (id, title, artist_id) VALUES (217, N'No Security', 142);
INSERT INTO albums (id, title, artist_id) VALUES (218, N'Voodoo Lounge', 142);
INSERT INTO albums (id, title, artist_id) VALUES (219, N'Tangents', 143);
INSERT INTO albums (id, title, artist_id) VALUES (220, N'Transmission', 143);
INSERT INTO albums (id, title, artist_id) VALUES (221, N'My Generation - The Very Best Of The Who', 144);
INSERT INTO albums (id, title, artist_id) VALUES (222, N'Serie Sem Limite (Disc 1)', 145);
INSERT INTO albums (id, title, artist_id) VALUES (223, N'Serie Sem Limite (Disc 2)', 145);
INSERT INTO albums (id, title, artist_id) VALUES (224, N'Acústico', 146);
INSERT INTO albums (id, title, artist_id) VALUES (225, N'Volume Dois', 146);
INSERT INTO albums (id, title, artist_id) VALUES (226, N'Battlestar Galactica: The Story So Far', 147);
INSERT INTO albums (id, title, artist_id) VALUES (227, N'Battlestar Galactica, Season 3', 147);
INSERT INTO albums (id, title, artist_id) VALUES (228, N'Heroes, Season 1', 148);
INSERT INTO albums (id, title, artist_id) VALUES (229, N'Lost, Season 3', 149);
INSERT INTO albums (id, title, artist_id) VALUES (230, N'Lost, Season 1', 149);
INSERT INTO albums (id, title, artist_id) VALUES (231, N'Lost, Season 2', 149);
INSERT INTO albums (id, title, artist_id) VALUES (232, N'Achtung Baby', 150);
INSERT INTO albums (id, title, artist_id) VALUES (233, N'All That You Can''t Leave Behind', 150);
INSERT INTO albums (id, title, artist_id) VALUES (234, N'B-Sides 1980-1990', 150);
INSERT INTO albums (id, title, artist_id) VALUES (235, N'How To Dismantle An Atomic Bomb', 150);
INSERT INTO albums (id, title, artist_id) VALUES (236, N'Pop', 150);
INSERT INTO albums (id, title, artist_id) VALUES (237, N'Rattle And Hum', 150);
INSERT INTO albums (id, title, artist_id) VALUES (238, N'The Best Of 1980-1990', 150);
INSERT INTO albums (id, title, artist_id) VALUES (239, N'War', 150);
INSERT INTO albums (id, title, artist_id) VALUES (240, N'Zooropa', 150);
INSERT INTO albums (id, title, artist_id) VALUES (241, N'UB40 The Best Of - Volume Two [UK]', 151);
INSERT INTO albums (id, title, artist_id) VALUES (242, N'Diver Down', 152);
INSERT INTO albums (id, title, artist_id) VALUES (243, N'The Best Of Van Halen, Vol. I', 152);
INSERT INTO albums (id, title, artist_id) VALUES (244, N'Van Halen', 152);
INSERT INTO albums (id, title, artist_id) VALUES (245, N'Van Halen III', 152);
INSERT INTO albums (id, title, artist_id) VALUES (246, N'Contraband', 153);
INSERT INTO albums (id, title, artist_id) VALUES (247, N'Vinicius De Moraes', 72);
INSERT INTO albums (id, title, artist_id) VALUES (248, N'Ao Vivo [IMPORT]', 155);
INSERT INTO albums (id, title, artist_id) VALUES (249, N'The Office, Season 1', 156);
INSERT INTO albums (id, title, artist_id) VALUES (250, N'The Office, Season 2', 156);
INSERT INTO albums (id, title, artist_id) VALUES (251, N'The Office, Season 3', 156);
INSERT INTO albums (id, title, artist_id) VALUES (252, N'Un-Led-Ed', 157);
INSERT INTO albums (id, title, artist_id) VALUES (253, N'Battlestar Galactica (Classic), Season 1', 158);
INSERT INTO albums (id, title, artist_id) VALUES (254, N'Aquaman', 159);
INSERT INTO albums (id, title, artist_id) VALUES (255, N'Instant Karma: The Amnesty International Campaign to Save Darfur', 150);
INSERT INTO albums (id, title, artist_id) VALUES (256, N'Speak of the Devil', 114);
INSERT INTO albums (id, title, artist_id) VALUES (257, N'20th Century Masters - The Millennium Collection: The Best of Scorpions', 179);
INSERT INTO albums (id, title, artist_id) VALUES (258, N'House of Pain', 180);
INSERT INTO albums (id, title, artist_id) VALUES (259, N'Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henrique Amaro', 36);
INSERT INTO albums (id, title, artist_id) VALUES (260, N'Cake: B-Sides and Rarities', 196);
INSERT INTO albums (id, title, artist_id) VALUES (261, N'LOST, Season 4', 149);
INSERT INTO albums (id, title, artist_id) VALUES (262, N'Quiet Songs', 197);
INSERT INTO albums (id, title, artist_id) VALUES (263, N'Muso Ko', 198);
INSERT INTO albums (id, title, artist_id) VALUES (264, N'Realize', 199);
INSERT INTO albums (id, title, artist_id) VALUES (265, N'Every Kind of Light', 200);
INSERT INTO albums (id, title, artist_id) VALUES (266, N'Duos II', 201);
INSERT INTO albums (id, title, artist_id) VALUES (267, N'Worlds', 202);
INSERT INTO albums (id, title, artist_id) VALUES (268, N'The Best of Beethoven', 203);
INSERT INTO albums (id, title, artist_id) VALUES (269, N'Temple of the Dog', 204);
INSERT INTO albums (id, title, artist_id) VALUES (270, N'Carry On', 205);
INSERT INTO albums (id, title, artist_id) VALUES (271, N'Revelations', 8);
INSERT INTO albums (id, title, artist_id) VALUES (272, N'Adorate Deum: Gregorian Chant from the Proper of the Mass', 206);
INSERT INTO albums (id, title, artist_id) VALUES (273, N'Allegri: Miserere', 207);
INSERT INTO albums (id, title, artist_id) VALUES (274, N'Pachelbel: Canon & Gigue', 208);
INSERT INTO albums (id, title, artist_id) VALUES (275, N'Vivaldi: The Four Seasons', 209);
INSERT INTO albums (id, title, artist_id) VALUES (276, N'Bach: Violin Concertos', 210);
INSERT INTO albums (id, title, artist_id) VALUES (277, N'Bach: Goldberg Variations', 211);
INSERT INTO albums (id, title, artist_id) VALUES (278, N'Bach: The Cello Suites', 212);
INSERT INTO albums (id, title, artist_id) VALUES (279, N'Handel: The Messiah (Highlights)', 213);
INSERT INTO albums (id, title, artist_id) VALUES (280, N'The World of Classical Favourites', 214);
INSERT INTO albums (id, title, artist_id) VALUES (281, N'Sir Neville Marriner: A Celebration', 215);
INSERT INTO albums (id, title, artist_id) VALUES (282, N'Mozart: Wind Concertos', 216);
INSERT INTO albums (id, title, artist_id) VALUES (283, N'Haydn: Symphonies 99 - 104', 217);
INSERT INTO albums (id, title, artist_id) VALUES (284, N'Beethoven: Symhonies Nos. 5 & 6', 218);
INSERT INTO albums (id, title, artist_id) VALUES (285, N'A Soprano Inspired', 219);
INSERT INTO albums (id, title, artist_id) VALUES (286, N'Great Opera Choruses', 220);
INSERT INTO albums (id, title, artist_id) VALUES (287, N'Wagner: Favourite Overtures', 221);
INSERT INTO albums (id, title, artist_id) VALUES (288, N'Fauré: Requiem, Ravel: Pavane & Others', 222);
INSERT INTO albums (id, title, artist_id) VALUES (289, N'Tchaikovsky: The Nutcracker', 223);
INSERT INTO albums (id, title, artist_id) VALUES (290, N'The Last Night of the Proms', 224);
INSERT INTO albums (id, title, artist_id) VALUES (291, N'Puccini: Madama Butterfly - Highlights', 225);
INSERT INTO albums (id, title, artist_id) VALUES (292, N'Holst: The Planets, Op. 32 & Vaughan Williams: Fantasies', 226);
INSERT INTO albums (id, title, artist_id) VALUES (293, N'Pavarotti''s Opera Made Easy', 227);
INSERT INTO albums (id, title, artist_id) VALUES (294, N'Great Performances - Barber''s Adagio and Other Romantic Favorites for Strings', 228);
INSERT INTO albums (id, title, artist_id) VALUES (295, N'Carmina Burana', 229);
INSERT INTO albums (id, title, artist_id) VALUES (296, N'A Copland Celebration, Vol. I', 230);
INSERT INTO albums (id, title, artist_id) VALUES (297, N'Bach: Toccata & Fugue in D Minor', 231);
INSERT INTO albums (id, title, artist_id) VALUES (298, N'Prokofiev: Symphony No.1', 232);
INSERT INTO albums (id, title, artist_id) VALUES (299, N'Scheherazade', 233);
INSERT INTO albums (id, title, artist_id) VALUES (300, N'Bach: The Brandenburg Concertos', 234);
INSERT INTO albums (id, title, artist_id) VALUES (301, N'Chopin: Piano Concertos Nos. 1 & 2', 235);
INSERT INTO albums (id, title, artist_id) VALUES (302, N'Mascagni: Cavalleria Rusticana', 236);
INSERT INTO albums (id, title, artist_id) VALUES (303, N'Sibelius: Finlandia', 237);
INSERT INTO albums (id, title, artist_id) VALUES (304, N'Beethoven Piano Sonatas: Moonlight & Pastorale', 238);
INSERT INTO albums (id, title, artist_id) VALUES (305, N'Great Recordings of the Century - Mahler: Das Lied von der Erde', 240);
INSERT INTO albums (id, title, artist_id) VALUES (306, N'Elgar: Cello Concerto & Vaughan Williams: Fantasias', 241);
INSERT INTO albums (id, title, artist_id) VALUES (307, N'Adams, John: The Chairman Dances', 242);
INSERT INTO albums (id, title, artist_id) VALUES (308, N'Tchaikovsky: 1812 Festival Overture, Op.49, Capriccio Italien & Beethoven: Wellington''s Victory', 243);
INSERT INTO albums (id, title, artist_id) VALUES (309, N'Palestrina: Missa Papae Marcelli & Allegri: Miserere', 244);
INSERT INTO albums (id, title, artist_id) VALUES (310, N'Prokofiev: Romeo & Juliet', 245);
INSERT INTO albums (id, title, artist_id) VALUES (311, N'Strauss: Waltzes', 226);
INSERT INTO albums (id, title, artist_id) VALUES (312, N'Berlioz: Symphonie Fantastique', 245);
INSERT INTO albums (id, title, artist_id) VALUES (313, N'Bizet: Carmen Highlights', 246);
INSERT INTO albums (id, title, artist_id) VALUES (314, N'English Renaissance', 247);
INSERT INTO albums (id, title, artist_id) VALUES (315, N'Handel: Music for the Royal Fireworks (Original Version 1749)', 208);
INSERT INTO albums (id, title, artist_id) VALUES (316, N'Grieg: Peer Gynt Suites & Sibelius: Pelléas et Mélisande', 248);
INSERT INTO albums (id, title, artist_id) VALUES (317, N'Mozart Gala: Famous Arias', 249);
INSERT INTO albums (id, title, artist_id) VALUES (318, N'SCRIABIN: Vers la flamme', 250);
INSERT INTO albums (id, title, artist_id) VALUES (319, N'Armada: Music from the Courts of England and Spain', 251);
INSERT INTO albums (id, title, artist_id) VALUES (320, N'Mozart: Symphonies Nos. 40 & 41', 248);
INSERT INTO albums (id, title, artist_id) VALUES (321, N'Back to Black', 252);
INSERT INTO albums (id, title, artist_id) VALUES (322, N'Frank', 252);
INSERT INTO albums (id, title, artist_id) VALUES (323, N'Carried to Dust (Bonus Track Version)', 253);
INSERT INTO albums (id, title, artist_id) VALUES (324, N'Beethoven: Symphony No. 6 ''Pastoral'' Etc.', 254);
INSERT INTO albums (id, title, artist_id) VALUES (325, N'Bartok: Violin & Viola Concertos', 255);
INSERT INTO albums (id, title, artist_id) VALUES (326, N'Mendelssohn: A Midsummer Night''s Dream', 256);
INSERT INTO albums (id, title, artist_id) VALUES (327, N'Bach: Orchestral Suites Nos. 1 - 4', 257);
INSERT INTO albums (id, title, artist_id) VALUES (328, N'Charpentier: Divertissements, Airs & Concerts', 258);
INSERT INTO albums (id, title, artist_id) VALUES (329, N'South American Getaway', 259);
INSERT INTO albums (id, title, artist_id) VALUES (330, N'Górecki: Symphony No. 3', 260);
INSERT INTO albums (id, title, artist_id) VALUES (331, N'Purcell: The Fairy Queen', 261);
INSERT INTO albums (id, title, artist_id) VALUES (332, N'The Ultimate Relexation albums', 262);
INSERT INTO albums (id, title, artist_id) VALUES (333, N'Purcell: Music for the Queen Mary', 263);
INSERT INTO albums (id, title, artist_id) VALUES (334, N'Weill: The Seven Deadly Sins', 264);
INSERT INTO albums (id, title, artist_id) VALUES (335, N'J.S. Bach: Chaconne, Suite in E Minor, Partita in E Major & Prelude, Fugue and Allegro', 265);
INSERT INTO albums (id, title, artist_id) VALUES (336, N'Prokofiev: Symphony No.5 & Stravinksy: Le Sacre Du Printemps', 248);
INSERT INTO albums (id, title, artist_id) VALUES (337, N'Szymanowski: Piano Works, Vol. 1', 266);
INSERT INTO albums (id, title, artist_id) VALUES (338, N'Nielsen: The Six Symphonies', 267);
INSERT INTO albums (id, title, artist_id) VALUES (339, N'Great Recordings of the Century: Paganini''s 24 Caprices', 268);
INSERT INTO albums (id, title, artist_id) VALUES (340, N'Liszt - 12 Études D''Execution Transcendante', 269);
INSERT INTO albums (id, title, artist_id) VALUES (341, N'Great Recordings of the Century - Shubert: Schwanengesang, 4 Lieder', 270);
INSERT INTO albums (id, title, artist_id) VALUES (342, N'Locatelli: Concertos for Violin, Strings and Continuo, Vol. 3', 271);
INSERT INTO albums (id, title, artist_id) VALUES (343, N'Respighi:Pines of Rome', 226);
INSERT INTO albums (id, title, artist_id) VALUES (344, N'Schubert: The Late String Quartets & String Quintet (3 CD''s)', 272);
INSERT INTO albums (id, title, artist_id) VALUES (345, N'Monteverdi: L''Orfeo', 273);
INSERT INTO albums (id, title, artist_id) VALUES (346, N'Mozart: Chamber Music', 274);
INSERT INTO albums (id, title, artist_id) VALUES (347, N'Koyaanisqatsi (Soundtrack from the Motion Picture)', 275);

