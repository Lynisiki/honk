-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 05:53 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE IF NOT EXISTS `favourites` (
`favouriteID` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `favourite` text NOT NULL,
  `latitude` double NOT NULL,
  `longtitude` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`favouriteID`, `username`, `favourite`, `latitude`, `longtitude`) VALUES
(78, 'test1@google.com', '76 Nanyang Dr, Singapore 637331', 1.3450559, 103.6809732),
(110, 'new', '50 Nanyang Dr, Singapore 639798', 1.3453649, 103.6809638),
(115, 'test@test1.com', '31 Jurong West Street 63, Singapore 648310', 1.3374734, 103.6969333),
(116, 'waku@wakuwaku.com', '50 Nanyang Dr, Singapore 639798', 1.3453649, 103.6809638),
(117, 'waku@wakuwaku.com', '1 Woodlands Square, Singapore 738099', 1.436063, 103.7860116),
(118, 'waku@wakuwaku.com', '548 Woodlands Drive 44, Singapore 730548', 1.4308166, 103.7940044),
(130, 'test@honk.com', '31 Jurong West Street 63, Singapore 648310', 1.3374734, 103.6969333),
(131, 'user@gmail.com', '941 Upper Serangoon Rd, Singapore 534709', 1.361309, 103.886206);

-- --------------------------------------------------------

--
-- Table structure for table `trafficnews`
--

CREATE TABLE IF NOT EXISTS `trafficnews` (
  `date_time` varchar(30) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Latitude` double NOT NULL,
  `Longtitude` double NOT NULL,
  `Message` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trafficnews`
--

INSERT INTO `trafficnews` (`date_time`, `Type`, `Latitude`, `Longtitude`, `Message`) VALUES
('(24/10)11:13', 'Roadwork', 1.3691998025813, 103.85036022162, '(24/10)11:13 Roadworks on Ang Mo Kio Avenue 3 (towards Ang Mo Kio Street 42) after Ang Mo Kio Avenue 8.'),
('(24/10)14:24', 'Roadwork', 1.3207157083236, 103.82664664787, '(24/10)14:24 Roadworks on Dunearn Road (towards City) after Whitley Road. Avoid right lane.'),
('(24/10)16:27', 'Heavy Traffic', 1.3337710255644, 103.81455186375, '(24/10)16:27 Heavy Traffic on PIE (towards Changi Airport) at Lornie Rd Exit.'),
('(24/10)17:33', 'Heavy Traffic', 1.3652563347274, 103.85989302719, '(24/10)17:33 Heavy Traffic on CTE (towards SLE) between Braddell Rd Exit and AMK Ave 3 Exit.'),
('(24/10)17:36', 'Heavy Traffic', 1.32395511257, 103.8724337896, '(24/10)17:36 Heavy Traffic on PIE (towards Tuas) after KPE Exit.'),
('(24/10)17:55', 'Heavy Traffic', 1.3321508810088, 103.86253882709, '(24/10)17:55 Heavy Traffic on CTE (towards AYE) at PIE(Changi) Exit.'),
('(24/10)17:58', 'Heavy Traffic', 1.3961203691114, 103.90400383044, '(24/10)17:58 Heavy Traffic on TPE (towards SLE) at Punggol Rd Exit.'),
('(24/10)18:00', 'Heavy Traffic', 1.3807482392286, 103.91610456393, '(24/10)18:00 Heavy Traffic on KPE (towards TPE) at TPE(SLE) Exit.'),
('(24/10)18:04', 'Heavy Traffic', 1.3240979268719, 103.74361762633, '(24/10)18:04 Heavy Traffic on AYE (towards MCE) at Jurong Town Hall Rd Exit.'),
('(24/10)18:05', 'Heavy Traffic', 1.390532274239, 103.77072220076, '(24/10)18:05 Heavy Traffic on KJE (towards BKE) between Woodlands Rd Exit and BKE Exit.'),
('(24/10)18:10', 'Heavy Traffic', 1.415199989981, 103.80506563943, '(24/10)18:10 Heavy Traffic on SLE (towards CTE) between Woodlands Ave 12 Exit and Mandai Ave Exit.'),
('(24/10)18:23', 'Heavy Traffic', 1.3841363148849, 103.73846640706, '(24/10)18:23 Heavy Traffic on KJE (towards BKE) at Choa Chu Kang Way Exit.'),
('(24/10)18:28', 'Heavy Traffic', 1.3182227505448, 103.85034999357, '(24/10)18:28 Heavy Traffic on CTE (towards SLE) at Moulmein Rd Exit.'),
('(24/10)18:29', 'Heavy Traffic', 1.3318065212955, 103.81598822095, '(24/10)18:29 Heavy Traffic on Adam Road (towards Braddell) between Farrer U/P and Farrer F/O.'),
('(24/10)18:29', 'Heavy Traffic', 1.3062111269409, 103.87137887987, '(24/10)18:29 Heavy Traffic on Nicoll Highway (towards Guillemard) after Stadium Road.'),
('(24/10)18:32', 'Vehicle breakdown', 1.3064238945884, 103.76773120082, '(24/10)18:32 Vehicle breakdown on AYE (towards MCE) after Clementi Ave 2 Exit.'),
('(24/10)18:35', 'Heavy Traffic', 1.2846188893162, 103.83727241416, '(24/10)18:35 Heavy Traffic in CTE Tunnel (towards AYE) at Outram Rd Exit.'),
('(24/10)18:46', 'Accident', 1.3212092774875, 103.87848723076, '(24/10)18:46 Accident on KPE (towards TPE) after PIE Exit.'),
('(24/10)18:46', 'Heavy Traffic', 1.3245950951737, 103.89883201376, '(24/10)18:46 Heavy Traffic on PIE (towards Changi Airport) between Kallang and Paya Lebar.'),
('(27/10)16:44', 'Roadwork', 1.3211278959457, 103.82539846744, '(27/10)16:44 Roadworks on Dunearn Road (towards City) after Kheam Hock Road. Avoid left lane.'),
('(27/10)20:26', 'Roadwork', 1.308398299438, 103.78363812754, '(27/10)20:26 Roadworks on Commonwealth Avenue West (towards City) after Ghim Moh Link.'),
('(27/10)20:56', 'Roadwork', 1.3547647612491, 103.83229718031, '(27/10)20:56 Roadworks on Upper Thomson Road (towards SLE) after Jalan Pelatina. Avoid left lane.'),
('(27/10)21:13', 'Roadwork', 1.3144691213685, 103.71471031321, '(27/10)21:13 Roadworks on Jalan Buroh (towards City) after Jurong Pier Road. Avoid left lane.'),
('(27/10)21:27', 'Roadwork', 1.3032648694478, 103.74716016463, '(27/10)21:27 Roadworks on Jalan Buroh (towards Tuas) after Buroh Flyover. Avoid right lane.'),
('(27/10)21:28', 'Roadwork', 1.3281279882301, 103.76402831037, '(27/10)21:28 Roadworks on Clementi Avenue 6 (towards Clementi Loop) after Clementi Loop. Avoid left lane.'),
('(27/10)21:29', 'Roadwork', 1.3284846791792, 103.76405562548, '(27/10)21:29 Roadworks on Clementi Avenue 6 (towards Clementi Loop) after Clementi Loop.'),
('(27/10)21:40', 'Roadwork', 1.3267954779143, 103.82981467446, '(27/10)21:40 Roadworks on PIE (towards Tuas) after Thomson Rd Exit.'),
('(27/10)22:03', 'Roadwork', 1.2922186596338, 103.85117531852, '(27/10)22:03 Roadworks on North Bridge Road (towards Coleman Street) after Coleman Lane.'),
('(27/10)22:05', 'Roadwork', 1.3193739898392, 103.82558869644, '(27/10)22:05 Roadworks on Stevens Road (towards Robin Close) after Bukit Timah Road. Avoid left lane.'),
('(27/10)22:14', 'Roadwork', 1.3190777110025, 103.82561044231, '(27/10)22:14 Roadworks on Stevens Road (towards Bukit Timah Road) after Robin Close. Avoid left lane.'),
('(27/10)22:23', 'Roadwork', 1.3950802091985, 103.77416032387, '(27/10)22:23 Roadworks on BKE (towards PIE) at KJE(PIE) Exit.'),
('(27/10)22:26', 'Roadwork', 1.3316582336841, 103.95974616182, '(27/10)22:26 Roadworks on Changi South Avenue 1 (towards Changi South Street 2) after Xilin Avenue. Avoid right lane.'),
('(27/10)22:28', 'Roadwork', 1.3341781888683, 103.9676474634, '(27/10)22:28 Roadworks on Changi South Avenue 3 (towards Changi South Avenue 4) after Changi Business Park Avenue 3. Avoid left lane.'),
('(27/10)22:28', 'Roadwork', 1.3294251788634, 103.96344180674, '(27/10)22:28 Roadworks on Xilin Avenue (towards Changi South Avenue 1) after Laguna Golf Green. Avoid left lane.'),
('(27/10)22:29', 'Roadwork', 1.3304457336741, 103.96016034232, '(27/10)22:29 Roadworks on Xilin Avenue (towards Laguna Golf Green) after Changi South Avenue 1.'),
('(27/10)22:44', 'Roadwork', 1.3673801283722, 103.94462395587, '(27/10)22:44 Roadworks on TPE (towards SLE) at Tampines Ave 12 Entrance.'),
('(27/10)23:05', 'Roadwork', 1.355486910523, 103.90108097067, '(27/10)23:05 Roadworks on KPE (towards ECP) after Tampines Rd Exit. Avoid lanes 2 and 3.'),
('(27/10)23:05', 'Roadwork', 1.3170381173743, 103.89286832469, '(27/10)23:05 Roadworks on Sims Avenue (toward Changi) after Paya Lebar Road. Avoid left lane.'),
('(27/10)23:11', 'Roadwork', 1.2968912603534, 103.85935434656, '(27/10)23:11 Roadworks on Rochor Road (towards Beach Road) after Temasek Boulevard. Avoid left lane.'),
('(27/10)23:16', 'Roadwork', 1.016264254826, 103.58175180795, '(27/10)23:16 Roadworks on KPE (towards TPE) at TPE(PIE) Exit.'),
('(27/10)23:18', 'Roadwork', 1.3238524775518, 103.93034301202, '(27/10)23:18 Roadworks on New Upper Changi Road (toward City) after Bedok South Avenue 1. Avoid left lane.'),
('(27/10)23:24', 'Roadwork', 1.3143636917007, 103.69910604521, '(27/10)23:24 Roadworks on Jalan Buroh (towards City) after Pioneer Road. Avoid left lane.'),
('(27/10)23:29', 'Roadwork', 1.2765155719402, 103.84740170569, '(27/10)23:29 Roadworks on Maxwell Road near Anson Road/Maxwell Road Junction.'),
('(27/10)23:31', 'Roadwork', 1.2911832561879, 103.85062386717, '(27/10)23:31 Roadworks on North Bridge Road (towards Parliament Place) after Coleman Street.'),
('(27/10)23:40', 'Roadwork', 1.3008876830109, 103.84027349975, '(27/10)23:40 Roadworks on Orchard Road (towards Bras Basah Rd) after Grange Road. Avoid right lane.'),
('(27/10)23:41', 'Roadwork', 1.3903293424053, 103.91056741463, '(27/10)23:41 Roadworks on TPE (towards PIE) after Punggol Rd Exit. Avoid lane 4.'),
('(27/10)23:42', 'Roadwork', 1.2805954562546, 103.83930212494, '(27/10)23:42 Roadworks on Outram Road near Eu Tong Sen Street/Outram Road Junction.'),
('(27/10)23:58', 'Roadwork', 1.2747496389709, 103.85001594208, '(27/10)23:58 Roadworks on MCE (towards AYE) at Maxwell Rd Exit.'),
('(28/10)00:02', 'Roadwork', 1.3400103338566, 103.97207910315, '(28/10)0:02 Roadworks on PIE (towards Tuas) at Changi South Ave 3 Exit.'),
('(28/10)00:02', 'Vehicle breakdown', 1.4206869512279, 103.79823072126, '(28/10)0:02 Vehicle breakdown on SLE (towards BKE) before Woodlands Ave 12 Exit.'),
('(28/10)00:13', 'Roadwork', 1.2929854185892, 103.87536839856, '(28/10)0:13 Roadworks on MCE (towards AYE) before ECP (City) Entrance. Avoid lane 1.'),
('(28/10)00:13', 'Roadwork', 1.3504044098354, 103.96140693638, '(28/10)0:13 Roadworks on PIE (towards Tuas) at Upper Changi Rd East(North) Entrance.'),
('(28/10)00:21', 'Roadwork', 1.3453962633032, 103.73744194908, '(28/10)0:21 Roadworks on PIE (towards Tuas) at Jurong Town Hall Rd Exit.'),
('(28/10)00:35', 'Roadwork', 1.3387330758504, 103.89696142676, '(28/10)0:35 Roadworks on Airport Road (towards Bartley Road East) after Hougang Avenue 3.'),
('(28/10)00:41', 'Accident', 1.3480518017301, 103.85879147187, '(28/10)0:41 Accident on CTE (towards AYE) before PIE(Changi) Exit. Avoid lanes 3 and 4.'),
('(29/10)15:24', 'Roadwork', 1.4054963309027, 103.75618748254, '(29/10)15:24 Roadworks on Woodlands Road (towards City) after Mandai Road. Avoid right lane.'),
('(29/10)17:15', 'Roadwork', 1.3264799426335, 103.82838102226, '(29/10)17:15 Roadworks on PIE (towards Tuas) at Stevens Rd Exit.'),
('(29/10)20:53', 'Vehicle breakdown', 1.3284072016125, 103.91109253914, '(29/10)20:53 Vehicle breakdown on PIE (towards Changi Airport) after Jalan Eunos with congestion till Jalan Eunos. Avoid lane 3.'),
('(3/11)10:00', 'Roadwork', 1.2980818725474, 103.85775719633, '(3/11)10:00 Roadworks on Beach Road (towards Tan Quee Lan Street) after Rochor Road.'),
('(3/11)10:00', 'Roadwork', 1.3586871975629, 103.88353207069, '(3/11)10:00 Roadworks on Upper Serangoon Road (towards City) after Tampines Road. Avoid right lane.'),
('(3/11)10:01', 'Roadwork', 1.293106451701, 103.85415900707, '(3/11)10:01 Roadworks on Beach Road (towards Bras Basah Road) after St. Andrew`s Road. Avoid left lane.'),
('(3/11)10:02', 'Roadwork', 1.3019853340638, 103.86303141805, '(3/11)10:02 Roadworks on Beach Road (towards Java Road) after Republic Avenue.'),
('(3/11)10:02', 'Roadwork', 1.304863223182, 103.90860427511, '(3/11)10:02 Roadworks on Marine Parade Road (towards Marine Drive) after Still Road South.'),
('(3/11)10:03', 'Roadwork', 1.3499505773046, 103.87403605976, '(3/11)10:03 Roadworks on Upper Serangoon Road (towards City) after Upper Paya Lebar Road. Avoid left lane.'),
('(3/11)10:04', 'Roadwork', 1.3127090915168, 103.90694174453, '(3/11)10:04 Roadworks on Still Road (towards Eunos) after East Coast Road. Avoid right lane.'),
('(3/11)10:05', 'Roadwork', 1.308845245666, 103.90832394803, '(3/11)10:05 Roadworks on Still Road (towards ECP) after Lorong J Telok Kurau. Avoid left lane.'),
('(3/11)10:06', 'Roadwork', 1.3261167241834, 103.80803532748, '(3/11)10:06 Roadworks on Dunearn Road (towards City) after Hillcrest Road. Avoid right lane.'),
('(3/11)10:06', 'Roadwork', 1.3084824263703, 103.87759256071, '(3/11)10:06 Roadworks on Guillemard Road near Guillemard Road/Lorong 8 Geylang Junction.'),
('(3/11)10:06', 'Roadwork', 1.3057602317657, 103.90989066959, '(3/11)10:06 Roadworks on Still Road South (towards ECP) after East Coast Road. Avoid right lane.'),
('(3/11)10:07', 'Roadwork', 1.3193331473443, 103.85037560086, '(3/11)10:07 Roadworks on Moulmein Road (towards CTE) after Mandalay Road.'),
('(3/11)10:09', 'Roadwork', 1.2868945779394, 103.80505346453, '(3/11)10:09 Roadworks on Jalan Bukit Merah (towards Alexandra Road) after Bukit Merah Lane 1. Avoid left lane.'),
('(3/11)10:10', 'Roadwork', 1.3329384620458, 103.86951964216, '(3/11)10:10 Roadworks on Upper Serangoon Road (towards City) after Upper Aljunied Road. Avoid right lane.'),
('(3/11)10:12', 'Roadwork', 1.2971362878523, 103.85570724016, '(3/11)10:12 Roadworks on Middle Road (towards North Bridge Road) after Beach Road.'),
('(3/11)10:12', 'Roadwork', 1.3919568228863, 103.85394185732, '(3/11)10:12 Roadworks on Yio Chu Kang Road (towards Cactus Road) after Sunrise Way. Avoid right lane.'),
('(3/11)10:14', 'Roadwork', 1.2809164157848, 103.83912250787, '(3/11)10:14 Roadworks on Outram Road near Eu Tong Sen Street/Outram Road Junction.'),
('(3/11)10:15', 'Roadwork', 1.3013651214295, 103.77039201316, '(3/11)10:15 Roadworks on Clementi Road near Clementi Road/Kent Ridge Crescent Junction.'),
('(3/11)10:17', 'Roadwork', 1.2950002743244, 103.83742834535, '(3/11)10:17 Roadworks on River Valley Close (towards River Valley Road) after River Valley Green. Avoid right lane.'),
('(3/11)10:18', 'Roadwork', 1.3217617199606, 103.7366515993, '(3/11)10:18 Roadworks on Penjuru Road (towards Teban Gardens Crescent) after West Coast Road. Avoid left lane.'),
('(3/11)10:18', 'Roadwork', 1.2958769676849, 103.83583162587, '(3/11)10:18 Roadworks on River Valley Road near River Valley Road/St. Thomas Walk Junction.'),
('(3/11)10:21', 'Roadwork', 1.3043887933197, 103.76079915157, '(3/11)10:21 Roadworks on West Coast Highway (towards Tuas) after Pandan Crescent. Avoid left lane.'),
('(3/11)10:21', 'Roadwork', 1.285133362525, 103.77974657573, '(3/11)10:21 Roadworks on West Coast Highway (towards Tuas) after South Buona Vista. Avoid left lane.'),
('(3/11)10:22', 'Roadwork', 1.2915556121377, 103.84569132333, '(3/11)10:22 Roadworks on River Valley Road (towards Tan Tye Place) after Read Street. Avoid right lane.'),
('(3/11)10:22', 'Roadwork', 1.2903560199098, 103.7702401619, '(3/11)10:22 Roadworks on West Coast Highway (towards Tuas) after Wholesale Centre.'),
('(3/11)10:25', 'Roadwork', 1.3103497681659, 103.78032990375, '(3/11)10:25 Roadworks on Commonwealth Avenue West (towards Tuas) after Dover Avenue. Avoid left lane.'),
('(3/11)10:25', 'Roadwork', 1.3272804172678, 103.9465142912, '(3/11)10:25 Roadworks on New Upper Changi Road (toward Changi) after Bedok North Road. Avoid left lane.'),
('(3/11)10:26', 'Roadwork', 1.3124454319603, 103.7750097307, '(3/11)10:26 Roadworks on Commonwealth Avenue West (towards Tuas) after Dover Avenue. Avoid right lane.'),
('(3/11)10:27', 'Roadwork', 1.3175281281192, 103.76403139895, '(3/11)10:27 Roadworks on Commonwealth Avenue West (towards Tuas) after Clementi Avenue 3. Avoid left lane.'),
('(3/11)10:27', 'Roadwork', 1.2920027004843, 103.84935433148, '(3/11)10:27 Roadworks on Hill Street (towards High Street) after Coleman Street.'),
('(3/11)10:28', 'Roadwork', 1.325547816378, 103.75776673186, '(3/11)10:28 Roadworks on Commonwealth Avenue West (towards City) after Toh Tuck Avenue. Avoid right lane.'),
('(3/11)10:28', 'Roadwork', 1.3323541508556, 103.90271991033, '(3/11)10:28 Roadworks on Kaki Bukit Avenue 1 (towards Kaki Bukit Road 1) after Eunos Link. Avoid left lane.'),
('(3/11)10:31', 'Roadwork', 1.3281525619755, 103.94894548355, '(3/11)10:31 Roadworks on New Upper Changi Road (toward City) after Bedok Road. Avoid right lane.'),
('(3/11)10:33', 'Roadwork', 1.3351749322504, 103.96829033483, '(3/11)10:33 Roadworks on Changi South Avenue 3 (towards Changi South Avenue 4) after Changi Business Park Avenue 3. Avoid left lane.'),
('(3/11)10:33', 'Roadwork', 1.3316150735388, 103.72093989595, '(3/11)10:33 Roadworks on International Road (towards Corporation Road) after Fourth Chin Bee Road.'),
('(3/11)10:34', 'Roadwork', 1.308559495768, 103.87659310736, '(3/11)10:34 Roadworks on Sims Way (towards Lorong 6 Geylang) after Geylang Road. Avoid left lane.'),
('(3/11)10:34', 'Roadwork', 1.3263597565091, 103.75725435195, '(3/11)10:34 Roadworks on Toh Tuck Avenue near Commonwealth Avenue West/Toh Tuck Avenue Junction.'),
('(3/11)10:35', 'Roadwork', 1.3298272637669, 103.68740928976, '(3/11)10:35 Roadworks on Upper Jurong Road (towards City) after PIE. Avoid left lane.'),
('(3/11)10:36', 'Roadwork', 1.3305025946483, 103.97573989583, '(3/11)10:36 Roadworks on ECP (towards City) after PIE(Tuas) Exit. Avoid lane 1.'),
('(3/11)10:36', 'Roadwork', 1.3118755447729, 103.88898461173, '(3/11)10:36 Roadworks on Guillemard Road (towards Siang Lim Park) after Lorong 36 Geylang. Avoid right lane.'),
('(3/11)10:36', 'Roadwork', 1.3378109637853, 103.95991225067, '(3/11)10:36 Roadworks on Upper Changi Road East (toward City) after Somapah Road. Avoid left lane.'),
('(3/11)10:37', 'Roadwork', 1.3393608443906, 103.96073001694, '(3/11)10:37 Roadworks on Upper Changi Road East (toward Changi) after Simei Avenue. Avoid left lane.'),
('(3/11)10:43', 'Roadwork', 1.2985589659144, 103.88537055431, '(3/11)10:43 Roadworks on Fort Road (towards Tanjong Rhu Road) after Mountbatten Road. Avoid right lane.'),
('(3/11)10:44', 'Roadwork', 1.2987510353976, 103.88534332337, '(3/11)10:44 Roadworks on Fort Road (towards Mountbatten Road) after Tanjong Rhu Road. Avoid left lane.'),
('(3/11)10:49', 'Roadwork', 1.3321137575263, 103.96529752482, '(3/11)10:49 Roadworks on Changi South Avenue 2 (towards Changi South Avenue 3) after Changi South Street 2. Avoid left lane.'),
('(3/11)10:56', 'Roadwork', 1.3644148223076, 103.90551326089, '(3/11)10:56 Roadworks on KPE (towards TPE) at Tampines Road Entrance.'),
('(3/11)11:01', 'Roadwork', 1.3118782631212, 103.88915361084, '(3/11)11:01 Roadworks on Guillemard Road near Guillemard Road/Lorong 36 Geylang Junction.'),
('(3/11)11:03', 'Roadwork', 1.3277321845288, 103.69477008224, '(3/11)11:03 Roadworks on International Road near First Lok Yang Road/International Road Junction.'),
('(3/11)11:13', 'Roadwork', 1.3349847324232, 103.87816989469, '(3/11)11:13 Roadworks on Upper Aljunied Road (towards Lichi Avenue) after Cedar Avenue. Avoid left lane.'),
('(3/11)11:14', 'Roadwork', 1.3349847329228, 103.87814265941, '(3/11)11:14 Roadworks on Upper Aljunied Road (towards Cedar Avenue) after Lichi Avenue. Avoid right lane.'),
('(3/11)11:22', 'Roadwork', 1.3522576525784, 103.87680078072, '(3/11)11:22 Roadworks on Upper Paya Lebar Road near Upper Paya Lebar Road/Upper Serangoon Road Junction.'),
('(3/11)11:25', 'Roadwork', 1.3035991394743, 103.90133518352, '(3/11)11:25 Roadworks on Mountbatten Road (towards City) after Joo Chiat Road. Avoid left lane.'),
('(3/11)12:56', 'Roadwork', 1.2951019060861, 103.8571506511, '(3/11)12:56 Roadworks on Nicoll Highway (towards Shenton Way) after Middle Road.'),
('(3/11)13:07', 'Roadwork', 1.3201283314682, 103.82626584303, '(3/11)13:07 Roadworks on Bukit Timah Road (towards Woodlands) after Balmoral Road. Avoid right lane.'),
('(3/11)13:10', 'Roadwork', 1.3414620756112, 103.64411581509, '(3/11)13:10 Roadworks on AYE (towards MCE) after Tuas West Rd.'),
('(3/11)13:21', 'Roadwork', 1.3227679630653, 103.67897115034, '(3/11)13:21 Roadworks on AYE (towards MCE) after Benoi Rd Exit.'),
('(3/11)13:22', 'Roadwork', 1.3117233555923, 103.94518788018, '(3/11)13:22 Roadworks on ECP (towards City) after East Coast Park Carpark F3 Exit. Avoid lane 3.'),
('(3/11)13:38', 'Roadwork', 1.3261127734263, 103.94338935066, '(3/11)13:38 Roadworks on New Upper Changi Road (toward Changi) after Bedok North Road. Avoid right lane.'),
('(3/11)13:50', 'Roadwork', 1.3540173743359, 103.86304219286, '(3/11)13:50 Roadworks on Ang Mo Kio Avenue 1 (towards Li Hwan Drive) after Lorong Chuan. Avoid left lane.'),
('(3/11)13:51', 'Roadwork', 1.3965859415911, 103.84716426516, '(3/11)13:51 Roadworks on SLE (towards CTE) before TPE Exit.'),
('(3/11)13:51', 'Roadwork', 1.3641835126542, 103.88933910737, '(3/11)13:51 Roadworks on Upper Serangoon Road (towards Sengkang) after Tampines Road. Avoid right lane.'),
('(3/11)14:00', 'Heavy Traffic', 1.3148833470983, 103.84594527749, '(3/11)14:00 Heavy Traffic in CTE Tunnel (towards AYE) between PIE(Jurong) Exit and Bukit Timah Rd Exit.'),
('(3/11)14:11', 'Roadwork', 1.2991327010358, 103.86105863903, '(3/11)14:11 Roadworks on Nicoll Highway (towards Guillemard) after Middle Road. Avoid left lane.'),
('(3/11)14:19', 'Roadwork', 1.3560748373772, 103.90140218792, '(3/11)14:19 Roadworks on KPE (towards ECP) after Tampines Rd Exit. Avoid lane 3.'),
('(3/11)14:21', 'Roadwork', 1.3208364128415, 103.82627599467, '(3/11)14:21 Roadworks on Dunearn Road (towards City) after Whitley Road. Avoid right lane.'),
('(3/11)14:31', 'Roadwork', 1.2950605067682, 103.83050928372, '(3/11)14:31 Roadworks on Zion Road (towards River Valley Road) after Kellock Road.'),
('(3/11)14:33', 'Vehicle breakdown', 1.3221330891657, 103.85676533706, '(3/11)14:33 Vehicle breakdown on CTE (towards AYE) after PIE(Jurong) Exit.'),
('(3/11)14:38', 'Roadwork', 1.3309739278996, 103.79829043861, '(3/11)14:38 Roadworks on Dunearn Road (towards City) after Eng Neo Avenue. Avoid right lane.'),
('(3/11)14:42', 'Vehicle breakdown', 1.3289151786023, 103.86641246057, '(3/11)14:42 Vehicle breakdown on PIE (towards Changi Airport) before Kallang Way.'),
('(3/11)14:43', 'Roadwork', 1.3413108348903, 103.77845845351, '(3/11)14:43 Roadworks on Jalan Anak Bukit (towards City) after Jalan Jurong Kechil. Avoid left lane.'),
('(3/11)14:44', 'Roadwork', 1.2948452198567, 103.87733483649, '(3/11)14:44 Roadworks on MCE (towards AYE) at MCE(AYE) Entrance.'),
('(3/11)14:45', 'Roadwork', 1.3361122523815, 103.75841515963, '(3/11)14:45 Roadworks on PIE (towards Tuas) before Toh Guan Rd Exit. Avoid lane 1.'),
('(3/11)14:47', 'Road Block', 1.298960275686, 103.84467609363, '(3/11)14:47 Road Closure on Penang Lane (towards Penang Road) after Orchard Road.'),
('(3/11)14:47', 'Vehicle breakdown', 1.3223856964863, 103.9702700729, '(3/11)14:47 Vehicle breakdown on ECP (towards City) before East Coast Park Carpark H Exit.'),
('(3/11)04:54', 'Roadwork', 1.3065064984447, 103.82916406479, '(3/11)4:54 Roadworks on Orchard Road (towards Bras Basah Rd) after Tanglin Road. Avoid right lane.'),
('(3/11)06:47', 'Roadwork', 1.3447452850578, 103.93880078675, '(3/11)6:47 Roadworks on Tampines Avenue 1 near Tampines Avenue 1/Tampines Avenue 4 Junction.'),
('(3/11)07:40', 'Heavy Traffic', 1.3397122345673, 103.75219111359, '(3/11)7:40 Heavy Traffic on PIE (towards Changi Airport) after Toh Guan Rd Exit'),
('(3/11)07:42', 'Heavy Traffic', 1.355726760553, 103.9632875571, '(3/11)7:42 Heavy Traffic on TPE (towards PIE) between Pasir Ris Dr 12 Exit and PIE Exit.'),
('(3/11)08:04', 'Vehicle breakdown', 1.3774055251549, 103.92810210235, '(3/11)8:04 Vehicle breakdown on TPE (towards PIE) after Pasir Ris Dr 12 Exit.'),
('(3/11)08:05', 'Accident', 1.3343472200881, 103.7616115675, '(3/11)8:05 Accident on PIE (towards Tuas) after Clementi Ave 6 Exit with congestion till Clementi Rd Exit. Avoid lane 1.'),
('(3/11)08:12', 'Roadwork', 1.3452856584742, 103.93841927248, '(3/11)8:12 Roadworks on Tampines Avenue 4 (towards Tampines Avenue 1) after Tampines Street 91.'),
('(3/11)08:13', 'Heavy Traffic', 1.3030424099997, 103.80145029595, '(3/11)8:13 Heavy Traffic on Queensway (towards AYE) between PIE and Holland Road.'),
('(3/11)08:16', 'Heavy Traffic', 1.3905991088618, 103.77217510019, '(3/11)8:16 Heavy Traffic on KJE (towards BKE) at BKE(Woodlands) Exit.'),
('(3/11)08:18', 'Heavy Traffic', 1.3904729267434, 103.77094316255, '(3/11)8:18 Heavy Traffic on KJE (towards BKE) between Woodlands Rd Exit and BKE Exit.'),
('(3/11)08:28', 'Heavy Traffic', 1.3336984342967, 103.81482356997, '(3/11)8:28 Heavy Traffic on PIE (towards Changi Airport) at Lornie Rd Exit.'),
('(3/11)08:29', 'Heavy Traffic', 1.4039462008912, 103.77310749286, '(3/11)8:29 Heavy Traffic on BKE (towards PIE) after Mandai Rd Exit.'),
('(3/11)08:31', 'Heavy Traffic', 1.3125669945339, 103.77228767257, '(3/11)8:31 Heavy Traffic on Clementi Road (towards Commonwealth Avenue West).'),
('(3/11)08:35', 'Vehicle breakdown', 1.3737873402591, 103.77766572047, '(3/11)8:35 Vehicle breakdown on BKE (towards PIE) after Bukit Panjang Rd Exit.'),
('(3/11)08:50', 'Vehicle breakdown', 1.4009665381598, 103.88928647679, '(3/11)8:50 Vehicle breakdown on TPE (towards PIE) before Sengkang Exit.'),
('(3/11)08:54', 'Roadwork', 1.3877629791304, 103.87078789266, '(3/11)8:54 Roadworks on Yio Chu Kang Road near Jalan Redop/Yio Chu Kang Road Junction.'),
('(3/11)08:55', 'Accident', 1.391120354075, 103.85813281917, '(3/11)8:55 Accident on SLE (towards CTE) after TPE Exit. Avoid lane 1.'),
('(3/11)09:25', 'Roadwork', 1.3034800750386, 103.90632452527, '(3/11)9:25 Roadworks on Marine Parade Road (towards Marine Parade Central). Avoid left lane.'),
('(3/11)09:26', 'Roadwork', 1.3125549201694, 103.76695325752, '(3/11)9:26 Roadworks on Commonwealth Avenue West (towards City) after Clementi Avenue 4. Avoid right lane.'),
('(3/11)09:30', 'Roadwork', 1.3538296576982, 103.83367008833, '(3/11)9:30 Roadworks on Upper Thomson Road (towards SLE) after Jalan Pelatina. Avoid left lane.'),
('(3/11)09:31', 'Roadwork', 1.3022907210718, 103.91017773976, '(3/11)9:31 Roadworks on ECP (towards Changi Airport) at Marine Parade Exit.'),
('(3/11)09:31', 'Roadwork', 1.2791208531096, 103.8170265637, '(3/11)9:31 Roadworks on Henderson Road (towards Depot Road) after Telok Blangah Way. Avoid right lane.'),
('(3/11)09:37', 'Roadwork', 1.3348072969522, 103.69669322369, '(3/11)9:37 Roadworks on Boon Lay Way (towards Tuas) after Jalan Boon Lay. Avoid left lane.'),
('(3/11)09:38', 'Roadwork', 1.3295723572055, 103.90483389865, '(3/11)9:38 Roadworks on Bedok Reservoir Road near Bedok Reservoir Road/Eunos Link Junction.'),
('(3/11)09:38', 'Roadwork', 1.3990708302947, 103.85593901619, '(3/11)9:38 Roadworks on TPE (towards SLE) at Seletar West Link Exit.'),
('(3/11)09:39', 'Roadwork', 1.3336422424767, 103.79066695472, '(3/11)9:39 Roadworks on Dunearn Road (towards City) after Jalan Anak Bukit.'),
('(3/11)09:39', 'Roadwork', 1.3314924995608, 103.90273750691, '(3/11)9:39 Roadworks on Eunos Link (towards Still Rd) after Kaki Bukit Avenue 1.'),
('(3/11)09:39', 'Roadwork', 1.3362582920934, 103.96111139268, '(3/11)9:39 Roadworks on Expo Drive (towards Changi South Avenue 1) after Upper Changi Road East. Avoid left lane.'),
('(3/11)09:39', 'Roadwork', 1.3363241484027, 103.96092610489, '(3/11)9:39 Roadworks on Expo Drive (towards Upper Changi Road East) after Changi South Avenue 1. Avoid left lane.'),
('(3/11)09:39', 'Roadwork', 1.3642358631835, 103.88670665516, '(3/11)9:39 Roadworks on Lim Ah Pin Road near Joo Hong Road/Lim Ah Pin Road Junction.'),
('(3/11)09:40', 'Roadwork', 1.3348241196903, 103.69479421687, '(3/11)9:40 Roadworks on Upper Jurong Road (towards Tuas) after Pioneer Road North. Avoid left lane.'),
('(3/11)09:42', 'Roadwork', 1.3195469187247, 103.77105190476, '(3/11)9:42 Roadworks on Clementi Road near Clementi Road/Ulu Pandan Road Junction.'),
('(3/11)09:43', 'Roadwork', 1.353048631867, 103.76970194856, '(3/11)9:43 Roadworks on Upper Bukit Timah Road (towards City) after Hillview Road.'),
('(3/11)09:45', 'Roadwork', 1.3746608185435, 103.76266072245, '(3/11)9:45 Roadworks on Upper Bukit Timah Road (towards City) after Bukit Panjang Road.'),
('(3/11)09:46', 'Roadwork', 1.3446438082703, 103.93834286746, '(3/11)9:46 Roadworks on Bedok Reservoir Road near Bedok Reservoir Road/Tampines Avenue 1 Junction.'),
('(3/11)09:46', 'Roadwork', 1.3280744247732, 103.94875874259, '(3/11)9:46 Roadworks on New Upper Changi Road (toward City) after Bedok Road. Avoid right lane.'),
('(3/11)09:46', 'Roadwork', 1.3555448240975, 103.76880790164, '(3/11)9:46 Roadworks on Upper Bukit Timah Road (towards City) after Hillview Road. Avoid left lane.'),
('(3/11)09:47', 'Roadwork', 1.3639703932794, 103.7678340889, '(3/11)9:47 Roadworks on Upper Bukit Timah Road (towards City) after Cashew Road. Avoid right lane.'),
('(3/11)09:48', 'Roadwork', 1.308271061315, 103.78873542907, '(3/11)9:48 Roadworks on Commonwealth Avenue West (towards City) after Ghim Moh Link. Avoid left lane.'),
('(3/11)09:48', 'Roadwork', 1.3688699485692, 103.76469390547, '(3/11)9:48 Roadworks on Upper Bukit Timah Road (towards City) after Cashew Road. Avoid right lane.'),
('(3/11)09:53', 'Roadwork', 1.326789970326, 103.82980917531, '(3/11)9:53 Roadworks on PIE (towards Tuas) after Thomson Rd Exit. Avoid lane 4.'),
('(3/11)09:54', 'Roadwork', 1.3002030719153, 103.83946930003, '(3/11)9:54 Roadworks on Somerset Road (towards Grange Road) after Penang Road. Avoid right lane.'),
('(3/11)09:55', 'Roadwork', 1.3435077414578, 103.85701002842, '(3/11)9:55 Roadworks on Braddell Road (towards Bartley) after Toa Payoh. Avoid left lane.'),
('(3/11)09:56', 'Roadwork', 1.2802370498645, 103.84406491501, '(3/11)9:56 Roadworks on Tanjong Pagar Road (towards Murray Street) after Maxwell Road. Avoid left lane.'),
('(3/11)09:58', 'Roadwork', 1.3437506482917, 103.84868783125, '(3/11)9:58 Roadworks on Braddell Road (towards Bishan Road) after Lorong 6 Toa Payoh. Avoid left lane.'),
('(3/11)09:58', 'Roadwork', 1.3031265466998, 103.83186751708, '(3/11)9:58 Roadworks on Orchard Boulevard (towards Paterson Road) after Orchard Turn. Avoid right lane.'),
('(3/11)09:58', 'Roadwork', 1.4011984825335, 103.8764269674, '(3/11)9:58 Roadworks on TPE (towards SLE) before Jalan Kayu Exit. Avoid lane 3.'),
('(3/11)09:58', 'Roadwork', 1.3295435077193, 103.86872984334, '(3/11)9:58 Roadworks on Upper Serangoon Road (towards City) after Wan Tho Avenue. Avoid left lane.'),
('(31/10)16:24', 'Vehicle breakdown', 1.3208469031681, 103.88159733782, '(31/10)16:24 Vehicle breakdown on PIE (towards Tuas) before KPE Exit. Avoid lane 4.'),
('(31/10)16:45', 'Vehicle breakdown', 1.2785814316019, 103.82324418589, '(31/10)16:45 Vehicle breakdown on AYE (towards Tuas) after Lower Delta Rd Exit.'),
('(31/10)16:46', 'Heavy Traffic', 1.3215771905103, 103.8562109069, '(31/10)16:46 Heavy Traffic on CTE (towards SLE) between Bukit Timah Rd Entrance and Moulmein Rd Exit.'),
('(31/10)17:10', 'Heavy Traffic', 1.3338940326765, 103.81396869925, '(31/10)17:10 Heavy Traffic on PIE (towards Changi Airport) at Lornie Rd Exit.'),
('(31/10)17:17', 'Vehicle breakdown', 1.3217980063196, 103.70568393481, '(31/10)17:17 Vehicle breakdown on AYE (towards Tuas) after Jurong Pier Rd Exit.'),
('(31/10)17:35', 'Heavy Traffic', 1.4368494257254, 103.76842406038, '(31/10)17:35 Heavy Traffic on BKE (towards Woodlands) at Woodlands Rd Exit.'),
('(31/10)17:38', 'Heavy Traffic', 1.3603903040427, 103.85814840651, '(31/10)17:38 Heavy Traffic on CTE (towards SLE) between Braddell Rd Exit and AMK Ave 1 Exit.'),
('(31/10)17:52', 'Heavy Traffic', 1.4267635584491, 103.7843322992, '(31/10)17:52 Heavy Traffic on SLE (towards CTE) at Woodlands Ave 2 Exit.'),
('(31/10)17:53', 'Heavy Traffic', 1.2985275405985, 103.87725013141, '(31/10)17:53 Heavy Traffic on KPE (towards TPE) after ECP Entrance.'),
('(31/10)17:54', 'Heavy Traffic', 1.3072987617858, 103.87527756752, '(31/10)17:54 Heavy Traffic on KPE (towards TPE) at Nicoll Highway Entrance.'),
('(31/10)17:56', 'Vehicle breakdown', 1.3284873305334, 103.82416714488, '(31/10)17:56 Vehicle breakdown on PIE (towards Tuas) after Stevens Rd Exit.'),
('(31/10)18:00', 'Vehicle breakdown', 1.3660230336796, 103.70869570123, '(31/10)18:00 Vehicle breakdown on PIE (towards Tuas) at KJE(BKE) Exit.'),
('(31/10)18:13', 'Heavy Traffic', 1.3807482392286, 103.91610456393, '(31/10)18:13 Heavy Traffic on KPE (towards TPE) at TPE(SLE) Exit.'),
('(31/10)18:18', 'Vehicle breakdown', 1.3203095731949, 103.88028832598, '(31/10)18:18 Vehicle breakdown on PIE (towards Tuas) before KPE Exit.'),
('(31/10)18:23', 'Heavy Traffic', 1.4297210831506, 103.76913414922, '(31/10)18:23 Heavy Traffic on BKE (towards Woodlands) at Woodlands Ave 3 Exit.'),
('(31/10)18:24', 'Vehicle breakdown', 1.3212101712626, 103.87807537035, '(31/10)18:24 Vehicle breakdown on KPE (towards TPE) at Sims Avenue Entrance.'),
('(31/10)18:31', 'Heavy Traffic', 1.3785897303037, 103.90800399947, '(31/10)18:31 Heavy Traffic on KPE (towards TPE) at Buangkok Drive Exit.'),
('(31/10)18:38', 'Accident', 1.2771756753977, 103.86959008122, '(31/10)18:38 Accident on MCE (towards ECP) after Marina Blvd Entrance.'),
('(31/10)18:38', 'Heavy Traffic', 1.3855921445894, 103.91454040195, '(31/10)18:38 Heavy Traffic on TPE (towards SLE) between Tampines Rd Exit and Tampines Flyover.'),
('(31/10)18:47', 'Vehicle breakdown', 1.3246005397362, 103.89882106953, '(31/10)18:47 Vehicle breakdown on PIE (towards Changi Airport) after Paya Lebar.'),
('(31/10)19:05', 'Vehicle breakdown', 1.3333788149828, 103.77106998833, '(31/10)19:05 Vehicle breakdown on PIE (towards Changi Airport) before Upper Bukit Timah Rd.'),
('(31/10)19:15', 'Roadwork', 1.3773021339673, 103.85794109984, '(31/10)19:15 Roadworks on CTE (towards SLE) at Ang Mo Kio Ave 5 Entrance.'),
('(31/10)19:19', 'Accident', 1.2956662592344, 103.83038385536, '(31/10)19:19 Accident on River Valley Road near Hoot Kiam Road/River Valley Road Junction.'),
('(31/10)19:48', 'Accident', 1.3504722489713, 103.95911381229, '(31/10)19:48 Accident on PIE (towards Tuas) after Upper Changi Rd East.'),
('(31/10)19:59', 'Roadwork', 1.3007337957647, 103.77011088315, '(31/10)19:59 Roadworks on Clementi Road (towards Kent Ridge Crescent) after Kent Ridge Crescent. Avoid right lane.'),
('(31/10)20:14', 'Accident', 1.4230950055168, 103.77321733738, '(31/10)20:14 Accident on SLE (towards CTE) after BKE Entrance. Avoid lane 1.'),
('(31/10)20:19', 'Vehicle breakdown', 1.3171910221988, 103.76197165209, '(31/10)20:19 Vehicle breakdown on Clementi Avenue 6 (towards Jalan Lempeng) after Commonwealth Avenue West. Avoid left lane.'),
('(31/10)20:19', 'Vehicle breakdown', 1.3742320852847, 103.9351624962, '(31/10)20:19 Vehicle breakdown on TPE (towards PIE) after Pasir Ris Dr 12 Exit.'),
('(31/10)20:20', 'Vehicle breakdown', 1.3029488183486, 103.84110321382, '(31/10)20:20 Vehicle breakdown in CTE Tunnel (towards AYE) after Orchard Rd Exit.'),
('(31/10)20:25', 'Vehicle breakdown', 1.3905152466273, 103.7671546686, '(31/10)20:25 Vehicle breakdown on KJE (towards PIE) after BKE Entrance.'),
('(31/10)20:38', 'Roadwork', 1.3267954778908, 103.82979831178, '(31/10)20:38 Roadworks on PIE (towards Tuas) after Thomson Rd Exit.'),
('(31/10)20:44', 'Vehicle breakdown', 1.3224577206805, 103.71474488873, '(31/10)20:44 Vehicle breakdown on AYE (towards MCE) after Jalan Boon Lay Exit.'),
('(31/10)20:46', 'Vehicle breakdown', 1.3955755044594, 103.81546946352, '(31/10)20:46 Vehicle breakdown on SLE (towards BKE) after Upper Thomson Rd Exit.'),
('(31/10)20:52', 'Roadwork', 1.333563534444, 103.96723928863, '(31/10)20:52 Roadworks on Changi South Avenue 3 near Changi Business Park Avenue 3/Changi South Avenue 3 Junction.'),
('(31/10)20:54', 'Unattended Vehicle', 1.3566571930076, 103.90173358592, '(31/10)20:54 Stationary Vehicle on KPE (towards TPE) before Tampines Rd Exit.'),
('(31/10)20:54', 'Vehicle breakdown', 1.3102410360107, 103.76442902753, '(31/10)20:54 Vehicle breakdown on AYE (towards Tuas) before  Clementi Ave 6 Exit.'),
('(31/10)20:56', 'Roadwork', 1.3307518036998, 103.95932944727, '(31/10)20:56 Roadworks on Changi South Avenue 1 near Changi South Avenue 1/Xilin Avenue Junction.'),
('(31/10)21:00', 'Roadwork', 1.3307793248453, 103.95930224046, '(31/10)21:00 Roadworks on Changi South Avenue 1 near Changi South Avenue 1/Xilin Avenue Junction.'),
('(31/10)21:00', 'Vehicle breakdown', 1.3270746481048, 103.86989721023, '(31/10)21:00 Vehicle breakdown on PIE (towards Changi Airport) before Kallang Way. Avoid lane 4.'),
('(31/10)21:13', 'Roadwork', 1.2920047779317, 103.85109353172, '(31/10)21:13 Roadworks on North Bridge Road (towards Coleman Street) after Coleman Lane.'),
('(31/10)21:15', 'Roadwork', 1.3323537458818, 103.96038157406, '(31/10)21:15 Roadworks on Changi South Avenue 1 (towards Changi South Street 2) after Changi South Avenue 2. Avoid right lane.'),
('(31/10)21:15', 'Vehicle breakdown', 1.37928445113, 103.77609884031, '(31/10)21:15 Vehicle breakdown on BKE (towards Woodlands) after Bukit Panjang Rd Exit.'),
('(31/10)21:25', 'Roadwork', 1.3239798466318, 103.74418489573, '(31/10)21:25 Roadworks on AYE (towards MCE) at Jurong Town Hall Rd Exit.'),
('(31/10)21:28', 'Roadwork', 1.3869002529951, 103.77467640027, '(31/10)21:28 Roadworks on BKE (towards Woodlands) at KJE(PIE) Exit.'),
('(31/10)21:34', 'Roadwork', 1.3268009228155, 103.83028345037, '(31/10)21:34 Roadworks on PIE (towards Changi Airport) at Mount Pleasant Entrance.'),
('(31/10)21:36', 'Vehicle breakdown', 1.4190928628578, 103.80050317775, '(31/10)21:36 Vehicle breakdown on SLE (towards BKE) after Mandai Rd Exit.'),
('(31/10)21:37', 'Roadwork', 1.3866947304885, 103.74166048057, '(31/10)21:37 Roadworks on KJE (towards BKE) after Choa Chu Kang Way Exit. Avoid lane 4.'),
('(31/10)21:43', 'Roadwork', 1.3495567345195, 103.87356852209, '(31/10)21:43 Roadworks on Serangoon Viaduct (towards City) at S`goon Viaduct. Avoid left lane.'),
('(31/10)21:48', 'Roadwork', 1.2889216024949, 103.86166432451, '(31/10)21:48 Roadworks on ECP (towards City) after Rochor Rd Exit. Avoid lane 3.'),
('(31/10)21:50', 'Roadwork', 1.3291559880278, 103.76403807597, '(31/10)21:50 Roadworks on Clementi Avenue 6 (towards Clementi Loop) after PIE. Avoid left lane.'),
('(31/10)21:50', 'Roadwork', 1.3291175514825, 103.76399988846, '(31/10)21:50 Roadworks on Clementi Avenue 6 (towards PIE) after Clementi Loop. Avoid left lane.'),
('(31/10)21:52', 'Roadwork', 1.3137258042912, 103.7030958098, '(31/10)21:52 Roadworks on Jalan Buroh (towards City) after Pioneer Road. Avoid left lane.'),
('(31/10)21:58', 'Vehicle breakdown', 1.4011057864979, 103.87224775108, '(31/10)21:58 Vehicle breakdown on TPE (towards SLE) after Jalan Kayu Exit.'),
('(31/10)22:06', 'Roadwork', 1.3546253264529, 103.83258679677, '(31/10)22:06 Roadworks on Upper Thomson Road (towards SLE) after Jalan Pelatina. Avoid left lane.'),
('(7/11)10:04', 'Roadwork', 1.3554957410552, 103.8799888833, '(7/11)10:04 Roadworks on Upper Serangoon Road (towards Sengkang) after Serangoon Viaduct. Avoid left lane.'),
('(7/11)10:06', 'Roadwork', 1.2958275979191, 103.83628403351, '(7/11)10:06 Roadworks on River Valley Road (towards Killiney Road) after St. Thomas Walk. Avoid left lane.'),
('(7/11)10:07', 'Roadwork', 1.2949388588899, 103.8374396669, '(7/11)10:07 Roadworks on River Valley Close (towards River Valley Green) after River Valley Road. Avoid left lane.'),
('(7/11)10:11', 'Roadwork', 1.3698763257913, 103.87496210052, '(7/11)10:11 Roadworks on Yio Chu Kang Road (towards Ang Mo Kio Avenue 3) after Hougang Avenue 2. Avoid right lane.'),
('(7/11)10:15', 'Roadwork', 1.3173004225727, 103.76418406898, '(7/11)10:15 Roadworks on Commonwealth Avenue West (towards Tuas) after Clementi Avenue 3. Avoid left lane.'),
('(7/11)10:20', 'Roadwork', 1.3251675759477, 103.75833660583, '(7/11)10:20 Roadworks on Commonwealth Avenue West (towards City) after Toh Tuck Avenue. Avoid right lane.'),
('(7/11)10:22', 'Roadwork', 1.3401867791069, 103.85300961016, '(7/11)10:22 Roadworks on Lorong 6 Toa Payoh (towards Lorong 8 Toa Payoh) after Lorong 1 Toa Payoh. Avoid left lane.'),
('(7/11)11:01', 'Roadwork', 1.3299343603383, 103.87936126991, '(7/11)11:01 Roadworks on Aljunied Road (towards Macpherson Road) after Kallang Pudding Road.'),
('(7/11)12:06', 'Roadwork', 1.2802887333508, 103.8507814873, '(7/11)12:06 Roadworks on Raffles Quay (towards Shenton Way) after Central Boulevard. Avoid left lane.'),
('(7/11)12:36', 'Roadwork', 1.2806315754801, 103.8511576177, '(7/11)12:36 Roadworks on Central Boulevard near Central Boulevard/Cross Street Junction.'),
('(7/11)15:50', 'Heavy Traffic', 1.3237624873414, 103.85814840575, '(7/11)15:50 Heavy Traffic on CTE (towards SLE) between Outram Rd Exit and Jalan Bahagia Exit.'),
('(7/11)16:01', 'Heavy Traffic', 1.3298449807225, 103.86378016345, '(7/11)16:01 Heavy Traffic on PIE (towards Tuas) between Paya Lebar Rd and CTE(City) Exit.'),
('(7/11)16:04', 'Heavy Traffic', 1.3291418537651, 103.85549950917, '(7/11)16:04 Heavy Traffic on PIE (towards Changi Airport) between Stevens Rd Exit and Kim Keat Link.'),
('(7/11)16:21', 'Heavy Traffic', 1.3644804929836, 103.85959586215, '(7/11)16:21 Heavy Traffic on CTE (towards SLE) between Braddell Rd Exit and AMK Ave 3 Exit.'),
('(7/11)16:58', 'Vehicle breakdown', 1.2876214909167, 103.80448656729, '(7/11)16:58 Vehicle breakdown on Alexandra Road near Alexandra Road/Queensway Junction.'),
('(7/11)18:49', 'Roadwork', 1.3013604267546, 103.77035122832, '(7/11)18:49 Roadworks on Clementi Road near Clementi Road/Kent Ridge Crescent Junction.'),
('(7/11)20:23', 'Roadwork', 1.3534711288232, 103.76956015318, '(7/11)20:23 Roadworks on Upper Bukit Timah Road (towards City) after Hillview Road. Avoid right lane.'),
('(7/11)20:25', 'Roadwork', 1.3108134471575, 103.73584378642, '(7/11)20:25 Roadworks on Jalan Buroh (towards Tuas) after Tanjong Penjuru. Avoid right lane.'),
('(7/11)20:27', 'Roadwork', 1.3329822136882, 103.96684993159, '(7/11)20:27 Roadworks on Changi South Avenue 3 (towards Changi Business Park Avenue 3) after Changi South Avenue 2. Avoid left lane.'),
('(7/11)20:37', 'Roadwork', 1.2984712332934, 103.88538150577, '(7/11)20:37 Roadworks on Fort Road (towards Tanjong Rhu Road) after Mountbatten Road. Avoid right lane.'),
('(7/11)20:38', 'Roadwork', 1.3091617859045, 103.86578052939, '(7/11)20:38 Roadworks on Kallang Road (toward City) after Sims Way. Avoid left lane.'),
('(7/11)21:03', 'Roadwork', 1.3269863761508, 103.74544446149, '(7/11)21:03 Roadworks on Jurong Town Hall Road (towards Jalan Ahmad Ibrahim) after Jurong East Street 11. Avoid right lane.'),
('(7/11)21:09', 'Roadwork', 1.3294772618597, 103.9632565188, '(7/11)21:09 Roadworks on Xilin Avenue (towards Changi South Avenue 1) after Laguna Golf Green.'),
('(7/11)21:11', 'Roadwork', 1.3308243922687, 103.95889035464, '(7/11)21:11 Roadworks on Xilin Avenue (towards Changi South Avenue 1) after Upper Changi Road East. Avoid right lane.'),
('(7/11)21:16', 'Roadwork', 1.3226194665242, 103.82604156613, '(7/11)21:16 Roadworks on Whitley Road (towards Merryn Road) after Dunearn Road. Avoid left lane.'),
('(7/11)21:17', 'Roadwork', 1.3011820939362, 103.77030216321, '(7/11)21:17 Roadworks on Clementi Road (towards Kent Ridge Crescent) after Kent Ridge Crescent. Avoid right lane.'),
('(7/11)21:23', 'Accident', 1.3179299215072, 103.83318955612, '(7/11)21:23 Accident on Bukit Timah Road (towards Woodlands) after Balmoral Road. Avoid left lane.'),
('(7/11)21:28', 'Roadwork', 1.3552763749356, 103.87970537296, '(7/11)21:28 Roadworks on Upper Serangoon Road (towards Sengkang) after Serangoon Viaduct.'),
('(7/11)21:30', 'Roadwork', 1.3564785097793, 103.88110031932, '(7/11)21:30 Roadworks on Upper Serangoon Road (towards Sengkang) after Serangoon Viaduct.'),
('(7/11)21:31', 'Roadwork', 1.314109283323, 103.70540011561, '(7/11)21:31 Roadworks on Jalan Buroh (towards Tuas) after Jurong Pier Road. Avoid left lane.'),
('(7/11)21:34', 'Roadwork', 1.3581725974863, 103.76746223024, '(7/11)21:34 Roadworks on Upper Bukit Timah Road (towards City) after Hillview Road.'),
('(7/11)21:40', 'Roadwork', 1.3268009221893, 103.82981467445, '(7/11)21:40 Roadworks on PIE (towards Tuas) after Thomson Rd Exit. Avoid lane 4.'),
('(7/11)21:44', 'Roadwork', 1.3296087414613, 103.84280265365, '(7/11)21:44 Roadworks on PIE (towards Changi Airport) before Toa Payoh Lor 1. Avoid lanes 1 and 2.'),
('(7/11)21:46', 'Roadwork', 1.2887429912674, 103.8615914329, '(7/11)21:46 Roadworks on ECP (towards Changi Airport) before Ophir Rd Entrance. Avoid lane 5.'),
('(7/11)21:50', 'Roadwork', 1.2835939923593, 103.85268596352, '(7/11)21:50 Roadworks on Collyer Quay (towards Guillemard) after Marina Boulevard. Avoid left lane.'),
('(7/11)21:51', 'Roadwork', 1.3289584826048, 103.76398902937, '(7/11)21:51 Roadworks on Clementi Avenue 6 (towards PIE) after Clementi Loop. Avoid left lane.'),
('(7/11)21:54', 'Roadwork', 1.3415759096574, 103.88244572058, '(7/11)21:54 Roadworks on Bartley Viaduct (towards Bartley Road East) after Bartley Road. Avoid right lane.'),
('(7/11)22:02', 'Roadwork', 1.3545052088304, 103.83280325205, '(7/11)22:02 Roadworks on Upper Thomson Road (towards SLE) after Jalan Pelatina. Avoid left lane.'),
('(7/11)22:25', 'Roadwork', 1.3159183950068, 103.75899111723, '(7/11)22:25 Roadworks on AYE (towards MCE) before Clementi Ave 6 Exit. Avoid lanes 1 and 2.'),
('(7/11)22:25', 'Roadwork', 1.321885877321, 103.96987780138, '(7/11)22:25 Roadworks on ECP (towards Changi Airport) after Xilin Ave Exit. Avoid lane 3.'),
('(7/11)22:32', 'Roadwork', 1.3206604260548, 103.88098677708, '(7/11)22:32 Roadworks on PIE (towards Changi Airport) after Kallang Way. Avoid lane 2.'),
('(7/11)22:48', 'Roadwork', 1.3437321161891, 103.84582636456, '(7/11)22:48 Roadworks on Braddell Road (towards Bishan Flyover) after Bishan Road. Avoid left lane.'),
('(7/11)22:51', 'Roadwork', 1.2966959475847, 103.85626998527, '(7/11)22:51 Roadworks on Middle Road near Beach Road/Middle Road Junction.'),
('(7/11)22:52', 'Roadwork', 1.2966849938801, 103.85647171724, '(7/11)22:52 Roadworks on Beach Road near Beach Road/Middle Road Junction.'),
('(7/11)22:53', 'Roadwork', 1.2826403635977, 103.85060978345, '(7/11)22:53 Roadworks on Cecil Street (towards Robinson Road) after Church Street. Avoid left lane.'),
('(7/11)22:55', 'Roadwork', 1.2813497882881, 103.83874638065, '(7/11)22:55 Roadworks on Outram Road near Outram Road/Second Hospital Avenue Junction.'),
('(7/11)22:55', 'Roadwork', 1.2805047849548, 103.85095158203, '(7/11)22:55 Roadworks on Raffles Quay (towards Shenton Way) after Central Boulevard.'),
('(7/11)22:55', 'Roadwork', 1.2983137954416, 103.8538758374, '(7/11)22:55 Roadworks on Victoria Street (towards Middle Road) after Bain Street.'),
('(7/11)23:11', 'Roadwork', 1.302058670067, 103.83729024124, '(7/11)23:11 Roadworks on Orchard Road (towards Bras Basah Rd) after Bideford Road.'),
('(7/11)23:24', 'Roadwork', 1.3268514760201, 103.82971097219, '(7/11)23:24 Roadworks on PIE (towards Changi Airport) after Stevens Rd Exit. Avoid lane 1.'),
('(7/11)23:43', 'Roadwork', 1.3080956463405, 103.84179844509, '(7/11)23:43 Roadworks in CTE Tunnel (towards AYE) before Cairnhill Circle Exit. Avoid lane 1.'),
('(7/11)23:53', 'Roadwork', 1.3351945342158, 103.89304193742, '(7/11)23:53 Roadworks on KPE (towards TPE) before Bartley Rd East Exit. Avoid lane 3.'),
('(7/11)23:58', 'Roadwork', 1.3538649283549, 103.7871445827, '(7/11)23:58 Roadworks on BKE (towards PIE) before PIE Exit. Avoid lanes 2 and 3.'),
('(7/11)23:59', 'Roadwork', 1.3013038625746, 103.84302080364, '(7/11)23:59 Roadworks in CTE Tunnel (towards SLE) before Kramat Rd Entrance. Avoid lanes 1 and 3.'),
('(7/11)23:59', 'Roadwork', 1.2782213982701, 103.87105633785, '(7/11)23:59 Roadworks on MCE (towards ECP) after Marina Blvd Entrance. Avoid lane 5.'),
('(7/11)09:16', 'Roadwork', 1.323296500852, 103.73698337518, '(7/11)9:16 Roadworks on Penjuru Road (towards Teban Gardens Crescent) after West Coast Road. Avoid right lane.'),
('(7/11)09:47', 'Roadwork', 1.2982217861786, 103.85782260271, '(7/11)9:47 Roadworks on Beach Road (towards Rochor Road) after Tan Quee Lan Street. Avoid left lane.'),
('(7/11)09:48', 'Roadwork', 1.3656536389852, 103.84360413651, '(7/11)9:48 Roadworks on Ang Mo Kio Avenue 6 (towards Marymount Road) after Ang Mo Kio Street 24.'),
('(7/11)09:48', 'Roadwork', 1.298032486141, 103.85765907482, '(7/11)9:48 Roadworks on Beach Road (towards Tan Quee Lan Street) after Rochor Road. Avoid left lane.'),
('(7/11)09:48', 'Roadwork', 1.33823317356, 103.80555841689, '(7/11)9:48 Roadworks on Eng Neo Avenue (towards Fairways Drive) after PIE. Avoid left lane.'),
('(7/11)09:51', 'Roadwork', 1.3106789545125, 103.77980119993, '(7/11)9:51 Roadworks on Commonwealth Avenue West (towards Tuas) after Dover Avenue. Avoid left lane.'),
('(7/11)09:54', 'Roadwork', 1.3277301761548, 103.94785523148, '(7/11)9:54 Roadworks on New Upper Changi Road (toward City) after Bedok Road. Avoid right lane.'),
('(7/11)09:55', 'Roadwork', 1.2873554271091, 103.80451379605, '(7/11)9:55 Roadworks on Jalan Bukit Merah (towards Alexandra Road). Avoid left lane.'),
('(7/11)09:57', 'Roadwork', 1.2810481006325, 103.83900264315, '(7/11)9:57 Roadworks on Outram Road near Eu Tong Sen Street/Outram Road Junction.'),
('(7/11)09:58', 'Roadwork', 1.2808505870983, 103.83910614534, '(7/11)9:58 Roadworks on Outram Road near Outram Road/Second Hospital Avenue Junction.'),
('(8/11)00:00', 'Roadwork', 1.2890949414571, 103.84190989983, '(8/11)0:00 Roadworks in CTE Tunnel (towards AYE) after Havelock Exit. Avoid lane 3.'),
('(8/11)00:00', 'Roadwork', 1.3446369997425, 103.89896171204, '(8/11)0:00 Roadworks on KPE (towards TPE) at Airport Road Entrance. Airport Road Entrance closed.'),
('(8/11)00:04', 'Roadwork', 1.291861017066, 103.84345243637, '(8/11)0:04 Roadworks in CTE Tunnel (towards SLE) after Merchant Rd Exit. Avoid lane 3.'),
('(8/11)00:04', 'Roadwork', 1.2755359627272, 103.79402756941, '(8/11)0:04 Roadworks on West Coast Highway (towards Tuas) at W Coast Hwy Flyover. Avoid left lane.'),
('(8/11)00:11', 'Roadwork', 1.2858520562372, 103.87832128761, '(8/11)0:11 Roadworks on MCE (towards ECP) before ECP (Changi) Exit. Avoid lanes 1, 2 and 3.'),
('(8/11)00:16', 'Roadwork', 1.3067050986059, 103.84069807931, '(8/11)0:16 Roadworks in CTE Tunnel (towards AYE) at Cairnhill Circle Exit.'),
('(8/11)00:16', 'Roadwork', 1.3117297854995, 103.94519040539, '(8/11)0:16 Roadworks on ECP (towards City) after East Coast Park Carpark F3 Exit. Avoid lane 1.'),
('(8/11)00:18', 'Roadwork', 1.3894235700664, 103.75006584127, '(8/11)0:18 Roadworks on KJE (towards PIE) at Choa Chu Kang Dr Exit.'),
('(8/11)00:21', 'Roadwork', 1.2955698771617, 103.88800034908, '(8/11)0:21 Roadworks on ECP (towards City) at Fort Rd Exit.'),
('(8/11)00:31', 'Roadwork', 1.3904721488744, 103.91331250091, '(8/11)0:31 Roadworks on Punggol East near Punggol East/TPE Junction.'),
('(8/11)00:40', 'Roadwork', 1.3070493095767, 103.84045520293, '(8/11)0:40 Roadworks in CTE Tunnel (towards SLE) at Cairnhill Circle Entrance. Cairnhill Circle Entrance closed.'),
('(8/11)00:40', 'Roadwork', 1.4204608390647, 103.77218636443, '(8/11)0:40 Roadworks on SLE (towards BKE) at Turf Club Exit.'),
('(8/11)00:44', 'Roadwork', 1.3083352114379, 103.84212228258, '(8/11)0:44 Roadworks in CTE Tunnel (towards AYE) before Cairnhill Circle Exit. Avoid lanes 3 and 4.'),
('(8/11)00:47', 'Roadwork', 1.2705676810386, 103.85996483242, '(8/11)0:47 Roadworks on MCE (towards ECP) after Central Blvd Exit. Avoid lane 2.'),
('(8/11)00:48', 'Roadwork', 1.3426994638218, 103.85318943215, '(8/11)0:48 Roadworks on Lorong 6 Toa Payoh (towards Braddell Road).'),
('(8/11)00:49', 'Roadwork', 1.3101293825683, 103.84394284712, '(8/11)0:49 Roadworks in CTE Tunnel (towards SLE) before Bukit Timah Rd Entrance. Avoid lanes 3 and 4.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(20) NOT NULL,
  `username` varchar(70) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `lvl` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `email`, `lvl`) VALUES
(102, 'test@google.com', 'ttTGjLpgGXJyfV6Gy557rmufAYRk9F5L/1K66WGgDtY=\n', NULL, 99),
(103, 'test1@google.com', 'Ci8FJTVP5XwrjsDKt9brgZQGHpf6oR9J/fRE6o+aDDg=\n', NULL, 0),
(104, 'user@google.com', 'JacaqmPrfg735WcR5Zsov6DkUt+uwas9HV2cFJoBsww=\n', NULL, 0),
(105, 'waku@wakuwaku.com', 'uTmhdtERbPni7T5sAYLUdfoowT40WwQbzMbRI8vWRZo=\n', NULL, 0),
(107, 'user1@google.com', 'CTvQBiIn+aqMnET+UA4I847dAP+sq4ns55FME+g4tXg=\n', NULL, 0),
(108, 'test@test1.com', 'rg7zIFaN8wojfvvc6L64/KwoMYz+WUmlP6sCcrr7bZc=\n', NULL, 0),
(109, 'bin@honk.com', 'B428+CFQF/2o+EyV7GzrIGjGy1tCmXDD/uG0u1uN5yc=\n', NULL, 0),
(110, 'test@honk.com', '5aXXUuUpOqyEsawRBft6Ywz8V7aqo8qxXJdcc51ATHA=\n', NULL, 0),
(111, 'user@gmail.com', 'w/IlBpXX9T3k/olwaRG+4djidyJeEVi9HZc2vrm+GY8=\n', NULL, 0),
(113, 'bin1@honk.com', 'JFuYPtJV59aGI094XCJMLaFyadBWX+ENCFjeBatIiz8=\n', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
 ADD PRIMARY KEY (`favouriteID`);

--
-- Indexes for table `trafficnews`
--
ALTER TABLE `trafficnews`
 ADD UNIQUE KEY `message` (`Message`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
MODIFY `favouriteID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
