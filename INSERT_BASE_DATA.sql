--Inserting SEARCH CRITERIA
INSERT INTO instance.SEARCH_CRITERIA (semester_start, major, semester)
VALUES ('SS15', 'SWB', 6);

--Inserting FACULTYs
INSERT INTO INSTANCE.FACULTY
    (ABBREVIATION, NAME)
VALUES
('IT', 'Informatik und Informationstechnik'),
('G', 'to do'),
('IFS', 'to do'),
('GS', 'to do'),
('SP', 'Soziale Arbeit Bildung und Pflege'),
('WT', 'Wirtschaft und Technik');

--Inserting MAJORS
INSERT INTO INSTANCE.MAJOR
    (ABBREVIATION, NAME, FACULTY)
VALUES
('SWB', 'Softwaretechnik und Medieninformatik', 'IT'),
('SWT', 'Softwaretechnik', 'IT'),
('SWM', 'Medieninformatik', 'IT'),
('TIB', 'Technische Informatik', 'IT'),
('KTB', 'Kommunikationstechnik', 'IT'),
('WKB', 'Wirtschaftsinformatik', 'IT'),
('ASM', 'Angewandte Informatik', 'IT');

--Inserting Subjects
 INSERT INTO INSTANCE.SUBJECT 
    (SUBJECT_NUMBER, SUBJECT_NAME, SUBJECT_TYPE, PLANNED_STUPO_HOURS, PLANNED_SCHEDULE_HOURS, SEMESTER, MAJOR, FACULTY, REMARK)
VALUES
    ('1051001-SWB', 'Physik', 'P', 3, 4, 1, 'SWB', 'IT', NULL),
    ('1051002-SWB', 'Informationstechnik', 'P', 5, 6, 1, 'SWB', 'IT', NULL),
    ('1051003-SWB', 'Mathematik 1, A', 'P', 3, 4, 1, 'SWB', 'IT', NULL),
    ('1051004-SWB', 'Mathematik 1, B', 'P', 1, 2, 1, 'SWB', 'IT', NULL),
    ('10510102-SWB', 'Wissenschaftliches Arbeiten', 'P', 1, 2, 4, 'SWB', 'IT', NULL),
    ('1051014-SWB', 'Programmieren 1', 'P', 4, 4, 1, 'SWB', 'IT', NULL),
    ('1051015-SWB', 'Programmieren 2', 'P', 5, 6, 1, 'SWB', 'IT', NULL),
    ('1051016-SWB', 'Labor Programmieren 2', 'P', 4, 4, 1, 'SWB', 'IT', NULL),
    ('1052001-SWB', 'Mensch-Computer-Interaktion 1', 'P', 1, 2, 2, 'SWB', 'IT', NULL),
    ('1052002-SWB', 'Labor Mensch-Computer-Interaktion', 'P', 1, 2, 2, 'SWB', 'IT', NULL),
    ('1052003-SWB', 'Mathematik 2', 'P', 1, 2, 2, 'SWB', 'IT', NULL),
    ('1052004-SWB', 'Betriebssysteme', 'P', 5, 6, 2, 'SWB', 'IT', NULL),
    ('1052005-SWB', 'Labor Betriebssysteme', 'P', 4, 4, 2, 'SWB', 'IT', NULL),
    ('1052006-SWB', 'Softwaretechnik', 'P', 4, 4, 2, 'SWB', 'IT', NULL),
    ('1052007-SWB', 'Labor Softwaretechnik', 'P', 1, 2, 2, 'SWB', 'IT', NULL),
    ('1052018-SWB', 'Statistik', 'P', 4, 4, 2, 'SWB', 'IT', NULL),
    ('1052019-SWB', 'Labor Statistik', 'P', 1, 2, 2, 'SWB', 'IT', NULL),
    ('1052027-SWB', 'Objektorientierte Systeme 1', 'P', 4, 4, 2, 'SWB', 'IT', NULL),
    ('1052028-SWB', 'Labor Objektorientierte Systeme 1', 'P', 3, 4, 2, 'SWB', 'IT', NULL),
    ('1053003-SWB', 'Modellbildung und Simulation', 'P', 4, 4, 3, 'SWB', 'IT', NULL),
    ('1053004-SWB', 'Labor Modellbildung und Simulation', 'P', 1, 2, 3, 'SWB', 'IT', NULL),
    ('1053007-SWB', 'Datenbanken 1', 'P', 4, 4, 3, 'SWB', 'IT', NULL),
    ('1053008-SWB', 'Rechnernetze', 'P', 4, 4, 3, 'SWB', 'IT', NULL),
    ('1053009-SWB', 'Labor Rechnernetze', 'P', 1, 2, 3, 'SWB', 'IT', NULL),
    ('1053010-SWB', 'Internet-Technologien', 'P', 4, 4, 3, 'SWB', 'IT', NULL),
    ('1053011-SWB', 'Labor Internettechnologien', 'P', 1, 2, 3, 'SWB', 'IT', NULL),
    ('1053012-SWB', 'Algorithmen und Datenstrukturen', 'P', 3, 4, 3, 'SWB', 'IT', NULL),
    ('1053020-SWB', 'Betriebswirtschaftslehre', 'P', 4, 4, 4, 'SWB', 'IT', NULL),
    ('1053021-SWB', 'Projektmanagement', 'P', 1, 2, 4, 'SWB', 'IT', NULL),
    ('1053029-SWB', 'Objektorientierte Systeme 2', 'P', 3, 4, 3, 'SWB', 'IT', NULL),
    ('1053030-SWB', 'Labor Objektorientierte Systeme 2', 'P', 1, 2, 3, 'SWB', 'IT', NULL),
    ('1054003-SWB', 'Computerarchitektur', 'P', 4, 4, 4, 'SWB', 'IT', NULL),
    ('1054004-SWB', 'Labor Computerarchitektur', 'P', 3, 4, 4, 'SWB', 'IT', NULL),
    ('1054005-SWB', 'Projektarbeit', 'P', 8, 0, 4, 'SWB', 'IT', NULL),
    ('1054007-SWB', 'Softwarearchitektur', 'P', 3, 4, 4, 'SWB', 'IT', NULL),
    ('1054008-SWB', 'Labor Softwarearchitektur', 'P', 1, 2, 4, 'SWB', 'IT', NULL),
    ('1055001-SWB', 'Ingenieursmethodiken', 'P', 1, 4, 5, 'SWB', 'IT', NULL),
    ('1055002-SWB', 'Englisch', 'P', 3, 4, 5, 'SWB', 'IT', NULL),
    ('1056001-SWB', 'Informationssysteme', 'P', 4, 4, 6, 'SWB', 'IT', NULL),
    ('1056002-SWB', 'Labor Informationssysteme', 'P', 3, 4, 6, 'SWB', 'IT', NULL),
    ('1056003-SWB', 'Softwarequalität', 'P', 0, 0, 6, 'SWB', 'IT', NULL),
    ('1056004-SWB', 'Labor Softwarequalität', 'P', 3, 4, 6, 'SWB', 'IT', NULL),
    ('1056005-SWB', 'IT-Sicherheit', 'P', 4, 4, 6, 'SWB', 'IT', NULL),
    ('1056006-SWB', 'Labor IT-Sicherheit', 'P', 3, 4, 6, 'SWB', 'IT', NULL),
    ('1056007-SWB', 'Studienprojekt', 'P', 1, 2, 6, 'SWB', 'IT', NULL),
    ('1057000-SWB', 'Bachelorarbeit', 'P', 6, 6, 7, 'SWB', 'IT', NULL),
    ('1057001-SWB', 'Wissenschaftliche Vertiefung', 'P', 0, 0, 7, 'SWB', 'IT', NULL),
    ('1057002-SWB', 'Kolloquium', 'P', 0, 0, 7, 'SWB', 'IT', NULL),
    ('3SWB_5013', 'Betriebliche Praxis', 'P', 0, 0, 5, 'SWB', 'IT', NULL),
    ('3SWB-919a', 'Data Mining', 'W', 2, 2, 7, 'SWB', 'IT', NULL),
    ('8000007-SWB', 'Programmieren in C#', 'W', 2, 2, 7, 'SWB', 'IT', 'Blockseminar'),
    ('8006001-SWB', 'Game Engineering', 'W', 2, 2, 7, 'SWB', 'IT', NULL),
    ('1051002-WKB', 'Informationstechnik', 'P', 3, 4, 1, 'WKB', 'IT', NULL),
    ('1051003-WKB', 'Mathematik 1, A', 'P', 5, 6, 1, 'WKB', 'IT', NULL),
    ('1051004-WKB', 'Mathematik 1, B', 'P', 5, 6, 1, 'WKB', 'IT', NULL),
    ('1051010-WKB', 'Wirtschaftsinformatik 1', 'P', 3, 4, 1, 'WKB', 'IT', NULL),
    ('10510112-WKB', 'VWL', 'P', 2, 2, 1, 'WKB', 'IT', NULL),
    ('1051011-WKB', 'BWL', 'P', 2, 2, 1, 'WKB', 'IT', NULL),
    ('1051014-WKB', 'Programmieren 1', 'P', 4, 4, 1, 'WKB', 'IT', NULL),
    ('1051027-WKB', 'Objektorientierte Systeme 1', 'P', 2, 2, 2, 'WKB', 'IT', NULL),
    ('1051028-WKB', 'Labor Objektorientierte Systeme 1', 'P', 4, 4, 2, 'WKB', 'IT', NULL),
    ('1052001-WKB', 'Mensch-Computer-Interaktion 1', 'P', 1, 2, 3, 'WKB', 'IT', NULL),
    ('1052002-WKB', 'Labor Mensch-Computer-Interaktion', 'P', 1, 2, 4, 'WKB', 'IT', NULL),
    ('1052006-WKB', 'Softwaretechnik', 'P', 1, 2, 2, 'WKB', 'IT', NULL),
    ('1052007-WKB', 'Labor Softwaretechnik', 'P', 5, 6, 2, 'WKB', 'IT', NULL),
    ('1052015-WKB', 'Wirtschaftsinformatik 2', 'P', 3, 4, 2, 'WKB', 'IT', NULL),
    ('1052016-WKB', 'Rechnungswesen 1', 'P', 1, 2, 2, 'WKB', 'IT', NULL),
    ('1052017-WKB', 'Labor Rechnungswesen 1', 'P', 4, 4, 2, 'WKB', 'IT', NULL),
    ('1052018-WKB', 'Statistik', 'P', 1, 2, 2, 'WKB', 'IT', NULL),
    ('1052019-WKB', 'Labor Statistik', 'P', 4, 4, 2, 'WKB', 'IT', NULL),
    ('1052020-WKB', 'Mathematik 2', 'P', 3, 4, 2, 'WKB', 'IT', NULL),
    ('1052029-WKB', 'Objektorientierte Systeme 2', 'P', 4, 4, 3, 'WKB', 'IT', NULL),
    ('1052030-WKB', 'Labor Objektorientierte Systeme 2', 'P', 2, 2, 3, 'WKB', 'IT', NULL),
    ('1053007-WKB', 'Datenbanken 1', 'P', 3, 4, 3, 'WKB', 'IT', NULL),
    ('1053008-WKB', 'Rechnernetze', 'P', 1, 2, 3, 'WKB', 'IT', NULL),
    ('1053009-WKB', 'Labor Rechnernetze', 'P', 1, 2, 3, 'WKB', 'IT', NULL),
    ('1053010-WKB', 'Internet-Technologien', 'P', 3, 4, 4, 'WKB', 'IT', NULL),
    ('1053011-WKB', 'Labor Internettechnologien', 'P', 1, 2, 3, 'WKB', 'IT', NULL),
    ('1053012-WKB', 'Algorithmen und Datenstrukturen', 'P', 4, 4, 4, 'WKB', 'IT', NULL),
    ('1053022-WKB', 'Geschäftsprozesse 1', 'P', 4, 4, 3, 'WKB', 'IT', NULL),
    ('1053023-WKB', 'Labor Geschäftsprozesse 1', 'P', 1, 2, 3, 'WKB', 'IT', NULL),
    ('10530242-WKB', 'Finanzwesen', 'P', 2, 2, 3, 'WKB', 'IT', NULL),
    ('1053024-WKB', 'Rechnungswesen 2', 'P', 3, 4, 3, 'WKB', 'IT', NULL),
    ('1053025-WKB', 'Labor Rechnungswesen 2', 'P', 1, 2, 3, 'WKB', 'IT', NULL),
    ('1054007-WKB', 'Softwarearchitektur', 'P', 3, 4, 4, 'WKB', 'IT', NULL),
    ('1054008-WKB', 'Labor Softwarearchitektur', 'P', 1, 2, 4, 'WKB', 'IT', NULL),
    ('1054015-WKB', 'Geschäftsprozesse 2', 'P', 4, 4, 4, 'WKB', 'IT', NULL),
    ('1054016-WKB', 'Labor Geschäftsprozesse 2', 'P', 3, 4, 4, 'WKB', 'IT', NULL),
    ('1054017-WKB', 'IT-Services', 'P', 3, 4, 4, 'WKB', 'IT', NULL),
    ('1054018-WKB', 'Datenbanken 2', 'P', 3, 4, 4, 'WKB', 'IT', NULL),
    ('1054019-WKB', 'Labor Datenbanken 2', 'P', 3, 4, 4, 'WKB', 'IT', NULL),
    ('1055001-WKB', 'Ingenieursmethodiken', 'P', 1, 2, 5, 'WKB', 'IT', NULL),
    ('1055002-WKB', 'Englisch', 'P', 3, 4, 5, 'WKB', 'IT', NULL),
    ('1056001-WKB', 'Informationssysteme', 'P', 3, 4, 6, 'WKB', 'IT', NULL),
    ('1056002-WKB', 'Labor Informationssysteme', 'P', 3, 4, 6, 'WKB', 'IT', NULL),
    ('1056007-WKB', 'Studienprojekt', 'P', 1, 2, 6, 'WKB', 'IT', NULL),
    ('1056017-WKB', 'Projekt Business Intelligence', 'P', 4, 4, 6, 'WKB', 'IT', NULL),
    ('1056016-WKB', 'Business Intelligence', 'P', 4, 4, 6, 'WKB', 'IT', NULL),
    ('1056018-WKB', 'Spezielle BWL 1', 'P', 4, 4, 6, 'WKB', 'IT', NULL),
    ('1056019-WKB', 'Spezielle BWL 2', 'P', 0, 0, 6, 'WKB', 'IT', NULL),
    ('1057000-WKB', 'Bachelorarbeit', 'P', 6, 6, 7, 'WKB', 'IT', NULL),
    ('1057001-WKB', 'Wissenschaftliche Vertiefung', 'P', 0, 0, 7, 'WKB', 'IT', NULL),
    ('1057002-WKB', 'Kolloquium', 'P', 0, 0, 7, 'WKB', 'IT', NULL),
    ('3WFB_5013', 'Betriebliche Praxis', 'P', 0, 0, 5, 'WKB', 'IT', NULL),
    ('ASM_999993', 'Bachelorarbeiten ASM, Export', 'P', 0, 0, 1, 'ASM', 'GS', NULL),
    ('ASM_999995', 'Vorlesungen ASM, Neutral', 'P', 0, 0, 1, 'ASM', 'GS', NULL),
    ('ASM_999999', 'Vorlesungen ASM, Export', 'P', 0, 0, 1, 'ASM', 'GS', NULL);

-- Inserting Teachers
INSERT INTO INSTANCE.TEACHER
    (ID, NAME, FACULTY, REMARK)
VALUES
    (0, 'Service G', 'G', NULL),
    (86, 'Malz', 'IT', NULL),
    (1119, 'Groß', 'IT', NULL),
    (1105, 'Marchthaler', 'IT', NULL),
    (7, 'Höfer', 'IT', NULL),
    (1079, 'Rößler', 'IT', NULL),
    (21, 'Zieher', 'IT', NULL),
    (19, 'Weber', 'IT', NULL),
    (1035, 'Warendorf', 'IT', NULL),
    (3, 'Dausmann', 'IT', NULL),
    (1023, 'Keller', 'IT', NULL),
    (1013, 'LB nn', 'IT', NULL),
    (1122, 'Rodach', 'IT', NULL),
    (1201, 'LB Müller-Matthias', 'IT', NULL),
    (1161, 'LB Paul', 'IT', NULL),
    (1212, 'Kriegbaum-Kling', 'IT', NULL),
    (1202, 'LB Radke de Cuba', 'IT', NULL),
    (1070, 'Beck', 'IT', NULL),
    (1100, 'LB Sari', 'IT', NULL),
    (1137, 'LB Grüttner', 'IT', NULL),
    (1208, 'LB Marek', 'IT', NULL),
    (999, 'IT-Prof', 'IT', NULL),
    (1162, 'Service IFS', 'IFS', NULL),
    (25, 'LB Rauschnabel', 'IT', 'Bedinung LB: 1.+2. Stunde, nicht Do'),
    (59, 'LB Hehl', 'IT', 'Prio1: Fr. vormittags Prio 2: Di.+Do. vormittags'),
    (1207, 'LB Wolf', 'IT', NULL),
    (1193, 'LB Helferich', 'IT', NULL),
    (17, 'Schmidt', 'IT', NULL),
    (1169, 'LB Ederer', 'IT', NULL),
    (1196, 'LB Blach', 'IT', NULL),
    (1055, 'Väterlein', 'IT', NULL),
    (1072, 'Schoop', 'GS', NULL),
    (16, 'Nonnast', 'IT', NULL),
    (1084, 'LB Seiter', 'IT', NULL),
    (1121, 'LB Fernandes', 'IT', NULL),
    (1205, 'LB Teufel', 'IT', NULL),
    (15, 'Melcher', 'IT', NULL),
    (1022, 'Lindermeir', 'IT', NULL),
    (1118, 'LB Wahl', 'IT', NULL),
    (1074, 'LB Bühler, M.', 'IT', NULL),
    (1199, 'LB Hagen', 'IT', NULL),
    (1076, 'LB Feil', 'IT', 'Fr 5.+6. Stunde'),
    (1149, 'LB Roux', 'IT', NULL),
    (1211, 'LB Steudele', 'IT', NULL),
    (1146, 'LB Müller, A.', 'IT', NULL),
    (1198, 'LB Märtlbauer', 'IT', NULL),
    (1174, 'LB Koller', 'IT', NULL),
    (1130, 'LB Berg', 'IT', NULL),
    (22, 'Zimmermann', 'IT', NULL),
    (34, 'LB Redmers', 'IT', 'Mo 5.+6. Stunde'),
    (35, 'LB Haag', 'IT', 'Mo 5.+6. Stunde'),
    (1053, 'Friedrich', 'IT', NULL),
    (1194, 'LB Siegmund', 'IT', NULL),
    (1195, 'LB Fischbein', 'IT', NULL),
    (1188, 'LB Weber', 'IT', NULL),
    (1125, 'Hesse', 'IT', NULL),
    (1131, 'LB Blossey', 'IT', NULL),
    (1014, 'LB Klenk', 'IT', NULL),
    (1112, 'LB Jacob', 'IT', NULL),
    (1138, 'LB Hayer', 'IT', NULL),
    (5, 'Goll', 'IT', NULL),
    (1213, 'LB Goll', 'IT', NULL),
    (1007, 'LB Müller-Hofmann', 'IT', NULL),
    (1139, 'LB Hiller', 'IT', NULL),
    (1204, 'LB Söllner', 'IT', NULL),
    (29, 'LB Haas', 'IT', NULL),
    (30, 'LB Krauss', 'IT', NULL),
    (83, 'LB Doll-Richter', 'IT', NULL),
    (1128, 'LB Bechtolsheim, v.', 'IT', NULL),
    (1111, 'LB Bosch', 'IT', NULL),
    (1009, 'LB Schließ', 'IT', 'Mi. 1. Stunde'),
    (1102, 'LB Mallebrein', 'IT', NULL),
    (1156, 'LB Stabrey', 'IT', NULL),
    (39, 'LB Grübel', 'IT', 'Fr nachmittags, 14 tägig 5 und 6 Stunde'),
    (1010, 'LB Schulz', 'IT', NULL),
    (1101, 'LB Brill', 'IT', NULL),
    (1071, 'LB Erath', 'IT', NULL),
    (1168, 'LB Decker', 'IT', NULL),
    (1210, 'LB Maurer', 'IT', NULL),
    (1132, 'LB Dold', 'IT', NULL),
    (1190, 'LB Westermann', 'IT', NULL),
    (1203, 'LB Scholz', 'IT', NULL),
    (1157, 'LB Theis', 'IT', NULL),
    (1116, 'LB Meroth', 'IT', NULL),
    (1192, 'LB Kull', 'IT', NULL);


-- Inserting Lecturers
INSERT INTO INSTANCE.LECTURER
    (TEACHER_ID, ADDRESS, IS_ACTIVE)
VALUES
    (1013, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1201, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1161, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1202, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1100, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1137, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1208, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (25, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (59, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1207, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1193, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1169, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1196, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1084, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1121, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1205, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1118, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1074, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1199, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1076, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1149, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1211, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1146, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1198, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1174, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1130, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (34, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (35, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1194, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1195, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1188, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1131, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1213, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1007, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1139, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1204, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (29, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (30, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (83, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1128, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1009, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1102, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1156, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (39, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1190, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1014, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1112, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1138, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1111, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1010, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1101, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1071, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1168, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1210, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1203, 'Kanalstraße 33, 73728 Esslingen am Neckar', true),
    (1157, 'Flandernstraße 101, 73732 Esslingen am Neckar', true),
    (1116, 'Robert-Bosch-Straße 1, 73037 Göppingen', true),
    (1192, 'Kanalstraße 33, 73728 Esslingen am Neckar', true);

-- Inserting PROFESSORS
INSERT INTO INSTANCE.PROFESSOR
    (TEACHER_ID, CREDIT_HOUR_ACCOUNT, IS_ACTIVE)
VALUES
    (0, 0, true),
    (86, 0, true),
    (1119, 0, true),
    (1105, 0, true),
    (7, 0, true),
    (1079, 0, true),
    (21, 0, true),
    (19, 0, true),
    (1035, 0, true),
    (3, 0, true),
    (1023, 0, true),
    (1122, 0, true),
    (1212, 0, true),
    (1070, 0, true),
    (999, 0, true),
    (1162, 0, true),
    (17, 0, true),
    (1055, 0, true),
    (1072, 0, true),
    (16, 0, true),
    (15, 0, true),
    (1022, 0, true),
    (22, 0, true),
    (1053, 0, true),
    (1125, 0, true),
    (5, 0, false);


-- Inserting Function_Professor
INSERT INTO INSTANCE.FUNCTION_PROFESSOR
    (FUNCTION_START, PROFESSOR, NAME, LOAD)
VALUES
    ('WS1516', 1055, 'Prorektor', 10),
    ('WS1516', 16, 'Dekan', 10),
    ('WS1516', 17, 'Studiendekan', 8),
    ('WS1516', 17, 'Studiengangleiter SWB', 2),
    ('WS1516', 1053, 'Studiengangleiter TIB', 4),
    ('WS1516', 1125, 'Studiengangleiter WKB', 4),
    ('WS1516', 19, 'Laborleiter Betriebssysteme', 1),
    ('WS1516', 1022, 'Laborleiter CAD', 1),
    ('WS1516', 16, 'Laborleiter Datenbanken', 1),
    ('WS1516', 1105, 'Laborleiter Embedded Systems', 1),
    ('WS1516', 15, 'Laborleiter HF', 1),
    ('WS1516', 22, 'Laborleiter Informationstechnik', 1),
    ('WS1516', 1079, 'Laborleiter Elektronik', 1),
    ('WS1516', 21, 'Laborleiter KT', 1),
    ('WS1516', 1023, 'Laborleiter Embedded Systems Communication', 1),
    ('WS1516', 1079, 'Laborleiter Mikrosystemtechnik', 1),
    ('WS1516', 17, 'Laborleiter Multimedia', 1),
    ('WS1516', 7, 'Laborleiter NT', 1),
    ('WS1516', 1053, 'Laborleiter PDV', 1),
    ('WS1516', 1079, 'Laborleiter SuSWT', 1),
    ('WS1516', 1023, 'Praxisamtleiter', 3),
    ('WS1516', 1072, 'Ausland', 0),
    ('WS1516', 1035, 'Ausland', 1),
    ('WS1516', 1079, 'Gründerstall', 1),
    ('WS1516', 1105, 'Schüler', 1),
    ('WS1516', 1072, 'Datenschutz', 0),
    ('SS15', 1079, 'Laborleiter Mikrosystemtechnik', 1),
    ('SS15', 17, 'Laborleiter Multimedia', 1),
    ('SSS15', 7, 'Laborleiter NT', 1),
    ('SS15', 1053, 'Laborleiter PDV', 1),
    ('SS15', 1079, 'Laborleiter SuSWT', 1),
    ('SS15', 1023, 'Praxisamtleiter', 3),
    ('SS15', 1072, 'Ausland', 0),
    ('SS15', 1035, 'Ausland', 1),
    ('SS15', 1079, 'Gründerstall', 1),
    ('SS15', 1105, 'Schüler', 1),
    ('SS15', 1072, 'Datenschutz', 0),
    ('WS1415', 1055, 'Prorektor', 10),
    ('WS1415', 16, 'Dekan', 10),
    ('WS1415', 17, 'Studiendekan', 8),
    ('WS1415', 17, 'Studiengangleiter SWB', 2),
    ('WS1415', 1053, 'Studiengangleiter TIB', 4),
    ('WS1415', 1125, 'Studiengangleiter WKB', 4),
    ('WS1415', 19, 'Laborleiter Betriebssysteme', 1),
    ('WS1415', 1022, 'Laborleiter CAD', 1),
    ('WS1415', 16, 'Laborleiter Datenbanken', 1),
    ('WS1415', 1105, 'Laborleiter Embedded Systems', 1),
    ('WS1415', 15, 'Laborleiter HF', 1),
    ('WS1415', 22, 'Laborleiter Informationstechnik', 1),
    ('WS1415', 1079, 'Laborleiter Elektronik', 1),
    ('WS1415', 21, 'Laborleiter KT', 1),
    ('WS1415', 1023, 'Laborleiter Embedded Systems Communication', 1),
    ('WS1415', 1079, 'Laborleiter Mikrosystemtechnik', 1),
    ('WS1415', 17, 'Laborleiter Multimedia', 1);

-- Inserting Courses
INSERT INTO INSTANCE.COURSE (
    COURSE_START, SUBJECT, TEACHER, ACTUAL_STUPO_HOURS, ACTUAL_SCHEDULE_HOURS,
    CREDITED_TEACHER_HOURS, REMARK
) VALUES
('SS15', '1051001-SWB', '0', 5, 6, 5, NULL),
('WS1516', '1051001-SWB', '0', 5, 6, 5, NULL),
('WS1516', '1051002-SWB', '86', 4, 4, 4, NULL),
('SS15', '1051002-SWB', '1119', 4, 4, 4, NULL),
('SS15', '1051003-SWB', '0', 5, 6, 5, NULL),
('WS1516', '1051003-SWB', '0', 5, 6, 5, NULL),
('SS15', '1051004-SWB', '0', 5, 6, 5, NULL),
('WS1516', '1051004-SWB', '0', 5, 6, 5, NULL),
('SS15', '10510102-SWB', '1079', 0, 0, 1, NULL),
('SS15', '1051014-SWB', '1079', 4, 4, 2, NULL),
('WS1516', '1051014-SWB', '1079', 4, 4, 2, NULL),
('SS15', '1051015-SWB', '1070', 3, 4, 3, NULL),
('WS1516', '1051015-SWB', '1070', 3, 4, 3, NULL),
('SS15', '1051016-SWB', '19', 1, 2, 2, NULL),
('WS1516', '1051016-SWB', '1070', 1, 2, 2, NULL),
('SS15', '1052001-SWB', '1070', 3, 4, 3, NULL),
('WS1516', '1052001-SWB', '1070', 3, 4, 3, NULL),
('SS15', '1052002-SWB', '1070', 1, 2, 2, NULL),
('WS1516', '1052002-SWB', '1070', 1, 2, 2, NULL),
('SS15', '1052003-SWB', '0', 5, 6, 5, NULL),
('WS1516', '1052003-SWB', '0', 5, 6, 5, NULL),
('SS15', '1052004-SWB', '19', 4, 4, 4, NULL),
('WS1516', '1052004-SWB', '19', 4, 4, 2, NULL),
('SS15', '1052005-SWB', '19', 1, 2, 4, NULL),
('WS1516', '1052005-SWB', '19', 1, 2, 2, NULL),
('SS15', '1052006-SWB', '1070', 4, 4, 3, 'Gekoppelt mit TIB2'),
('WS1516', '1052006-SWB', '1070', 4, 4, 3, 'Gekoppelt mit TIB2'),
('SS15', '1052007-SWB', '1162', 1, 2, 1, NULL),
('WS1516', '1052007-SWB', '1162', 1, 2, 1, NULL),
('SS15', '1052007-SWB', '1070', 0, 0, 1, NULL),
('WS1516', '1052007-SWB', '1070', 0, 0, 1, NULL),
('SS15', '1052018-SWB', '0', 4, 4, 4, NULL),
('WS1516', '1052018-SWB', '0', 4, 4, 4, NULL),
('SS15', '1052019-SWB', '0', 1, 2, 2, NULL),
('WS1516', '1052019-SWB', '0', 1, 2, 1, NULL),
('SS15', '1052027-SWB', '3', 3, 4, 3, NULL),
('WS1516', '1052027-SWB', '3', 3, 4, 1.5, NULL),
('SS15', '1052028-SWB', '3', 1, 2, 3, NULL),
('WS1516', '1052028-SWB', '3', 1, 2, 2, NULL),
('SS15', '1053003-SWB', '1055', 3, 4, 3, NULL),
('WS1516', '1053003-SWB', '1055', 3, 4, 3, NULL),
('SS15', '1053004-SWB', '1055', 1, 2, 1, NULL),
('WS1516', '1053004-SWB', '1055', 1, 2, 1, NULL),
('SS15', '1053007-SWB', '1072', 4, 4, 1, NULL),
('SS15', '1053007-SWB', '16', 0, 0, 1, NULL),
('WS1516', '1053007-SWB', '16', 4, 4, 1, NULL),
('WS1516', '1053007-SWB', '1084', 0, 0, 1, NULL),
('SS15', '1053007-SWB', '1121', 0, 0, 1, NULL),
('WS1516', '1053007-SWB', '1121', 0, 0, 1, NULL),
('SS15', '1053008-SWB', '21', 4, 4, 4, NULL),
('WS1516', '1053008-SWB', '21', 4, 4, 2, 'gekoppelt mit WKB3'),
('SS15', '1053009-SWB', '21', 1, 2, 1, NULL),
('WS1516', '1053009-SWB', '21', 1, 2, 1, NULL),
('SS15', '1053010-SWB', '15', 4, 4, 4, NULL),
('WS1516', '1053010-SWB', '15', 4, 4, 2, 'zusammen mit WK4'),
('SS15', '1053011-SWB', '15', 1, 2, 1, NULL),
('WS1516', '1053011-SWB', '15', 1, 2, 1, NULL),
('SS15', '1053012-SWB', '3', 4, 4, 4, NULL),
('WS1516', '1053012-SWB', '3', 4, 4, 4, NULL),
('WS1516', '1053020-SWB', '1074', 2, 4, 4, NULL),
('SS15', '1053020-SWB', '1199', 2, 4, 2, NULL),
('SS15', '1053021-SWB', '1149', 1, 2, 0.5, NULL),
('WS1516', '1053021-SWB', '1211', 1, 2, 0.5, NULL),
('WS1516', '1053029-SWB', '1035', 4, 4, 4, NULL),
('SS15', '1053029-SWB', '1119', 4, 4, 4, NULL),
('WS1516', '1053030-SWB', '1035', 1, 2, 1, NULL),
('SS15', '1053030-SWB', '1119', 1, 2, 1, NULL),
('SS15', '1054003-SWB', '22', 4, 4, 0, NULL),
('WS1516', '1054003-SWB', '22', 4, 4, 2, NULL),
('SS15', '1054004-SWB', '34', 1, 2, 1, NULL),
('WS1516', '1054004-SWB', '34', 1, 2, 1, NULL),
('SS15', '1054005-SWB', '17', 0, 0, 1, NULL),
('SS15', '1054005-SWB', '1079', 0, 0, 1.5, NULL),
('WS1516', '1054005-SWB', '1079', 0, 0, 1, NULL),
('SS15', '1054005-SWB', '1119', 0, 0, 2, NULL),
('SS15', '1054005-SWB', '1122', 0, 0, 1, NULL),
('WS1516', '1054007-SWB', '1053', 3, 4, 0, 'Gekoppelt mit TIB4'),
('SS15', '1054007-SWB', '1119', 3, 4, 4, NULL),
('WS1516', '1054008-SWB', '1053', 1, 2, 0.34, NULL),
('SS15', '1054008-SWB', '1119', 1, 2, 0.34, NULL),
('SS15', '1055001-SWB', '3', 0, 0, 2, NULL),
('WS1516', '1055001-SWB', '3', 0, 0, 1, 'WKB+TIB+SWB'),
('SS15', '1055001-SWB', '7', 0, 0, 2, NULL),
('SS15', '1055001-SWB', '1023', 0, 0, 1, NULL),
('WS1516', '1055001-SWB', '1023', 0, 0, 1, 'WKB+TIB+SWB'),
('WS1516', '1055001-SWB', '1119', 0, 0, 1, 'WKB+TIB+SWB'),
('SS15', '1055002-SWB', '999', 1, 2, 0, NULL),
('WS1516', '1055002-SWB', '999', 1, 2, 0, NULL),
('SS15', '1056001-SWB', '999', 3, 4, 0, NULL),
('WS1516', '1056001-SWB', '999', 3, 4, 0, NULL),
('SS15', '1056002-SWB', '999', 1, 2, 0, NULL),
('WS1516', '1056002-SWB', '999', 1, 2, 0, NULL),
('SS15', '1056003-SWB', '999', 3, 4, 0, NULL),
('WS1516', '1056003-SWB', '999', 3, 4, 0, NULL),
('SS15', '1056004-SWB', '999', 1, 2, 0, NULL),
('WS1516', '1056004-SWB', '999', 1, 2, 0, NULL),
('SS15', '1056005-SWB', '999', 3, 4, 0, NULL),
('WS1516', '1056005-SWB', '999', 3, 4, 0, NULL),
('SS15', '1056006-SWB', '999', 1, 2, 0, NULL),
('WS1516', '1056006-SWB', '999', 1, 2, 0, NULL),
('SS15', '1056007-SWB', '999', 0, 0, 0, NULL),
('WS1516', '1056007-SWB', '999', 0, 0, 0, NULL),
('SS15', '1057000-SWB', '999', 0, 0, 0, NULL),
('WS1516', '1057000-SWB', '999', 0, 0, 0, NULL),
('SS15', '1057001-SWB', '999', 0, 0, 0, NULL),
('WS1516', '1057001-SWB', '999', 0, 0, 0, NULL),
('SS15', '1057002-SWB', '999', 0, 0, 0, NULL),
('WS1516', '1057002-SWB', '999', 0, 0, 0, NULL),
('SS15', '3SWB_5013', '999', 0, 0, 0, NULL),
('WS1516', '3SWB_5013', '999', 0, 0, 0, NULL),
('WS1516', '3SWB-919a', '1157', 2, 2, 1.5, 'Bergmeir'),
('SS15', '8000007-SWB', '15', 0, 0, 2, NULL),
('SS15', '8006001-SWB', '15', 0, 0, 2, NULL),
('SS15', '1051002-WKB', '1105', 4, 4, 4, NULL),
('WS1516', '1051002-WKB', '1105', 4, 4, 4, NULL),
('SS15', '1051003-WKB', '0', 5, 6, 5, NULL),
('WS1516', '1051003-WKB', '0', 5, 6, 5, NULL),
('SS15', '1051004-WKB', '0', 5, 6, 5, NULL),
('WS1516', '1051004-WKB', '0', 5, 6, 5, NULL),
('SS15', '1051010-WKB', '1122', 0, 0, 4, NULL),
('WS1516', '1051010-WKB', '1122', 0, 0, 4, NULL),
('SS15', '10510112-WKB', '1161', 2, 2, 2, NULL),
('WS1516', '10510112-WKB', '1212', 2, 2, 2, NULL),
('SS15', '1051011-WKB', '1161', 3, 4, 3, NULL),
('WS1516', '1051011-WKB', '1212', 3, 4, 3, NULL),
('SS15', '1051014-WKB', '3', 0, 0, 2, NULL),
('WS1516', '1051014-WKB', '3', 0, 0, 2, NULL),
('SS15', '1051027-WKB', '3', 3, 4, 3, NULL),
('WS1516', '1051027-WKB', '1035', 3, 4, 3, NULL),
('SS15', '1051028-WKB', '1100', 1, 2, 2, NULL),
('WS1516', '1051028-WKB', '1100', 1, 2, 2, NULL),
('SS15', '1052001-WKB', '1208', 3, 4, 3, NULL),
('WS1516', '1052001-WKB', '1208', 3, 4, 3, NULL),
('SS15', '1052002-WKB', '1208', 1, 2, 1, NULL),
('WS1516', '1052002-WKB', '1208', 1, 2, 2, NULL),
('WS1516', '1052006-WKB', '1035', 4, 4, 3, NULL),
('SS15', '1052006-WKB', '1119', 4, 4, 1, NULL),
('WS1516', '1052007-WKB', '1162', 0, 0, 1, NULL),
('WS1516', '1052007-WKB', '1035', 1, 2, 1, NULL),
('SS15', '1052007-WKB', '1119', 1, 2, 1, NULL),
('SS15', '1052015-WKB', '1122', 2, 2, 4, NULL),
('WS1516', '1052015-WKB', '1122', 2, 2, 4, NULL),
('SS15', '1052016-WKB', '1193', 4, 4, 4, NULL),
('WS1516', '1052016-WKB', '1212', 4, 4, 4, NULL),
('SS15', '1052017-WKB', '1193', 1, 2, 1, NULL),
('WS1516', '1052017-WKB', '1212', 1, 2, 1, NULL),
('SS15', '1052018-WKB', '0', 4, 4, 4, NULL),
('WS1516', '1052018-WKB', '0', 4, 4, 4, NULL),
('SS15', '1052019-WKB', '0', 1, 2, 2, NULL),
('WS1516', '1052019-WKB', '0', 1, 2, 2, NULL),
('SS15', '1052020-WKB', '0', 5, 6, 5, NULL),
('WS1516', '1052020-WKB', '0', 5, 6, 5, NULL),
('SS15', '1052029-WKB', '1119', 0, 0, 3, NULL),
('WS1516', '1052029-WKB', '1119', 0, 0, 3, NULL),
('SS15', '1052030-WKB', '1137', 1, 2, 1, NULL),
('WS1516', '1052030-WKB', '1137', 1, 2, 1, NULL),
('SS15', '1053007-WKB', '1072', 0, 0, 1, NULL),
('SS15', '1053007-WKB', '16', 0, 0, 1, NULL),
('WS1516', '1053007-WKB', '16', 0, 0, 1, NULL),
('WS1516', '1053007-WKB', '1084', 0, 0, 1, NULL),
('SS15', '1053007-WKB', '1121', 4, 4, 1, NULL),
('WS1516', '1053007-WKB', '1121', 4, 4, 1, NULL),
('SS15', '1053008-WKB', '15', 4, 4, 4, NULL),
('WS1516', '1053008-WKB', '15', 4, 4, 1, NULL),
('SS15', '1053008-WKB', '21', 4, 4, 2, NULL),
('SS15', '1053009-WKB', '21', 1, 2, 2, NULL),
('WS1516', '1053009-WKB', '21', 1, 2, 1, NULL),
('SS15', '1053010-WKB', '15', 3, 4, 1, NULL),
('WS1516', '1053010-WKB', '15', 3, 4, 0, 'gekoppelt SWB 3. Semester'),
('SS15', '1053011-WKB', '15', 1, 2, 1, NULL),
('WS1516', '1053011-WKB', '15', 1, 2, 2, NULL),
('SS15', '1053012-WKB', '0', 4, 4, 2, NULL),
('WS1516', '1053012-WKB', '0', 4, 4, 4, NULL),
('SS15', '1053012-WKB', '3', 0, 0, 2, NULL),
('SS15', '1053022-WKB', '1146', 3, 4, 3, NULL),
('WS1516', '1053022-WKB', '1146', 3, 4, 3, NULL),
('SS15', '1053023-WKB', '1146', 1, 2, 1, NULL),
('WS1516', '1053023-WKB', '1146', 1, 2, 1, NULL),
('SS15', '10530242-WKB', '1198', 2, 2, 2, NULL),
('WS1516', '10530242-WKB', '1198', 2, 2, 2, NULL),
('SS15', '1053024-WKB', '1198', 2, 2, 2, NULL),
('WS1516', '1053024-WKB', '1198', 2, 2, 2, NULL),
('SS15', '1053025-WKB', '1198', 1, 2, 1, NULL),
('WS1516', '1053025-WKB', '1198', 1, 2, 1, NULL),
('WS1516', '1054007-WKB', '1053', 3, 4, 1, NULL),
('SS15', '1054007-WKB', '1119', 3, 4, 0.5, NULL),
('WS1516', '1054008-WKB', '1053', 1, 2, 0.33, NULL),
('SS15', '1054008-WKB', '1119', 1, 2, 0.33, NULL),
('SS15', '1054015-WKB', '1122', 4, 4, 3, NULL),
('WS1516', '1054015-WKB', '1122', 4, 4, 3, NULL),
('SS15', '1054016-WKB', '1122', 1, 2, 1, NULL),
('WS1516', '1054016-WKB', '1122', 1, 2, 1, NULL),
('SS15', '1054017-WKB', '1188', 4, 4, 4, NULL),
('WS1516', '1054017-WKB', '1188', 4, 4, 4, NULL),
('SS15', '1054018-WKB', '1125', 3, 4, 3, NULL),
('WS1516', '1054018-WKB', '1125', 3, 4, 3, NULL),
('SS15', '1054019-WKB', '1125', 1, 2, 1, NULL),
('WS1516', '1054019-WKB', '1125', 1, 2, 2, NULL),
('SS15', '1055001-WKB', '1023', 3, 4, 1, 'WKB+TIB+SWB'),
('WS1516', '1055001-WKB', '1023', 3, 4, 1, 'WKB+TIB+SWB'),
('SS15', '1055002-WKB', '999', 0, 0, 0, NULL),
('WS1516', '1055002-WKB', '999', 0, 0, 0, NULL),
('SS15', '1056001-WKB', '999', 3, 4, 0, NULL),
('WS1516', '1056001-WKB', '999', 3, 4, 0, NULL),
('SS15', '1056002-WKB', '999', 1, 2, 0, NULL),
('WS1516', '1056002-WKB', '999', 1, 2, 0, NULL),
('SS15', '1056007-WKB', '999', 0, 0, 0, NULL),
('WS1516', '1056007-WKB', '999', 0, 0, 0, NULL),
('SS15', '1056017-WKB', '999', 1, 2, 0, NULL),
('WS1516', '1056017-WKB', '999', 1, 2, 0, NULL),
('SS15', '1056016-WKB', '999', 3, 4, 0, NULL),
('WS1516', '1056016-WKB', '999', 3, 4, 0, NULL),
('SS15', '1056018-WKB', '999', 4, 4, 0, NULL),
('WS1516', '1056018-WKB', '999', 4, 4, 0, NULL),
('SS15', '1056019-WKB', '999', 4, 4, 0, NULL),
('WS1516', '1056019-WKB', '999', 4, 4, 0, NULL),
('SS15', '1057000-WKB', '999', 0, 0, 0, NULL),
('WS1516', '1057000-WKB', '999', 0, 0, 0, NULL),
('SS15', '1057001-WKB', '999', 0, 0, 0, NULL),
('WS1516', '1057001-WKB', '999', 0, 0, 0, NULL),
('SS15', '1057002-WKB', '999', 0, 0, 0, NULL),
('WS1516', '1057002-WKB', '999', 0, 0, 0, NULL),
('SS15', '3WFB_5013', '999', 0, 0, 0, NULL),
('WS1516', '3WFB_5013', '999', 0, 0, 0, NULL),
('SS15', 'ASM_999993', '999', 0, 0, 0, NULL),
('WS1516', 'ASM_999993', '999', 0, 0, 0, NULL),
('SS15', 'ASM_999995', '1072', 0, 0, 6, NULL),
('WS1516', 'ASM_999995', '1072', 0, 0, 0, NULL),
('SS15', 'ASM_999999', '15', 0, 0, 2, NULL),
('WS1516', 'ASM_999999', '15', 0, 0, 0, NULL),
('SS15', 'ASM_999999', '21', 0, 0, 2, NULL),
('WS1516', 'ASM_999999', '21', 0, 0, 0, NULL),
('SS15', 'ASM_999999', '22', 0, 0, 0, NULL),
('WS1516', 'ASM_999999', '22', 0, 0, 4, NULL),
('SS15', 'ASM_999999', '1022', 0, 0, 0, NULL),
('WS1516', 'ASM_999999', '1022', 0, 0, 2, NULL),
('SS15', 'ASM_999999', '1053', 0, 0, 6, NULL),
('WS1516', 'ASM_999999', '1053', 0, 0, 0, NULL),
('SS15', 'ASM_999999', '1070', 0, 0, 4, NULL),
('WS1516', 'ASM_999999', '1070', 0, 0, 0, NULL),
('SS15', 'ASM_999999', '1116', 0, 0, 0, NULL),
('WS1516', 'ASM_999999', '1116', 0, 0, 0, NULL),
('SS15', 'ASM_999999', '1192', 0, 0, 0, NULL),
('WS1516', 'ASM_999999', '1192', 0, 0, 8, NULL),
('WS1415', '1051001-SWB', '0', 5, 6, 5, NULL),
('WS1415', '1051002-SWB', '1119', 4, 4, 2, 'SWB+TIB'),
('WS1415', '1051002-WKB', '1119', 4, 4, 2, 'SWB+TIB'),
('WS1415', '1051003-SWB', '7', 5, 6, 0, NULL),
('WS1415', '1051003-WKB', '7', 5, 6, 5, NULL),
('WS1415', '1051004-SWB', '0', 5, 6, 5, 'SWB+TIB'),
('WS1415', '1051004-WKB', '0', 5, 6, 5, 'SWB+TIB'),
('WS1415', '1051010-WKB', '1201', 0, 0, 3, NULL),
('WS1415', '10510112-WKB', '1161', 2, 2, 2, NULL),
('WS1415', '1051011-WKB', '1161', 3, 4, 3, NULL),
('WS1415', '1051014-WKB', '1035', 4, 4, 4, NULL),
('WS1415', '1051014-WKB', '1079', 0, 0, 2, NULL),
('WS1415', '1051014-WKB', '1202', 0, 0, 2, NULL),
('WS1415', '1051028-WKB', '1137', 0, 0, 1.5, NULL),
('WS1415', '1052001-SWB', '1208', 3, 4, 0, 'LB Michael Marek'),
('WS1415', '1052001-WKB', '999', 3, 4, 0, NULL),
('WS1415', '1052002-SWB', '1208', 1, 2, 0, 'LB Michael Marek'),
('WS1415', '1052002-WKB', '999', 1, 2, 0, NULL),
('WS1415', '1052003-SWB', '0', 5, 6, 7, '+ 2 SWS Mathe-Zusatzübungen'),
('WS1415', '1052004-SWB', '19', 4, 4, 2, NULL),
('WS1415', '1052005-SWB', '19', 1, 2, 2, NULL),
('WS1415', '1052006-SWB', '1119', 4, 4, 1.5, NULL),
('WS1415', '1052006-WKB', '1035', 4, 4, 3, NULL),
('WS1415', '1052007-SWB', '1162', 1, 2, 1, NULL),
('WS1415', '1052007-SWB', '1119', 0, 0, 1, NULL),
('WS1415', '1052007-WKB', '1035', 1, 2, 2, NULL),
('WS1415', '1052015-WKB', '1207', 2, 2, 2, 'LB Matthias Wolf'),
('WS1415', '1052016-WKB', '1193', 4, 4, 4, 'LB Helferich'),
('WS1415', '1052017-WKB', '1193', 1, 2, 1, 'LB Helferich'),
('WS1415', '1052018-SWB', '0', 4, 4, 4, NULL),
('WS1415', '1052018-WKB', '0', 4, 4, 4, NULL),
('WS1415', '1052019-SWB', '0', 1, 2, 1, NULL),
('WS1415', '1052019-WKB', '0', 1, 2, 1, NULL),
('WS1415', '1052020-WKB', '0', 5, 6, 5, NULL),
('WS1415', '1052027-SWB', '3', 3, 4, 1.5, NULL),
('WS1415', '1052028-SWB', '3', 1, 2, 2, NULL),
('WS1415', '1052028-SWB', '1100', 0, 0, 1, NULL),
('WS1415', '1052029-WKB', '1035', 3, 4, 3, NULL),
('WS1415', '1052030-WKB', '1137', 1, 2, 1.5, NULL),
('WS1415', '1053003-SWB', '1055', 3, 4, 3, NULL),
('WS1415', '1053004-SWB', '1055', 1, 2, 1, NULL),
('WS1415', '1053007-SWB', '1121', 0, 0, 2, NULL),
('WS1415', '1053007-SWB', '1205', 4, 4, 1, NULL),
('WS1415', '1053007-WKB', '1205', 4, 4, 1, NULL),
('WS1415', '1053008-SWB', '21', 4, 4, 4, NULL),
('WS1415', '1053008-WKB', '1072', 4, 4, 4, NULL),
('WS1415', '1053009-SWB', '21', 1, 2, 2, NULL),
('WS1415', '1053009-WKB', '21', 1, 2, 2, NULL),
('WS1415', '1053010-SWB', '15', 3, 4, 2, NULL),
('WS1415', '1053010-WKB', '15', 3, 4, 2, NULL),
('WS1415', '1053011-SWB', '15', 1, 2, 1, NULL),
('WS1415', '1053011-WKB', '15', 1, 2, 2, NULL),
('WS1415', '1053012-SWB', '3', 4, 4, 4, NULL),
('WS1415', '1053012-WKB', '999', 4, 4, 0, NULL),
('WS1415', '1053020-SWB', '999', 4, 4, 0, NULL),
('WS1415', '1053021-SWB', '999', 1, 2, 0, NULL),
('WS1415', '1053022-WKB', '1201', 3, 4, 3, 'LB Matthias Müller'),
('WS1415', '1053023-WKB', '1201', 1, 2, 2, 'LB Matthias Müller'),
('WS1415', '10530242-WKB', '1013', 2, 2, 2, 'LB Märtlbauer'),
('WS1415', '1053024-WKB', '1198', 2, 2, 3, 'LB Märtlbauer'),
('WS1415', '1053025-WKB', '1198', 1, 2, 2, 'LB Märtlbauer'),
('WS1415', '1053030-SWB', '1174', 0, 0, 2, NULL),
('WS1415', '1054003-SWB', '999', 4, 4, 0, NULL),
('WS1415', '1054004-SWB', '999', 1, 2, 0, NULL),
('WS1415', '1054005-SWB', '999', 0, 0, 0, NULL),
('WS1415', '1054007-SWB', '999', 3, 4, 0, NULL),
('WS1415', '1054007-WKB', '999', 3, 4, 0, NULL),
('WS1415', '1054008-SWB', '999', 1, 2, 0, NULL),
('WS1415', '1054008-WKB', '999', 1, 2, 0, NULL),
('WS1415', '1054015-WKB', '999', 3, 4, 0, NULL),
('WS1415', '1054016-WKB', '999', 1, 2, 0, NULL),
('WS1415', '1054017-WKB', '999', 2, 2, 2, NULL);