-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 06 déc. 2018 à 21:10
-- Version du serveur :  10.2.11-MariaDB-log
-- Version de PHP :  7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP database IF EXISTS `film`;
create database `film` default character set utf8 collate utf8_general_ci; 

use film; 

--
-- Base de données :  `film`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `password`, `created_time`) VALUES
(1, 'zhao', 'zhang', 'admin@test.com', '10a335925e42dc9da2eee32dbed004d0', '2018-12-04 00:00:00.000000');

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `id` int(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_original` varchar(100) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `synopsis` text NOT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `title`, `title_original`, `releaseDate`, `synopsis`, `rating`) VALUES
(1, 'Le Silence des agneaux (1991)', 'The Silence of the Lambs (original title)', '1991-04-10', 'Un psychopathe connu sous le nom de Buffalo Bill sème la terreur dans le Middle West en kidnappant et en assassinant de jeunes femmes. Clarice Starling, une jeune agent du FBI, est chargée d\'interroger l\'ex-psychiatre Hannibal Lecter. Psychopathe redoutablement intelligent et porté sur le cannibalisme, Lecter est capable de lui fournir des informations concernant Buffalo Bill ainsi que son portrait psychologique. Mais il n\'accepte de l\'aider qu\'en échange d\'informations sur la vie privée de la jeune femme. Entre eux s\'établit un lien de fascination et de répulsion.', 4.8),
(2, 'Westworld', NULL, '2016-02-11', 'A Westworld, un parc d\'attractions dernier cri, les visiteurs paient des fortunes pour revivre le frisson de la conquête de l\'Ouest. Dolores, Teddy et bien d\'autres sont des androïdes à apparence humaine créés pour donner l\'illusion et offrir du dépaysement aux clients. Pour ces derniers, Westworld est l\'occasion de laisser libre-cours à leurs fantasmes. Cet univers bien huilé est mis en péril lorsqu\'à la suite d\'une mise à jour, quelques robots commencent à adopter des comportements imprévisibles, voire erratiques. En coulisses, l\'équipe, qui tire les ficelles de ce monde alternatif, s\'inquiète de ces incidents de plus en plus nombreux. Les enjeux du programme Westworld étant énormes, la Direction ne peut se permettre une mauvaise publicité qui ferait fuir ses clients. Que se passe-t-il réellement avec les androïdes ré-encodés ?  Adaptation du film éponyme (1973) de Michael Crichton avec Yul Brynner et James Brolin.', 4.5),
(3, 'Elephant Man ', '', '1981-04-08', 'Londres, 1884. Le chirurgien Frederick Treves découvre un homme complètement défiguré et difforme, devenu une attraction de foire. John Merrick, \" le monstre \", doit son nom de Elephant Man au terrible accident que subit sa mère. Alors enceinte de quelques mois, elle est renversée par un éléphant. Impressionné par de telles difformités, le Dr. Treves achète Merrick, l\'arrachant ainsi à la violence de son propriétaire, et à l\'humiliation quotidienne d\'être mis en spectacle. Le chirurgien pense alors que \" le monstre \" est un idiot congénital. Il découvre rapidement en Merrick un homme meurtri, intelligent et doté d\'une grande sensibilité.', 4.3),
(4, 'Dracula', '', '1992-01-13', 'En 1492, le prince Vlad Dracul, revenant de combattre les armées turques, trouve sa fiancée suicidée. Fou de douleur, il défie Dieu, et devient le comte Dracula, vampire de son état. Quatre cents ans plus tard, désireux de quitter la Transylvanie pour s\'établir en Angleterre, il fait appel à Jonathan Harker, clerc de notaire et fiancé de la jolie Mina Murray. La jeune fille est le sosie d\'Elisabeta, l\'amour ancestral du comte...', 4),
(5, 'Seven Seconds ', '', '2018-04-04', 'Les tensions s\'exacerbent à Jersey City lorsqu\'un adolescent de la communauté afro-américaine est grièvement blessé par un policier.', 4),
(6, 'Shots Fired ', '', '2017-02-09', 'Quand un policier afro-américain tue un étudiant blanc désarmé, leur petite ville de Caroline du Nord est bouleversée. L\'affaire cachée du meurtre d\'un adolescent afro-américain est remise sur le tapis, ce qui menace de diviser la ville.', 4.1),
(7, 'Justin Timberlake', '', '2016-10-12', 'Justin Timberlake n\'a que 12 ans quand il fait ses débuts sur le petit écran dans l\'émission Mickey Mouse Club de Disney Channel. Le jeune homme présente l\'émission durant deux années aux cotés de Christina Aguilera et de sa future petite amie Britney Spears. En 1995, il se lance dans la musique avec son groupe Nsync. Leur premier album éponyme, sort en 1998 et est un véritable succès, notamment grâce au single I Want You Back.  Dès lors c\'est l\'ascension continue pour les Nsync, jusqu\'en 2002 où le groupe s\'accorde une pause. Justin Timberlake en profite pour se lancer dans une carrière solo. Il sort alors son premier album, Justified en novembre 2002. Le succès est au rendez-vous, notamment avec les tubes Cry Me A River et Rock Your Body.  Parallèlement, celui qu\'on surnomme \"l\'héritier de Prince\", démarre en 2000 une carrière d\'acteur. Il fait ses premiers pas sur grand écran dans Longshot de Lionel C. Martin, et compose en 2002, certaines chansons du film Crossroads dans lequel Britney Spears tient la vedette. Souvent à la une des magazines pour son physique avantageux et ses déboires amoureux, le jeune roi de la pop poursuit son ascension musicale et met sa jeune carrière d\'acteur sur pause durant quatre ans.  Après cette parenthèse musicale, Justin Timberlake se joint au prestigieux casting du film de David Burke, Edison où il tient le rôle d\'un jeune journaliste et donne notamment la réplique à Kevin Spacey et Morgan Freeman. L\'année suivante, il tourne dans Alpha Dog de Nick Cassavetes, l\'histoire vraie du plus jeune criminel recherché par le FBI et poursuit avec Black Snake Moan (2007) de Craig Brewer, où il joue aux côtés de Samuel L. Jackson et Christina Ricci.  Côté comédie, il prête sa voix en 2007 au roi Arthur dans le film d\'animation de Chris Miller, Shrek le troisième et se retrouve l\'année suivante parmi le casting délirant du Love Gourou avec Mike Myers et Jessica Alba. En 2010, l\'ambiance s\'assombrit avec le mystérieux Social Network de David Fincher, dans lequel il tient le rôle de Sean Parker, cofondateur du site Napster et l\'un des présidents du groupe Facebook.  Justin donne ensuite la réplique à Amanda Seyfried dans le film de SF Time Out avant d\'enchaîner les comédies potaches comme Sexe entre amis ou Bad Teacher en 2011. Il tourne l\'année suivante aux côtés de Clint Eastwood dans Une nouvelle chance, un drame sur fond de baseball. En 2013, l\'acteur fait face à Ben Affleck dans Players puis tourne sous la direction des frères Coen dans Inside Llewyn Davis. Trois ans plus tard, l\'artiste donne de la voix dans le film d\'animation Les Trolls et rejoint le casting du nouveau Woody Allen, Wonder Wheel.', 4),
(8, 'Ricki and the Flash ', '', '2015-09-02', 'Pour accomplir son rêve et devenir une rock star, Ricki Rendazzo a sacrifié beaucoup de choses et commis bien des erreurs… Dans l’espoir de se racheter et de remettre de l’ordre dans sa vie, elle revient auprès des siens.', 3.2),
(9, 'Song One', '', '2014-08-08', 'L\'histoire d\'une femme qui retourne chez elle pour s\'occuper de son frère blessé.', 4.5),
(10, 'Enzo Avitabile Music Life', '', '2012-08-04', 'In Enzo Avitabile\'s song \"Mane e Mane\", the chorus runs: \"All men know it is possible to live together hand in hand\", an eloquent summing-up of Avitabile\'s international outlook on life, as well as his attitude towards music. A jazz saxophonist and world-music composer, Avitabile is so famous in his native Naples that when he visits his childhood neighborhood, people cluster onto the balconies above to get a look at him, or clamor around him trying to get close. Jonathan Demme profiles and celebrates Enzo Avitabile in \"Enzo Avitabile Music Life\", the most recent entry in Demme\'s lengthening list of music documentaries', 4),
(11, 'Pablo ', '', '2012-07-05', 'Impitoyable et cruel chef du cartel de Medellin, Pablo Escobar est le criminel le plus riche de l’Histoire avec une fortune de plus de 30 milliards de dollars. \"L’empereur de la cocaïne\" met la Colombie à feu et à sang dans les années 80 en introduisant un niveau de violence sans précédent dans le commerce de la drogue. Fascinée par son charisme et son pouvoir, la très célèbre journaliste Virginia Vallejo, va s’apercevoir qu’on ne s’approche pas de l’homme le plus dangereux du monde impunément...', 3),
(12, 'A Gifted Man', '', '2011-09-23', 'Brillant et charismatique neurochirurgien, le Dr Michael Holt mène un train de vie luxueux que lui permet une clientèle haut de gamme. Sa vie matérialiste et très axée sur sa carrière est bouleversée lorsqu\'il se met à voir le fantôme de son ex-épouse. Anna va lui permettre de faire preuve de compassion et de venir en aide à des patients sans le sou et sans assurance qui ne peuvent se payer le luxe d\'obtenir des soins adaptés car trop coûteux. Il reste cependant difficile pour un esprit aussi cartésien que le sien d\'accepter de parler à l\'esprit de son épouse disparue. Pourtant Anna a encore besoin de lui pour l\'aider à fermer toutes les portes laissées ouvertes suite à sa mort subite. Jusqu\'où Michael acceptera-t-il d\'aller ?', 3.3);

-- --------------------------------------------------------

--
-- Structure de la table `movieHasPerson`
--

CREATE TABLE `movieHasPerson` (
  `idMovie` int(10) DEFAULT NULL,
  `idPerson` int(10) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `roleName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movieHasPerson`
--

INSERT INTO `movieHasPerson` (`idMovie`, `idPerson`, `role`, `roleName`) VALUES
(1, 5, 'director', NULL),
(1, 1, 'actor', 'Dr. Hannibal Lecter'),
(1, 2, 'actor', 'Clarice Starling'),
(1, 3, 'actor', 'Jack Crawford'),
(1, 4, 'actor', 'Jame \'Buffalo Bill\''),
(2, 17, 'director', NULL),
(3, 16, 'director', NULL),
(4, 17, 'director', NULL),
(5, 16, 'director', NULL),
(6, 17, 'director', NULL),
(7, 15, 'director', NULL),
(8, 5, 'director', NULL),
(9, 16, 'director', NULL),
(10, 16, 'director', NULL),
(11, 17, 'director', NULL),
(12, 15, 'director', NULL),
(12, 6, 'actor', 'Dr. Michael Holt'),
(12, 7, 'actor', 'Anna Paul'),
(12, 8, 'actor', 'Dr. Kate Sykora'),
(12, 10, 'actor', 'Dr. Zeke Barnes'),
(12, 12, 'actor', 'Nurse Charisse'),
(12, 13, 'actor', 'Christina Holt'),
(4, 6, 'actor', 'Dr. Michael Holt'),
(4, 7, 'actor', 'Anna Paul'),
(4, 8, 'actor', 'Dr. Kate Sykora'),
(4, 10, 'actor', 'Dr. Zeke Barnes'),
(4, 14, 'actor', 'Nurse Charisse'),
(4, 13, 'actor', 'Christina Holt'),
(3, 1, 'actor', 'Christina Holt'),
(3, 4, 'actor', 'Dr. Michael Holt'),
(3, 6, 'actor', 'Anna Paul'),
(3, 9, 'actor', 'Dr. Kate Sykora'),
(3, 11, 'actor', 'Dr. Zeke Barnes'),
(3, 12, 'actor', 'Nurse Charisse'),
(3, 13, 'actor', 'Christina Holt'),
(10, 2, 'actor', 'Christina Holt'),
(10, 3, 'actor', 'Dr. Michael Holt'),
(10, 7, 'actor', 'Anna Paul'),
(10, 8, 'actor', 'Dr. Kate Sykora'),
(10, 11, 'actor', 'Dr. Zeke Barnes'),
(10, 14, 'actor', 'Nurse Charisse'),
(10, 13, 'actor', 'Christina Holt'),
(7, 4, 'actor', 'Christina Holt'),
(7, 9, 'actor', 'Dr. Michael Holt'),
(7, 10, 'actor', 'Anna Paul'),
(7, 13, 'actor', 'Dr. Kate Sykora'),
(7, 11, 'actor', 'Dr. Zeke Barnes'),
(7, 14, 'actor', 'Nurse Charisse'),
(7, 12, 'actor', 'Christina Holt'),
(11, 1, 'actor', 'Christina Holt'),
(11, 9, 'actor', 'Dr. Michael Holt'),
(11, 3, 'actor', 'Anna Paul'),
(11, 13, 'actor', 'Dr. Kate Sykora'),
(11, 4, 'actor', 'Dr. Zeke Barnes'),
(8, 9, 'actor', 'Christina Holt'),
(8, 7, 'actor', 'Dr. Michael Holt'),
(8, 11, 'actor', 'Anna Paul'),
(8, 13, 'actor', 'Dr. Kate Sykora'),
(8, 12, 'actor', 'Dr. Zeke Barnes'),
(5, 11, 'actor', 'Christina Holt'),
(5, 8, 'actor', 'Anna Paul'),
(5, 1, 'actor', 'Dr. Zeke Barnes'),
(6, 9, 'actor', 'Christina Holt'),
(6, 12, 'actor', 'Dr. Michael Holt'),
(6, 14, 'actor', 'Anna Paul'),
(6, 13, 'actor', 'Dr. Kate Sykora'),
(9, 12, 'actor', 'Christina Holt'),
(9, 8, 'actor', 'Anna Paul'),
(9, 9, 'actor', 'Dr. Zeke Barnes'),
(2, 11, 'actor', 'Christina Holt'),
(2, 8, 'actor', 'Anna Paul'),
(2, 4, 'actor', 'Dr. Kate Sykora'),
(2, 2, 'actor', 'Dr. Zeke Barnes');

-- --------------------------------------------------------

--
-- Structure de la table `movieHasPicture`
--

CREATE TABLE `movieHasPicture` (
  `idMovie` int(10) DEFAULT NULL,
  `idPicture` int(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movieHasPicture`
--

INSERT INTO `movieHasPicture` (`idMovie`, `idPicture`, `type`) VALUES
(1, 1, 'poster'),
(1, 2, 'gallery'),
(1, 3, 'gallery'),
(1, 4, 'gallery'),
(1, 5, 'gallery'),
(1, 6, 'gallery'),
(1, 7, 'gallery'),
(1, 8, 'gallery'),
(1, 9, 'gallery'),
(1, 10, 'gallery'),
(2, 16, 'poster'),
(3, 17, 'poster'),
(4, 18, 'poster'),
(5, 19, 'poster'),
(6, 20, 'poster'),
(7, 21, 'poster'),
(8, 22, 'poster'),
(9, 23, 'poster'),
(10, 24, 'poster'),
(11, 25, 'poster'),
(12, 26, 'poster'),
(12, 39, 'gallery'),
(12, 40, 'gallery'),
(12, 41, 'gallery'),
(12, 42, 'gallery'),
(12, 43, 'gallery'),
(12, 44, 'gallery'),
(12, 45, 'gallery'),
(12, 46, 'gallery'),
(12, 47, 'gallery'),
(4, 48, 'gallery'),
(4, 49, 'gallery'),
(4, 50, 'gallery'),
(4, 51, 'gallery'),
(4, 52, 'gallery'),
(4, 39, 'gallery'),
(4, 42, 'gallery'),
(4, 44, 'gallery'),
(4, 45, 'gallery'),
(4, 40, 'gallery'),
(3, 8, 'gallery'),
(3, 39, 'gallery'),
(3, 42, 'gallery'),
(3, 44, 'gallery'),
(3, 45, 'gallery'),
(3, 48, 'gallery'),
(3, 49, 'gallery'),
(3, 50, 'gallery'),
(3, 52, 'gallery'),
(10, 43, 'gallery'),
(10, 41, 'gallery'),
(10, 46, 'gallery'),
(10, 47, 'gallery'),
(10, 45, 'gallery'),
(10, 50, 'gallery'),
(10, 49, 'gallery'),
(10, 51, 'gallery'),
(10, 52, 'gallery'),
(7, 43, 'gallery'),
(7, 41, 'gallery'),
(7, 46, 'gallery'),
(7, 47, 'gallery'),
(7, 45, 'gallery'),
(7, 50, 'gallery'),
(7, 49, 'gallery'),
(7, 51, 'gallery'),
(7, 52, 'gallery'),
(11, 42, 'gallery'),
(11, 41, 'gallery'),
(11, 46, 'gallery'),
(11, 48, 'gallery'),
(11, 45, 'gallery'),
(11, 50, 'gallery'),
(11, 49, 'gallery'),
(8, 42, 'gallery'),
(8, 41, 'gallery'),
(8, 46, 'gallery'),
(8, 48, 'gallery'),
(8, 45, 'gallery'),
(8, 50, 'gallery'),
(8, 49, 'gallery'),
(5, 40, 'gallery'),
(5, 41, 'gallery'),
(5, 46, 'gallery'),
(5, 48, 'gallery'),
(5, 45, 'gallery'),
(5, 50, 'gallery'),
(5, 49, 'gallery'),
(6, 40, 'gallery'),
(6, 41, 'gallery'),
(6, 46, 'gallery'),
(6, 48, 'gallery'),
(6, 45, 'gallery'),
(6, 50, 'gallery'),
(6, 49, 'gallery'),
(9, 43, 'gallery'),
(9, 41, 'gallery'),
(9, 45, 'gallery'),
(9, 48, 'gallery'),
(9, 44, 'gallery'),
(9, 51, 'gallery'),
(9, 49, 'gallery'),
(2, 43, 'gallery'),
(2, 41, 'gallery'),
(2, 45, 'gallery'),
(2, 42, 'gallery'),
(2, 44, 'gallery'),
(2, 48, 'gallery'),
(2, 44, 'gallery'),
(2, 51, 'gallery'),
(2, 49, 'gallery');

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

CREATE TABLE `person` (
  `id` int(10) NOT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `biography` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`id`, `lastname`, `firstname`, `birthDate`, `biography`) VALUES
(1, 'Hopkins', 'Anthony', '1937-12-31', 'Au début des années 60, Anthony Hopkins rejoint Sir Laurence Olivier au Théâtre National Britannique. Il devient alors vite l\'une des grandes figures de la scène d\'outre-manche. C\'est en 1967 qu\'il débute sur grand écran, dans The White bus, avant d\'être véritablement remarqué, un an plus tard, dans Un lion en hiver. Après de multiples apparitions dans des seconds rôles, au cinéma comme à la télévision, Hopkins refait parler de lui en 1977 grâce à Audrey Rose de Robert Wise, puis l\'année suivante avec Magic de Richard Attenborough. Il joue ensuite des premiers rôles pleins d\'humanité dans des films comme Elephant Man (David Lynch, 1980), ou le remake du Bounty (Roger Donaldson, 1984). Très présent sur le petit écran dans les années 80, Anthony Hopkins devient mondialement célèbre en 1991, grâce à son interprétation du terrifiant Hannibal Lecter dans Le Silence des agneaux de Jonathan Demme, rôle qui lui vaut un Oscar. Il reprend avec délectation ce personnage fascinant en 2001 et 2002, dans Hannibal de Ridley Scott et Dragon Rouge de Brett Ratner. Dans les années 90, Anthony Hopkins est, pour James Ivory, homme d\'affaire au coeur sec dans Retour à Howards End (1992) et majordome élégant et secret dans Les Vestiges du jour (1993). Il est ensuite tour à tour pourfendeur de vampires dans Dracula (1992), homme politique dans Nixon (1995), patriarche richissime dans Rencontre avec Joe Black (1998) et justicier vieilli mais plein de panache dans Le Masque de Zorro (1998). Anobli par la Couronne Britannique en 1993, citoyen américain en 2000, régulièrement nommé aux Oscars et aux Golden Globes, Anthony Hopkins, légende du septième art, garde intacte sa soif de jouer. Très actif et éclectique, l\'acteur entame ainsi le nouveau millénaire en force, abordant aussi bien le drame (Coeurs perdus en Atlantide, La Couleur du mensonge), la comédie (Bad company) que la fresque historique (Alexandre). Il continue d\'incarner des personnalités réelles, mais dans des histoires plus proches de notre époque et, surtout, plus modestes, que ce soit un juge (Les Fous du roi, de Steven Zaillian), un retraité passionné de vitesse (Burt Munro, de Roger Donaldson), ou un protagoniste de l\'assassinat de Bobby Kennedy (Bobby, d\'Emilio Estevez). Il revient également à la réalisation avec Slipstream, un film sur lequel il est également acteur et compositeur (Hopkins est un pianiste accompli), mais pour lequel il peine à trouver un distributeur. En 2007, dans La Légende de Beowulf, l\'acteur prête - littéralement - ses traits au roi Hrothgar par le biais du procédé de performance capture, censé être plus fidèle au jeu des acteurs que les traditionnelles méthodes de captation de mouvement. Cette même année, il se glisse à nouveau dans la peau d\'un personnage menaçant et manipulateur dans La Faille, face au jeune Ryan Gosling. En 2010, le comédien interprète le père de Benicio Del Toro dans Wolfman, un film de loups-garous, avant de changer complètement de registre en s\'affichant aux côtés d\'Antonio Banderas, Josh Brolin et Naomi Watts dans Vous allez rencontrer un bel et sombre inconnu, une comédie sentimentale signée Woody Allen. Après avoir joué le rôle d\'un exorciste (Le Rite), Anthony Hopkins devient un dieu dans Thor en 2011 où il incarne Odin, le père du héros. En 2012, il renoue, d\'une certaine manière, avec le théâtre en jouant dans le film du réalisateur brésilien Fernando Meirelles 360, relecture moderne de la pièce \"La Ronde\" d\'Arthur Schnitzler. L\'acteur interprète alors l\'un des protagonistes principaux de cette histoire d\'amour dans laquelle les destins de personnages différents s\'entrecroisent.'),
(2, 'Foster', 'Jodie', '1962-11-19', 'Enfant prodige, Jodie Foster débute sa carrière très jeune. Après quelques apparitions dans des spots publicitaires, elle tourne à 10 ans dans son premier film, une production Disney, Napoleon and Samantha, dans laquelle elle interprète une petite fugueuse. Adolescente, elle compte déjà à son actif plusieurs productions hollywoodiennes telles Tom Sawyer (1973), Un Petit Indien, ou Alice n\'est plus ici, un des tout premiers films de Martin Scorsese. Impressionné, ce dernier l\'engage pour jouer la jeune prostituée de Taxi Driver aux côtés de Robert De Niro, lui offrant au passage une première nomination à l\'Oscar du meilleur second rôle en 1976. La même année, son rôle dans le Bugsy Malone d\'Alan Parker confirme son succès précoce.\r\n\r\nNe négligeant pas ses études, Jodie Foster étudie au Collège Français (elle parle le français couramment) puis entre à la prestigieuse université de Yale, dont elle ressort en 1985 avec un diplôme de littérature en poche. Durant les vacances scolaires, elle joue notamment dans les drames Hotel New Hampshire et Carny. \r\n\r\nEn 1988, sa composition de Sarah Tobias, jeune femme victime d\'un viol qui défend son cas dans Les Accusés de Jonathan Kaplan, la consacre Meilleure actrice aux Oscars. Elle réitère cette performance trois ans plus tard en interprétant la jeune recrue du F.B.I. Clarice Starling dans le thriller Le Silence des agneaux, réalisé par Jonathan Demme. Le film, qui la fait côtoyer Anthony Hopkins, lui apporte la gloire internationale.\r\n\r\nAprès Le Silence des agneaux, la carrière de Jodie Foster connaît un véritable coup d\'accélérateur. Elle est aux génériques du drame Sommersby (1993), de la comédie Maverick (1994) ou encore de Nell (id.), qui la voit incarner une jeune fille élevée à l\'écart du monde. Très vite, elle se fait de plus en plus rare, préférant se consacrer à sa famille. Elle prend tout de même le temps de passer derrière la caméra et réalise en 1991, Petit homme puis Week-end en famille en 1995. \r\nA partir de la fin des années 1990, Jodie Foster se distingue au compte-gouttes, s\'illustrant dans le film de science-fiction Contact (1997), le film historique Anna et le roi (1999) ou encore les ambitieux thrillers que sont le Panic room de David Fincher (2002) et Flight plan (2005). \r\n\r\nStar hollywoodienne, Jodie Foster n\'en est pas moins très attachée à la France. Elle collabore ainsi à trois reprises avec des cinéastes hexagonaux : Claude Chabrol pour Le Sang des autres (1984), Eric Le Hung pour Moi, fleur bleue (1977) et Jean-Pierre Jeunet pour Un long dimanche de fiançailles (2004).\r\n\r\nEn 2008, elle reçoit une nomination aux Golden Globes pour son rôle de policière dans A vif, mais le film ne rencontre pas pour autant le succès escompté. L\'actrice s\'essaie ensuite à la comédie d\'aventure dans L\'Ile de Nim aux côtés de Gerard Butler et de la révélation de Little Miss Sunshine, Abigail Breslin. En 2011, Jodie Foster revient sur le devant de la scène en présentant au Festival de Cannes Le Complexe du Castor, une comédie dramatique sur la dépression, qu\'elle a réalisée et dans laquelle elle joue aux côtés de Mel Gibson, Jennifer Lawrence et Anton Yelchin. Cette même année, elle rejoint le prestigieux casting de Carnage, aux côtés de Kate Winslet, Christoph Waltz et John C. Reilly. Le film, réalisé par Roman Polanski, est une adaptation de la pièce française Le Dieu du Carnage, de Yasmina Reza.\r\n\r\nDe plus en plus rare au cinéma, l\'actrice campe l\'antagoniste du film de science-fiction emmené par Matt Damon Elysium. Cinq ans plus tard, elle reste dans l\'univers de la SF avec Hotel Artemis, dans lequel elle incarne une infirmière qui dirige un hôpital regroupant les plus dangereux criminels de Los Angeles'),
(3, 'Glenn', 'Scott', '1941-01-26', 'Après l\'école et l\'université, Scott Glenn passe trois ans dans les Marines où il travaille 5 mois comme reporter criminel pour le Kenosha Daily Tribune. En 1966, il rejoint la classe d\'acteurs de George Morrisson à New York. Enfin, c\'est en 1968 qu\'il intègre le fameux Actors studio.\r\n\r\nIl obtient son premier rôle au cinéma dans The Baby Maker de James Bridges. Scoot Glenn emménage donc à Los Angeles, ville qu\'il n\'apprécie pas du tout. Malgré sa présence dans des films majeurs, tels que Nashville de Robert Altman, mais encore le mythique Apocalypse Now de Francis Ford Coppola, sa carrière ne décolle pas. Lasse de la Californie, il se retire avec sa famille dans l\'Idaho, où il travaille comme barman. Deux ans plus tard, en 1980, James Bridges fait de nouveau appel à lui pour Urban Cowboy, drame dans lequel il interprète le rival de John Travolta. Grâce à ce film, Scott Glenn obtient la reconnaissance du public et de sa profession.\r\n\r\nDès lors, sa carrière lancée, il enchaîne les tournages. Fort de ses abilités artistiques, il peut apparaître dans tous les genres cinématographiques: les films d\'épouvante, comme La Forteresse noire, troisième film de Michael Mann; les westerns: Silverado, aux côtés de Kevin Costner, ou bien dans des drames comme en témoignent: L\'Etoffe des héros et La Rivière. En 1987, le réalisateur français, Elie Chouraqui, fait de Scott Glenn la vedette de son film Man on fire, drame franco-italien. Dans les années 90, on le retrouve à l\'affiche de films cultes, tels que Le Silence des agneaux de Jonathan Demme, ou A la poursuite d\'Octobre rouge, en 1991. Il rejoue sous la direction de Robert Altman, dans The Player, et continue d\'apparaître dans des films à gros budgets (Les Pleins Pouvoirs de Clint Eastwood, et Vertical Limit de Martin Campbell).\r\n\r\nSouvent abonné aux seconds rôles, Scott Glenn a tout de même côtoyé les grands du cinéma américain, tels que Sofia Coppola pour Virgin suicides, Hilary Swank dans Ecrire pour exister et Matt Damon dans La Vengeance dans la peau. Il rejoint, en 2008, le casting du très prometteur W. - L\'improbable Président de Oliver Stone, biopic sur l\'ascension de Georges W. Bush, aux côtés de Josh Brolin, dans lequel il intreprète Donald Rumsfeld, secrétaire à la défense des Etats- Unis de 2001 à 2006'),
(4, 'Levine', 'Ted', '1957-05-29', 'Après avoir suivi des cours d\'art dramatique dans le Massachusetts, Ted Levine entame une carrière sur les planches et parvient à se faire rapidement un nom dans le milieu du théâtre. Dans les années 80, le comédien découvre l\'univers de la télévision, dans le rôle récurrent de Frank Holman dans la série Crime Story. Le succès du show lui ouvre finalement les portes du cinéma, où il interprète le personnage de Pacono Pete auprès de Meryl Streep et Jack Nicholson dans La Force du destin (1987) et tourne pour Costa-Gavras dans La Main droite du diable (1988).\r\n\r\nMais le public commence à véritablement mettre un visage sur le nom de Ted Levine lorsqu\'il le découvre dans le rôle de \"Buffalo Bill\", le tueur en série du Silence des agneaux (1990) de Jonathan Demme. C\'est la consécration. L\'acteur continue à cultiver cette image de meurtrier en tenant tête à Jean-Claude Van Damme dans Cavale sans issue (1993). Par la suite, la carrière de l\'acteur change radicalement puisqu\'il décide d\'incarner principalement des figures d\'autorité. \r\n\r\nAprès une petite apparition en tant que policier dans La Presseuse diabolique (1995) le film d\'horreur de Tobe Hooper, l\'acteur reste au sein des forces de l\'ordre dans Heat (1995), le thriller de Michael Mann. En 1997, il tourne à nouveau sous la direction de Costa-Gavras dans Mad City où il interprète le chef de Dustin Hoffman. Après avoir incarné un député dans La Piste du tueur, il interprète à deux reprises le rôle d\'un général : dans le western Wild Wild West (1997) puis dans le film de SF loufoque Evolution (2001). Après une incursion dans les courses automobiles de Fast & furious (2001), l\'acteur tourne à nouveau pour Jonathan Demme dans La Vérité sur Charlie (2001).\r\n\r\nSes nombreux seconds rôles en tant que policier, député ou général consuisent Ted Levine à nouveau vers la télévision, puisque l\'acteur se voit offrir le rôle récurrent du Capitaine Leland Stottlemeyer dans la série Monk. Il continue parallèlement à tourner pour le cinéma : après un petit rôle dans Birth (2003), le comédien incarne ensuite un colonel dans Un Crime dans la tête (2003) (sur lequel il retrouve son cinéaste fétiche Jonathan Demme) puis dans le drame flamboyant Mémoires d\'une geisha (2005). En 2005, Alexandre Aja lui offre le rôle d\'un policier... à la retraite, victime d\'une famille cannibale dans La Colline a des yeux, remake sang pour sang choc du film de Wes Craven.\r\n\r\nVariant les genres, Ted Levine poursuit avec le western (L\'Assassinat de Jesse James par le lâche Robert Ford), le film de gangsters (American Gangster), le thriller (Shutter Island), l\'action (Big Game), le biopic sur le coriace boxeur Vinny Pazienza (K.O. - Bleed for This) et le blockbuster (Jurassic World: Fallen Kingdom). Il goûte aussi aux joies du petit écran comme par exemple avec la série policière centrée sur la traque d\'un tueur en série The Bridge où il campe un personnage régulier.\r\n'),
(5, 'Demme', 'Jonathan', '1944-02-22', 'Oncle du réalisateur Ted Demme. Jonathan Demme découvre le cinéma durant ses études à l\'Université de Floride. Après son service militaire, il fait des relations presse pour le compte d\'Ambassy Pictures, puis de United Artists, tout en écrivant régulièrement pour le Film Daily de New York. Il fait ses débuts aux côtés du réalisateur-producteur Roger Corman, qui lui propose de collaborer à sa société de production New World. Il écrit et produit ainsi Angels hard as they come (1971) de Joe Viola avant de réaliser ses deux premiers films, Cinq femmes à abattre (1974) et Crazy Mama (1975), qui compteront parmi les plus grands succès de la New World. Après Handle with care (1977) et Melvin and Howard (1980), Jonathan Demme accède à la consécration internationale en 1986 avec Dangereuse sous tous rapports, un thriller interprété par Melanie Griffith, Jeff Daniels et Ray Liotta. Il enchaîne avec Veuve, mais pas trop (1988), une comédie grinçante sur la mafia mettant en scène Michelle Pfeiffer. En 1991, Le Silence des agneaux marque un tournant dans la carrière du réalisateur : adaptée du deuxième tome de la trilogie Hannibal Lecter de l\'écrivain Thomas Harris, cette oeuvre au retentissement international donne ses lettres de noblesse au film de serial killer et remporte cinq Oscars, dont celui de Meilleur film et de Meilleur réalisateur. Jonathan Demme change de registre avec son film suivant, Philadelphia (1993), mais le succès est encore au rendez-vous avec ce mélodrame qui aborde de front la question du Sida et permettra à Tom Hanks de rafler l\'Oscar du Meilleur acteur. Demme produira peu après le premier long métrage réalisé par le comédien, That Thing You Do !. Il attendra 1998 our réaliser une nouvelle fiction, Beloved histoire d\'un envoûtement sur fond d\'esclavagiste, d\'après un roman de Toni Morrison. Jonathan Demme est aussi l\'auteur de nombreux documentaires, qui reflètent son combat pour les droits de l\'homme et la paix dans le monde (Jean Dominique, the agronomist en 2003, Jimmy Carter Man from Plains) et sa passion pour la musique (on lui doit notamment Stop Making Sense, film de référence autour des Talking heads qui remonte à 1984 et plusieurs documentaires consacrés à Neil Young). Côté fiction, il fait toujours preuve d\'éclectisme, passant d\'un remake de Charade en 2002 à Un crime dans la tête, thriller politique avec Denzel Washington (2004), puis à Rachel se marie (présenté à Venise en 2008.), le récit, semi-improvisé, d\'une réunion de famille qui tourne au règlement de comptes. En 2015, Jonathan Demme transforme Meryl Streep en rock star avec Ricki and The Flash, puis suit Justin Timberlake en concert lors de sa tournée mondiale de 2015 pour en tirer un documentaire Justin Timberlake + The Tennessee Kids diffusé sur Netflix. Il décède des suites d\'un cancer le mercredi 26 avril 2017 à l\'âge de 73 ans.'),
(6, 'Wilson', 'Patrick', '1973-07-03', 'Après des études à la Carnegie Mellon University, Patrick Wilson se tourne vers la comédie et fait ses débuts sur les planches dans The Full Monty et Oklahoma. Deux pièces qui marqueront le début de sa reconnaissance artistique, tandis que ses prestations lui vaudront plusieurs nominations aux Tony Award, Drama Desk et Drama League. \r\n\r\nC\'est dans le film indépendant My Sister\'s Wedding que Patrick Wilson tient son premier rôle au cinéma. Mais ce long métrage ne connaît pas un immense succès. L\'acteur passe donc ensuite par le petit écran, pour les besoins de la série Angels in America, réalisée par Mike Nichols et dans laquelle il y campe un homosexuel qui a du mal à s\'assumer. Rôle qui lui vaudra une nomination au Golden Globe et à l\'Emmy Award. \r\n\r\nEn 2003, pour son second rôle au cinéma, Patrick Wilson partage l\'affiche avec des grands noms du cinéma américain, puisqu\'Alamo lui vaut de donner la réplique à Dennis Quaid et Billy Bob Thornton. Mais c\'est avec sa participation au Fantôme de l\'Opéra, de Joel Schumacher, que le comédien commence à rencontrer son public.\r\n\r\nA l\'aise avec tous les registres, l\'acteur tient la tête d\'affiche d\'Hard Candy, qui connaît un immense succès au Festival de Sundance et dans lequel il se glisse dans la peau d\'un photographe pédophile. Avec Little Children, l\'acteur s\'adonne au drame et donne la réplique à Jennifer Connelly et Kate Winslet. La justesse de son interprétation dans ce film troublant est un tournant dans la carrière de l\'acteur, que l\'on retrouve ensuite dans Harcelés, thriller psychologique de Neil LaBute, où, sur fond de racisme ordinaire, il se retrouve traqué par son voisin, Samuel L. Jackson.\r\n\r\nEclectique dans ses choix de films, Patrick Wilson donne à 2009 une dimension \"fantastique\". Après s\'être glissé dans la peau d\'un super héros dans Watchmen - Les Gardiens de Zack Snyder, il partage l\'affiche avec Anne Hathaway dans le troublant Passagers et poursuit sur cette lancée en 2010 avec Insidious, film d\'épouvante où il campe un mari possédé par des démons. En 2012, le comédien rejoint le réalisateur de Juno pour Young Adult, comédie dans laquelle il donne la réplique à Charlize Theron qu\'il retrouve dans le très attendu Prometheus la même année.\r\n\r\nEn parallèle, il est la tête d\'affiche de la série A Gifted Man, dans le rôle du Dr Michael Holt, un neurochirurgien égocentrique qui communique avec le fantôme de sa femme. Malheureusement, le programme est annulé après une saison. En 2013, Patrick Wilson continue sa collaboration horrifique avec James Wan en incarnant l\'enquêteur paranormal Ed Warren dans le grand succès Conjuring : Les dossiers Warren, tout en participant à la suite d\'Insidious, toujours réalisée par le metteur en scène malaisien. \r\n\r\nLe petit écran fait de nouveau appel à lui en 2015 puisque la production de la série Fargo, basée sur le film homonyme des frères Joel et Ethan Coen, l\'engage pour sa saison 2 dans le rôle de Lou Solverson, un officier du Minnesota enquêtant sur des meurtres en collaboration avec le shérif joué par Ted Danson.'),
(7, 'Rachel Wood', 'Evan', '1973-07-03', 'Après avoir été remarquée par un producteur dans un bar où elle travaille à mi-temps, Rachelle LeFevre débute sa carrière en 1999 en incarnant Stacey Hanson dans la série pour ados Le Loup-Garou du campus, qu’elle quitte après la première saison afin de poursuivre ses études.  La Québécoise retrouve rapidement le chemin des plateaux de tournage, essentiellement dans des productions canadiennes : Stardom, réalisé par Denys Arcand, qui lui permet de montrer qu’elle parle impeccablement français, ainsi que le thriller Abandon ou la série Largo Winch. En 2002, elle est dirigée par George Clooney dans son premier film en tant que réalisateur : Confessions d’un homme dangereux. Deux ans plus tard, la jeune femme déménage à Los Angeles dans l’espoir de voir sa carrière décoller.\r\n\r\n\r\nC’est surtout à la télévision qu’elle enchaîne dès lors les apparitions : Charmed, Veronica Mars et How I Met Your Mother profitent de ses boucles rousses le temps d’un épisode, puis la dramédie What About Brian l’accueille pour dix épisodes. Son charisme la conduit naturellement à obtenir des rôles plus conséquents par la suite, mais pas dans des séries qui parviennent à s’installer sur le long terme. C’est ainsi qu’elle interprète une jeune détective dans la courte version américaine du show anglais Life On Mars, qu’elle joue une jeune femme qui n’a pas froid aux yeux dans Swingtown, consacrée à des couples échangistes dans les années 70, ou qu’elle devient médecin à deux reprises, d’abord dans l’exotique Off The Map, puis dans la plus urbaine A Gifted Man.  A cette même époque, le public la connait surtout pour son rôle de Victoria, la vampire flamboyante de Twilight. Mais elle ne le tiendra que dans les deux premiers opus. Elle accepte en effet de rejoindre Paul Giamatti dans le film Le Monde de Barney, où elle tient le rôle exigeant de sa femme maniaco-dépressive. Le tournage se déroulant en même temps que celui du troisième chapitre de la saga, elle est remplacée par Bryce Dallas Howard.\r\n\r\n\r\nA la télévision,  elle est la star de deux pilotes pour CBS qui ne se transforment pas en série : le médical Gimme Shelter et le policier Applebaum. La chaîne tient toutefois à l’avoir sur son antenne et l’inclut à la distribution de sa série événement de l’été 2013 : Under The Dome. Dans cette production signée Steven Spielberg, adaptée du roman de Stephen King, elle joue Julia Shumway, la journaliste indépendante de la petite ville de Chester’s Mill coupée du monde lorsqu’une sphère transparente l’entoure soudainement. La comédienne figure en parallèle au générique du blockbuster de Roland Emmerich White House Down.\r\n\r\n'),
(8, 'LeFevre', 'RacRachelle', '1983-07-03', 'Après avoir été remarquée par un producteur dans un bar où elle travaille à mi-temps, Rachelle LeFevre débute sa carrière en 1999 en incarnant Stacey Hanson dans la série pour ados Le Loup-Garou du campus, qu’elle quitte après la première saison afin de poursuivre ses études.  La Québécoise retrouve rapidement le chemin des plateaux de tournage, essentiellement dans des productions canadiennes : Stardom, réalisé par Denys Arcand, qui lui permet de montrer qu’elle parle impeccablement français, ainsi que le thriller Abandon ou la série Largo Winch. En 2002, elle est dirigée par George Clooney dans son premier film en tant que réalisateur : Confessions d’un homme dangereux. Deux ans plus tard, la jeune femme déménage à Los Angeles dans l’espoir de voir sa carrière décoller.\r\n\r\n\r\nC’est surtout à la télévision qu’elle enchaîne dès lors les apparitions : Charmed, Veronica Mars et How I Met Your Mother profitent de ses boucles rousses le temps d’un épisode, puis la dramédie What About Brian l’accueille pour dix épisodes. Son charisme la conduit naturellement à obtenir des rôles plus conséquents par la suite, mais pas dans des séries qui parviennent à s’installer sur le long terme. C’est ainsi qu’elle interprète une jeune détective dans la courte version américaine du show anglais Life On Mars, qu’elle joue une jeune femme qui n’a pas froid aux yeux dans Swingtown, consacrée à des couples échangistes dans les années 70, ou qu’elle devient médecin à deux reprises, d’abord dans l’exotique Off The Map, puis dans la plus urbaine A Gifted Man.  A cette même époque, le public la connait surtout pour son rôle de Victoria, la vampire flamboyante de Twilight. Mais elle ne le tiendra que dans les deux premiers opus. Elle accepte en effet de rejoindre Paul Giamatti dans le film Le Monde de Barney, où elle tient le rôle exigeant de sa femme maniaco-dépressive. Le tournage se déroulant en même temps que celui du troisième chapitre de la saga, elle est remplacée par Bryce Dallas Howard.\r\n\r\n\r\nA la télévision,  elle est la star de deux pilotes pour CBS qui ne se transforment pas en série : le médical Gimme Shelter et le policier Applebaum. La chaîne tient toutefois à l’avoir sur son antenne et l’inclut à la distribution de sa série événement de l’été 2013 : Under The Dome. Dans cette production signée Steven Spielberg, adaptée du roman de Stephen King, elle joue Julia Shumway, la journaliste indépendante de la petite ville de Chester’s Mill coupée du monde lorsqu’une sphère transparente l’entoure soudainement. La comédienne figure en parallèle au générique du blockbuster de Roland Emmerich White House Down.\r\n\r\n'),
(9, 'Benz', 'Julie', '1993-07-03', 'Julie M. Benz est née à Pittsburg, d’un père chirurgien et d’une mère patineuse. A trois ans, elle suit les pas de cette dernière, et à 16 ans, elle participe - comme son frère et sa sœur - au Championnat Américain de danse sur glace junior. Une mauvaise chute met fin à une carrière prometteuse ! Un an plus tard, elle décide de se tourner vers le métier d’actrice et commence par rejoindre une troupe de théâtre locale. En 1990, elle fait sa première apparition au cinéma dans Deux yeux maléfiques, un film d’horreur signé Dario Argento et George A. Romero. L’année suivante, elle décroche un des rôles principaux dans la série Hi Honey, Im Home, qui durera deux saisons. Entretemps, elle suit des cours de comédie à l’Université de New York, puis déménage à Los Angeles.\r\n\r\nLes études terminées, Julie Benz enchaîne les apparitions dans des téléfilms et séries télévisées, dont Mariés, deux enfants, Notre belle famille, Sliders, les mondes parallèles ou encore Fame L.A.. Elle passe également une audition pour le rôle de Buffy, dans Buffy contre les vampires (1997), mais les producteurs lui préfèreront Sarah Michelle Gellar. Néanmoins, ils lui proposent de camper un autre personnage, celui du vampire Darla, qu’elle interprète pendant quelques épisodes. Elle enchaîne ensuite avec Ask Harriet, dont seulement 5 épisodes sur 13 seront diffusés sur la chaîne américaine Fox. Mais la jeune femme ne baisse pas les bras et se retrouve dans Roswell, où elle joue Kathleen Topolsky dans la première saison. Côté cinéma, elle obtient des petits rôles dans Pour le pire et pour le meilleur et Les Années rebelles (1997), puis interprète l’année suivante un des personnages principaux de la comédie Jawbreaker.\r\n\r\nLa chance lui sourit en 1999, quand les scénaristes décident de ramener Darla à la vie dans Angel, le spin-off de Buffy contre les vampires. Elle devient alors un des personnages récurrents importants de la série et ce, durant près de deux ans. Elle profite néanmoins du temps que lui laisse le show pour tourner dans quelques films et téléfilms (Scary Scream Movie, Satans School for Girls). Après la fin d’Angel, elle continue son parcours à la télévision, en participant à des séries à succès, telles que NCIS : Enquêtes spéciales, Les Experts, Les Experts : Miami, Supernatural et New York Police Judiciaire. D’un autre côté, les films dans lesquels elle joue ne rencontrent pas de grand succès et ses prestations ne sont pas vraiment remarquées. \r\n\r\nEn 2006, sa carrière bénéficie du succès de Dexter, la série avec Michael C. Hall dans la peau d’un serial-killer. Elle campe Rita, la compagne du héros, durant quatre ans. Le rôle lui permet d’être nominée à plusieurs reprises aux Golden Globes ou aux Emmy Awards. Elle obtient une récompense en 2006 aux Satellite Awards, dans la catégorie \"Meilleur Second Rôle féminin dans une série\". Après Dexter, elle incarne une femme fatale dans plusieurs épisodes de la saison 6 de Desperate Housewives. Au cinéma, elle se fait enfin remarquer en rejoignant Sylvester Stallone dans John Rambo (2007). L’année suivante, elle poursuit avec The Punisher - Zone de guerre, film pour lequel elle a dû se faire teindre en brune, puis Saw 5. A la rentrée 2010, elle est au casting de No Ordinary Family, une nouveauté de la chaîne ABC avec Michael Chiklis. Elle y tient le rôle de Stephanie Powell, une mère de famille qui se retrouve du jour au lendemain dotée de super-pouvoirs.'),
(10, 'Doyle', 'Mike', '1991-07-03', 'Michael Doyle, né le 16 septembre 1972, est un acteur, scénariste et producteur américain. Il est surtout fait connaître par le grand public américain et étranger dans le rôle de Ryan OHalloran de New York, unité spéciale.'),
(11, 'Coiro', 'Rhys', '1993-07-03', 'Rhys J. Coiro est un acteur américain né le 12 mars 1979 dans la région de Calabre en Italie.'),
(12, 'La Salle', 'Eriq', '1991-07-03', 'Eriq La Salle est un acteur et réalisateur américain, particulièrement connu pour avoir interprété le chirurgien Peter Benton pendant les huit premières saisons de la série télévisée Urgences. Il incarne aussi le détective Van Der Zee dans Photo Obsession.'),
(13, 'Hermann', 'Peter', '1998-07-03', 'Peter Hermann, né le 15 août 1967 à New York, est un acteur et écrivain allemand et américain. Peter Hermann est souvent apparu dans New York, unité spéciale avec le lieutenant Olivia Benson dans le rôle de l’avocat de la défense Trevor Langan.'),
(14, 'Schreiber', 'Pablo', '1995-07-03', 'Pablo Schreiber est un acteur canadien né le 26 avril 1978. Il est principalement connu pour son rôle du surveillant Mendez dans la série télévisée Orange Is the New Black et pour son rôle de Virgil dans la série Ironside. Il est le demi-frère de acteur Liev Schreiber.'),
(15, 'Baer', 'Neal', '1995-07-03', 'Après un Bachelor of Art (léquivalent du bac ES) en Sciences Politiques à l’Université du Colorado, Neal Baer se tourne vers des études de cinéma en suivant des cours à l’American Film Institute Conservatory, cursus réalisation en 1983. Il se tourne naturellement vers la sociologie à la Harvard Graduate School of Arts and Sciences. Son sujet de prédilection : les politiques familiales. C’est ainsi que naissent ces deux passions pour la médecine et le cinéma.\r\n\r\nEn 1989, il écrit pour la première fois à la télévision, un épisode de The ABC Afterschool Special, une série d’anthologie destinée à sensibiliser le jeune public à différents problèmes de société, dont les maladies sexuellement transmissibles. Le scénariste et producteur John Wells, avec qui il a grandi, l’engage sur la production de China Beach. Une série dramatique mettant en scène l’évacuation d’un hôpital américain en pleine guerre du Vietnam. C’est l’occasion pour lui d’être nommé pour la première fois de sa carrière à la Writers Guild of America Awards en 1991. La même année, il s’inscrit à la Harvard Medical School dans l’objectif d’en ressortir avec un master. C’est à Los Angeles qu’il termine ses études de cinéma à l’Université de Californie (UCLA), tout en poursuivant ses études de médecine pendant les vacances scolaires.\r\n\r\nJohn Wells de nouveau fait appel à lui sur la deuxième saison d’une série médicale ambitieuse. Neal Baer est co-scénariste sur Urgences en 1994. La série devient un tel succès qu’il est obligé de mettre de côté ses études de médecine. Petit à petit, il gravit les échelons. De scénariste et directeur d’écriture, il devient monteur et travaille aux côtés de Lance Gentile, un médecin américain qui a poursuit une carrière de scénariste et producteur délégué sur des séries telles que Providence, New York 911, Deuxième chance… Puis Neal Baer passe à la production sur la troisième saison, jusqu’à devenir producteur délégué en 2001. Date à laquelle, il quitte Urgences après avoir écrit dix-huit épisodes. C’est durant la production qu’il reprend ses études de médecine et termine son stage en pédiatrie à lhôpital pour enfants de Los Angeles. En 2000, il reçoit le titre honorifique de doctorant en droit de luniversité du Colorado. Il partage durant sept saisons d’Urgences, cinq nominations aux Emmy Awards pour la meilleure série dramatique.\r\n\r\nIl commence une carrière de pédiatre et continue décrire sur New York Unité Spéciale, pour NBC toujours.Sa carrière fulgurante sur Urgences amène Neal aux commandes du show de Dick Wolf. Il est showrunner et producteur délégué à partir de la saison 2. En 2009, il quitte la série pour être engagé sur CBS. Deux ans plus tard, il participe à l’écriture de deux épisodes de A Gifted Man qui mêle fantastique et médical. Un brillant neurochirurgien voit le fantôme de sa défunte épouse qui lui demande de faire la lumière sur sa mort subite.\r\n\r\nEn 2013, il rejoint l’équipe d’Under The Dome et remplace Brian K. Vaughan en étant le showrunner et producteur exécutif sur la saison 2. Il poursuit ses deux carrières en pédiatrie et à la télévision, et écrit le pilote de Cheerleader Death Squad avec Marc Cherry (Desperate Housewives) pour CW, ainsi que The Three Behrs avec Daniel Truly pour CBS.\r\n'),
(16, 'Scott', 'Ridley', '1935-07-03', 'Frère aîné de Tony Scott.\r\n\r\nRidley Scott étudie au West Hartpool College of Art et au Royal College of Art de Londres. Au début des années 60, il intègre la British Broadcasting Company (BBC) et devient réalisateur d\'une série policière très populaire sur la chaîne, Z Cars. Il est également chef décorateur sur deux séries de science-fiction, Out of the unknown (1965) et R3 (1964), et devient rapidement l\'un des réalisateurs télé les plus inventifs du moment.\r\n\r\n\r\nC\'est en 1977 que Ridley Scott effectue son passage au grand écran avec Les Duellistes, un drame historique porté par Keith Carradine et Harvey Keitel. Le long-métrage obtient le Prix du Jury au Festival de Cannes. Le cinéaste enchaîne alors deux longs-métrages de science-fiction très vite élevés au rang de films cultes : Alien, le huitième passager (1979), où Sigourney Weaver se trouve confrontée à un abominable extraterrestre, et Blade runner (1982), qui voit Harrison Ford incarner un chasseur de primes traquant des Replicants. Pour ce film, le cinéaste affronte ses producteurs et se voit contraint de rajouter une voix off explicative et une fin plus optimiste.\r\n\r\n\r\nEn 1985, Ridley Scott connaît son premier échec commercial avec Legend, un film d\'heroic fantasy interprété par Tom Cruise. Il enchaîne alors deux polars, Traquée (1987), où Tom Berenger s\'éprend de la richissime femme dont il doit assurer la protection, et Black rain (1988), où Michael Douglas incarne un flic tenace face à un dangereux yakusa.\r\n\r\n\r\nEn 1991, le cinéaste britannique obtient un triomphe public et critique pour Thelma et Louise, road-movie mené tambour battant par Susan Sarandon et Geena Davis, nommé à six reprises aux Oscars, notamment dans la catégorie Meilleur réalisateur. La décennie 90 va toutefois être marquée par quelques déconvenues pour le réalisateur. Ni 1492 : Christophe Colomb (1992), ni Lame de fond (1996) et ni A armes égales (1997) n\'obtiennent les faveurs de la critique et du public. Ridley Scott retourne alors à la production avec la série télévisée The Hunger (1997), adaptée des Prédateurs, film réalisé par son frère Tony en 1983.\r\n\r\n\r\nEn 2000, le très rentable (plus de 450 millions de dollars de recettes dans le monde) et primé Gladiator (Oscar du Meilleur film et du Meilleur acteur pour Russell Crowe) témoigne une fois de plus du génie de son metteur en scène, lequel est parvenu à réinventer le genre classique et démodé du péplum. Abonné dès lors aux fresques historiques, il se voit confier la réalisation de projets d\'envergure, tels le violent et réaliste La Chute du faucon noir (2002), basé sur la bataille de Mogadiscio en octobre 1993, et Kingdom of Heaven (2005), ayant pour cadre l\'époque des Croisades.\r\n\r\n\r\nRidley Scott, véritable touche à tout, se consacre également à la mise en scène d’œuvres au budget plus restreint et moins axées sur le spectaculaire comme Hannibal (2001), la suite du Silence des agneaux, ou les comédies Les Associés (2003), avec Nicolas Cage, et Une grande année (2007), qui le voit collaborer à nouveau avec Russell Crowe pour un atypique périple provençal. C est toujours avec l acteur néo-zélandais en vedette qu en 2007, Ridley Scott signe American Gangster, thriller également porté par Denzel Washington dans la peau du célèbre malfrat Frank Lucas. Il reste très attaché aux grands bandits américains puisqu il produit L Assassinat de Jesse James par le lâche Robert Ford avec Brad Pitt la même année. Il passe ensuite côté police, CIA plus précisément, avec Mensonges d Etat où il retrouve une vieille connaissance en la personne de Russell Crowe.\r\n\r\n\r\nEn 2009, Scott collabore pour la cinquième fois avec son acteur fétiche sur Robin des Bois, en affichant clairement sa volonté de réaliser une sorte de Gladiator médiéval. Côté production, il aide des projets audacieux et pertinents avec sa société Scott Free (Welcome to the Rileys, Le Territoire des Loups, etc.). Il produit ainsi en 2010 le documentaire Life in a Day, réalisé par Kevin McDonald avec laide des internautes du monde entier et du site Youtube. Cet attrait pour les projets ambitieux, le cinéaste la aussi pour ses propres réalisations, comme le montre son grand retour à la science-fiction avec Prometheus en 2012, à la fois préquelle de son chef d’œuvre Alien, et premier volet dune future trilogie. Il retrouve Michael Fassbender - à qui il offre le rôle principal - en 2013 juste après Prometheus dans Cartel, un thriller avec Cameron Diaz, Javier Bardem, Penélope Cruz et Brad Pitt.\r\n\r\n\r\nRidley Scott revient ensuite au péplum avec Exodus: Gods And Kings dans lequel Christian Bale campe ni plus ni moins que Moïse, avant de renouer avec la science-fiction pour les besoins de Seul sur Mars porté par Matt Damon. Le réalisateur reste ensuite dans la SF en mettant en scène Alien Covenant, la suite de Prometheus.'),
(17, 'Ford Coppola', 'Francis', '1939-07-03', 'Atteint à l\'âge de dix ans de la poliomyélite et perdant ainsi l\'usage de son bras gauche, Francis Ford Coppola apprend très vite à développer son imagination : durant sa convalescence, il met en scène des marionnettes, regarde beaucoup la télévision et réalise ses premiers films amateurs en 8mm. En 1960, il entre au département cinéma de l\'UCLA (University of California, Los Angeles). Trois ans plus tard, Roger Corman lui confie la seconde équipe technique sur le tournage de The Young Racers, et lui permet par la même occasion de réaliser son premier long métrage : Dementia 13.\r\n\r\nEn 1966, il entre dans la compagnie Seven Arts et écrit plusieurs scénarios dont Propriété interdite de Sydney Pollack et Paris brûle-t-il ? de René Clément. Il contribue également à l\'écriture de Patton de Franklin J. Schaffner, qui lui vaut l\'Oscar du Meilleur scénario en 1971. Il fonde ensuite la société American Zoetrope en collaboration avec George Lucas et produit son premier film THX 1138. Le succès arrive en 1972 avec la réalisation (néanmoins laborieuse) du film culte Le Parrain qui lui permet ensuite de mettre en scène une œuvre plus personnelle : Conversation secrète, qui remporte la Palme d\'Or au Festival de Cannes en 1974. La réalisation du deuxième volet du Parrain lui vaut à nouveau un succès critique et commercial.\r\n\r\nFrancis Ford Coppola entreprend en 1976 le tournage le plus éprouvant de sa carrière : Apocalypse Now. Le film demande trois ans de travail et offre au réalisateur en 1979 sa seconde Palme d\'Or. Après la réalisation de Coup de cœur en 1982, Coppola doit faire face à de très gros soucis financiers. Il enchaîne ensuite avec diverses réalisations de qualité mais sans grandes retombées, parmi lesquelles Cotton club (1984), qui est lui aussi un désastre commercial. C\'est notamment la création de sa propre société de production de vins (Francis Ford Coppola Winery) qui permet au cinéaste de venir a bout de ses dettes. \r\n\r\nIl faut attendre le troisième et dernier volet du Parrain, film de commande qu\'il ne devait pas réaliser au départ, pour que Coppola retrouve une renommée artistique, critique et commerciale, lui permettant de sauver sa société American Zoetrope. En 1993, Coppola réalise Dracula, nouvelle version du roman de Bram Stoker au sein de laquelle il fait considérablement évoluer le célèbre vampire, qui prend notamment une dimension très érotique. En 1996, il est choisi pour présider le 49ème Festival de Cannes.\r\n\r\nFrancis Ford Coppola adapte en 1997 un roman de John Grisham, L\'Idéaliste, dans lequel il confie le premier rôle à un acteur encore débutant, Matt Damon. Près d\'une décennie s\'écoule avant que le cinéaste ne repasse derrière la caméra avec L\'Homme sans âge. Dans l\'intervalle, Coppola - avec sa société American Zoetrope - reste néanmoins un producteur influant. Il produit par exemple Sleepy Hollow, Jeepers Creepers, la série Les 4400, ainsi que des films de sa fille Sofia (Virgin suicides, Lost in Translation, Marie-Antoinette, Somewhere) et de son fils Roman (CQ). Dans ce même intervalle, Francis Ford Coppola abandonne le projet de ses rêves, un ambitieux film de science-fiction intitulé Megalopolis. \r\n\r\nEn 2009, il fait son retour dans le cinéma d\'auteur avec Tetro, saga familiale en noir & blanc, présentée à la Quinzaine des Réalisateurs, puis réalise Twixt en 2011, film personnel à petit budget dont l\'idée lui est venue à la suite d\'un rêve récurent. Il y dirige notamment Val Kilmer et la jeune Elle Fanning, qui avait déjà tourné sous la direction de sa fille Sofia.\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `personHasPicture`
--

CREATE TABLE `personHasPicture` (
  `idPerson` int(10) NOT NULL,
  `idPicture` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personHasPicture`
--

INSERT INTO `personHasPicture` (`idPerson`, `idPicture`) VALUES
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 11),
(6, 27),
(7, 28),
(8, 29),
(9, 30),
(10, 31),
(11, 32),
(12, 33),
(13, 34),
(14, 35),
(15, 36),
(16, 37),
(17, 38);

-- --------------------------------------------------------

--
-- Structure de la table `picture`
--

CREATE TABLE `picture` (
  `id` int(10) NOT NULL,
  `path` varchar(255) NOT NULL,
  `legend` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `picture`
--

INSERT INTO `picture` (`id`, `path`, `legend`) VALUES
(1, 'images/res/1704485.jpg', 'la photo du scénario'),
(2, 'images/res/19851849.jpg', 'Images du scénario'),
(3, 'images/res/2995796.jpg', 'Images du scénario'),
(4, 'images/res/2981733.jpg', 'Images du scénario'),
(5, 'images/res/18777945.jpg', 'Images du scénario'),
(6, 'images/res/2967670.jpg', 'Images du scénario'),
(7, 'images/res/056415.png', 'Images du scénario'),
(8, 'images/res/2925482.jpg', 'Images du scénario'),
(9, 'images/res/056728.jpg', 'Images du scénario'),
(10, 'images/res/055947.png', 'Images du scénario'),
(11, 'images/res/247397.jpg', 'Jonathan Demme'),
(12, 'images/res/361546.jpg', 'Anthony Hopkins'),
(13, 'images/res/029054.jpg', 'Jodie Foster'),
(14, 'images/res/048881.jpg', 'Scott Glenn'),
(15, 'images/res/192012.jpg', 'Ted Levine'),
(16, 'images/res/527600.jpg', 'Images du scénario'),
(17, 'images/res/18686437.jpg', 'Images du scénario'),
(18, 'images/res/18857494.jpg', 'Images du scénario'),
(19, 'images/res/12822.jpg', 'Images du scénario'),
(20, 'images/res/28882.jpg', 'Images du scénario'),
(21, 'images/res/19816803.jpg', 'Images du scénario'),
(22, 'images/res/8282824.jpg', 'Images du scénario'),
(23, 'images/res/39299292.jpg', 'Images du scénario'),
(24, 'images/res/20130911095926809.jpg', 'Images du scénario'),
(25, 'images/res/270933.jpg', 'Images du scénario'),
(26, 'images/res/20014515.jpg', 'Images du scénario'),
(27, 'images/res/028135.jpg', 'Patrick Wilson'),
(28, 'images/res/536916.jpg', 'Evan Rachel Wood'),
(29, 'images/res/5369162.jpg', 'RacRachelle LeFevre'),
(30, 'images/res/472978.jpg', 'Julie Benz'),
(31, 'images/res/5681299.jpg', 'Mike Doyle'),
(32, 'images/res/19785851.jpg', 'Rhys Coiro'),
(33, 'images/res/496252.jpg', 'Eriq La Salle'),
(34, 'images/res/18647756.jpg', 'Peter Hermann'),
(35, 'images/res/424469.jpg', 'Pablo Schreiber'),
(36, 'images/res/597038.jpg', 'Neal Baer'),
(37, 'images/res/273365.jpg', 'Ridley Scott'),
(38, 'images/res/261351.jpg', 'Francis Ford Coppola'),
(39, 'images/res/20018844.jpg', 'Images du scénario'),
(40, 'images/res/20018843.jpg', 'Images du scénario'),
(41, 'images/res/20018842.jpg', 'Images du scénario'),
(42, 'images/res/20018840.jpg', 'Images du scénario'),
(43, 'images/res/20018837.jpg', 'Images du scénario'),
(44, 'images/res/20018836.jpg', 'Images du scénario'),
(45, 'images/res/19843608.jpg', 'Images du scénario'),
(46, 'images/res/19829644.jpg', 'Images du scénario'),
(47, 'images/res/19800146.jpg', 'Images du scénario'),
(48, 'images/res/099913.jpg', 'Images du scénario'),
(49, 'images/res/100851.jpg', 'Images du scénario'),
(50, 'images/res/4080666.jpg', 'Images du scénario'),
(51, 'images/res/100538.jpg', 'Images du scénario'),
(52, 'images/res/100226.jpg', 'Images du scénario');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_time` (`created_time`),
  ADD KEY `first_name` (`first_name`,`last_name`,`email`,`created_time`);

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `releaseDate` (`releaseDate`),
  ADD KEY `rating` (`rating`);

--
-- Index pour la table `movieHasPerson`
--
ALTER TABLE `movieHasPerson`
  ADD KEY `idMovie` (`idMovie`,`idPerson`,`role`);

--
-- Index pour la table `movieHasPicture`
--
ALTER TABLE `movieHasPicture`
  ADD KEY `idMovie` (`idMovie`),
  ADD KEY `idPicture` (`idPicture`),
  ADD KEY `type` (`type`);

--
-- Index pour la table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `birthDate` (`birthDate`);

--
-- Index pour la table `personHasPicture`
--
ALTER TABLE `personHasPicture`
  ADD KEY `idPerson` (`idPerson`),
  ADD KEY `idPicture` (`idPicture`);

--
-- Index pour la table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `path` (`path`),
  ADD KEY `legend` (`legend`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
