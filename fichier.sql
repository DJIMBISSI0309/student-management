create database sigeris;
use sigeris;
create table department(
 iddepart int primary key auto_increment,
 namedepart varchar(100),
 descriptiondepart varchar(100)
)ENGINE=InnoDB;
create table specialty(
 idspe int primary key auto_increment,

 namespe varchar(100),
 descriptionspe varchar(100),
 iddepart int,
 FOREIGN KEY(iddepart) REFERENCES department(iddepart) 
 ON DELETE CASCADE
 ON UPDATE  CASCADE 
)ENGINE=InnoDB;
create table level1(
 idlev int primary key auto_increment,
 desclev varchar(100)
)ENGINE=InnoDB;
create table student(
 idstud int primary key auto_increment,
 firstname varchar(100),
 lastname varchar(100),
 birth  date,
 image varchar(100)
)ENGINE=InnoDB;
create table enrollment(
 idenrol int primary key auto_increment,
 academic_year varchar(100),
 idspe int ,
 idlev int,
 idstud int,
 foreign key (idspe) references specialty(idspe) ON DELETE CASCADE ON UPDATE CASCADE,
 foreign key (idlev) references level1(idlev) ON DELETE CASCADE ON UPDATE CASCADE,
 foreign key (idstud) references student(idstud) ON DELETE CASCADE ON UPDATE CASCADE

)ENGINE=InnoDB;
create table administrateur(
  idadmin int primary key auto_increment,
  nom_utilisateur text,
  Email  text,
  mot_de_passe text
)ENGINE=InnoDB;
--insertion des elements department--

 insert into department values(null,'Agronomie','production agricole'),
(null,'Biochimie','chimie de la vie'),
(null,'Biologie','etude des organismes'),
(null,'Chimie','etude de la matiere'),
(null,'Genie mecanique','etude de la conception'),
(null,'Geologie','etude de la terre'),
(null,'informatique','etude des logiciels'),
(null,'Mathematiques','etude des nombres'),
(null,'Medecine','etude de la sante humaine'),
(null,'physique','etude de la matiere'),
(null,'Sciences environnement','etude des interactions'),
(null,'Sciences pharmaceutiques','etude de la fabrication'),
(null,'Artisanat','formation a des metiers'),
(null,'Ceramique','fabrication de la ceramique'),
(null,'Cuisine','formation en cuisine'),
(null,'Design graphique','conception visuelle'),
(null,'Horticulture','etude de la culture'),
(null,'Musique','etude de la musique'),
(null,'Photographie','etude de la photographie'),
(null,'Sculpture','etude de la sculpture'),
(null,'Education speciale','formation enseignants'),
(null,'Orthophonie','etude de la reeducation'),
(null,'Psychologie sociale','etude de la psychologie'),
(null,'Administration publique','etude de la gestion des services'),
(null,'Administration des entreprises','etude de la gestion des entreprises'),
(null,'Ressources humaines','etude de la gestion des ressources humaines'),
(null,'Criminologie','etude de la criminalite'),
(null,'Economique','etude de la production'),
(null,'Ethique','etude des valeurs morales'),
(null,'Psychologie du travail','etude entre homme et travail'),
(null,'Sociologie du travail','etude des structures'),
(null,'Biologie cellulaire','etude des cellules'),
(null,'Dietetique','etude de la nutrition'),
(null,'infirmieres','formation des infirmieres'),
(null,'Kinesitherapie','etude de la reeducation physique et fonctionnelle'),
(null,'Pharmacie','etude de la distribution'),
(null,'Psychologie Clinique','etude de la psychologie'),
(null,'genie chimique','etudes des procedes chimiques'),
(null,'genie electrique','etude des systemes electriques'),
(null,'genie industriel','etude de lamelioration des processus'),
(null,'genie des materiaux','etude des materiaux'),
(null,'genie des procedes','etudes des procedes de la production'),
(null,'informatique industrielle','etudes des systemes industriels'),
(null,'bibliothecomie','etude de la gestion des informations'),
(null,'communication et medias','etude de la communication'),
(null,'informatique et technologie','etudes des technologies numeriques'),
(null,'activite physique','etude de la pratique des activites'),
(null,'science du sport','etude du sport'),
(null,'andragogie','etude de education des adultes'),
(null,'didactique','etudes des methodes'),
(null,'formation professionnelle','etude de la formation professionnelle'),
(null,'pedagogie','etudes des principes'),
(null,'psychologie de education','etude de education'),
(null,'sociologie de education','etudes des structures'),
(null,'etudes americaines','etude de la culture americaine'),
(null,'etudes arabes','etude de la culture arabe'),
(null,'etude chinoises','etude de la culture chinoise'),
(null,'etude compare','etude de plusieurs cultures'),
(null,'etude germatique','etude de la culture allemande'),
(null,'etude russe','etude de la culture russe'),
(null,'ethnomusicologie','etude de la musique'),
(null,'Geographie humaine','etude de homme sur environnement'),
(null,'histoire de art','etude des artistes'),
(null,'linguistique','etude des langues'),
(null,'litterature compare','etude des litteratures'),
(null,'philologie','etude des langues anciennes'),
(null,'psychologie cognitive','etudes des processus'),
(null,'psychologie sociale','etudes des influences'),
(null,'science de information','etudes des medias'),
(null,'science du langage','etudes des langues et de leur evolution'),
(null,'sociologie de la culture','etudes des modes de vie'),
(null,'anthropologie','etude de humanite'),
(null,'art et design','formation artistique'),
(null,'etude africaine','etude afrique'),
(null,'etude asiatique','etude de asie'),
(null,'etude europeenne','etude de europe'),
(null,'etude feminine et genre','etude des questions de genre'),
(null,'theologie','etude des religions'),
(null,'etude hispaniques','etude de la culture hispanique'),
(null,'etude interculturelle','etude des interactions'),
(null,'etude islamique','etude de islam'),
(null,'etude japonaise','etude de la culture japonnaise'),
(null,'etude latino-americaine','etude de amerique latine'),
(null,'geographie','etude de la terre'),
(null,'histoire','etude du passe'),
(null,'langues et litteratures','etude des langues etrangeres'),
(null,'philosophie','etude des questions fondamentales'),
(null,'psychologie','etude de esprit humain'),
(null,'science politique','etude du pouvoir'),
(null,'sociologie','etudes des societes'),
(null,'theologie','etudes des religions');

--insertion des elements specilality--



 insert into specialty values(null,'Agronomie','production agricole',1),
(null,'Biochimie','chimie de la vie',2),
(null,'Biologie','etude des organismes',3),
(null,'Chimie','etude de la matiere',4),
(null,'Genie mecanique','etude de la conception',5),
(null,'Geologie','etude de la terre',6),
(null,'informatique','etude des logiciels',7),
(null,'Mathematiques','etude des nombres',8),
(null,'Medecine','etude de la sante humaine',9),
(null,'physique','etude de la matiere',10),
(null,'Sciences environnement','etude des interactions',11),
(null,'Sciences pharmaceutiques','etude de la fabrication',12),
(null,'Artisanat','formation a des metiers',13),
(null,'droit penal','etude du systeme juridique relatif aux crimes',14),
(null,'Cuisine','formation en cuisine',15),
(null,'Design graphique','conception visuelle',18),
(null,'didactique des langues','methodes pedagogiques specifiques pour enseigner une langue',19),
(null,'Musique','etude de la musique',17),
(null,'Photographie','etude de la photographie',16),
(null,'sociolinguistique','analyse du lien entre langage et societe',20),
(null,'Education speciale','formation enseignants',21),
(null,'economie circulaire et gestion des dechets','approche visant a reduire le gaspillage',22),
(null,'Psychologie sociale','etude de la psychologie',23),
(null,'Administration publique','etude de la gestion des services',24),
(null,'Administration des entreprises','etude de la gestion des entreprises',25),
(null,'Ressources humaines','etude de la gestion des ressources humaines',26),
(null,'Criminologie','etude de la criminalite',27),
(null,'Economique','etude de la production',28),
(null,'Ethique','etude des valeurs morales',29),
(null,'Psychologie du travail','etude entre homme et travail',30),
(null,'Sociologie du travail','etude des structures',31),
(null,'Biologie cellulaire','etude des cellules',32),
(null,' pratiques artistique contemporaines','exploration critique du paysage artistique',33),
(null,'philosophie des sciences','reflexion critique sur les fondements',34),
(null,'etude sur la paix et les conflits','analyse interdisciplinaire sur les conflits armees',35),
(null,'demographie','etude quantitative portant sur la population',36),
(null,'Psychologie Clinique','etude de la psychologie',37),
(null,'genie chimique','etudes des procedes chimiques',38),
(null,'genie electrique','etude des systemes electriques',39),
(null,'genie industriel','etude de lamelioration des processus',40),
(null,'genie des materiaux','etude des materiaux',41),
(null,'genie des procedes','etudes des procedes de la production',42),
(null,'informatique industrielle','etudes des systemes industriels',43),
(null,'medias numeriques et multimedias','creation production et analyse des contenus',44),
(null,'gestion environementale durable','strategie visant a minimiser impact environnemental',45),
(null,'technologie educative','utilisation innovante de la technologie numerique',46),
(null,'ressources humaines et relations industrielles','etudes portant sur les relations entre employeurs',47),
(null,'gestion des risques et assurances','evaluation et gestions des risques financiers',48),
(null,'cartographie et geomatique','technique pour representer graphiquement les donnees',49),
(null,'systeme information geographique','outils technologiques pour analyser les donnees',50),
(null,'droit des affaires','regles regissant les transactions',51),
(null,'droit international','reglementation juridique',52),
(null,'logistique','gestion du flux de biens et services',53),
(null,'entrepreneuriat','creation et gestion entreprise',54),
(null,'gestion projet','plannification et supervision des projets',55),
(null,'histoire de art','etude des oeuvres art',56),
(null,'economie internationale','analyse des echanges economiques',57),
(null,'sciences de la sante publique','etude des facteurs influent la sante',58),
(null,'nutrition et dietetique','science qui etudie les aliments',59),
(null,'medecine veterinaire','etude pour soigner les animaux',60),
(null,'dentiserie','formation pour devenir dentiste',61),
(null,'pharmacologie','recherche sur les medicaments',62),
(null,'neurosciences','etude des systemes nerveux',63),
(null,'robotique','conception et utilisation des robots',64),
(null,'intelligence artificielle','developpement des systemes capables effectues des taches',65),
(null,'securite informatique','protection des systemes',66),
(null,'developpement durable','etude des pratiques',67),
(null,'travail social','pratique proffessionnelle aidant les individus',68),
(null,'ecriture creative','pratique de ecriture litteraire',69),
(null,'danse','exploration des formes de danse',70),
(null,'musique','etude de la theorie musicale',71),
(null,'theatre','pratique artistique',72),
(null,'arts visuels','creation et etude oeuvre',73),
(null,'journalisme','redaction et diffusion de information',74),
(null,'relations internationales','etude des interactions entre pays',75),
(null,'comptabilite','analyse des transactions',76),
(null,'finance','gestion des ressouces financieres',77),
(null,'marketing','etude des strategies',78),
(null,'gestion des ressources humaines','strategies pour gerer le capital humain',79),
(null,'biotechnologie','utilisation de systemes biologiques',80),
(null,'statistique','collecte analyse et interpretation',81),
(null,'architecture','conception et planification',82),
(null,'informatique','etudes des systemes informatiques',83),
(null,'langue moderne','apprentissage et etude des langues',84),
(null,'litterature anglaise','etude des oeuvres litteraires',85),
(null,'economie','analyse de la production',86),
(null,'biologie','science de la vie',87),
(null,'droit','etude des lois',88),
(null,'ingenerie mecanique','fabrication des systemes mecaniques',89),
(null,'administration des affaires','etude de finance et strategie entreprise ',90),
(null,'ecriture creative','pratique de ecriture creative',91);


--insertion student----------------------------------------------------------


 insert into student values(null,'tamo','bryan','20-10-2004'),
(null,'magne','silviane','12-07-2001'),
(null,'megne','leslie','10-08-2000'),
(null,'tagne','roland','12-07-2001'),
(null,'kengne','jean','11-07-2006'),
(null,'lea','rose','12-01-1999'),
(null,'atana','roseline','26-06-2003'),
(null,'ali','arouna','23-03-2001'),
(null,'adone','cabrel','10-11-2002'),
(null,'dupond','jacques','11-12-1998'),
(null,'martin','jesan','22-01-1900'),
(null,'lefore','lisa','26-05-2003'),
(null,'lerroy','sophie','31-07-2009'),
(null,'deffo','steve','21-11-2003'),
(null,'alimatou','anne','25-04-2012'),
(null,'kenfack','paul','16-09-2010'),
(null,'ngono','ines','18-10-2009'),
(null,'deffo','fredy','22-11-2003'),
(null,'kancthou','donald','23-11-2003'),
(null,'nguegoue','nelson','24-11-2003'),
(null,'tiecthoua','ghislain','24-11-2003'),
(null,'fokou','idriss','25-11-2000'),
(null,'ndongmo','andre','26-11-2010'),
(null,'djeumo','junior','27-11-2002'),
(null,'bopda','thiery','28-11-2000'),
(null,'elokey','jacques','29-11-2000'),
(null,'fokou','fred','30-10-2001'),
(null,'kengne','alban','01-12-2004'),
(null,'ngagui','dilan','02-11-2002'),
(null,'ngongang','willy','03-02-2010'),
(null,'noubissi','cabrel','04-12-2003'),
(null,'sandio','steve','05-04-2016'),
(null,'sielatchom','michel','06-03-2006'),
(null,'simo','durand','03-12-2012'),
(null,'tajo','diederot','08-07-2016'),
(null,'tcheutcheu','nathanael','09-02-2001'),
(null,'telle','boreil','09-02-2010'),
(null,'alimatou','jeanette','01-05-2004'),
(null,'eken','samuel','02-04-2001'),
(null,'djougue','ivan','05-02-2005'),
(null,'mengue','yvette','09-04-2009'),
(null,'mendo','jeanette','07-02-2001'),
(null,'sedou','yann','31-12-2000'),
(null,'sali','pascal','09-12-2011'),
(null,'fosso','martial','04-06-2004'),
(null,'fotie','alain','05-11-2004'),
(null,'kengmene','nelson','11-02-2004'),
(null,'labou','audrey','11-04-2003'),
(null,'kengne','grace','12-09-2004'),
(null,'meli','pharel','05-03-2003'),
(null,'oumbe','varel','04-02-2004'),
(null,'yano','jordan','12-11-2004'),
(null,'diffo','moise','23-02-2004'),
(null,'fabove','noel','22-04-2001'),
(null,'fokam','ismael','23-05-2000'),
(null,'fomo','elber','11-04-2003'),
(null,'issa','herman','12-12-1998'),
(null,'mega','carelle','11-08-2010'),
(null,'simo','dilan','12-10-2004'),
(null,'ngassu','piere','10-04-2004'),
(null,'tedom','junior','03-12-2005'),
(null,'teufack','ange','12-09-2005'),
(null,'wamba','ernest','11-09-2012'),
(null,'lambo','rayan','15-09-2001'),
(null,'wabo','steve','01-02-2001'),
(null,'dongmo','augustin','04-05-2002'),
(null,'faha','loic','05-12-2001'),
(null,'kamga','ramie','06-09-2001'),
(null,'fotso','junior','02-12-2002'),
(null,'tilla','brondon','05-12-2004'),
(null,'buche','paule','13-09-2003'),
(null,'fodjo','jovial','12-06-2001'),
(null,'fono','armel','11-10-2005'),
(null,'kom','jeane','12-10-2000'),
(null,'lawo','jumior','11-10-20007'),
(null,'matse','jorel','03-07-2006'),
(null,'kouam','joel','05-12-2003'),
(null,'mopoun','charifa','05-11-2006'),
(null,'libavo','grace','11-09-2016'),
(null,'mouafo','chanelle','07-09-2009'),
(null,'malla','ivana','12-04-2017'),
(null,'pagui','zitatel','03-12-2005'),
(null,'nzoko','chela','03-09-2008'),
(null,'enebi','dyvan','08-08-2009'),
(null,'tende','patrick','09-12-009'),
(null,'zucthi','mael','06-08-2006'),
(null,'tuette','richanland','wilfried'),
(null,'kamseu','francine','11-08-2004'),
(null,'bihina','guillaaume','05-12-2000'),
(null,'kamseu','verdiane ','12-09-2010'),
(null,'fosso','landry','02-07-2007'),
(null,'fotsing','bryan','20-10-2004'),
 (null,'koagne','joel','10-10-2001'),
(null,'mayap','jean','04-10-2004'),
(null,'matena','gislain','11-10-2003'),
(null,'maba','paul','20-06-2004'),
 (null,'layou','elvira','20-10-2001'),
 (null,'kom','belviane','11-10-2000');

--insertion into level1---------------------------------------------------------------------





insert into enrollment
values
   (null,'2024-1974',1,1,1),
   (null,'1974-2022',2,2,2),
   (null,'2022-2021',3,3,3),
   (null,'2021-2020',4,4,4),
   (null,'2020-2019',5,5,5),
   (null,'2019-2018',6,6,6),
   (null,'2018-2017',7,7,7),
   (null,'2017-2016',8,8,8),
   (null,'2016-2015',9,9,9),
   (null,'2015-2014',10,10,10),,
   (null,'2014-2013',11,11,11),
   (null,'2013-2012',12,12,12),
   (null,'2012-2011',13,13,13),
   (null,'2011-2010',14,14,14),
   (null,'2010-2009',15,15,15),
   (null,'2009-2008',16,16,16),
   (null,'2008-2007',17,17,17),
  
   (null,'2007-2006',18,18,18),
   (null,'2006-2005',19,19,19),
   (null,'2005-2004',20,20,20),
   (null,'2004-2003',21,21,21),
   (null,'2003-2002',22,22,22),
   (null,'2002-2001',23,23,23),
   (null,'2001-2000',24,24,24),
   (null,'2000-1999',25,25,25),
   (null,'1999-1998',26,26,26),
   (null,'1998-1997',27,27,27),
   (null,'1997-1996',28,28,28),
   (null,'1996-1995',29,29,29),
   (null,'1995-1994',30,30,30),
   (null,'1994-1993',31,31,31),
   (null,'1993-1992',32,32,32),

   (null,'1990-1989',33,33,33),
   (null,'1989-1988',34,34,34),
   (null,'1988-1987',35,35,35),
   (null,'1987-1986',36,36,36),
   (null,'1986-1985',37,37,37),
   (null,'1985-1984',38,38,38),
   (null,'1984-1983',39,39,39),
   (null,'1983-1982',40,40,40),
   (null,'1982-1981',41,41,41),
  
   (null,'1980-1979',42,42,42),
     (null,'1972-1974',43,43,43),
   (null,'1979-1978',44,44,44),
   (null,'1978-1977',45,45,45),
   (null,'1977-1976',46,46,46),
   (null,'1976-1975',47,47,47),
   (null,'1975-1974',48,48,48),
   (null,'1974-1974',49,49,49),
 

  
   (null,'1965-1974',50,50,50),
   (null,'1964-1974',51,51,51),
   (null,'1961-1974',52,52,52),
   (null,'1960-1974',53,53,53),
   (null,'1959-1974',54,54,54),
   (null,'1958-1974',55,55,55),
   
   (null,'1954-1974',56,56,56),
   (null,'1953-1974',57,57,57),
   (null,'1952-1974',58,58,58),
   (null,'1951-1974',59,59,59),
   (null,'1950-1974',60,60,60),
   (null,'1949-1974',61,61,61),
   (null,'1948-1974',62,62,62),
   (null,'1947-1974',63,63,63),
   (null,'1946-1974',64,64,64),
   (null,'1945-1974',65,65,65),
   (null,'1944-1974',66,66,66),
 
   (null,'1943-1974',67,67,67),
   (null,'1942-1974',68,68,68),
   (null,'1941-1974',69,69,69),
   (null,'1940-1974',70,70,70),
   (null,'1939-1974',71,71,71),
   (null,'1938-1974',72,72,72),
   (null,'1937-1974',73,73,73),
   (null,'1936-1974',74,74,74),
   (null,'1935-1974',75,75,75),
   (null,'1934-1974',76,76,76),
   (null,'1933-1974',77,77,77),
   (null,'1932-1974',78,78,78),
   (null,'1931-1974',79,79,79),
   (null,'1930-1974',89,89,89),
   (null,'1929-1974',90,90,90);
   
 
 insert into level1 values(null,'niveau1'),
(null,'niveau2'),
(null,'niveau3'),
(null,'niveau4'),
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
(null,'niveau21'),
(null,'niveau22'),
(null,'niveau23'),
(null,'niveau24'),
(null,'niveau25'),
(null,'niveau27'),
(null,'niveau28'),
(null,'niveau29'),
(null,'niveau30'),
(null,'niveau31'),
(null,'niveau32'),
(null,'niveau33'),
(null,'niveau34'),
(null,'nineau35'),
(null,'niveau37'),
(null,'niveau37'),
(null,'niveau38'),
(null,'niveau39'),
(null,'niveau40'),
(null,'niveau41'),
(null,'niveau42'),
(null,'niveau43'),
(null,'niveau45'),
(null,'niveau46'),
(null,'niveau47'),
(null,'niveau48'),
(null,'niveau49'),
(null,'niveau50'),
(null,'niveau51'),
(null,'niveau52'),
(null,'niveau53'),
(null,'niveau54'),
(null,'niveau55'),
(null,'niveau56'),
(null,'niveau57'),
(null,'niveau58'),
(null,'niveau59'),
(null,'niveau60'),
(null,'niveau61'),
(null,'niveau62'),
(null,'niveau63'),
(null,'niveau64'),
(null,'niveau65'),
(null,'niveau66'),
(null,'niveau67'),
(null,'niveau68'),
(null,'niveau69'),
(null,'niveau70'),
(null,'niveau71'),
(null,'niveau72'),
(null,'niveau73'),
(null,'niveau74'),
(null,'niveau75'),
(null,'niveau76'),
(null,'niveau77'),
(null,'niveau78'),
(null,'niveau79'),
(null,'niveau80'),
(null,'niveau81'),
(null,'niveau82'),
(null,'niveau83'),
(null,'niveau84'),
(null,'niveau85'),
(null,'niveau86'),
(null,'niveau87'),
(null,'niveau88'),
(null,'niveau89'),
(null,'niveau90'),
(null,'niveau91'),
(null,'niveau92'),
(null,'niveau93'),
(null,'niveau94'),
(null,'niveau95'),
(null,'niveau96'),
(null,'niveau97'),
(null,'niveau98'),
(null,'niveau99'),
(null,'niveau100');

-------insertion de l enrollement------------------------------------------------------






---requetes----------------------------------------------------
select * from  specialty;
select * from  department;
select * from  level1;
select * from  student;
select * from  enrollment;
--qui affiche une specialite appartenant a un departement--
select specialty.namespe 

from department,specialty
where  department.iddepart=specialty.iddepart and department.iddepart=7;

--affiche la specialite d un etudiant precis--
select specialty.namespe
from student,specialty,enrollment
where student.idstud=enrollment.idstud and enrollment.idstud=specialty.idspe and student.firstname='diffo'; 

--affiche le niveau d'un etudiant*****-------------- 
select level1.desclev
from student,level1,enrollment
where student.idstud=enrollment.idstud and enrollment.idstud=level1.idlev
     and student.firstname="" ;

--affiche le departement dun etudiant precis
select department.namedepart
from student,specialty,enrollment,department
where department.iddepart=specialty.iddepart and student.idstud=enrollment.idstud 
   and enrollment.idstud=specialty.iddepart and student.idstud=3;
   --affiche la specialite et le niveau d'un etudiant*--
   select level1.desclev,specialty.namespe
from student,level1,enrollment,specialty
where student.idstud=enrollment.idstud and enrollment.idstud=level1.idlev 
and enrollment.idstud=specialty.idspe and student.firstname="diffo";
------affiche le niveau la specialite et le departement dun etudiant---------------------
select specialty.namespe,level1.desclev,department.namedepart
from student,level1,enrollment,specialty,department
where  department.iddepart=specialty.iddepart and student.idstud=enrollment.idstud
and enrollment .idstud=specialty.iddepart
and enrollment.idstud=level1.idlev 
and enrollment.idstud=specialty.idspe and student.firstname="diffo";
-----affiche le nombre de departement disponible---------------------
select count(department.iddepart)
from department
-----------------nombre d etudiant par departement-------------------------------
select department.namedepart, count(student.idstud)
from student,department,enrollment,specialty
where department.iddepart=specialty.iddepart and
student.idstud=enrollment.idstud 
-- and
-- enrollment.idstud=specialty.iddepart
GROUP BY department.namedepart  ;
-----nombre d'etudiant par specialte---------------------------------------------
select specialty.namespe, count(student.idstud)
from student,enrollment,specialty
where 
student.idstud=enrollment.idstud and
enrollment.idstud=specialty.idspe
GROUP BY specialty.namespe;
---------------affiche le nombre d'etudiant par niveau-------------------------------

select level1.desclev, count(student.idstud)
from student,enrollment,level1
where 
student.idstud=enrollment.idstud and
enrollment.idstud=level1.idlev
GROUP BY level1.desclev;
-----------affiche le nombre d'etudiant d'une annee scolaire
select  count(student.idstud)
from student,enrollment
where 
  student.idstud=enrollment.idstud and
academic_year ='2007-2008';
  --GROUP BY level1.desclev;

---affiche le nombre de specialite par departement----------------------------------
select department.namedepart, count(specialty.idspe)
from department,specialty
where 
department.iddepart=specialty.iddepart 
GROUP BY department.namedepart;
--------------------- nombre d'etudiant enrole-----------------------------------------------------------
select  count(student.idstud)
from student,enrollment
where 
  student.idstud=enrollment.idstud ;
  --------------------------nombre d'etudiant enrole entre deux dates-----------------------------------
select  count(student.idstud)
from student,enrollment
where 
  student.idstud=enrollment.idstud  and 
  academic_year="2004-2005" and "2008-2009";
  ----------------afficher  les niveaux par specialite-----------------------------------------------------


select level1.desclev,

group_concat(distinct specialty.namespe)as specialty
from specialty,level1,enrollment
where specialty.idspe=enrollment.idspe and enrollment.idspe=level1.idlev
group by level1.desclev;
     
------------------LISTE DES Etdudiants dans l' ordre aleatoire----------------------------
SELECT * FROM student ORDER BY rand();
---------------------------------------------------------------------------
CREATE USER 'djimbissi'@'localhost' identified by 'ervane';
GRANT ALL PRIVILEGES ON *.* TO 'djimbissi'@'localhost';
---------------------------
mysql  -u djimbissi -p djimbissi

GRANT update ON database.tabe To 'nomUser'@'localhost';
--pour retirer les droits a un utilisateur---
REVOKE liste des privileges ON database.table FROM 'nomUser'@'localhost';
---pour supprimer un utilisateur---
DROP USER 'nomUser'@'localhost';


----------------pour actualiser les droits------------
flush privileges;
------------------------------------------------------------
