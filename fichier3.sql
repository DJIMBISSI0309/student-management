
--creer la base de donnee--
create database ecole;
use ecole ;
--creation de la table departement--
create table departement(
    iddepart int primary key auto_increment,
    namedepart varchar(100),
    descriptiondepart varchar(100)
);
--insertion dans la tzblr departement--
insert into departement
  values
      (null,'chimie','etude de la chimie'),
      (null,'mathematique','etude de la mathematique en generale'),
      (null,'informatique','etude de l,informatique en generale')
       (null,'informatique','etude de l,informatique en generale'),
        (null,'informatique','etude de l,informatique en generale'),
      (null,'genie logiciel','etude de la programmation'),
    (null,'genie Civil','etude des constructions'),
    (null,'genie electrique','etude de l,electriciter'),
    (null,'genie thermique','etude des phenomenes thermiques'),
    (null,'genie mecanique','etude de la mecanique en generale'),
    (null,'genie telecoms','etude de la telecommunication'),
    (null,'genie informatique','etude de l,informatique en generale'),
    (null,'agronome','pratique de la peche agriculture elevage et etude des plantes'),
    (null,'medecin','traitement du corps humain'),
    (null,'ingenieur','superviseur des travaux'),
    (null,'avocat','defendre les interets des clients'),
    (null,'proffesseur','enseignement necessaire a l,education'),
    (null,'cadre superieur','prend des decisions dans une organisation'),
    (null,'comptable','etude de la comptabiliter des entreprises'),
    (null,'infirmier','dispensement des soins'),
    (null,'chercheurs scientifique','meneur de recherches'),
    (null,'pilote','commandes et pilotes les aeronefs'),
    (null,'juge','application et interpretation de la loi'),
    (null,'chimiste','etude de la chimie en generale'),
    (null,'politicien','defend les interets des citoyens'),
    (null,'informaticien','concoit devellope et maintient les logiciels en informatiques'),
    (null,'ingenieur en logiciel','concoit developpe et entretient les logiciels informatiques'),
    (null,'psychologue','etude du comportement mentaux des individus'),
    (null,'mecanicien automobile','reparation des materiaux'),
    (null,'dentiste','traitement des problemes dentaires'),
    (null,'ingenieur civil','supervise les constructions'),
    (null,'journalistes','diffuse des informations d,actualiter'),
    (null,'cadre intermediaire','gere et coordonne les activiter d,une equipe'),
    (null,'artiste','cree des oeuvres d,art telque les peintures'),
    (null,'acteur','inprete un role dans des prodctions theatrales'),
    (null,'entrepreneur','gere une entrprise en assurant les risques et les responsabiliter'),
    (null,'ingenieur electrique','supervise le systmes electriques et electroniques'),
    (null,'designer','creation des produits'),
    (null,'economistes','niveau21 des tendances economiques'),
    (null,'nde','etude du departement du nde'),
     (null,'science','etude des sciences'),
    (null,'infographie','etude de l,infographie'),
    (null,'comptabiliter generale','etude de la comptabiliter generale'),
    (null,'genie industrielle','etude du genie industrielle'),
     (null,'genie thermique','niveau21 du genie thermique'),
     (null,'sarthe','descriptions generale des sarthe'),
    (null,'savoie','etude du departement du savoie'),
    (null,'genie mecanique','etude de la mecanique en generale'),
    (null,'paris','etude du departements de paris'),
    (null,'seine_maritine','niveau21 des seine maritines'),
     (null,'genie electrique','etude des appareils electriques'),
    (null,'agronnes','etude de l;agriculture et de l,elevage en generale'),
    (null,'genie civil','etude des materiaux de constructions'),
    (null,'sommes','etude des sommes'),
    (null,'mifi','niveau21 du departement de la mifi'),
     (null,'philosophie','etude de la philosophie en generale'),
    (null,'var','etude des caractere de type var'),
    (null,'francais','etude du francais en generale'),
    (null,'vendée','niveau21 du departement vendéé'),
     (null,'haute_vienne','etude du departement de haute_vienne'),
     (null,'vosgnes','etude du departement de vosgnes'),
    (null,'yonne','etude du departement de yonne'),
    (null,'territoire de belfort','niveau21 du territoire de belfort'),
     (null,'essonne','etude_essonne'),
    (null,'hauts_de_seine','etude hauts_de_seine'),
     (null,'seine_saint_denis','etude seine_saint_denis'),
   (null,'val_d,oise','etude val_d,oise'),
     (null,'guadeloupe','etude guadeloupe'),
      (null,'martinique','etude martinique'),
      (null,'guyane','etude guyane'),
  (null,' reunion','reunion'),
  (null,'sport','pratique du sport'),
     (null,'pedagogie','genie telecoms'),
     (null,'traduction','etude des langues'),
     (null,'informatique','etude de l,informatique en generale'),
    (null,'reseau','etude du reseau'),
    (null,'mathematique','etude de la mathematique appliquée'),
     (null,'physique','etude de la physique appliquée'),
     (null,'chimie','etude de la chimie'),
     (null,'anglais','etude anglais'),
     (null,'genie logiciel','etude de la programmation'),
    (null,'nutrition','nutrition de son entourage')
    (null,'Ain','genie informatique'),
     (null,'aisne','informatique'),
      (null,'allier','geni informatique'),
       (null,'alpes_de_haute-provence','genie'),
        (null,'hautes_alpes','genie logiciel'),
         (null,'alpes_maritines','genie industrielle'),
          (null,'ardeche','ingenieur'),
           (null,'ardennes','genie info'),
           (null,'ariege','telecoms'),
           (null,'aube','genie'),
           (null,'aude','genie telecoms'),
           (null,'aveyron','reseau'),
           (null,'bouches_du_rhone','reseau securiter'),
           (null,'calvados','reseau telecoms'),
           (null,'cantal','info industrielle'),
           (null,'charente','infos'),
           (null,'charente_maritines','agronome');
           
      


      

      


--creation de la table specialty--
create table specialty(
    idspe int  primary key auto_increment,
    namespe varchar(100),
    descriptionspe varchar(100),
    iddepart int,
     foreign key(iddepart)
    references departement(iddepart)
);
--insertion dans la table specialty--
insert into specialty
values
     (null,'genie info','etude de l,informatique',1),
    (null,'genie logiciel','etude de la programmation',2),
    insert into specialty
    values
    (null,'genie Civil','etude des constructions',5),
    (null,'genie electrique','etude de l,electriciter',6),
    (null,'genie thermique','etude des phenomenes thermiques',7);
    insert into specialty
    values
    (null,'genie mecanique','etude de la mecanique en generale',8),
    (null,'genie telecoms','etude de la telecommunication',9),
    (null,'genie informatique','etude de l,informatique en generale',10),
    (null,'agronome','pratique de la peche agriculture elevage et etude des plantes',11),
    (null,'medecin','traitement du corps humain',12,
    (null,'ingenieur','superviseur des travaux',13),
    (null,'avocat','defendre les interets des clients',14),
    (null,'proffesseur','enseignement necessaire a l,education',12),
    (null,'cadre superieur','prend des decisions dans une organisation',13),
    (null,'comptable','etude de la comptabiliter des entreprises',14),
    (null,'infirmier','dispensement des soins',15),
    (null,'chercheurs scientifique','meneur de recherches',16);
    insert into specialty
    values
    (null,'pilote','commandes et pilotes les aeronefs',17),
    (null,'juge','application et interpretation de la loi',18),
    (null,'chimiste','etude de la chimie en generale',19),
    (null,'politicien','defend les interets des citoyens',20),
    (null,'informaticien','concoit devellope et maintient les logiciels en informatiques',21),
    (null,'ingenieur en logiciel','concoit developpe et entretient les logiciels informatiques',22);
     insert into specialty
    values
    (null,'psychologue','etude du comportement mentaux des individus',23),
    (null,'mecanicien automobile','reparation des materiaux',24),
    (null,'dentiste','traitement des problemes dentaires',25),
    (null,'ingenieur civil','supervise les constructions',26),
    (null,'journalistes','diffuse des informations d,actualiter',27),
    (null,'cadre intermediaire','gere et coordonne les activiter d,une equipe',28),
    (null,'artiste','cree des oeuvres d,art telque les peintures',29),
    (null,'acteur','inprete un role dans des prodctions theatrales',30),
    (null,'entrepreneur','gere une entrprise en assurant les risques et les responsabiliter',31),
    (null,'ingenieur electrique','supervise le systmes electriques et electroniques',32),
    (null,'designer','creation des produits',33),
    (null,'economistes','niveau21 des tendances economiques',34),
    (null,'ingenieur mecanique','supervise les systemes mecaniques',35),
    (null,'proffesseur d,universiter','meneur de recherche et participe des activites universitaires',36),
    (null,'chirugien','effectue des interventions chirugicales pour les problemes de santer',37),
    (null,'traducteur','traduction des textes',38),
    (null,'analyyste financier','evaluation des performances financieres',39),
    (null,'geologue','etude de la terre',40),
    (null,'architecte paysagiste','conception des parc',41),
    (null,'historien','niveau21 des evenements',42),
    (null,'ingenieur aerospatial','superviseur aerien',43),
    (null,'kinesiologue','traitement des fonctions du corps',44),
    (null,'biologistes','etude des organisme vivant',45),
    (null,'medecin veterinaire','etude sur les animaux',46),
    (null,'directeur artistique','supervise et coordonne la creation d,oeuvre statistique',47),
    (null,'ingenieur petrolier','etude des ressoureces petrolieres',48),
    (null,'archeologue','etude des vestiges',49),
    (null,'conseiller financier','strategie en matietre de gestion financiere personnelles',50),
    (null,'bibliothecaire','collections des bibiotheques',51),
    (null,'boulanger','etude de la boulangerie',52),
    (null,'cadre commercial','coordonne les activites commerciales',53),
    (null,'cadre financier','gere les activites financieres',54),
    (null,'gendarme','maintient de l,ordre',55),
    (null,'gestion de paie','etude de paie',56);
     insert into specialty
    values
    (null,'genie logiciel','etude de la programmation',57),
    (null,'genie logiciel','etude de la programmation',58),
    (null,'genie logiciel','etude de la programmation',59),
    (null,'genie logiciel','etude de la programmation',60),
    (null,'genie logiciel','etude de la programmation',61),
    (null,'genie logiciel','etude de la programmation',62),
    (null,'genie logiciel','etude de la programmation',63),
    (null,'genie logiciel','etude de la programmation',64),
    (null,'genie logiciel','etude de la programmation',65),
    (null,'genie logiciel','etude de la programmation',66),
    (null,'genie logiciel','etude de la programmation',67),
    (null,'genie logiciel','etude de la programmation',68),
    (null,'genie logiciel','etude de la programmation',69);
    insert into specialty
    values
    (null,'genie logiciel','etude de la programmation',70),
    (null,'genie logiciel','etude de la programmation',71),
    (null,'genie logiciel','etude de la programmation',72),
    (null,'genie logiciel','etude de la programmation',73),
    (null,'genie logiciel','etude de la programmation',74),
    (null,'genie logiciel','etude de la programmation',75),
    (null,'genie logiciel','etude de la programmation',76),
    (null,'genie logiciel','etude de la programmation',77),
    (null,'genie logiciel','etude de la programmation',78),
    (null,'genie logiciel','etude de la programmation',79),
    (null,'genie logiciel','etude de la programmation',80),
    (null,'genie logiciel','etude de la programmation',81),
    (null,'genie logiciel','etude de la programmation',82),
    (null,'genie logiciel','etude de la programmation',83),
    (null,'genie logiciel','etude de la programmation',84),
    (null,'genie logiciel','etude de la programmation',85),
    (null,'genie logiciel','etude de la programmation',86);
    insert into specialty
    values
    (null,'genie logiciel','etude de la programmation',87),
    (null,'genie logiciel','etude de la programmation',88),
    (null,'genie logiciel','etude de la programmation',89),
    (null,'genie logiciel','etude de la programmation',90),
    (null,'genie logiciel','etude de la programmation',91),
    (null,'genie logiciel','etude de la programmation',92),
    (null,'genie logiciel','etude de la programmation',93),
    (null,'genie logiciel','etude de la programmation',94),
    (null,'genie logiciel','etude de la programmation',95),
    (null,'genie logiciel','etude de la programmation',96),
    (null,'genie logiciel','etude de la programmation',97),
    (null,'genie logiciel','etude de la programmation',98),
    (null,'genie logiciel','etude de la programmation',99);
    
    --modification du nom de la table level
alter table level rename to level_1;
--creation de la table level--
create table level1(
    idlev int primary key auto_increment,
    desclev varchar(40)
);
--insertion des donnees dans la table level--
insert into level1
values
    (null,'niveau1'),
    (null,'NIVEAU2'),
    (null,'niveau3'),
    (null,'NIVEAU4'),
    (null,'niveau5'),
    (null,'niveau6'),
    (null,'niveau7'),
    (null,'niveau8'),
    (null,'niveau9'),
    (null,'niveau10'),
    (null,'niveau11'),
    (null,'niveau12'),
    (null,'niveau13'),
    (null,'niveau14'),
    (null,'niveau15'),
    (null,'niveau16'),
    (null,'niveau17'),
    (null,'niveau18'),
    (null,'niveau19'),
    (null,'niveau20'),
    (null,'niveau20'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21'),
    (null,'niveau21');


--creation de la table student--
create table student(
    idstud int primary key auto_increment,
    firstname varchar(30),
    lastname varchar(30),
    birth date
);
--insertion des donnes dans la table student--
insert into student
    values
    (null,'merciel','sipieng','2004-05-25'),
    (null,'glodi','sipieng','2003-03-15'),
    (null,'marcial','sipieng','2004-03-25'),
    (null,'ketsia','sipieng','2002-02-10'),
    (null,'francklin','sipieng','2024-03-14'),
    (null,'tk','sipieng','2024-03-14'),
    (null,'kenel','sipieng','2024-03-14'),
    (null,'frank','sipieng','2024-03-14'),
    (null,'erika','sipieng','2024-03-14'),
    (null,'lesline','sipieng','2024-03-14'),
    (null,'leslie','sipieng','2024-03-14'),
    (null,'nana','sipieng','2024-03-14'),
    (null,'ange','sipieng','2024-03-14'),
    (null,'jessika','sipieng','2024-03-14'),
    (null,'andrielle','sipieng','2024-03-14'),
    (null,'titi','sipieng','2024-03-14'),
    (null,'tata','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2024-03-14'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','2005-04-12'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18'),
    (null,'merciel','sipieng','1999-06-18');

--creation de la table enrollement--
create table enrollment(
    id_academic_year int primary key,
    idspe int,
    idlev int,
    idstud int,
    foreign key(idspe) references specialty(idspe),
    foreign key (idlev) references level1(idlev),
    foreign key(idstud) references student(idstud)   
);
--insertion des donnees dans la table enrollment--
insert into enrollment
values
   ('2024-1974',1,1,1),
   ('1974-2022',2,2,2);
   insert into enrollment
values
   ('2022-2021',3,3,3),
   ('2021-2020',4,4,4),
   ('2020-2019',5,5,5),
   ('2019-2018',6,6,6),
   ('2018-2017',7,7,7),
   ('2017-2016',8,8,8),
   ('2016-2015',9,9,9),
   ('2015-2014',10,10,10),
   ('2014-2013',11,11,11),
   ('2013-2012',12,12,12),
   ('2012-2011',13,13,13),
   ('2011-2010',14,14,14),
   ('2010-2009',15,15,15),
   ('2009-2008',16,16,16),
   ('2008-2007',17,17,17),
   insert into enrollment
values
   ('2007-2006',18,18,18),
   ('2006-2005',19,19,19),
   ('2005-2004',20,20,20),
   ('2004-2003',21,21,21),
   ('2003-2002',22,22,22),
   ('2002-2001',23,23,23),
   ('2001-2000',24,24,24),
   ('2000-1999',25,25,25),
   ('1999-1998',26,26,26),
   ('1998-1997',27,27,27),
   ('1997-1996',28,28,28),
   ('1996-1995',29,29,29),
   ('1995-1994',30,30,30),
   ('1994-1993',31,31,31),
   ('1993-1992',32,32,32),
   ('1991-1990',32,32,32),
   ('1990-1989',33,33,33),
   ('1989-1988',34,34,34),
   ('1988-1987',35,35,35),
   ('1987-1986',36,36,36),
   ('1986-1985',37,37,37),
   ('1985-1984',38,38,38),
   ('1984-1983',39,39,39),
   ('1983-1982',40,40,40),
   ('1982-1981',41,41,41),
   ('1981-1980',42,42,42),
   ('1980-1979',43,43,43),
   ('1979-1978',44,44,44),
   ('1978-1977',45,45,45),
   ('1977-1976',46,46,46),
   ('1976-1975',47,47,47),
   ('1975-1974',48,48,48),
   ('1974-1974',49,49,49),
   ('1973-1974',42,42,42);
   insert into enrollment
values
   ('1972-1974',43,43,43),
   ('1971-1974',44,44,44),
   ('1970-1974',45,45,45),
   ('1969-1974',46,46,46),
   ('1968-1974',47,47,47),
   ('1967-1974',48,48,48),
   ('1966-1974',49,49,49),
   ('1965-1974',50,50,50),
   ('1964-1974',51,51,51),
   ('1963-1974',52,52,52),
   ('1962-1974',51,51,51),
   ('1961-1974',52,52,52),
   ('1960-1974',53,53,53),
   ('1959-1974',54,54,54),
   ('1958-1974',55,55,55),
   
   ('1954-1974',56,56,56),
   ('1953-1974',57,57,57),
   ('1952-1974',58,58,58),
   ('1951-1974',59,59,59),
   ('1950-1974',60,60,60),
   ('1949-1974',61,61,61),
   ('1948-1974',62,62,62);
   ('1947-1974',63,63,63),
   ('1946-1974',64,64,64),
   ('1945-1974',65,65,65),
   ('1944-1974',66,66,66),
   insert into enrollment
values
   ('1943-1974',67,67,67),
   ('1942-1974',68,68,68),
   ('1941-1974',69,69,69),
   ('1940-1974',70,70,70),
   ('1939-1974',71,71,71),
   ('1938-1974',72,72,72),
   ('1937-1974',73,73,73),
   ('1936-1974',74,74,74);
   ('1935-1974',75,75,74),
   ('1934-1974',76,76,76),
   ('1933-1974',77,77,77),
   ('1932-1974',78,78,78),
   ('1931-1974',79,79,79),
   ('1930-1974',89,89,89),
   ('1929-1974',90,90,90),
   ('1928-1974',91,91,91),
   ('1927-1974',92,92,92),
   ('1926-1974',93,93,93),
   ('1925-1974',94,94,94),
   ('1924-1974',95,96,97),
   ('1923-1974',98,98,98);
   
   



--insertion des donnees dans la table specialty--

           --insertion des elements dans la table departement--
           insert into departement
            values
                 insert into specialty
values
    ('1','Ain','genie informatique'),
     ('2','aisne','informatique'),
      ('3','allier','geni informatique'),
       ('4','alpes_de_haute-provence','genie'),
        ('5','hautes_alpes','genie logiciel'),
         ('6','alpes_maritines','genie industrielle'),
          ('7','ardeche','ingenieur'),
           ('8','ardennes','genie info'),
           ('9','ariege','telecoms'),
           ('10','aube','genie'),
           ('11','aude','genie telecoms'),
           ('13','aveyron','reseau'),
           ('14','bouches_du_rhone','reseau securiter'),
           ('15','calvados','reseau telecoms'),
           ('16','cantal','info industrielle'),
           ('17','charente','infos'),
           ('18','charente_maritines','agronome'),
           ('19','cher','genie civil'),
           ('20','correze','genie electrique'),
           ('21','corse_du_sud','genie thermique'),
           ('22','haute_corse','cyber securiter'),
           ('23','cote_d,or','medecin'),
           ('24','cotes_d,amor','sage femmes'),
           ('25','creuse','infirmiere'),
           ('26','dordogne','genie mecanique'),
           ('27','horlande','mecatronique'),
           ('28','doubs','meca'),
           ('29','drone','genie pro'),
           ('30','eure','A'),
           ('31','eure_et_loir','B'),
           ('32','finistere','C'),
           ('33','gard','D'),
           ('34','haute_garonne','E'),
           ('35','gers','F'),
           ('36','gironde','F'),
           ('37','herault','J'),
           ('38','ille_et_vilaine','H'),
           ('39','indre','I'),
           ('40','indre_et_loire','J'),
           ('41','loire','K'),
           ('42','loire_atlantique','L'),
           ('43','loiret','M'),
           ('44','lot','N'),
           ('45','lot_et_garonne','O'),
           ('46','lozere','P'),
           ('47','maine_et_loire','Q'),
           ('47','manche','R'),
           ('48','marne','S'),
           ('49','haute_marne','T'),
           ('50','mayenne','U'),
           ('51','meurte','V'),
           ('52','meuse','W'),
           ('53','morbihan','Y'),
           ('54','moselle','Z'),
           ('55','oise','genie telecom'),
           ('56','orne','genie tele'),
           ('57','litteratures',' etude litteraires'),
           ('58','nde','etude du departement du nde'),
           ('59','science','etude des sciences'),
           ('60','infographie','etude de l,infographie'),
           ('61','comptabiliter generale','etude de la comptabiliter generale'),
           ('62','genie industrielle','etude du genie industrielle'),
           ('63','genie thermique','niveau21 du genie thermique'),
           ('64','sarthe','descriptions generale des sarthe'),
           ('65','savoie','etude du departement du savoie'),
           ('66','genie mecanique','etude de la mecanique en generale'),
           ('67','paris','etude du departements de paris'),
           ('68','seine_maritine','niveau21 des seine maritines'),
           ('69','genie electrique','etude des appareils electriques'),
           ('70','agronnes','etude de l;agriculture et de l,elevage en generale'),
           ('71','genie civil','etude des materiaux de constructions'),
           ('72','sommes','etude des sommes'),
           ('73','mifi','niveau21 du departement de la mifi'),
           ('74','philosophie','etude de la philosophie en generale'),
           ('75','var','etude des caractere de type var'),
           ('76','francais','etude du francais en generale'),
           ('77','vendée','niveau21 du departement vendéé'),
           ('78','haute_vienne','etude du departement de haute_vienne'),
           ('79','vosgnes','etude du departement de vosgnes'),
           ('80','yonne','etude du departement de yonne'),
           ('81','territoire de belfort','niveau21 du territoire de belfort'),
           ('82','essonne','etude_essonne'),
           ('83','hauts_de_seine','etude hauts_de_seine'),
           ('84','seine_saint_denis','etude seine_saint_denis'),
           ('85','val_d,oise','etude val_d,oise'),
           ('86','guadeloupe','etude guadeloupe'),
           ('87','martinique','etude martinique'),
           ('88','guyane','etude guyane'),
           ('89',' reunion','reunion'),
           ('90','sport','pratique du sport'),
           ('91','pedagogie','genie telecoms'),
           ('92','traduction','etude des langues'),
           ('93','informatique','etude de l,informatique en generale'),
           ('94','reseau','etude du reseau'),
           ('95','mathematique','etude de la mathematique appliquée'),
           ('96','physique','etude de la physique appliquée'),
           ('97','chimie','etude de la chimie'),
           ('98','anglais','etude anglais'),
           ('99','genie logiciel','etude de la programmation'),
           ('100','nutrition','nutrition de son entourage');


           --execution des requettes--
           --requettes sql qui affiche les specialiter--
           select * from specialty;
           --requettes sql qui affiche les departements--
           select * from departement;
           --requettes sql qui afiiche les level--
           select * from level1;
           --requettes sql qui affiche les etudiants
           select * from student;
           --requettes sql qui afiiche tous les enrollment--
           select * from enrollement;
           --requettes sql qui affiche une specialiter--
           select specialty.namespe
           from specialty,departement
           where departement.iddepart=specialty.iddepart and departement.iddepart=1;
           --requettes qui affiche la specialiter d'un etudiant precis--
           select specialty.namespe
           from student,specialty,enrollment
           where student.idstud=enrollment.idstud and enrollment.idstud=specialty.idspe and student.firstname='glodi';
           --requette sql qui affiche le niveau d,un etudiant--
           select level1.desclev
           from student,level1,enrollment
           where student.idstud=enrollment.idstud and enrollment.idstud=level1.idlev and student firstname='glodi';
           --requette sql qui affiche le departement d,un etudiant precis--
           select departement.namedepart
           from student,specialty,enrollment,departement
           where departement.iddepart=specialty.iddepart and student.idstud=enrollment.idstud and 
           enrollment.idstud=specialty.iddepart and student.idstud=1;
           --requette sql qui affiche la specialiter et le niveau d,un etudiant precis--
           select level1.desclev,specialty.namespe
           from student,level1,enrollment,specialty
           where student.idstud=enrollment.idstud and enrollment.idstud=level1.idlev and  
           enrollment.idstud=specialty.idspe and student.firstname='glodi';
           --requettes sql qui affiche la specialiter ,le niveau et le departemet d,un etudiant
           select level1.desclev,specialty.namespe,departement.namedepart
           from student,level1,enrollment,specialty,departement
           where student.idstud=enrollment.idstud and enrollment.idstud=level1.idlev and 
           enrollment.idstud=specialty.idspe and enrollment.idstud=specialty.iddepart and
            enrollment.idstud=level1.idlev and enrollment.idstud=specialty.idspe and
             student.firstname='glodi';
           --afficher le nombre d,etudiant enroller--
           select count(student.idstud) 
           from student,enrollment
           where student.idstud=enrollment.idstud;
           --afficher le nombre de departement disponible--
           select count( departement.iddepart) 
           from departement;
           --afficher le nombre d,etudiant par departement--
           select departement.namedepart,count(student.idstud)
           from student,departement,enrollment,specialty
           where departement.iddepart=specialty.iddepart and
           student.idstud=enrollment.idstud and
           enrollment.idstud=specialty.iddepart
           group by departement.namedepart;
           --afficher le nombre d,etudiant par sepecialiter
           select specialty.namespe,count(student.idstud) 
           from student,specialty,enrollment
           where student.idstud=enrollment.idstud and
           enrollment.idstud=specialty.idspe
           group by specialty.namespe;
           --afficher le nombre d,etudiant par niveau
           select level1.desclev,count(student.idstud) 
           from student,enrollment,level1
           where student.idstud=enrollment.idstud and 
           enrollment.idstud=level1.idlev
           group by level1.desclev;
           --afficher le nombre d,etudiant d,une annee scolaire--
           select count(student.idstud) 
           from student,enrollment

           where student.idstud=enrollment.idstud and
           id_academic_year='2022-2021';
           
           --afficher les specialiter par departement--
           select departement.namedepart,count(specialty.idspe)
             from departement,specialty
             where
             departement.iddepart=specialty.iddepart
           group by departement.namedepart;
           --afficher le nombre d,etudiant enroller entre deux dates--
           select count(student.idstud)
           from student,enrollment
           where student.idstud=enrollment.idstud and 
           id_academic_year='2021-2020' and '2020-2019';
           --afficher les niveaux par specialiter--
           select level1.desclev,
           group_concat(distinct specialty.namespe) as specialty
           from specialty,level1,enrollment
           where specialty.idspe=enrollment.idspe and enrollment.idspe=level1.idlev
           group by level1.desclev;
           

           
           

           
 