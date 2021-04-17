-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 07:31 PM
-- Server version: 10.4.18-MariaDBaddon_account_dataaddon_account
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;jobs
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
(5, 'property_black_money', 'Argent Sale Propriété', 0),
(22, 'caution', 'Caution', 0),
(23, 'secworker', 'SecWorker', 1),
(28, 'society_kfc', 'kfc', 1),
(29, 'society_police', 'Milicija', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(5, 'property', 'Propriété', 0),
(16, 'secworker', 'SecWorker', 1),
(25, 'society_kfc', 'kfc', 1),
(26, 'society_kfc_fridge', 'kfc (frigo)', 1),
(27, 'society_police', 'Milicija', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(1, 'steam:110000146632a0f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Facture', 786786678),
(5, 'steam:110000146632a0f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Facture', 432423423),
(6, 'steam:110000146632a0f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Facture', 1999999),
(7, 'steam:1100001035697ce', 'steam:110000146632a0f', 'player', 'steam:110000146632a0f', 'Facture', 2147483647),
(8, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Napad na civila', 2000),
(9, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj mita', 30000),
(10, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj mita', 30000),
(11, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj mita', 30000),
(12, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj korupcije', 10000),
(13, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj mita', 30000),
(14, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj mita', 30000),
(15, 'steam:11000014577371f', 'steam:1100001035697ce', 'player', 'steam:1100001035697ce', 'Racun: Pokusaj mita', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `car_parking`
--

CREATE TABLE `car_parking` (
  `id` int(10) NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  `parking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000014577371f', 'Stefan', 'Stefanovic', '2000-12-30', 'm', '185'),
(2, 'steam:11000014577371f', 'Stefan', 'Stefanovic', '2000-12-30', 'm', '185'),
(3, 'steam:110000146632a0f', 'Uros', 'Ristovic', '1993-06-16', 'm', '200'),
(4, 'steam:110000146930a03', 'Djuro', 'Djurovic', '1990-06-18', 'm', '174'),
(5, 'steam:110000118f9c788', 'Mihajlo', 'Mihajlovic', '11.5.1999', 'm', '190'),
(6, 'steam:1100001035697ce', 'LAKI', 'KILA', '12.12.1997', 'm', '189');

-- --------------------------------------------------------

--
-- Table structure for table `communityservice`
--

CREATE TABLE `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
(1, 'property', 'Propriété', 0),
(8, 'society_kfc', 'kfc', 1),
(9, 'society_police', 'Milicija', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'property', 'steam:11000014577371f', '{}'),
(2, 'property', 'steam:110000144d0e097', '{}'),
(3, 'property', 'steam:110000146632a0f', '{}'),
(4, 'property', 'steam:110000146930a03', '{}'),
(5, 'property', 'steam:110000118f9c788', '{}'),
(6, 'property', 'steam:1100001035697ce', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `disc_ammo`
--

CREATE TABLE `disc_ammo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `attach` text NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disc_ammo`
--

INSERT INTO `disc_ammo` (`id`, `owner`, `hash`, `count`, `attach`) VALUES
(1, 'steam:11000014577371f', '584646201', 0, '[]'),
(2, 'steam:11000014577371f', '453432689', 0, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Voznja pod alkoholom', 30, 0),
(2, 'Zatamnjena stakla, folije', 40, 0),
(3, 'Prestrojavanje', 250, 0),
(4, 'Koristenje mobilnog telefona', 250, 0),
(5, 'Ne koristenje \"P\"', 170, 0),
(6, 'Parkiranje - pjesacki', 30, 0),
(7, 'Parkiranje - raskrsnica', 150, 0),
(8, 'Parkiranje - smeta pri izlasku', 70, 0),
(9, 'Parkiranje - zelene povrsine', 70, 0),
(10, 'Parkiranje - na kolovozu, oba smjera', 90, 0),
(11, 'Parkiranje - autobusko stajaliste', 105, 0),
(12, 'Oprema u vozilu', 130, 0),
(13, 'Nema dokumente', 100, 0),
(14, 'Dijete na prednjem sjedistu', 100, 0),
(15, 'Ugrozavanje sigurnosti', 1500, 0),
(16, 'Ne koristenje pojasa', 800, 0),
(17, 'Prekoracenje brzine < 15 km/h', 90, 0),
(18, 'Prekoracenje brzine < 15-50 km/h', 120, 0),
(19, 'Prekoracenje brzine < 50-100 km/h', 180, 0),
(20, 'Prekoracenje brzine < 100-150 km/h', 300, 0),
(21, 'Krakta svetla', 110, 1),
(22, 'Odbijanje alkotesta', 300, 1),
(23, 'Alkohol, vozac pocetnik', 90, 1),
(24, 'Nezgoda, voznja unazad', 130, 1),
(25, 'Nezgoda, brzina', 75, 1),
(26, 'Nezgoda, mimoilazenje', 110, 1),
(27, 'Nezgoda, radnje vozilom', 90, 1),
(28, 'Nezgoda, desna ivica kolovoza', 150, 1),
(29, 'Prolazak kroz crveno svetlo', 250, 1),
(30, 'Prolazak kroz vise crvenih svetala', 1500, 1),
(31, 'Nedavanje zmigavca', 120, 2),
(32, 'Upravljanje bez dozvole', 1300, 2),
(33, 'Koristenje neodgovarajucih reg. tablica', 600, 2),
(34, 'Kaciga', 700, 2),
(35, 'Pravo prvensta prolaza', 300, 2),
(36, 'Svjetla za maglu', 1800, 2),
(37, 'Pokusaj ubistva civila', 1500, 2),
(38, 'Pokusaj ubistva vaznih ljudi', 5000, 2),
(39, 'Voznja neispravnog automobila', 650, 2),
(40, 'Kidnapovanje', 1500, 2),
(41, 'Kidnapovanje vaznih ljudi', 2000, 2),
(42, 'Pljacka zlatare', 5000, 2),
(43, 'Pljacka trgovine', 10000, 2),
(44, 'Pljacka banke', 15000, 2),
(45, 'Napad na civila', 2000, 3),
(46, 'Napad na sluzbeno lice', 2500, 3),
(47, 'Nosenje hladnog oruzija', 3000, 3),
(48, 'Nosenje vatrenog oruzija', 5000, 3),
(49, 'Pokusaj korupcije', 10000, 3),
(50, 'Pokusaj mita', 30000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `weight`) VALUES
('alive_chicken', 'Poulet vivant', -1, 0, 1, 1),
('bread', 'Pain', 10, 0, 1, 0),
('burger', 'Bacon Burgare', -1, 0, 1, 1),
('caisseketchup', 'Caisse de Ketchup', 40, 0, 1, 0),
('camtablet', 'SecTablet', -1, 0, 1, 0),
('cheesebows', 'OLW Ostbågar', -1, 0, 1, 1),
('chips', 'OLW 3xLök Chips', -1, 0, 1, 1),
('cigarett', 'Cigarett', -1, 0, 1, 1),
('clothe', 'Vêtement', -1, 0, 1, 1),
('cocacola', 'Coca Cola', -1, 0, 1, 1),
('copper', 'Cuivre', -1, 0, 1, 1),
('cutted_wood', 'Bois coupé', -1, 0, 1, 1),
('diamond', 'Diamant', -1, 0, 1, 1),
('disc_ammo_pistol', 'Pistol Ammo', -1, 0, 1, 10),
('disc_ammo_pistol_large', 'Pistol Ammo Large', -1, 0, 1, -10),
('disc_ammo_rifle', 'Rifle Ammo', -1, 0, 1, 10),
('disc_ammo_rifle_large', 'Rifle Ammo Large', -1, 0, 1, 10),
('disc_ammo_shotgun', 'Shotgun Shells', -1, 0, 1, 10),
('disc_ammo_shotgun_large', 'Shotgun Shells Large', -1, 0, 1, 10),
('disc_ammo_smg', 'SMG Ammo', -1, 0, 1, 10),
('disc_ammo_smg_large', 'SMG Ammo Large', -1, 0, 1, 10),
('disc_ammo_snp', 'Sniper Ammo', -1, 0, 1, 10),
('disc_ammo_snp_large', 'Sniper Ammo Large', -1, 0, 1, 10),
('drpepper', 'Dr. Pepper', 10, 0, 1, 0),
('energy', 'Energy Drink', 10, 0, 1, 0),
('essence', 'Essence', -1, 0, 1, 1),
('fabric', 'Tissu', -1, 0, 1, 1),
('fanta', 'Fanta Exotic', -1, 0, 1, 1),
('fish', 'Poisson', -1, 0, 1, 1),
('flashlight', 'Flashlight', -1, 0, 1, 2),
('frites', 'Barquette de frites', 10, 0, 1, 0),
('fromage', 'Morceau de fromage', 5, 0, 1, 0),
('gold', 'Gold', -1, 0, 1, 1),
('grip', 'Grip', -1, 0, 1, 2),
('icetea', 'Ice Tea', 10, 0, 1, 0),
('iron', 'Iron', -1, 0, 1, 1),
('jusfruit', 'Jus de fruits', 10, 0, 1, 0),
('lighter', 'Tändare', -1, 0, 1, 1),
('limonade', 'Limonade', 10, 0, 1, 0),
('loka', 'Loka Crush', -1, 0, 1, 1),
('lotteryticket', 'Trisslott', -1, 0, 1, 1),
('macka', 'Skinkmacka', -1, 0, 1, 1),
('marabou', 'Marabou Mjölkchoklad', -1, 0, 1, 1),
('Nightvision', 'Nightvision', 1, 0, 0, 0),
('packaged_chicken', 'Poulet en barquette', -1, 0, 1, 1),
('packaged_plank', 'Paquet de planches', -1, 0, 1, 1),
('parkingcard', 'Parking Card', -1, 0, 1, 0),
('pastacarbonara', 'Pasta Carbonara', -1, 0, 1, 1),
('patate', 'Pomme de terre', 5, 0, 1, 0),
('patatefrie', 'Pomme de terre frit', 5, 0, 1, 0),
('petrol', 'Pétrole', -1, 0, 1, 1),
('petrol_raffin', 'Pétrole Raffiné', -1, 0, 1, 1),
('pickaxe', 'Pickaxe', -1, 0, 1, 1),
('pizza', 'Kebab Pizza', -1, 0, 1, 1),
('sachetketchup', 'Sachet de Ketchup', 100, 0, 1, 0),
('saladp', 'Feuille de salade', 5, 0, 1, 0),
('salads', 'Salade sale', 5, 0, 1, 0),
('scope', 'Scope', -1, 0, 1, 2),
('skin', 'Skin', -1, 0, 1, 2),
('slaughtered_chicken', 'Poulet abattu', -1, 0, 1, 1),
('sprite', 'Sprite', -1, 0, 1, 1),
('steakc', 'Steak cru', 5, 0, 1, 0),
('steakcui', 'Steak cuit', 5, 0, 1, 0),
('stone', 'Pierre', -1, 0, 1, 1),
('supressor', 'Suppressor', -1, 0, 1, 2),
('Thermalvision', 'Thermalvision', 1, 0, 0, 0),
('tomatec', 'Rondelle de tomate', 5, 0, 1, 0),
('tomater', 'Tomate entière', 5, 0, 1, 0),
('washed_stone', 'Pierre Lavée', -1, 0, 1, 1),
('water', 'Eau', 5, 0, 1, 0),
('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', -1, 0, 1, 1),
('WEAPON_APPISTOL', 'AP Pistol', -1, 0, 1, 1),
('WEAPON_ASSAULTRIFLE', 'Assault Rifle', -1, 0, 1, 1),
('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', -1, 0, 1, 1),
('WEAPON_ASSAULTSMG', 'Assault SMG', -1, 0, 1, 1),
('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', -1, 0, 1, 1),
('WEAPON_BALL', 'Ball', -1, 0, 1, 1),
('WEAPON_BAT', 'Bat', -1, 0, 1, 1),
('WEAPON_BATTLEAXE', 'Battle Axe', -1, 0, 1, 1),
('WEAPON_BOTTLE', 'Bottle', -1, 0, 1, 1),
('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', -1, 0, 1, 1),
('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', -1, 0, 1, 1),
('WEAPON_BZGAS', 'BZ Gas', -1, 0, 1, 1),
('WEAPON_CARBINERIFLE', 'Carbine Rifle', -1, 0, 1, 1),
('WEAPON_COMBATMG', 'Combat MG', -1, 0, 1, 1),
('WEAPON_COMBATPDW', 'Combat PDW', -1, 0, 1, 1),
('WEAPON_COMBATPISTOL', 'Combat Pistol', -1, 0, 1, 1),
('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', -1, 0, 1, 1),
('WEAPON_COMPACTRIFLE', 'Compact Rifle', -1, 0, 1, 1),
('WEAPON_CROWBAR', 'Crowbar', -1, 0, 1, 1),
('WEAPON_DAGGER', 'Dagger', -1, 0, 1, 1),
('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', -1, 0, 1, 1),
('WEAPON_DIGISCANNER', 'Digiscanner', -1, 0, 1, 1),
('WEAPON_DOUBLEACTION', 'Double Action Revolver', -1, 0, 1, 1),
('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', -1, 0, 1, 1),
('WEAPON_FIREWORK', 'Firework Launcher', -1, 0, 1, 1),
('WEAPON_FLARE', 'Flare', -1, 0, 1, 1),
('WEAPON_FLAREGUN', 'Flare Gun', -1, 0, 1, 1),
('WEAPON_FLASHLIGHT', 'Flashlight', -1, 0, 1, 1),
('WEAPON_GARBAGEBAG', 'Garbage Bag', -1, 0, 1, 1),
('WEAPON_GOLFCLUB', 'Golf Club', -1, 0, 1, 1),
('WEAPON_GRENADE', 'Grenade', -1, 0, 1, 1),
('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', -1, 0, 1, 1),
('WEAPON_GUSENBERG', 'Gusenberg', -1, 0, 1, 1),
('WEAPON_HAMMER', 'Hammer', -1, 0, 1, 1),
('WEAPON_HANDCUFFS', 'Handcuffs', -1, 0, 1, 1),
('WEAPON_HATCHET', 'Hatchet', -1, 0, 1, 1),
('WEAPON_HEAVYPISTOL', 'Heavy Pistol', -1, 0, 1, 1),
('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', -1, 0, 1, 1),
('WEAPON_HEAVYSNIPER', 'Heavy Sniper', -1, 0, 1, 1),
('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', -1, 0, 1, 1),
('WEAPON_KNIFE', 'Knife', -1, 0, 1, 1),
('WEAPON_KNUCKLE', 'Knuckle Dusters ', -1, 0, 1, 1),
('WEAPON_MACHETE', 'Machete', -1, 0, 1, 1),
('WEAPON_MACHINEPISTOL', 'Machine Pistol', -1, 0, 1, 1),
('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', -1, 0, 1, 1),
('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', -1, 0, 1, 1),
('WEAPON_MG', 'MG', -1, 0, 1, 1),
('WEAPON_MICROSMG', 'Micro SMG', -1, 0, 1, 1),
('WEAPON_MINIGUN', 'Minigun', -1, 0, 1, 1),
('WEAPON_MINISMG', 'Mini SMG', -1, 0, 1, 1),
('WEAPON_MOLOTOV', 'Molotov', -1, 0, 1, 1),
('WEAPON_MUSKET', 'Musket', -1, 0, 1, 1),
('WEAPON_NIGHTSTICK', 'Police Baton', -1, 0, 1, 1),
('WEAPON_PETROLCAN', 'Petrol Can', -1, 0, 1, 1),
('WEAPON_PIPEBOMB', 'Pipe Bomb', -1, 0, 1, 1),
('WEAPON_PISTOL', 'Pistol', -1, 0, 1, 1),
('WEAPON_PISTOL50', 'Police .50', -1, 0, 1, 1),
('WEAPON_POOLCUE', 'Pool Cue', -1, 0, 1, 1),
('WEAPON_PROXMINE', 'Proximity Mine', -1, 0, 1, 1),
('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', -1, 0, 1, 1),
('WEAPON_RAILGUN', 'Rail Gun', -1, 0, 1, 1),
('WEAPON_REVOLVER', 'Revolver', -1, 0, 1, 1),
('WEAPON_RPG', 'RPG', -1, 0, 1, 1),
('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', -1, 0, 1, 1),
('WEAPON_SMG', 'SMG', -1, 0, 1, 1),
('WEAPON_SMOKEGRENADE', 'Smoke Gernade', -1, 0, 1, 1),
('WEAPON_SNIPERRIFLE', 'Sniper Rifle', -1, 0, 1, 1),
('WEAPON_SNOWBALL', 'Snow Ball', -1, 0, 1, 1),
('WEAPON_SNSPISTOL', 'SNS Pistol', -1, 0, 1, 1),
('WEAPON_SPECIALCARBINE', 'Special Rifle', -1, 0, 1, 1),
('WEAPON_STICKYBOMB', 'Sticky Bombs', -1, 0, 1, 1),
('WEAPON_STINGER', 'Stinger', -1, 0, 1, 1),
('WEAPON_STUNGUN', 'Police Taser', -1, 0, 1, 1),
('WEAPON_SWITCHBLADE', 'Switch Blade', -1, 0, 1, 1),
('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', -1, 0, 1, 1),
('WEAPON_WRENCH', 'Wrench', -1, 0, 1, 1),
('wood', 'Bois', -1, 0, 1, 1),
('wool', 'Laine', -1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('fisherman', 'Pecanje', 0),
('fueler', 'Rafinerija', 0),
('kfc', 'Kfc', 0),
('lumberjack', 'Drvoseca', 0),
('miner', 'Rudnik', 0),
('police', 'Policija', 0),
('reporter', 'Novinarstvo', 0),
('secworker', 'Sigurnosne kamere', 1),
('slaughterer', 'Mesar', 0),
('tailor', 'Krojac', 0),
('technician', 'Elektricar', 0),
('unemployed', 'Nezaposlen', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Socijala', 200, '{}', '{}'),
(45, 'lumberjack', 0, 'employee', 'Drvoseca', 0, '{}', '{}'),
(46, 'fisherman', 0, 'employee', 'Pecaros', 0, '{}', '{}'),
(47, 'fueler', 0, 'employee', 'Rafinericar', 0, '{}', '{}'),
(48, 'reporter', 0, 'employee', 'Novinar', 0, '{}', '{}'),
(49, 'tailor', 0, 'employee', 'Krojac', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(50, 'miner', 0, 'employee', 'Rudar', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(51, 'slaughterer', 0, 'employee', 'Mesar', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(52, 'technician', 0, 'worker', 'Elektricar', 200, '{}', '{}'),
(53, 'technician', 1, 'boss', 'Sef ', 300, '{}', '{}'),
(54, 'secworker', 0, 'recruit', 'Radnik', 0, '', ''),
(55, 'secworker', 1, 'boss', 'Sef', 0, '', ''),
(68, 'kfc', 0, 'recruit', 'Radnik', 300, '{}', '{}'),
(69, 'kfc', 1, 'employed', 'Menadzer', 300, '{}', '{}'),
(70, 'kfc', 2, 'viceboss', 'Zamenik', 500, '{}', '{}'),
(71, 'kfc', 3, 'boss', 'Sef', 600, '{}', '{}'),
(72, 'police', 0, 'recruit', 'Kadet', 20, '{}', '{}'),
(73, 'police', 1, 'officer', 'Policajac', 40, '{}', '{}'),
(74, 'police', 2, 'sergeant', 'Porucnik', 60, '{}', '{}'),
(75, 'police', 3, 'lieutenant', 'Narednik', 70, '{}', '{}'),
(76, 'police', 4, 'boss', 'Nacelnik', 80, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jsfour_atm`
--

CREATE TABLE `jsfour_atm` (
  `identifier` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL DEFAULT 1111
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jsfour_atm`
--

INSERT INTO `jsfour_atm` (`identifier`, `account`, `pincode`) VALUES
('steam:11000014577371f', '222511034', 1111),
('steam:110000146632a0f', '323466418', 1111),
('steam:110000146930a03', '737424982', 1111),
('steam:110000118f9c788', '822989554', 1111),
('steam:1100001035697ce', '670969998', 1111);

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion');

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(2, 'LowEndApartment', 562500, 0, 'steam:110000118f9c788');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `security` int(1) NOT NULL DEFAULT 0 COMMENT 'Alarm system state',
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `garage` varchar(200) COLLATE utf8mb4_bin DEFAULT 'Glavna',
  `gepek` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `security`, `plate`, `vehicle`, `type`, `garage`, `gepek`, `job`, `stored`) VALUES
('steam:110000146930a03', 0, 'AA 8509', '{\"modTurbo\":false,\"pearlescentColor\":29,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"model\":493030188,\"modEngineBlock\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modRoof\":-1,\"modLivery\":-1,\"modEngine\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":0,\"color2\":0,\"modTrimB\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"dirtLevel\":10.0,\"bodyHealth\":1000.0,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"plateIndex\":4,\"wheels\":3,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"windowTint\":-1,\"engineHealth\":1000.0,\"modTransmission\":-1,\"modTrunk\":-1,\"extras\":[],\"plate\":\"AA 8509\",\"fuelLevel\":70.0,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1,\"color1\":29,\"modExhaust\":-1,\"modFrame\":-1,\"modFrontWheels\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:11000014577371f', 0, 'AI 9019', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":-1,\"fuelLevel\":65.0,\"modRightFender\":-1,\"model\":-189485405,\"color1\":134,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[false,false,false,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":999.25,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":0,\"dirtLevel\":9.0,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":0,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"color2\":134,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":999.5,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":{\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"1\":true,\"6\":true},\"modStruts\":-1,\"doors\":[false,false,false,false,false,false],\"plate\":\"AI 9019\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:110000146632a0f', 0, 'BU 1970', '{\"modTurbo\":false,\"pearlescentColor\":63,\"modBackWheels\":-1,\"modSuspension\":-1,\"model\":980885719,\"modEngineBlock\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modEngine\":-1,\"bodyHealth\":1000.0,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modBrakes\":-1,\"dirtLevel\":6.0,\"modSeats\":-1,\"modSpeakers\":-1,\"color1\":63,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"wheels\":0,\"plateIndex\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"engineHealth\":1000.0,\"modSideSkirt\":-1,\"modTrunk\":-1,\"extras\":{\"2\":true},\"plate\":\"BU 1970\",\"fuelLevel\":65.0,\"modVanityPlate\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modRoof\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"color2\":70}', 'car', 'Glavna', NULL, NULL, 0),
('steam:11000014577371f', 0, 'BW 6130', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":2,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":-1,\"fuelLevel\":65.0,\"modRightFender\":-1,\"model\":-2069035003,\"color1\":147,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":997.375,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":4,\"dirtLevel\":3.5,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"color2\":2,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":998.25,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":{\"10\":false,\"1\":true,\"2\":false,\"3\":false},\"modStruts\":-1,\"doors\":[false,false,false,false,false,false],\"plate\":\"BW 6130\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":3,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:11000014577371f', 0, 'CB 9870', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":0,\"fuelLevel\":80.0,\"modRightFender\":-1,\"model\":-520214134,\"color1\":1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":839.485595703125,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":0,\"dirtLevel\":7.4,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":0,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"color2\":27,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":756.2980346679688,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":{\"2\":true,\"1\":false},\"modStruts\":-1,\"doors\":[false,false,false,false,false,false],\"plate\":\"CB 9870\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":3,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'CC 5189', '{\"model\":242156012,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"modEngine\":-1,\"modGrille\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"color2\":64,\"modAPlate\":-1,\"modLivery\":-1,\"pearlescentColor\":87,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"wheels\":7,\"extras\":{\"1\":false},\"color1\":64,\"wheelColor\":156,\"modFender\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modHorns\":-1,\"modTransmission\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"plate\":\"CC 5189\",\"modWindows\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"dirtLevel\":8.0,\"modDashboard\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modFrontWheels\":-1,\"fuelLevel\":65.0,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modArmor\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'DR 8118', '{\"model\":-716699448,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"modEngine\":-1,\"modGrille\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"color2\":2,\"modAPlate\":-1,\"modLivery\":0,\"pearlescentColor\":134,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"wheels\":0,\"extras\":{\"12\":false,\"11\":false},\"color1\":2,\"wheelColor\":156,\"modFender\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modHorns\":-1,\"modTransmission\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"plate\":\"DR 8118\",\"modWindows\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"dirtLevel\":5.0,\"modDashboard\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modFrontWheels\":-1,\"fuelLevel\":65.0,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modArmor\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'DU 2742', '{\"modWindows\":-1,\"pearlescentColor\":0,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"wheelColor\":121,\"extras\":[],\"modSideSkirt\":-1,\"engineHealth\":1000.0,\"modBrakes\":-1,\"modGrille\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modDashboard\":-1,\"modHydrolic\":-1,\"model\":1924372706,\"modRightFender\":-1,\"color1\":74,\"modRearBumper\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modEngine\":-1,\"modFrontBumper\":-1,\"modHood\":-1,\"plate\":\"DU 2742\",\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modSteeringWheel\":-1,\"fuelLevel\":65.0,\"modArmor\":-1,\"modLivery\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modRoof\":-1,\"dirtLevel\":8.0,\"modArchCover\":-1,\"modXenon\":false,\"modStruts\":-1,\"color2\":74,\"modTransmission\":-1,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"wheels\":1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"plateIndex\":3,\"modDial\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:11000013e33a9fd', 0, 'DZONI', '{\"fuelLevel\":41.00199890136719,\"windows\":[false,false,false,false,false,false,false,false,false,false,false,false,false],\"modPlateHolder\":-1,\"modSeats\":-1,\"plateIndex\":1,\"plate\":\"DZONI\",\"modRightFender\":-1,\"extras\":[],\"modRearBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"engineHealth\":995.0,\"modHydrolic\":-1,\"modFrontWheels\":21,\"neonEnabled\":[1,1,1,1],\"modSmokeEnabled\":1,\"modBrakes\":2,\"wheels\":0,\"modFender\":-1,\"model\":-1071380347,\"wheelColor\":12,\"modShifterLeavers\":-1,\"color1\":39,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modArmor\":4,\"color2\":12,\"modDial\":-1,\"bodyHealth\":992.5,\"modOrnaments\":-1,\"dirtLevel\":0.3,\"modFrontBumper\":-1,\"modTransmission\":2,\"modWindows\":-1,\"modAPlate\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modTank\":-1,\"modStruts\":-1,\"modTrimA\":-1,\"modEngine\":3,\"modDashboard\":-1,\"modBackWheels\":-1,\"modVanityPlate\":-1,\"modGrille\":-1,\"neonColor\":[255,0,0],\"doors\":[false,false,false,false,false,false],\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"pearlescentColor\":0,\"tyreSmokeColor\":[255,0,0],\"modTrimB\":-1,\"modEngineBlock\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modExhaust\":-1,\"modXenon\":1,\"windowTint\":1,\"modHorns\":44,\"modHood\":-1,\"modSuspension\":4}', 'car', 'Garaza A', NULL, NULL, 1),
('steam:11000014577371f', 0, 'ET 1288', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":-1,\"fuelLevel\":80.0,\"modRightFender\":-1,\"model\":-2006731729,\"color1\":112,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":895.5716552734375,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":0,\"dirtLevel\":7.2,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":112,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"color2\":2,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":882.0559692382813,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":[],\"modStruts\":-1,\"doors\":[false,false,false,false,false,false],\"plate\":\"ET 1288\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":3,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'GL 6762', '{\"modWindows\":-1,\"pearlescentColor\":0,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"wheelColor\":0,\"extras\":[],\"modSideSkirt\":-1,\"engineHealth\":1000.0,\"modBrakes\":-1,\"modGrille\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modDashboard\":-1,\"modHydrolic\":-1,\"model\":-932637740,\"modRightFender\":-1,\"color1\":134,\"modRearBumper\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modEngine\":-1,\"modFrontBumper\":-1,\"modHood\":-1,\"plate\":\"GL 6762\",\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modSteeringWheel\":-1,\"fuelLevel\":80.0,\"modArmor\":-1,\"modLivery\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modRoof\":-1,\"dirtLevel\":7.0,\"modArchCover\":-1,\"modXenon\":false,\"modStruts\":-1,\"color2\":134,\"modTransmission\":-1,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"wheels\":0,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"plateIndex\":4,\"modDial\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000118f9c788', 0, 'GN 8324', '{\"modTurbo\":false,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"model\":0,\"modEngineBlock\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[0,0,0],\"modDial\":-1,\"modHorns\":-1,\"modLivery\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":0,\"bodyHealth\":1000.0,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"modBrakes\":-1,\"dirtLevel\":0.0,\"modRoof\":-1,\"modSpeakers\":-1,\"extras\":[],\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modBackWheels\":-1,\"wheels\":0,\"plateIndex\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modXenon\":false,\"engineHealth\":1000.0,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"neonColor\":[0,0,0],\"plate\":\"GN 8324\",\"fuelLevel\":0.0,\"modVanityPlate\":-1,\"color2\":0,\"modAerials\":-1,\"color1\":0,\"modSpoilers\":-1,\"modFrame\":-1,\"modStruts\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:11000010004a2b2', 0, 'IAS6450', '{\"color2\":67,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"tyres\":[false,false,false,false,false,false,false],\"dirtLevel\":9.0,\"modRearBumper\":-1,\"modArchCover\":-1,\"modLivery\":3,\"modExhaust\":-1,\"engineHealth\":713.4698486328125,\"windows\":[],\"extras\":{\"1\":true},\"modDial\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"pearlescentColor\":67,\"modRightFender\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modHorns\":-1,\"wheels\":0,\"model\":-216150906,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"modStruts\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"fuelLevel\":46.2,\"wheelColor\":8,\"modSteeringWheel\":-1,\"color1\":68,\"vehicleHeadLight\":255,\"modSmokeEnabled\":1,\"modSeats\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"modBrakes\":-1,\"modFrontBumper\":-1,\"doors\":[false,false,false,false,false,false],\"modAerials\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"bodyHealth\":957.1190795898438,\"modXenon\":false,\"modHood\":-1,\"modTank\":-1,\"modTrunk\":-1,\"modWindows\":-1,\"plate\":\"IAS6450\",\"modBackWheels\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1}', 'car', 'pauk', NULL, NULL, 1),
('steam:110000118f9c788', 0, 'IW 2885', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"bodyHealth\":999.0,\"modVanityPlate\":-1,\"color1\":1,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":4,\"modTurbo\":false,\"modSpoilers\":-1,\"wheels\":0,\"modBrakes\":-1,\"extras\":[],\"modFrontBumper\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"model\":2099088182,\"modSeats\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modDial\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modLivery\":0,\"color2\":112,\"modSideSkirt\":-1,\"modArmor\":-1,\"modEngine\":-1,\"dirtLevel\":5.0,\"modBackWheels\":-1,\"modFender\":-1,\"modGrille\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"modWindows\":-1,\"engineHealth\":999.6,\"modPlateHolder\":-1,\"modTank\":-1,\"plate\":\"IW 2885\",\"modHorns\":-1,\"wheelColor\":1,\"modAerials\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'KS 0021', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"dirtLevel\":11.0,\"modBackWheels\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":1,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":0,\"pearlescentColor\":4,\"modSpoilers\":-1,\"modWindows\":-1,\"wheelColor\":156,\"modTurbo\":false,\"wheels\":0,\"extras\":[],\"modEngineBlock\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"model\":1897651510,\"modArchCover\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"color2\":1,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modTank\":-1,\"plate\":\"KS 0021\",\"modHorns\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'MU 6375', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"dirtLevel\":5.0,\"modBackWheels\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":112,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":0,\"pearlescentColor\":0,\"modSpoilers\":-1,\"modWindows\":-1,\"wheelColor\":112,\"modTurbo\":false,\"wheels\":3,\"extras\":[],\"modEngineBlock\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"model\":-2006731729,\"modArchCover\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":80.0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"color2\":2,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modTank\":-1,\"plate\":\"MU 6375\",\"modHorns\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'MW 7639', '{\"modWindows\":-1,\"pearlescentColor\":156,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"wheelColor\":4,\"extras\":[],\"modSideSkirt\":-1,\"engineHealth\":1000.0,\"modBrakes\":-1,\"modGrille\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modDashboard\":-1,\"modHydrolic\":-1,\"model\":-143695728,\"modRightFender\":-1,\"color1\":3,\"modRearBumper\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modEngine\":-1,\"modFrontBumper\":-1,\"modHood\":-1,\"plate\":\"MW 7639\",\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modSteeringWheel\":-1,\"fuelLevel\":65.0,\"modArmor\":-1,\"modLivery\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modRoof\":-1,\"dirtLevel\":5.0,\"modArchCover\":-1,\"modXenon\":false,\"modStruts\":-1,\"color2\":28,\"modTransmission\":-1,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"wheels\":7,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"plateIndex\":0,\"modDial\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000118f9c788', 0, 'MY 8643', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0,\"modVanityPlate\":-1,\"color1\":17,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":4,\"modTurbo\":false,\"modSpoilers\":-1,\"wheels\":0,\"modBrakes\":-1,\"extras\":[],\"modFrontBumper\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"model\":2093958905,\"modSeats\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modDial\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modLivery\":0,\"color2\":17,\"modSideSkirt\":-1,\"modArmor\":-1,\"modEngine\":-1,\"dirtLevel\":5.0,\"modBackWheels\":-1,\"modFender\":-1,\"modGrille\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"modWindows\":-1,\"engineHealth\":1000.0,\"modPlateHolder\":-1,\"modTank\":-1,\"plate\":\"MY 8643\",\"modHorns\":-1,\"wheelColor\":0,\"modAerials\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'ND 4240', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"dirtLevel\":4.0,\"modBackWheels\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":12,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":0,\"pearlescentColor\":12,\"modSpoilers\":-1,\"modWindows\":-1,\"wheelColor\":156,\"modTurbo\":false,\"wheels\":7,\"extras\":{\"1\":true},\"modEngineBlock\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"model\":350464372,\"modArchCover\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"color2\":92,\"bodyHealth\":997.9,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":996.8,\"modFrontWheels\":-1,\"modTank\":-1,\"plate\":\"ND 4240\",\"modHorns\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:11000010004a2b2', 0, 'OCH3382', '{\"color2\":67,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"wheels\":0,\"modSeats\":-1,\"modTrimB\":-1,\"model\":-216150906,\"modOrnaments\":-1,\"modTurbo\":false,\"modFrame\":-1,\"dirtLevel\":7.0,\"modLivery\":0,\"modWindows\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modFrontBumper\":-1,\"wheelColor\":8,\"modAirFilter\":-1,\"modStruts\":-1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"fuelLevel\":65.0,\"modExhaust\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"color1\":68,\"modXenon\":false,\"modSmokeEnabled\":false,\"windowTint\":-1,\"extras\":{\"1\":false},\"plate\":\"OCH3382\",\"modGrille\":-1,\"modHood\":-1,\"modDashboard\":-1,\"plateIndex\":4,\"modBrakes\":-1,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modFender\":-1,\"engineHealth\":1000.0,\"bodyHealth\":1000.0,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"pearlescentColor\":67,\"modDial\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1}', 'car', 'pauk', NULL, NULL, 1),
('steam:110000146632a0f', 0, 'OK 4532', '{\"modTurbo\":false,\"pearlescentColor\":0,\"modBackWheels\":-1,\"modSuspension\":-1,\"model\":-1659548258,\"modEngineBlock\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modEngine\":-1,\"bodyHealth\":1000.0,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":0,\"modTrimB\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modBrakes\":-1,\"dirtLevel\":9.0,\"modSeats\":-1,\"modSpeakers\":-1,\"color1\":134,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"wheels\":0,\"plateIndex\":4,\"modFrontBumper\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"engineHealth\":1000.0,\"modSideSkirt\":-1,\"modTrunk\":-1,\"extras\":[],\"plate\":\"OK 4532\",\"fuelLevel\":65.0,\"modVanityPlate\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modRoof\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"color2\":134}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000118f9c788', 0, 'ON 8952', '{\"modTurbo\":false,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"model\":980885719,\"modEngineBlock\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"plateIndex\":0,\"modLivery\":-1,\"modEngine\":-1,\"plate\":\"ON 8952\",\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"pearlescentColor\":63,\"modHorns\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modGrille\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modBrakes\":-1,\"dirtLevel\":3.0,\"modAPlate\":-1,\"modSpeakers\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modPlateHolder\":-1,\"color1\":63,\"wheels\":0,\"color2\":70,\"modFrontBumper\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"engineHealth\":1000.0,\"modXenon\":false,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"fuelLevel\":65.0,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modAerials\":-1,\"modRoof\":-1,\"extras\":{\"2\":false},\"modFrame\":-1,\"modStruts\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:11000014577371f', 0, 'PC 5170', '{\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modBackWheels\":-1,\"pearlescentColor\":6,\"modHood\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"wheelColor\":0,\"doors\":[false,false,false,false,false,false],\"modSeats\":-1,\"dirtLevel\":4.4,\"modFender\":-1,\"modOrnaments\":-1,\"engineHealth\":999.625,\"modTank\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"color1\":0,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"windows\":[1,false,false,false,false,false,false,false,false,false,false,false,false],\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modAerials\":-1,\"model\":986848968,\"modAirFilter\":-1,\"fuelLevel\":65.0,\"wheels\":7,\"modLivery\":-1,\"color2\":0,\"modArmor\":-1,\"modTrunk\":-1,\"extras\":{\"4\":true,\"5\":true,\"2\":false,\"3\":false,\"1\":true},\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"bodyHealth\":999.75,\"windowTint\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"plate\":\"PC 5170\",\"modHorns\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modSpeakers\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:11000014577371f', 0, 'QA 5319', '{\"modTrunk\":-1,\"wheels\":0,\"color1\":1,\"modFrontWheels\":-1,\"pearlescentColor\":5,\"modStruts\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"dirtLevel\":9.8,\"modHood\":-1,\"plateIndex\":0,\"modTank\":-1,\"modBrakes\":-1,\"bodyHealth\":995.75,\"engineHealth\":993.625,\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"model\":970598228,\"modArmor\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"color2\":1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,1,false],\"modXenon\":false,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modExhaust\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"plate\":\"QA 5319\",\"modAPlate\":-1,\"fuelLevel\":65.0,\"modSeats\":-1,\"extras\":{\"10\":false,\"12\":false},\"modTurbo\":false,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modDial\":-1,\"modFender\":-1,\"windowTint\":-1}', 'car', 'Autopijaca', NULL, NULL, 0),
('steam:110000146930a03', 0, 'QB 1897', '{\"modTurbo\":false,\"pearlescentColor\":0,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"model\":-532475078,\"modEngineBlock\":-1,\"modXenon\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modRoof\":-1,\"modLivery\":-1,\"modEngine\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"color2\":0,\"modTrimB\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"dirtLevel\":7.1,\"bodyHealth\":975.4,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"plateIndex\":1,\"wheels\":0,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"windowTint\":-1,\"engineHealth\":963.1,\"modTransmission\":-1,\"modTrunk\":-1,\"extras\":{\"1\":false},\"plate\":\"QB 1897\",\"fuelLevel\":85.0,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1,\"color1\":0,\"modExhaust\":-1,\"modFrame\":-1,\"modFrontWheels\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000140f6a92c', 0, 'QI 2334', '{\"modArmor\":4,\"modXenon\":1,\"engineHealth\":1000.0,\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"color1\":21,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"plateIndex\":1,\"wheels\":0,\"windowTint\":1,\"plate\":\"QI 2334\",\"modDial\":-1,\"modBrakes\":2,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"dirtLevel\":0.9,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modHorns\":-1,\"fuelLevel\":64.96400451660156,\"modEngineBlock\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modEngine\":3,\"modTrimA\":-1,\"windows\":[1,1,1,false,false,false,false,false,false,false,false,false,false],\"doors\":[false,false,false,false,false,false],\"pearlescentColor\":70,\"modGrille\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modTurbo\":1,\"extras\":[],\"modTransmission\":2,\"modWindows\":-1,\"modArchCover\":-1,\"modLivery\":-1,\"modTank\":-1,\"modFrontWheels\":8,\"modSideSkirt\":-1,\"color2\":119,\"modSuspension\":3,\"modHood\":-1,\"wheelColor\":12,\"modHydrolic\":-1,\"modTrimB\":-1,\"model\":-2085078185,\"modSpoilers\":-1,\"modFender\":-1,\"modStruts\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modExhaust\":-1}', 'car', 'Garaza A', NULL, NULL, 1),
('steam:110000141f40922', 0, 'QJA0785', '{\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"wheels\":7,\"modEngineBlock\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"color2\":112,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"modLivery\":-1,\"plate\":\"QJA0785\",\"color1\":112,\"modBrakes\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"bodyHealth\":1000.0,\"modTrimB\":-1,\"modStruts\":-1,\"model\":836213613,\"engineHealth\":1000.0,\"modEngine\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"wheelColor\":0,\"modTurbo\":false,\"modSmokeEnabled\":false,\"modBackWheels\":-1,\"plateIndex\":5,\"modExhaust\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modXenon\":false,\"modTank\":-1,\"modTrunk\":-1,\"modTrimA\":-1,\"pearlescentColor\":112,\"extras\":[],\"modRightFender\":-1,\"fuelLevel\":69.8,\"dirtLevel\":8.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSeats\":-1}', 'car', 'pauk', NULL, NULL, 1),
('steam:1100001035697ce', 0, 'QU 1584', '{\"modTurbo\":false,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"model\":-984938540,\"modEngineBlock\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modXenon\":false,\"modLivery\":-1,\"color2\":1,\"pearlescentColor\":4,\"bodyHealth\":1000.0,\"modSteeringWheel\":-1,\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"modTrimB\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"dirtLevel\":5.0,\"modSeats\":-1,\"modSpeakers\":-1,\"extras\":[],\"modStruts\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"wheels\":3,\"modGrille\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modArchCover\":-1,\"engineHealth\":1000.0,\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"plate\":\"QU 1584\",\"fuelLevel\":65.0,\"modVanityPlate\":-1,\"modEngine\":-1,\"modAerials\":-1,\"color1\":1,\"modOrnaments\":-1,\"modFrame\":-1,\"modHorns\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'RB 5234', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"dirtLevel\":5.0,\"modBackWheels\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":2,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":1,\"pearlescentColor\":111,\"modSpoilers\":-1,\"modWindows\":-1,\"wheelColor\":89,\"modTurbo\":false,\"wheels\":0,\"extras\":{\"1\":false},\"modEngineBlock\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"model\":1093697054,\"modArchCover\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":85.0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"color2\":2,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modTank\":-1,\"plate\":\"RB 5234\",\"modHorns\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000146632a0f', 0, 'SO 0034', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"modRearBumper\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"color1\":4,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":0,\"modXenon\":false,\"modSpoilers\":-1,\"extras\":{\"1\":false},\"modSideSkirt\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"model\":-193081966,\"modEngineBlock\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modArchCover\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":60.0,\"modPlateHolder\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modLivery\":-1,\"color2\":3,\"wheels\":0,\"modSeats\":-1,\"modEngine\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modFender\":-1,\"modGrille\":-1,\"modDial\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"engineHealth\":1000.0,\"modSmokeEnabled\":false,\"modTank\":-1,\"plate\":\"SO 0034\",\"modTrimB\":-1,\"pearlescentColor\":111,\"modTrunk\":-1,\"dirtLevel\":10.0,\"modTurbo\":false,\"modWindows\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"bodyHealth\":1000.0,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000141d3566f', 0, 'TA 1221', '{\"modVanityPlate\":-1,\"modSuspension\":-1,\"modLivery\":4,\"modTrimA\":-1,\"modFrame\":-1,\"modDial\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":9.1,\"modSteeringWheel\":-1,\"color2\":67,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"model\":-216150906,\"windowTint\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"color1\":68,\"modAerials\":-1,\"wheelColor\":8,\"bodyHealth\":1000.0,\"modArchCover\":-1,\"doors\":[false,false,false,false,false,false],\"modEngine\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"wheels\":0,\"engineHealth\":1000.0,\"modTrunk\":-1,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"extras\":{\"1\":false},\"windows\":[1,false,false,false,false,false,false,false,false,false,false,false,false],\"modTank\":-1,\"modStruts\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":67,\"modArmor\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modSmokeEnabled\":1,\"modGrille\":-1,\"modBackWheels\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"modWindows\":-1,\"plate\":\"TA 1221\",\"fuelLevel\":58.34999847412109}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'UH 0705', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"dirtLevel\":6.0,\"modBackWheels\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":4,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":0,\"pearlescentColor\":4,\"modSpoilers\":-1,\"modWindows\":-1,\"wheelColor\":0,\"modTurbo\":false,\"wheels\":0,\"extras\":[],\"modEngineBlock\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"model\":-1071770374,\"modArchCover\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modLivery\":0,\"color2\":38,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modTank\":-1,\"plate\":\"UH 0705\",\"modHorns\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000146632a0f', 0, 'UQ 5877', '{\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modBackWheels\":-1,\"pearlescentColor\":111,\"modHood\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"wheelColor\":156,\"doors\":[false,false,false,false,false,false],\"modSeats\":-1,\"dirtLevel\":7.1,\"modFender\":-1,\"modOrnaments\":-1,\"engineHealth\":997.75,\"modTank\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"color1\":4,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"windows\":[1,false,false,false,false,false,false,false,false,false,false,false,false],\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modAerials\":-1,\"model\":-193081966,\"modAirFilter\":-1,\"fuelLevel\":60.0,\"wheels\":0,\"modLivery\":-1,\"color2\":3,\"modArmor\":-1,\"modTrunk\":-1,\"extras\":{\"1\":false},\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"bodyHealth\":998.25,\"windowTint\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"plate\":\"UQ 5877\",\"modHorns\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modSpeakers\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:11000014577371f', 0, 'VY 7409', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":-1,\"fuelLevel\":65.0,\"modRightFender\":-1,\"model\":1197361861,\"color1\":134,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[1,false,false,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":957.7598266601563,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":0,\"dirtLevel\":6.9,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":0,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"color2\":134,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":816.50927734375,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":{\"1\":true},\"modStruts\":-1,\"doors\":[false,false,false,false,false,false],\"plate\":\"VY 7409\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:11000014577371f', 0, 'VZ 2486', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":7,\"fuelLevel\":65.0,\"modRightFender\":-1,\"model\":-216150906,\"color1\":68,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[1,false,false,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":1000.0,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":67,\"dirtLevel\":5.1,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":8,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"color2\":67,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":999.5,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":{\"1\":false},\"modStruts\":-1,\"doors\":[false,false,false,false,false,false],\"plate\":\"VZ 2486\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'WT 8243', '{\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"dirtLevel\":7.0,\"modBackWheels\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":12,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"plateIndex\":0,\"pearlescentColor\":156,\"modSpoilers\":-1,\"modWindows\":-1,\"wheelColor\":156,\"modTurbo\":false,\"wheels\":6,\"extras\":[],\"modEngineBlock\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"model\":1744543800,\"modArchCover\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"color2\":55,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modTank\":-1,\"plate\":\"WT 8243\",\"modHorns\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modSpeakers\":-1}', 'car', 'Glavna', NULL, NULL, 0);
INSERT INTO `owned_vehicles` (`owner`, `security`, `plate`, `vehicle`, `type`, `garage`, `gepek`, `job`, `stored`) VALUES
('steam:11000014577371f', 0, 'XH 5870', '{\"modBrakes\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modLivery\":-1,\"fuelLevel\":65.0,\"modRightFender\":-1,\"model\":980885719,\"color1\":63,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modHood\":-1,\"modSeats\":-1,\"windows\":[false,1,1,false,false,false,false,false,false,false,false,false,false],\"modFender\":-1,\"engineHealth\":999.25,\"modTank\":-1,\"modXenon\":false,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":63,\"dirtLevel\":10.3,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"color2\":70,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"bodyHealth\":915.451171875,\"modAirFilter\":-1,\"modWindows\":-1,\"extras\":{\"2\":false},\"modStruts\":-1,\"doors\":[false,false,false,false,1,false],\"plate\":\"XH 5870\",\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"modHorns\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:11000014577371f', 0, 'XQ 5301', '{\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modBackWheels\":-1,\"pearlescentColor\":112,\"modHood\":-1,\"plateIndex\":4,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modDial\":-1,\"modSmokeEnabled\":1,\"wheelColor\":0,\"doors\":[false,false,false,false,false,false],\"modSeats\":-1,\"dirtLevel\":5.6,\"modFender\":-1,\"modOrnaments\":-1,\"engineHealth\":996.4146118164063,\"modTank\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"color1\":17,\"modRoof\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"windows\":[1,false,false,false,false,false,false,false,false,false,false,false,false],\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modAerials\":-1,\"model\":2093958905,\"modAirFilter\":-1,\"fuelLevel\":65.0,\"wheels\":0,\"modLivery\":0,\"color2\":17,\"modArmor\":-1,\"modTrunk\":-1,\"extras\":[],\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"bodyHealth\":996.5239868164063,\"windowTint\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"plate\":\"XQ 5301\",\"modHorns\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modStruts\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modSpeakers\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:1100001035697ce', 0, 'YY 6638', '{\"modTurbo\":false,\"modTransmission\":-1,\"modBackWheels\":-1,\"tyres\":[false,false,false,false,false,false,false],\"windowTint\":-1,\"modHood\":-1,\"modSeats\":-1,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"engineHealth\":710.3110961914063,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"plate\":\"YY 6638\",\"modRoof\":-1,\"pearlescentColor\":0,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"color2\":134,\"modSteeringWheel\":-1,\"modAirFilter\":-1,\"wheelColor\":0,\"modExhaust\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"modAPlate\":-1,\"dirtLevel\":8.1,\"model\":-1296077726,\"plateIndex\":4,\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"wheels\":0,\"modHorns\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modEngine\":-1,\"bodyHealth\":717.3666381835938,\"windows\":[1,false,1,false,false,false,false,false,false,false,false,false,false],\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modSpoilers\":-1,\"fuelLevel\":65.0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modAerials\":-1,\"color1\":134,\"extras\":[],\"modFrame\":-1,\"modOrnaments\":-1}', 'car', 'Glavna2', NULL, NULL, 0),
('steam:110000142acb12e', 0, 'YZE4857', '{\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"modSteeringWheel\":-1,\"plateIndex\":0,\"dirtLevel\":4.0,\"bodyHealth\":1000.0,\"wheelColor\":0,\"plate\":\"YZE4857\",\"modTrimA\":-1,\"wheels\":0,\"modTrunk\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modSpeakers\":-1,\"engineHealth\":1000.0,\"modRightFender\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modSeats\":-1,\"color1\":22,\"modFrame\":-1,\"pearlescentColor\":22,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modVanityPlate\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"modArmor\":-1,\"fuelLevel\":55.7,\"modDial\":-1,\"modRearBumper\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"model\":-127896429,\"modBrakes\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"modTrimB\":-1,\"modFender\":-1,\"extras\":[],\"modHood\":-1,\"modTransmission\":-1,\"modTurbo\":false,\"color2\":22,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modEngine\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1}', 'car', 'pauk', NULL, NULL, 1),
('steam:110000146632a0f', 0, 'ZY 9875', '{\"modTurbo\":false,\"pearlescentColor\":2,\"modBackWheels\":-1,\"modSuspension\":-1,\"model\":-101696514,\"modEngineBlock\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modHood\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modShifterLeavers\":-1,\"modLivery\":0,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modEngine\":-1,\"bodyHealth\":1000.0,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modBrakes\":-1,\"dirtLevel\":9.0,\"modSeats\":-1,\"modSpeakers\":-1,\"color1\":2,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"wheels\":7,\"plateIndex\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"engineHealth\":1000.0,\"modSideSkirt\":-1,\"modTrunk\":-1,\"extras\":{\"2\":false,\"1\":false},\"plate\":\"ZY 9875\",\"fuelLevel\":65.0,\"modVanityPlate\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modRoof\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"color2\":70}', 'car', 'Glavna', NULL, NULL, 0),
('steam:110000141679811', 0, 'jagodica ', '{\"modEngineBlock\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modAerials\":-1,\"bodyHealth\":1000.0,\"modLivery\":-1,\"plateIndex\":3,\"modAirFilter\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modBrakes\":-1,\"fuelLevel\":65.0,\"modSpoilers\":-1,\"pearlescentColor\":4,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"plate\":\"jagodica \",\"modHydrolic\":-1,\"dirtLevel\":2.0,\"color2\":2,\"color1\":147,\"modHorns\":-1,\"modTank\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modRoof\":-1,\"model\":-189438188,\"modAPlate\":-1,\"modSideSkirt\":-1,\"extras\":{\"1\":true},\"modEngine\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"wheels\":7,\"modShifterLeavers\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"modFender\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modSmokeEnabled\":false,\"modBackWheels\":-1,\"wheelColor\":156,\"modStruts\":-1,\"modDoorSpeaker\":-1}', 'car', 'Garaza A', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907}', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Table structure for table `qalle_brottsregister`
--

CREATE TABLE `qalle_brottsregister` (
  `id` int(255) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `securitycams`
--

CREATE TABLE `securitycams` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `camname` varchar(50) DEFAULT NULL,
  `camgroup` varchar(50) DEFAULT NULL,
  `camid` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext NOT NULL DEFAULT '0',
  `heading` longtext NOT NULL DEFAULT '0',
  `mods` varchar(200) DEFAULT '{}',
  `status` int(11) DEFAULT 1,
  `ownername` varchar(255) NOT NULL DEFAULT 'Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `wanted` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `status`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `wanted`, `phone_number`) VALUES
('steam:11000014577371f', 'license:7c4953b19c4e537068aff98a5eabbc3fc1c886de', 18490790, 'sefket', '{\"shoes_1\":0,\"moles_2\":0,\"makeup_2\":0,\"watches_2\":0,\"glasses_1\":0,\"bodyb_2\":0,\"sun_1\":0,\"helmet_1\":-1,\"chest_2\":0,\"decals_2\":0,\"blush_3\":0,\"lipstick_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"eye_color\":0,\"eyebrows_2\":0,\"sun_2\":0,\"chain_1\":0,\"makeup_3\":0,\"beard_3\":0,\"bags_2\":0,\"lipstick_4\":0,\"sex\":0,\"bags_1\":0,\"helmet_2\":0,\"ears_2\":0,\"hair_2\":0,\"beard_1\":0,\"pants_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"age_2\":0,\"age_1\":0,\"chest_1\":0,\"blemishes_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"arms_2\":0,\"bracelets_2\":0,\"makeup_4\":0,\"arms\":0,\"shoes_2\":0,\"torso_2\":0,\"eyebrows_3\":0,\"face\":0,\"beard_2\":0,\"glasses_2\":0,\"skin\":0,\"torso_1\":14,\"hair_color_2\":0,\"chest_3\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"watches_1\":-1,\"moles_1\":0,\"pants_1\":0,\"ears_1\":-1,\"mask_2\":0,\"hair_1\":0,\"blush_1\":0,\"bproof_2\":0,\"blemishes_1\":0,\"blush_2\":0,\"mask_1\":0,\"lipstick_1\":0,\"bodyb_1\":0,\"tshirt_2\":0,\"bproof_1\":0,\"beard_4\":0,\"eyebrows_1\":0,\"chain_2\":0,\"hair_color_1\":0}', 'police', 4, '[{\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"ammo\":32,\"label\":\"Pistolj\"},{\"name\":\"WEAPON_REVOLVER\",\"components\":[],\"ammo\":32,\"label\":\"Veliki revolver\"},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"ammo\":30,\"label\":\"Pumparica\"},{\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"],\"ammo\":89,\"label\":\"M4 karabin\"}]', '{\"z\":29.2,\"y\":-980.5,\"x\":-231.8}', 977674473, 0, 'superadmin', '[{\"percent\":33.21,\"val\":332100,\"name\":\"hunger\"},{\"percent\":37.4075,\"val\":374075,\"name\":\"thirst\"}]', 'Stefan', 'Stefanovic', '2000-12-30', 'm', '185', 0, NULL),
('steam:110000146632a0f', 'license:410618c7bd56e4e2d7d50cc17aa97b8b606e42b0', 6012547, 'gunramzzz', '{\"bags_1\":0,\"beard_4\":0,\"bags_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"decals_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"glasses_1\":0,\"watches_1\":-1,\"chest_2\":0,\"beard_3\":0,\"bproof_2\":0,\"bodyb_2\":0,\"hair_color_1\":0,\"age_2\":0,\"shoes_1\":25,\"blush_3\":0,\"eye_color\":0,\"chain_1\":0,\"makeup_3\":0,\"moles_2\":0,\"chest_3\":0,\"ears_1\":-1,\"lipstick_2\":0,\"hair_color_2\":0,\"eyebrows_1\":0,\"torso_2\":0,\"sun_2\":0,\"moles_1\":0,\"arms\":0,\"sex\":0,\"ears_2\":0,\"chain_2\":0,\"blemishes_2\":0,\"mask_1\":0,\"torso_1\":70,\"beard_2\":0,\"glasses_2\":0,\"lipstick_1\":0,\"beard_1\":0,\"sun_1\":0,\"chest_1\":0,\"blush_1\":0,\"hair_1\":58,\"complexion_2\":0,\"tshirt_1\":124,\"eyebrows_2\":0,\"blush_2\":0,\"arms_2\":0,\"hair_2\":0,\"bracelets_2\":0,\"pants_1\":30,\"complexion_1\":0,\"bodyb_1\":0,\"watches_2\":0,\"lipstick_3\":0,\"shoes_2\":0,\"age_1\":0,\"helmet_2\":0,\"mask_2\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"skin\":1,\"makeup_4\":0,\"face\":5,\"pants_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"decals_2\":0}', 'police', 4, '[{\"components\":[],\"name\":\"WEAPON_REVOLVER\",\"ammo\":0,\"label\":\"Veliki revolver\"},{\"components\":[\"clip_default\"],\"name\":\"WEAPON_SMG\",\"ammo\":0,\"label\":\"SMG\"},{\"components\":[],\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":1,\"label\":\"Pumparica\"},{\"components\":[\"scope_advanced\"],\"name\":\"WEAPON_HEAVYSNIPER\",\"ammo\":250,\"label\":\"Veliki snajper\"},{\"components\":[],\"name\":\"WEAPON_MINIGUN\",\"ammo\":250,\"label\":\"Minigun\"}]', '{\"x\":438.7,\"z\":25.7,\"y\":-985.0}', 5001180, 0, 'superadmin', '[{\"percent\":82.50999999999999,\"val\":825100,\"name\":\"hunger\"},{\"percent\":86.8825,\"val\":868825,\"name\":\"thirst\"}]', 'Uros', 'Ristovic', '1993-06-16', 'm', '200', 0, NULL),
('steam:110000146930a03', 'license:a8000ca49c2e6925d000fd67349cf3b71dc0c232', 117500, 'Crnogorac', '{\"complexion_2\":0,\"bodyb_1\":0,\"bags_2\":0,\"age_1\":0,\"helmet_1\":-1,\"decals_1\":0,\"makeup_2\":0,\"blemishes_1\":0,\"pants_1\":0,\"shoes_2\":0,\"watches_1\":-1,\"chest_2\":0,\"beard_3\":0,\"bproof_2\":0,\"bodyb_2\":0,\"hair_color_1\":0,\"bproof_1\":0,\"shoes_1\":0,\"blush_3\":0,\"eye_color\":0,\"lipstick_4\":0,\"makeup_3\":0,\"moles_2\":0,\"chest_3\":0,\"ears_1\":-1,\"skin\":0,\"hair_color_2\":0,\"eyebrows_1\":0,\"torso_2\":0,\"sun_2\":0,\"moles_1\":0,\"arms\":1,\"sex\":0,\"ears_2\":0,\"helmet_2\":0,\"chest_1\":0,\"mask_1\":0,\"torso_1\":4,\"hair_2\":1,\"glasses_2\":0,\"lipstick_1\":0,\"beard_1\":0,\"sun_1\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"bracelets_2\":0,\"bags_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"blush_2\":0,\"beard_4\":0,\"tshirt_2\":0,\"chain_2\":0,\"tshirt_1\":1,\"complexion_1\":0,\"arms_2\":0,\"watches_2\":0,\"lipstick_3\":0,\"glasses_1\":0,\"makeup_1\":0,\"chain_1\":0,\"mask_2\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"beard_2\":0,\"age_2\":0,\"face\":25,\"decals_2\":0,\"pants_2\":0,\"blush_1\":0,\"hair_1\":3,\"lipstick_2\":0}', 'secworker', 1, '[{\"components\":[],\"label\":\"Pumparica\",\"ammo\":15,\"name\":\"WEAPON_PUMPSHOTGUN\"}]', '{\"x\":409.4,\"z\":29.3,\"y\":-1002.6}', 1100400, 0, 'superadmin', '[{\"val\":982100,\"percent\":98.21,\"name\":\"hunger\"},{\"val\":986575,\"percent\":98.6575,\"name\":\"thirst\"}]', 'Djuro', 'Djurovic', '1990-06-18', 'm', '174', 0, NULL),
('steam:110000118f9c788', 'license:9345f3d842dd0fbd70ae5158c7114d0c9f082f37', 2984330, 'MiXon ***********', '{\"eyebrows_4\":0,\"beard_1\":0,\"pants_2\":0,\"sun_2\":0,\"blemishes_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"makeup_1\":0,\"blush_1\":0,\"decals_2\":0,\"shoes_1\":6,\"chain_1\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"glasses_1\":0,\"hair_color_1\":0,\"chest_2\":0,\"beard_4\":0,\"complexion_1\":0,\"makeup_4\":0,\"eye_color\":0,\"lipstick_4\":0,\"sun_1\":0,\"blush_3\":0,\"hair_1\":10,\"lipstick_2\":0,\"helmet_2\":0,\"shoes_2\":0,\"lipstick_3\":0,\"watches_1\":-1,\"bracelets_2\":0,\"beard_2\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"bags_1\":0,\"moles_2\":0,\"bags_2\":0,\"decals_1\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"moles_1\":0,\"pants_1\":12,\"blush_2\":0,\"skin\":0,\"eyebrows_2\":0,\"chain_2\":0,\"bracelets_1\":-1,\"chest_1\":0,\"torso_1\":16,\"beard_3\":0,\"glasses_2\":0,\"sex\":0,\"torso_2\":1,\"makeup_2\":0,\"mask_2\":0,\"arms\":0,\"age_2\":0,\"mask_1\":2,\"bproof_1\":0,\"arms_2\":0,\"watches_2\":0,\"tshirt_1\":15,\"face\":0,\"hair_color_2\":0,\"chest_3\":0,\"hair_2\":0,\"age_1\":0,\"bproof_2\":0,\"ears_1\":-1,\"makeup_3\":0,\"ears_2\":0,\"complexion_2\":0}', 'police', 4, '[{\"name\":\"WEAPON_KNIFE\",\"label\":\"Noz\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistolj\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_APPISTOL\",\"label\":\"AP pistolj\",\"ammo\":0,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_REVOLVER\",\"label\":\"Veliki revolver\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pumparica\",\"ammo\":2,\"components\":[]},{\"name\":\"WEAPON_FLAREGUN\",\"label\":\"Signalni pistolj\",\"ammo\":19,\"components\":[]}]', '{\"z\":-3.5,\"y\":-1011.5,\"x\":423.1}', 700, 0, 'superadmin', '[{\"name\":\"hunger\",\"val\":499100,\"percent\":49.91},{\"name\":\"thirst\",\"val\":499325,\"percent\":49.9325}]', 'Mihajlo', 'Mihajlovic', '11.5.1999', 'm', '190', 0, NULL),
('steam:1100001035697ce', 'license:01b93f3dc55d3a596fbcdef8699060534c6d4b2c', 2147442647, 'LAKI', '{\"age_1\":0,\"decals_1\":0,\"bodyb_2\":0,\"bproof_1\":0,\"sun_2\":0,\"watches_2\":0,\"helmet_1\":-1,\"chest_1\":0,\"lipstick_3\":33,\"hair_color_1\":33,\"ears_1\":-1,\"shoes_2\":6,\"glasses_1\":0,\"sun_1\":0,\"age_2\":0,\"beard_2\":10,\"bracelets_2\":0,\"arms_2\":0,\"face\":0,\"blush_1\":0,\"arms\":0,\"hair_color_2\":0,\"makeup_3\":17,\"hair_2\":0,\"ears_2\":0,\"eyebrows_1\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"moles_1\":0,\"beard_3\":0,\"lipstick_2\":10,\"hair_1\":69,\"shoes_1\":47,\"torso_1\":51,\"tshirt_2\":0,\"bracelets_1\":-1,\"bags_1\":0,\"mask_2\":0,\"tshirt_1\":15,\"bodyb_1\":0,\"skin\":2,\"complexion_1\":0,\"eye_color\":0,\"chain_1\":0,\"bproof_2\":0,\"bags_2\":0,\"makeup_1\":0,\"blemishes_1\":0,\"beard_1\":8,\"moles_2\":0,\"beard_4\":0,\"chest_3\":0,\"decals_2\":0,\"torso_2\":0,\"complexion_2\":0,\"lipstick_1\":4,\"blemishes_2\":0,\"lipstick_4\":0,\"chain_2\":0,\"blush_2\":0,\"pants_1\":21,\"pants_2\":0,\"blush_3\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"helmet_2\":0,\"mask_1\":11,\"chest_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"sex\":0,\"makeup_2\":0}', 'police', 4, '[{\"components\":[\"clip_default\"],\"name\":\"WEAPON_SMG\",\"ammo\":27,\"label\":\"SMG\"},{\"components\":[],\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":18,\"label\":\"Pumparica\"},{\"components\":[\"scope_advanced\"],\"name\":\"WEAPON_HEAVYSNIPER\",\"ammo\":237,\"label\":\"Veliki snajper\"},{\"components\":[],\"name\":\"WEAPON_MINIGUN\",\"ammo\":0,\"label\":\"Minigun\"}]', '{\"z\":29.3,\"y\":-1016.6,\"x\":236.7}', 1260, 100, 'superadmin', '[{\"percent\":37.78,\"val\":377800,\"name\":\"hunger\"},{\"percent\":60.83499999999999,\"val\":608350,\"name\":\"thirst\"}]', 'LAKI', 'KILA', '12.12.1997', 'm', '189', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(3, 'steam:11000014577371f', 'black_money', 0),
(4, 'steam:110000146632a0f', 'black_money', 0),
(5, 'steam:110000146930a03', 'black_money', 0),
(6, 'steam:110000118f9c788', 'black_money', 0),
(7, 'steam:1100001035697ce', 'black_money', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(313, 'steam:11000014577371f', 'essence', 0),
(314, 'steam:11000014577371f', 'beer', 0),
(315, 'steam:11000014577371f', 'packaged_plank', 0),
(316, 'steam:11000014577371f', 'gold', 0),
(317, 'steam:11000014577371f', 'WEAPON_BALL', 0),
(318, 'steam:11000014577371f', 'WEAPON_PIPEBOMB', 0),
(319, 'steam:11000014577371f', 'tomater', 0),
(320, 'steam:11000014577371f', 'loka', 0),
(321, 'steam:11000014577371f', 'soda', 0),
(322, 'steam:11000014577371f', 'wool', 0),
(323, 'steam:11000014577371f', 'joint', 0),
(324, 'steam:11000014577371f', 'cigarett', 0),
(325, 'steam:11000014577371f', 'WEAPON_GARBAGEBAG', 0),
(326, 'steam:11000014577371f', 'WEAPON_BOTTLE', 0),
(327, 'steam:11000014577371f', 'WEAPON_FIREEXTINGUISHER', 0),
(328, 'steam:11000014577371f', 'disc_ammo_shotgun_large', 0),
(329, 'steam:11000014577371f', 'macka', 0),
(330, 'steam:11000014577371f', 'WEAPON_GOLFCLUB', 0),
(331, 'steam:11000014577371f', 'steakc', 0),
(332, 'steam:11000014577371f', 'frites', 0),
(333, 'steam:11000014577371f', 'WEAPON_FLAREGUN', 0),
(334, 'steam:11000014577371f', 'diamond', 0),
(335, 'steam:11000014577371f', 'sachetketchup', 0),
(336, 'steam:11000014577371f', 'sprite', 0),
(337, 'steam:11000014577371f', 'medikit', 0),
(338, 'steam:11000014577371f', 'WEAPON_BZGAS', 0),
(339, 'steam:11000014577371f', 'WEAPON_MARKSMANRIFLE', 0),
(340, 'steam:11000014577371f', 'patatefrie', 0),
(341, 'steam:11000014577371f', 'WEAPON_DAGGER', 0),
(342, 'steam:11000014577371f', 'disc_ammo_snp_large', 0),
(343, 'steam:11000014577371f', 'WEAPON_FLARE', 0),
(344, 'steam:11000014577371f', 'WEAPON_KNIFE', 0),
(345, 'steam:11000014577371f', 'supressor', 0),
(346, 'steam:11000014577371f', 'tomatec', 0),
(347, 'steam:11000014577371f', 'saladp', 0),
(348, 'steam:11000014577371f', 'slaughtered_chicken', 0),
(349, 'steam:11000014577371f', 'water', 0),
(350, 'steam:11000014577371f', 'WEAPON_PROXMINE', 0),
(351, 'steam:11000014577371f', 'icetea', 0),
(352, 'steam:11000014577371f', 'petrol', 0),
(353, 'steam:11000014577371f', 'WEAPON_COMBATMG', 0),
(354, 'steam:11000014577371f', 'fish', 0),
(355, 'steam:11000014577371f', 'WEAPON_MACHINEPISTOL', 0),
(356, 'steam:11000014577371f', 'WEAPON_HANDCUFFS', 0),
(357, 'steam:11000014577371f', 'WEAPON_ASSAULTSHOTGUN', 0),
(358, 'steam:11000014577371f', 'disc_ammo_rifle_large', 0),
(359, 'steam:11000014577371f', 'bread', 0),
(360, 'steam:11000014577371f', 'WEAPON_STUNGUN', 0),
(361, 'steam:11000014577371f', 'camtablet', 1),
(362, 'steam:11000014577371f', 'cheesebows', 0),
(363, 'steam:11000014577371f', 'WEAPON_GRENADE', 0),
(364, 'steam:11000014577371f', 'petrol_raffin', 0),
(365, 'steam:11000014577371f', 'fabric', 0),
(366, 'steam:11000014577371f', 'WEAPON_POOLCUE', 0),
(367, 'steam:11000014577371f', 'WEAPON_MICROSMG', 0),
(368, 'steam:11000014577371f', 'WEAPON_BULLPUPSHOTGUN', 0),
(369, 'steam:11000014577371f', 'copper', 0),
(370, 'steam:11000014577371f', 'steakcui', 0),
(371, 'steam:11000014577371f', 'WEAPON_DBSHOTGUN', 0),
(372, 'steam:11000014577371f', 'jusfruit', 0),
(373, 'steam:11000014577371f', 'WEAPON_HEAVYSHOTGUN', 0),
(374, 'steam:11000014577371f', 'WEAPON_APPISTOL', 0),
(375, 'steam:11000014577371f', 'WEAPON_BATTLEAXE', 0),
(376, 'steam:11000014577371f', 'cigarette', 0),
(377, 'steam:11000014577371f', 'WEAPON_ASSAULTRIFLE', 0),
(378, 'steam:11000014577371f', 'chips', 0),
(379, 'steam:11000014577371f', 'WEAPON_PISTOL', 0),
(380, 'steam:11000014577371f', 'disc_ammo_smg', 0),
(381, 'steam:11000014577371f', 'burger', 0),
(382, 'steam:11000014577371f', 'pastacarbonara', 0),
(383, 'steam:11000014577371f', 'WEAPON_FLASHLIGHT', 0),
(384, 'steam:11000014577371f', 'fanta', 0),
(385, 'steam:11000014577371f', 'salads', 0),
(386, 'steam:11000014577371f', 'fromage', 0),
(387, 'steam:11000014577371f', 'scope', 0),
(388, 'steam:11000014577371f', 'WEAPON_MINIGUN', 0),
(389, 'steam:11000014577371f', 'parkingcard', 0),
(390, 'steam:11000014577371f', 'bandage', 0),
(391, 'steam:11000014577371f', 'pizza', 0),
(392, 'steam:11000014577371f', 'grip', 0),
(393, 'steam:11000014577371f', 'WEAPON_HEAVYSNIPER', 0),
(394, 'steam:11000014577371f', 'WEAPON_COMPACTLAUNCHER', 0),
(395, 'steam:11000014577371f', 'WEAPON_SMOKEGRENADE', 0),
(396, 'steam:11000014577371f', 'wood', 0),
(397, 'steam:11000014577371f', 'WEAPON_MG', 0),
(398, 'steam:11000014577371f', 'WEAPON_HAMMER', 0),
(399, 'steam:11000014577371f', 'WEAPON_SNOWBALL', 0),
(400, 'steam:11000014577371f', 'WEAPON_WRENCH', 0),
(401, 'steam:11000014577371f', 'flashlight', 0),
(402, 'steam:11000014577371f', 'WEAPON_VINTAGEPISTOL', 0),
(403, 'steam:11000014577371f', 'WEAPON_MUSKET', 0),
(404, 'steam:11000014577371f', 'disc_ammo_rifle', 0),
(405, 'steam:11000014577371f', 'clothe', 0),
(406, 'steam:11000014577371f', 'alive_chicken', 0),
(407, 'steam:11000014577371f', 'WEAPON_GUSENBERG', 0),
(408, 'steam:11000014577371f', 'WEAPON_STICKYBOMB', 0),
(409, 'steam:11000014577371f', 'WEAPON_SPECIALCARBINE', 0),
(410, 'steam:11000014577371f', 'WEAPON_SNSPISTOL', 0),
(411, 'steam:11000014577371f', 'drpepper', 0),
(412, 'steam:11000014577371f', 'WEAPON_HATCHET', 0),
(413, 'steam:11000014577371f', 'WEAPON_SMG', 0),
(414, 'steam:11000014577371f', 'WEAPON_RAILGUN', 0),
(415, 'steam:11000014577371f', 'WEAPON_SAWNOFFSHOTGUN', 0),
(416, 'steam:11000014577371f', 'WEAPON_PETROLCAN', 0),
(417, 'steam:11000014577371f', 'WEAPON_REVOLVER', 0),
(418, 'steam:11000014577371f', 'WEAPON_PUMPSHOTGUN', 0),
(419, 'steam:11000014577371f', 'WEAPON_PISTOL50', 0),
(420, 'steam:11000014577371f', 'WEAPON_RPG', 0),
(421, 'steam:11000014577371f', 'energy', 0),
(422, 'steam:11000014577371f', 'disc_ammo_pistol_large', 0),
(423, 'steam:11000014577371f', 'WEAPON_NIGHTSTICK', 0),
(424, 'steam:11000014577371f', 'WEAPON_MOLOTOV', 0),
(425, 'steam:11000014577371f', 'packaged_chicken', 0),
(426, 'steam:11000014577371f', 'marabou', 0),
(427, 'steam:11000014577371f', 'patate', 0),
(428, 'steam:11000014577371f', 'WEAPON_MINISMG', 0),
(429, 'steam:11000014577371f', 'cutted_wood', 0),
(430, 'steam:11000014577371f', 'WEAPON_GRENADELAUNCHER', 0),
(431, 'steam:11000014577371f', 'WEAPON_DOUBLEACTION', 0),
(432, 'steam:11000014577371f', 'WEAPON_SWITCHBLADE', 0),
(433, 'steam:11000014577371f', 'WEAPON_COMPACTRIFLE', 0),
(434, 'steam:11000014577371f', 'WEAPON_ADVANCEDRIFLE', 0),
(435, 'steam:11000014577371f', 'lighter', 0),
(436, 'steam:11000014577371f', 'WEAPON_MACHETE', 0),
(437, 'steam:11000014577371f', 'WEAPON_KNUCKLE', 0),
(438, 'steam:11000014577371f', 'WEAPON_CROWBAR', 0),
(439, 'steam:11000014577371f', 'WEAPON_HEAVYPISTOL', 0),
(440, 'steam:11000014577371f', 'WEAPON_HOMINGLAUNCHER', 0),
(441, 'steam:11000014577371f', 'caisseketchup', 0),
(442, 'steam:11000014577371f', 'WEAPON_SNIPERRIFLE', 0),
(443, 'steam:11000014577371f', 'Nightvision', 0),
(444, 'steam:11000014577371f', 'WEAPON_BAT', 0),
(445, 'steam:11000014577371f', 'disc_ammo_smg_large', 0),
(446, 'steam:11000014577371f', 'disc_ammo_shotgun', 0),
(447, 'steam:11000014577371f', 'Thermalvision', 0),
(448, 'steam:11000014577371f', 'WEAPON_DIGISCANNER', 0),
(449, 'steam:11000014577371f', 'iron', 0),
(450, 'steam:11000014577371f', 'WEAPON_ASSAULTSMG', 0),
(451, 'steam:11000014577371f', 'skin', 0),
(452, 'steam:11000014577371f', 'WEAPON_STINGER', 0),
(453, 'steam:11000014577371f', 'WEAPON_MARKSMANPISTOL', 0),
(454, 'steam:11000014577371f', 'WEAPON_COMBATPDW', 0),
(455, 'steam:11000014577371f', 'WEAPON_FIREWORK', 0),
(456, 'steam:11000014577371f', 'cocacola', 0),
(457, 'steam:11000014577371f', 'WEAPON_COMBATPISTOL', 0),
(458, 'steam:11000014577371f', 'limonade', 0),
(459, 'steam:11000014577371f', 'disc_ammo_snp', 0),
(460, 'steam:11000014577371f', 'WEAPON_BULLPUPRIFLE', 0),
(461, 'steam:11000014577371f', 'WEAPON_CARBINERIFLE', 0),
(462, 'steam:11000014577371f', 'WEAPON_AUTOSHOTGUN', 0),
(463, 'steam:11000014577371f', 'washed_stone', 0),
(464, 'steam:11000014577371f', 'disc_ammo_pistol', 0),
(465, 'steam:11000014577371f', 'stone', 0),
(466, 'steam:11000014577371f', 'pickaxe', 0),
(467, 'steam:11000014577371f', 'lotteryticket', 0),
(468, 'steam:110000146632a0f', 'WEAPON_SNSPISTOL', 0),
(469, 'steam:110000146632a0f', 'disc_ammo_rifle', 0),
(470, 'steam:110000146632a0f', 'cocacola', 0),
(471, 'steam:110000146632a0f', 'fabric', 0),
(472, 'steam:110000146632a0f', 'patatefrie', 0),
(473, 'steam:110000146632a0f', 'WEAPON_BZGAS', 0),
(474, 'steam:110000146632a0f', 'scope', 0),
(475, 'steam:110000146632a0f', 'tomatec', 0),
(476, 'steam:110000146632a0f', 'WEAPON_BALL', 0),
(477, 'steam:110000146632a0f', 'energy', 0),
(478, 'steam:110000146632a0f', 'WEAPON_BOTTLE', 0),
(479, 'steam:110000146632a0f', 'grip', 0),
(480, 'steam:110000146632a0f', 'WEAPON_MOLOTOV', 0),
(481, 'steam:110000146632a0f', 'WEAPON_HANDCUFFS', 0),
(482, 'steam:110000146632a0f', 'WEAPON_DBSHOTGUN', 0),
(483, 'steam:110000146632a0f', 'WEAPON_ASSAULTSHOTGUN', 0),
(484, 'steam:110000146632a0f', 'disc_ammo_smg', 0),
(485, 'steam:110000146632a0f', 'pastacarbonara', 0),
(486, 'steam:110000146632a0f', 'WEAPON_AUTOSHOTGUN', 0),
(487, 'steam:110000146632a0f', 'WEAPON_HEAVYSNIPER', 0),
(488, 'steam:110000146632a0f', 'WEAPON_STINGER', 0),
(489, 'steam:110000146632a0f', 'WEAPON_DIGISCANNER', 0),
(490, 'steam:110000146632a0f', 'pizza', 0),
(491, 'steam:110000146632a0f', 'WEAPON_MARKSMANRIFLE', 0),
(492, 'steam:110000146632a0f', 'WEAPON_GOLFCLUB', 0),
(493, 'steam:110000146632a0f', 'icetea', 0),
(494, 'steam:110000146632a0f', 'cigarett', 0),
(495, 'steam:110000146632a0f', 'WEAPON_WRENCH', 0),
(496, 'steam:110000146632a0f', 'WEAPON_VINTAGEPISTOL', 0),
(497, 'steam:110000146632a0f', 'stone', 0),
(498, 'steam:110000146632a0f', 'packaged_plank', 0),
(499, 'steam:110000146632a0f', 'WEAPON_BATTLEAXE', 0),
(500, 'steam:110000146632a0f', 'WEAPON_SPECIALCARBINE', 0),
(501, 'steam:110000146632a0f', 'WEAPON_HEAVYSHOTGUN', 0),
(502, 'steam:110000146632a0f', 'petrol_raffin', 0),
(503, 'steam:110000146632a0f', 'salads', 0),
(504, 'steam:110000146632a0f', 'WEAPON_RPG', 0),
(505, 'steam:110000146632a0f', 'saladp', 0),
(506, 'steam:110000146632a0f', 'WEAPON_MG', 0),
(507, 'steam:110000146632a0f', 'WEAPON_CROWBAR', 0),
(508, 'steam:110000146632a0f', 'WEAPON_MINISMG', 0),
(509, 'steam:110000146632a0f', 'gold', 0),
(510, 'steam:110000146632a0f', 'macka', 0),
(511, 'steam:110000146632a0f', 'WEAPON_GUSENBERG', 0),
(512, 'steam:110000146632a0f', 'copper', 0),
(513, 'steam:110000146632a0f', 'WEAPON_GRENADELAUNCHER', 0),
(514, 'steam:110000146632a0f', 'alive_chicken', 0),
(515, 'steam:110000146632a0f', 'WEAPON_MARKSMANPISTOL', 0),
(516, 'steam:110000146632a0f', 'chips', 0),
(517, 'steam:110000146632a0f', 'flashlight', 0),
(518, 'steam:110000146632a0f', 'medikit', 0),
(519, 'steam:110000146632a0f', 'pickaxe', 0),
(520, 'steam:110000146632a0f', 'WEAPON_MACHINEPISTOL', 0),
(521, 'steam:110000146632a0f', 'sprite', 0),
(522, 'steam:110000146632a0f', 'lighter', 0),
(523, 'steam:110000146632a0f', 'petrol', 0),
(524, 'steam:110000146632a0f', 'WEAPON_PETROLCAN', 0),
(525, 'steam:110000146632a0f', 'WEAPON_PIPEBOMB', 0),
(526, 'steam:110000146632a0f', 'disc_ammo_shotgun_large', 0),
(527, 'steam:110000146632a0f', 'cutted_wood', 0),
(528, 'steam:110000146632a0f', 'WEAPON_ADVANCEDRIFLE', 0),
(529, 'steam:110000146632a0f', 'supressor', 0),
(530, 'steam:110000146632a0f', 'bandage', 0),
(531, 'steam:110000146632a0f', 'WEAPON_MINIGUN', 0),
(532, 'steam:110000146632a0f', 'WEAPON_FIREEXTINGUISHER', 0),
(533, 'steam:110000146632a0f', 'iron', 0),
(534, 'steam:110000146632a0f', 'WEAPON_FLASHLIGHT', 0),
(535, 'steam:110000146632a0f', 'essence', 0),
(536, 'steam:110000146632a0f', 'WEAPON_COMBATMG', 0),
(537, 'steam:110000146632a0f', 'WEAPON_HAMMER', 0),
(538, 'steam:110000146632a0f', 'sachetketchup', 0),
(539, 'steam:110000146632a0f', 'WEAPON_PISTOL50', 0),
(540, 'steam:110000146632a0f', 'WEAPON_PISTOL', 0),
(541, 'steam:110000146632a0f', 'WEAPON_COMBATPISTOL', 0),
(542, 'steam:110000146632a0f', 'lotteryticket', 0),
(543, 'steam:110000146632a0f', 'WEAPON_KNUCKLE', 0),
(544, 'steam:110000146632a0f', 'WEAPON_SAWNOFFSHOTGUN', 0),
(545, 'steam:110000146632a0f', 'caisseketchup', 2),
(546, 'steam:110000146632a0f', 'WEAPON_BAT', 0),
(547, 'steam:110000146632a0f', 'jusfruit', 0),
(548, 'steam:110000146632a0f', 'water', 0),
(549, 'steam:110000146632a0f', 'marabou', 0),
(550, 'steam:110000146632a0f', 'WEAPON_STICKYBOMB', 0),
(551, 'steam:110000146632a0f', 'WEAPON_SWITCHBLADE', 0),
(552, 'steam:110000146632a0f', 'fanta', 0),
(553, 'steam:110000146632a0f', 'WEAPON_FLAREGUN', 0),
(554, 'steam:110000146632a0f', 'packaged_chicken', 0),
(555, 'steam:110000146632a0f', 'cheesebows', 0),
(556, 'steam:110000146632a0f', 'Nightvision', 0),
(557, 'steam:110000146632a0f', 'WEAPON_REVOLVER', 0),
(558, 'steam:110000146632a0f', 'wool', 0),
(559, 'steam:110000146632a0f', 'wood', 0),
(560, 'steam:110000146632a0f', 'WEAPON_STUNGUN', 0),
(561, 'steam:110000146632a0f', 'WEAPON_BULLPUPSHOTGUN', 0),
(562, 'steam:110000146632a0f', 'WEAPON_SNOWBALL', 0),
(563, 'steam:110000146632a0f', 'WEAPON_COMPACTRIFLE', 0),
(564, 'steam:110000146632a0f', 'WEAPON_SNIPERRIFLE', 0),
(565, 'steam:110000146632a0f', 'WEAPON_SMOKEGRENADE', 0),
(566, 'steam:110000146632a0f', 'WEAPON_GRENADE', 0),
(567, 'steam:110000146632a0f', 'WEAPON_SMG', 0),
(568, 'steam:110000146632a0f', 'WEAPON_RAILGUN', 0),
(569, 'steam:110000146632a0f', 'WEAPON_APPISTOL', 0),
(570, 'steam:110000146632a0f', 'WEAPON_BULLPUPRIFLE', 0),
(571, 'steam:110000146632a0f', 'WEAPON_PROXMINE', 0),
(572, 'steam:110000146632a0f', 'WEAPON_POOLCUE', 0),
(573, 'steam:110000146632a0f', 'WEAPON_FIREWORK', 0),
(574, 'steam:110000146632a0f', 'WEAPON_ASSAULTSMG', 0),
(575, 'steam:110000146632a0f', 'WEAPON_NIGHTSTICK', 0),
(576, 'steam:110000146632a0f', 'WEAPON_MUSKET', 0),
(577, 'steam:110000146632a0f', 'bread', 0),
(578, 'steam:110000146632a0f', 'frites', 0),
(579, 'steam:110000146632a0f', 'WEAPON_MICROSMG', 0),
(580, 'steam:110000146632a0f', 'disc_ammo_pistol', 0),
(581, 'steam:110000146632a0f', 'WEAPON_MACHETE', 0),
(582, 'steam:110000146632a0f', 'WEAPON_ASSAULTRIFLE', 0),
(583, 'steam:110000146632a0f', 'limonade', 0),
(584, 'steam:110000146632a0f', 'WEAPON_HEAVYPISTOL', 0),
(585, 'steam:110000146632a0f', 'WEAPON_DOUBLEACTION', 0),
(586, 'steam:110000146632a0f', 'WEAPON_CARBINERIFLE', 0),
(587, 'steam:110000146632a0f', 'disc_ammo_smg_large', 0),
(588, 'steam:110000146632a0f', 'camtablet', 1),
(589, 'steam:110000146632a0f', 'WEAPON_KNIFE', 0),
(590, 'steam:110000146632a0f', 'disc_ammo_snp', 0),
(591, 'steam:110000146632a0f', 'patate', 0),
(592, 'steam:110000146632a0f', 'WEAPON_GARBAGEBAG', 0),
(593, 'steam:110000146632a0f', 'clothe', 0),
(594, 'steam:110000146632a0f', 'washed_stone', 0),
(595, 'steam:110000146632a0f', 'fish', 0),
(596, 'steam:110000146632a0f', 'WEAPON_HATCHET', 0),
(597, 'steam:110000146632a0f', 'WEAPON_DAGGER', 0),
(598, 'steam:110000146632a0f', 'steakcui', 0),
(599, 'steam:110000146632a0f', 'parkingcard', 0),
(600, 'steam:110000146632a0f', 'Thermalvision', 0),
(601, 'steam:110000146632a0f', 'tomater', 0),
(602, 'steam:110000146632a0f', 'disc_ammo_pistol_large', 0),
(603, 'steam:110000146632a0f', 'WEAPON_FLARE', 0),
(604, 'steam:110000146632a0f', 'steakc', 0),
(605, 'steam:110000146632a0f', 'slaughtered_chicken', 0),
(606, 'steam:110000146632a0f', 'disc_ammo_rifle_large', 0),
(607, 'steam:110000146632a0f', 'WEAPON_COMPACTLAUNCHER', 0),
(608, 'steam:110000146632a0f', 'WEAPON_COMBATPDW', 0),
(609, 'steam:110000146632a0f', 'drpepper', 0),
(610, 'steam:110000146632a0f', 'WEAPON_HOMINGLAUNCHER', 0),
(611, 'steam:110000146632a0f', 'disc_ammo_snp_large', 0),
(612, 'steam:110000146632a0f', 'fromage', 0),
(613, 'steam:110000146632a0f', 'WEAPON_PUMPSHOTGUN', 0),
(614, 'steam:110000146632a0f', 'skin', 0),
(615, 'steam:110000146632a0f', 'disc_ammo_shotgun', 0),
(616, 'steam:110000146632a0f', 'diamond', 0),
(617, 'steam:110000146632a0f', 'loka', 0),
(618, 'steam:110000146632a0f', 'burger', 0),
(619, 'steam:110000146930a03', 'WEAPON_GRENADE', 0),
(620, 'steam:110000146930a03', 'WEAPON_GARBAGEBAG', 0),
(621, 'steam:110000146930a03', 'salads', 0),
(622, 'steam:110000146930a03', 'WEAPON_HANDCUFFS', 0),
(623, 'steam:110000146930a03', 'WEAPON_MINISMG', 0),
(624, 'steam:110000146930a03', 'WEAPON_STICKYBOMB', 0),
(625, 'steam:110000146930a03', 'WEAPON_PISTOL50', 0),
(626, 'steam:110000146930a03', 'WEAPON_MARKSMANRIFLE', 0),
(627, 'steam:110000146930a03', 'parkingcard', 0),
(628, 'steam:110000146930a03', 'disc_ammo_snp', 0),
(629, 'steam:110000146930a03', 'wood', 0),
(630, 'steam:110000146930a03', 'WEAPON_WRENCH', 0),
(631, 'steam:110000146930a03', 'caisseketchup', 0),
(632, 'steam:110000146930a03', 'cocacola', 4),
(633, 'steam:110000146930a03', 'steakcui', 0),
(634, 'steam:110000146930a03', 'medikit', 0),
(635, 'steam:110000146930a03', 'WEAPON_FLASHLIGHT', 0),
(636, 'steam:110000146930a03', 'slaughtered_chicken', 0),
(637, 'steam:110000146930a03', 'WEAPON_DOUBLEACTION', 0),
(638, 'steam:110000146930a03', 'saladp', 0),
(639, 'steam:110000146930a03', 'WEAPON_COMBATPDW', 0),
(640, 'steam:110000146930a03', 'WEAPON_BAT', 0),
(641, 'steam:110000146930a03', 'WEAPON_MACHINEPISTOL', 0),
(642, 'steam:110000146930a03', 'WEAPON_BALL', 0),
(643, 'steam:110000146930a03', 'grip', 0),
(644, 'steam:110000146930a03', 'fanta', 0),
(645, 'steam:110000146930a03', 'pastacarbonara', 0),
(646, 'steam:110000146930a03', 'WEAPON_COMBATPISTOL', 0),
(647, 'steam:110000146930a03', 'WEAPON_CROWBAR', 0),
(648, 'steam:110000146930a03', 'WEAPON_FIREWORK', 0),
(649, 'steam:110000146930a03', 'WEAPON_PIPEBOMB', 0),
(650, 'steam:110000146930a03', 'WEAPON_KNIFE', 0),
(651, 'steam:110000146930a03', 'WEAPON_ASSAULTSHOTGUN', 0),
(652, 'steam:110000146930a03', 'fromage', 0),
(653, 'steam:110000146930a03', 'fish', 0),
(654, 'steam:110000146930a03', 'WEAPON_PISTOL', 0),
(655, 'steam:110000146930a03', 'Nightvision', 0),
(656, 'steam:110000146930a03', 'lotteryticket', 0),
(657, 'steam:110000146930a03', 'pizza', 0),
(658, 'steam:110000146930a03', 'WEAPON_COMPACTLAUNCHER', 0),
(659, 'steam:110000146930a03', 'WEAPON_APPISTOL', 0),
(660, 'steam:110000146930a03', 'WEAPON_FLARE', 0),
(661, 'steam:110000146930a03', 'WEAPON_PETROLCAN', 0),
(662, 'steam:110000146930a03', 'pickaxe', 4),
(663, 'steam:110000146930a03', 'fabric', 0),
(664, 'steam:110000146930a03', 'steakc', 0),
(665, 'steam:110000146930a03', 'tomater', 0),
(666, 'steam:110000146930a03', 'packaged_plank', 0),
(667, 'steam:110000146930a03', 'WEAPON_AUTOSHOTGUN', 0),
(668, 'steam:110000146930a03', 'loka', 0),
(669, 'steam:110000146930a03', 'iron', 2),
(670, 'steam:110000146930a03', 'WEAPON_DAGGER', 0),
(671, 'steam:110000146930a03', 'drpepper', 0),
(672, 'steam:110000146930a03', 'WEAPON_GOLFCLUB', 0),
(673, 'steam:110000146930a03', 'cigarett', 0),
(674, 'steam:110000146930a03', 'WEAPON_MICROSMG', 0),
(675, 'steam:110000146930a03', 'disc_ammo_pistol_large', 0),
(676, 'steam:110000146930a03', 'WEAPON_RAILGUN', 0),
(677, 'steam:110000146930a03', 'icetea', 0),
(678, 'steam:110000146930a03', 'WEAPON_SWITCHBLADE', 0),
(679, 'steam:110000146930a03', 'WEAPON_BOTTLE', 0),
(680, 'steam:110000146930a03', 'patate', 0),
(681, 'steam:110000146930a03', 'WEAPON_KNUCKLE', 0),
(682, 'steam:110000146930a03', 'WEAPON_HEAVYPISTOL', 0),
(683, 'steam:110000146930a03', 'WEAPON_BATTLEAXE', 0),
(684, 'steam:110000146930a03', 'flashlight', 0),
(685, 'steam:110000146930a03', 'burger', 0),
(686, 'steam:110000146930a03', 'WEAPON_COMBATMG', 0),
(687, 'steam:110000146930a03', 'WEAPON_ADVANCEDRIFLE', 0),
(688, 'steam:110000146930a03', 'WEAPON_ASSAULTRIFLE', 0),
(689, 'steam:110000146930a03', 'petrol_raffin', 0),
(690, 'steam:110000146930a03', 'copper', 0),
(691, 'steam:110000146930a03', 'WEAPON_GRENADELAUNCHER', 0),
(692, 'steam:110000146930a03', 'washed_stone', 0),
(693, 'steam:110000146930a03', 'bandage', 0),
(694, 'steam:110000146930a03', 'WEAPON_FIREEXTINGUISHER', 0),
(695, 'steam:110000146930a03', 'WEAPON_COMPACTRIFLE', 0),
(696, 'steam:110000146930a03', 'WEAPON_HAMMER', 0),
(697, 'steam:110000146930a03', 'cheesebows', 0),
(698, 'steam:110000146930a03', 'WEAPON_MINIGUN', 0),
(699, 'steam:110000146930a03', 'WEAPON_HATCHET', 0),
(700, 'steam:110000146930a03', 'supressor', 0),
(701, 'steam:110000146930a03', 'cutted_wood', 0),
(702, 'steam:110000146930a03', 'sprite', 0),
(703, 'steam:110000146930a03', 'WEAPON_RPG', 0),
(704, 'steam:110000146930a03', 'WEAPON_FLAREGUN', 0),
(705, 'steam:110000146930a03', 'WEAPON_CARBINERIFLE', 0),
(706, 'steam:110000146930a03', 'bread', 0),
(707, 'steam:110000146930a03', 'lighter', 0),
(708, 'steam:110000146930a03', 'wool', 0),
(709, 'steam:110000146930a03', 'WEAPON_VINTAGEPISTOL', 0),
(710, 'steam:110000146930a03', 'WEAPON_STUNGUN', 0),
(711, 'steam:110000146930a03', 'WEAPON_STINGER', 0),
(712, 'steam:110000146930a03', 'WEAPON_SPECIALCARBINE', 0),
(713, 'steam:110000146930a03', 'energy', 0),
(714, 'steam:110000146930a03', 'WEAPON_SNOWBALL', 0),
(715, 'steam:110000146930a03', 'WEAPON_SNIPERRIFLE', 0),
(716, 'steam:110000146930a03', 'petrol', 0),
(717, 'steam:110000146930a03', 'WEAPON_NIGHTSTICK', 0),
(718, 'steam:110000146930a03', 'patatefrie', 0),
(719, 'steam:110000146930a03', 'chips', 0),
(720, 'steam:110000146930a03', 'camtablet', 1),
(721, 'steam:110000146930a03', 'WEAPON_REVOLVER', 0),
(722, 'steam:110000146930a03', 'tomatec', 0),
(723, 'steam:110000146930a03', 'WEAPON_MOLOTOV', 0),
(724, 'steam:110000146930a03', 'WEAPON_SMG', 0),
(725, 'steam:110000146930a03', 'WEAPON_SAWNOFFSHOTGUN', 0),
(726, 'steam:110000146930a03', 'diamond', 0),
(727, 'steam:110000146930a03', 'WEAPON_PUMPSHOTGUN', 0),
(728, 'steam:110000146930a03', 'WEAPON_PROXMINE', 0),
(729, 'steam:110000146930a03', 'WEAPON_POOLCUE', 0),
(730, 'steam:110000146930a03', 'disc_ammo_rifle_large', 0),
(731, 'steam:110000146930a03', 'water', 0),
(732, 'steam:110000146930a03', 'macka', 0),
(733, 'steam:110000146930a03', 'WEAPON_ASSAULTSMG', 0),
(734, 'steam:110000146930a03', 'WEAPON_MUSKET', 0),
(735, 'steam:110000146930a03', 'sachetketchup', 0),
(736, 'steam:110000146930a03', 'WEAPON_SMOKEGRENADE', 0),
(737, 'steam:110000146930a03', 'WEAPON_HEAVYSHOTGUN', 0),
(738, 'steam:110000146930a03', 'WEAPON_MACHETE', 0),
(739, 'steam:110000146930a03', 'jusfruit', 0),
(740, 'steam:110000146930a03', 'disc_ammo_shotgun_large', 0),
(741, 'steam:110000146930a03', 'disc_ammo_rifle', 0),
(742, 'steam:110000146930a03', 'WEAPON_MARKSMANPISTOL', 0),
(743, 'steam:110000146930a03', 'packaged_chicken', 0),
(744, 'steam:110000146930a03', 'frites', 0),
(745, 'steam:110000146930a03', 'alive_chicken', 0),
(746, 'steam:110000146930a03', 'WEAPON_MG', 0),
(747, 'steam:110000146930a03', 'WEAPON_HOMINGLAUNCHER', 0),
(748, 'steam:110000146930a03', 'WEAPON_HEAVYSNIPER', 0),
(749, 'steam:110000146930a03', 'limonade', 0),
(750, 'steam:110000146930a03', 'WEAPON_BZGAS', 0),
(751, 'steam:110000146930a03', 'disc_ammo_shotgun', 0),
(752, 'steam:110000146930a03', 'disc_ammo_smg_large', 0),
(753, 'steam:110000146930a03', 'disc_ammo_smg', 0),
(754, 'steam:110000146930a03', 'skin', 0),
(755, 'steam:110000146930a03', 'scope', 0),
(756, 'steam:110000146930a03', 'disc_ammo_snp_large', 0),
(757, 'steam:110000146930a03', 'disc_ammo_pistol', 0),
(758, 'steam:110000146930a03', 'WEAPON_GUSENBERG', 0),
(759, 'steam:110000146930a03', 'WEAPON_DIGISCANNER', 0),
(760, 'steam:110000146930a03', 'WEAPON_DBSHOTGUN', 0),
(761, 'steam:110000146930a03', 'WEAPON_BULLPUPSHOTGUN', 0),
(762, 'steam:110000146930a03', 'WEAPON_BULLPUPRIFLE', 0),
(763, 'steam:110000146930a03', 'Thermalvision', 0),
(764, 'steam:110000146930a03', 'stone', 0),
(765, 'steam:110000146930a03', 'essence', 0),
(766, 'steam:110000146930a03', 'gold', 1),
(767, 'steam:110000146930a03', 'marabou', 0),
(768, 'steam:110000146930a03', 'clothe', 0),
(769, 'steam:110000146930a03', 'WEAPON_SNSPISTOL', 0),
(770, 'steam:110000118f9c788', 'limonade', 0),
(771, 'steam:110000118f9c788', 'medikit', 0),
(772, 'steam:110000118f9c788', 'slaughtered_chicken', 0),
(773, 'steam:110000118f9c788', 'WEAPON_PUMPSHOTGUN', 0),
(774, 'steam:110000118f9c788', 'scope', 0),
(775, 'steam:110000118f9c788', 'washed_stone', 0),
(776, 'steam:110000118f9c788', 'disc_ammo_pistol', 0),
(777, 'steam:110000118f9c788', 'WEAPON_SNSPISTOL', 0),
(778, 'steam:110000118f9c788', 'caisseketchup', 0),
(779, 'steam:110000118f9c788', 'disc_ammo_shotgun_large', 0),
(780, 'steam:110000118f9c788', 'WEAPON_STINGER', 0),
(781, 'steam:110000118f9c788', 'Thermalvision', 0),
(782, 'steam:110000118f9c788', 'WEAPON_BALL', 0),
(783, 'steam:110000118f9c788', 'wood', 0),
(784, 'steam:110000118f9c788', 'disc_ammo_rifle_large', 0),
(785, 'steam:110000118f9c788', 'WEAPON_PROXMINE', 0),
(786, 'steam:110000118f9c788', 'WEAPON_KNIFE', 0),
(787, 'steam:110000118f9c788', 'patatefrie', 0),
(788, 'steam:110000118f9c788', 'pickaxe', 4),
(789, 'steam:110000118f9c788', 'cocacola', 0),
(790, 'steam:110000118f9c788', 'lotteryticket', 0),
(791, 'steam:110000118f9c788', 'WEAPON_FLAREGUN', 0),
(792, 'steam:110000118f9c788', 'packaged_plank', 0),
(793, 'steam:110000118f9c788', 'pastacarbonara', 0),
(794, 'steam:110000118f9c788', 'petrol_raffin', 0),
(795, 'steam:110000118f9c788', 'supressor', 0),
(796, 'steam:110000118f9c788', 'WEAPON_KNUCKLE', 0),
(797, 'steam:110000118f9c788', 'frites', 0),
(798, 'steam:110000118f9c788', 'WEAPON_MOLOTOV', 0),
(799, 'steam:110000118f9c788', 'WEAPON_PIPEBOMB', 0),
(800, 'steam:110000118f9c788', 'WEAPON_ADVANCEDRIFLE', 0),
(801, 'steam:110000118f9c788', 'fanta', 0),
(802, 'steam:110000118f9c788', 'WEAPON_SNOWBALL', 0),
(803, 'steam:110000118f9c788', 'WEAPON_BULLPUPSHOTGUN', 0),
(804, 'steam:110000118f9c788', 'burger', 0),
(805, 'steam:110000118f9c788', 'saladp', 0),
(806, 'steam:110000118f9c788', 'WEAPON_BOTTLE', 0),
(807, 'steam:110000118f9c788', 'bandage', 0),
(808, 'steam:110000118f9c788', 'WEAPON_SMG', 0),
(809, 'steam:110000118f9c788', 'WEAPON_COMPACTRIFLE', 0),
(810, 'steam:110000118f9c788', 'cutted_wood', 0),
(811, 'steam:110000118f9c788', 'salads', 0),
(812, 'steam:110000118f9c788', 'disc_ammo_snp_large', 0),
(813, 'steam:110000118f9c788', 'WEAPON_HEAVYSNIPER', 0),
(814, 'steam:110000118f9c788', 'grip', 0),
(815, 'steam:110000118f9c788', 'drpepper', 0),
(816, 'steam:110000118f9c788', 'clothe', 0),
(817, 'steam:110000118f9c788', 'pizza', 0),
(818, 'steam:110000118f9c788', 'fish', 0),
(819, 'steam:110000118f9c788', 'WEAPON_MG', 0),
(820, 'steam:110000118f9c788', 'parkingcard', 0),
(821, 'steam:110000118f9c788', 'WEAPON_HEAVYSHOTGUN', 0),
(822, 'steam:110000118f9c788', 'gold', 0),
(823, 'steam:110000118f9c788', 'WEAPON_MACHINEPISTOL', 0),
(824, 'steam:110000118f9c788', 'stone', 0),
(825, 'steam:110000118f9c788', 'cigarett', 0),
(826, 'steam:110000118f9c788', 'WEAPON_BULLPUPRIFLE', 0),
(827, 'steam:110000118f9c788', 'WEAPON_POOLCUE', 0),
(828, 'steam:110000118f9c788', 'Nightvision', 0),
(829, 'steam:110000118f9c788', 'lighter', 0),
(830, 'steam:110000118f9c788', 'sprite', 0),
(831, 'steam:110000118f9c788', 'tomatec', 0),
(832, 'steam:110000118f9c788', 'fabric', 0),
(833, 'steam:110000118f9c788', 'disc_ammo_smg_large', 0),
(834, 'steam:110000118f9c788', 'WEAPON_FLASHLIGHT', 0),
(835, 'steam:110000118f9c788', 'WEAPON_MACHETE', 0),
(836, 'steam:110000118f9c788', 'WEAPON_GRENADE', 0),
(837, 'steam:110000118f9c788', 'WEAPON_RAILGUN', 0),
(838, 'steam:110000118f9c788', 'camtablet', 0),
(839, 'steam:110000118f9c788', 'sachetketchup', 0),
(840, 'steam:110000118f9c788', 'WEAPON_DIGISCANNER', 0),
(841, 'steam:110000118f9c788', 'WEAPON_SNIPERRIFLE', 0),
(842, 'steam:110000118f9c788', 'WEAPON_CARBINERIFLE', 0),
(843, 'steam:110000118f9c788', 'WEAPON_SAWNOFFSHOTGUN', 0),
(844, 'steam:110000118f9c788', 'WEAPON_BZGAS', 0),
(845, 'steam:110000118f9c788', 'chips', 0),
(846, 'steam:110000118f9c788', 'WEAPON_GRENADELAUNCHER', 0),
(847, 'steam:110000118f9c788', 'tomater', 0),
(848, 'steam:110000118f9c788', 'bread', 0),
(849, 'steam:110000118f9c788', 'disc_ammo_smg', 0),
(850, 'steam:110000118f9c788', 'water', 0),
(851, 'steam:110000118f9c788', 'diamond', 0),
(852, 'steam:110000118f9c788', 'packaged_chicken', 0),
(853, 'steam:110000118f9c788', 'disc_ammo_shotgun', 0),
(854, 'steam:110000118f9c788', 'WEAPON_WRENCH', 0),
(855, 'steam:110000118f9c788', 'macka', 0),
(856, 'steam:110000118f9c788', 'WEAPON_VINTAGEPISTOL', 0),
(857, 'steam:110000118f9c788', 'WEAPON_COMBATPISTOL', 0),
(858, 'steam:110000118f9c788', 'icetea', 0),
(859, 'steam:110000118f9c788', 'WEAPON_SWITCHBLADE', 0),
(860, 'steam:110000118f9c788', 'WEAPON_STUNGUN', 0),
(861, 'steam:110000118f9c788', 'WEAPON_PETROLCAN', 0),
(862, 'steam:110000118f9c788', 'steakcui', 0),
(863, 'steam:110000118f9c788', 'WEAPON_STICKYBOMB', 0),
(864, 'steam:110000118f9c788', 'WEAPON_SPECIALCARBINE', 0),
(865, 'steam:110000118f9c788', 'WEAPON_COMBATPDW', 0),
(866, 'steam:110000118f9c788', 'WEAPON_NIGHTSTICK', 0),
(867, 'steam:110000118f9c788', 'WEAPON_RPG', 0),
(868, 'steam:110000118f9c788', 'WEAPON_MARKSMANRIFLE', 0),
(869, 'steam:110000118f9c788', 'WEAPON_PISTOL50', 0),
(870, 'steam:110000118f9c788', 'WEAPON_DBSHOTGUN', 0),
(871, 'steam:110000118f9c788', 'WEAPON_PISTOL', 0),
(872, 'steam:110000118f9c788', 'copper', 0),
(873, 'steam:110000118f9c788', 'WEAPON_APPISTOL', 0),
(874, 'steam:110000118f9c788', 'WEAPON_MUSKET', 0),
(875, 'steam:110000118f9c788', 'WEAPON_GUSENBERG', 0),
(876, 'steam:110000118f9c788', 'WEAPON_FIREEXTINGUISHER', 0),
(877, 'steam:110000118f9c788', 'WEAPON_ASSAULTRIFLE', 0),
(878, 'steam:110000118f9c788', 'WEAPON_COMPACTLAUNCHER', 0),
(879, 'steam:110000118f9c788', 'loka', 0),
(880, 'steam:110000118f9c788', 'WEAPON_HATCHET', 0),
(881, 'steam:110000118f9c788', 'WEAPON_MINIGUN', 0),
(882, 'steam:110000118f9c788', 'essence', 0),
(883, 'steam:110000118f9c788', 'WEAPON_FLARE', 0),
(884, 'steam:110000118f9c788', 'WEAPON_BAT', 0),
(885, 'steam:110000118f9c788', 'WEAPON_MICROSMG', 0),
(886, 'steam:110000118f9c788', 'WEAPON_REVOLVER', 0),
(887, 'steam:110000118f9c788', 'WEAPON_MARKSMANPISTOL', 0),
(888, 'steam:110000118f9c788', 'WEAPON_FIREWORK', 0),
(889, 'steam:110000118f9c788', 'cheesebows', 0),
(890, 'steam:110000118f9c788', 'patate', 0),
(891, 'steam:110000118f9c788', 'WEAPON_HEAVYPISTOL', 0),
(892, 'steam:110000118f9c788', 'WEAPON_GOLFCLUB', 0),
(893, 'steam:110000118f9c788', 'WEAPON_MINISMG', 0),
(894, 'steam:110000118f9c788', 'WEAPON_HANDCUFFS', 0),
(895, 'steam:110000118f9c788', 'steakc', 0),
(896, 'steam:110000118f9c788', 'WEAPON_AUTOSHOTGUN', 0),
(897, 'steam:110000118f9c788', 'skin', 0),
(898, 'steam:110000118f9c788', 'fromage', 0),
(899, 'steam:110000118f9c788', 'WEAPON_CROWBAR', 0),
(900, 'steam:110000118f9c788', 'jusfruit', 0),
(901, 'steam:110000118f9c788', 'disc_ammo_pistol_large', 0),
(902, 'steam:110000118f9c788', 'WEAPON_GARBAGEBAG', 0),
(903, 'steam:110000118f9c788', 'WEAPON_BATTLEAXE', 0),
(904, 'steam:110000118f9c788', 'alive_chicken', 0),
(905, 'steam:110000118f9c788', 'flashlight', 0),
(906, 'steam:110000118f9c788', 'WEAPON_DOUBLEACTION', 0),
(907, 'steam:110000118f9c788', 'wool', 0),
(908, 'steam:110000118f9c788', 'WEAPON_HAMMER', 0),
(909, 'steam:110000118f9c788', 'WEAPON_ASSAULTSMG', 0),
(910, 'steam:110000118f9c788', 'WEAPON_SMOKEGRENADE', 0),
(911, 'steam:110000118f9c788', 'disc_ammo_rifle', 0),
(912, 'steam:110000118f9c788', 'disc_ammo_snp', 0),
(913, 'steam:110000118f9c788', 'WEAPON_HOMINGLAUNCHER', 0),
(914, 'steam:110000118f9c788', 'WEAPON_ASSAULTSHOTGUN', 0),
(915, 'steam:110000118f9c788', 'petrol', 0),
(916, 'steam:110000118f9c788', 'iron', 1),
(917, 'steam:110000118f9c788', 'WEAPON_DAGGER', 0),
(918, 'steam:110000118f9c788', 'marabou', 0),
(919, 'steam:110000118f9c788', 'energy', 0),
(920, 'steam:110000118f9c788', 'WEAPON_COMBATMG', 0),
(921, 'steam:1100001035697ce', 'limonade', 0),
(922, 'steam:1100001035697ce', 'medikit', 0),
(923, 'steam:1100001035697ce', 'slaughtered_chicken', 0),
(924, 'steam:1100001035697ce', 'WEAPON_PUMPSHOTGUN', 0),
(925, 'steam:1100001035697ce', 'scope', 0),
(926, 'steam:1100001035697ce', 'washed_stone', 0),
(927, 'steam:1100001035697ce', 'disc_ammo_pistol', 0),
(928, 'steam:1100001035697ce', 'WEAPON_SNSPISTOL', 0),
(929, 'steam:1100001035697ce', 'caisseketchup', 25),
(930, 'steam:1100001035697ce', 'disc_ammo_shotgun_large', 0),
(931, 'steam:1100001035697ce', 'WEAPON_STINGER', 0),
(932, 'steam:1100001035697ce', 'Thermalvision', 0),
(933, 'steam:1100001035697ce', 'WEAPON_BALL', 0),
(934, 'steam:1100001035697ce', 'wood', 0),
(935, 'steam:1100001035697ce', 'disc_ammo_rifle_large', 0),
(936, 'steam:1100001035697ce', 'WEAPON_PROXMINE', 0),
(937, 'steam:1100001035697ce', 'WEAPON_KNIFE', 0),
(938, 'steam:1100001035697ce', 'patatefrie', 0),
(939, 'steam:1100001035697ce', 'pickaxe', 86),
(940, 'steam:1100001035697ce', 'cocacola', 0),
(941, 'steam:1100001035697ce', 'lotteryticket', 0),
(942, 'steam:1100001035697ce', 'WEAPON_FLAREGUN', 0),
(943, 'steam:1100001035697ce', 'packaged_plank', 0),
(944, 'steam:1100001035697ce', 'pastacarbonara', 0),
(945, 'steam:1100001035697ce', 'petrol_raffin', 0),
(946, 'steam:1100001035697ce', 'supressor', 0),
(947, 'steam:1100001035697ce', 'WEAPON_KNUCKLE', 0),
(948, 'steam:1100001035697ce', 'frites', 0),
(949, 'steam:1100001035697ce', 'WEAPON_MOLOTOV', 0),
(950, 'steam:1100001035697ce', 'WEAPON_PIPEBOMB', 0),
(951, 'steam:1100001035697ce', 'WEAPON_ADVANCEDRIFLE', 0),
(952, 'steam:1100001035697ce', 'fanta', 0),
(953, 'steam:1100001035697ce', 'WEAPON_SNOWBALL', 0),
(954, 'steam:1100001035697ce', 'WEAPON_BULLPUPSHOTGUN', 0),
(955, 'steam:1100001035697ce', 'burger', 0),
(956, 'steam:1100001035697ce', 'saladp', 0),
(957, 'steam:1100001035697ce', 'WEAPON_BOTTLE', 0),
(958, 'steam:1100001035697ce', 'bandage', 0),
(959, 'steam:1100001035697ce', 'WEAPON_SMG', 0),
(960, 'steam:1100001035697ce', 'WEAPON_COMPACTRIFLE', 0),
(961, 'steam:1100001035697ce', 'cutted_wood', 0),
(962, 'steam:1100001035697ce', 'salads', 0),
(963, 'steam:1100001035697ce', 'disc_ammo_snp_large', 0),
(964, 'steam:1100001035697ce', 'WEAPON_HEAVYSNIPER', 0),
(965, 'steam:1100001035697ce', 'grip', 0),
(966, 'steam:1100001035697ce', 'drpepper', 0),
(967, 'steam:1100001035697ce', 'clothe', 0),
(968, 'steam:1100001035697ce', 'pizza', 0),
(969, 'steam:1100001035697ce', 'fish', 0),
(970, 'steam:1100001035697ce', 'WEAPON_MG', 0),
(971, 'steam:1100001035697ce', 'parkingcard', 0),
(972, 'steam:1100001035697ce', 'WEAPON_HEAVYSHOTGUN', 0),
(973, 'steam:1100001035697ce', 'gold', 0),
(974, 'steam:1100001035697ce', 'WEAPON_MACHINEPISTOL', 0),
(975, 'steam:1100001035697ce', 'stone', 0),
(976, 'steam:1100001035697ce', 'cigarett', 0),
(977, 'steam:1100001035697ce', 'WEAPON_BULLPUPRIFLE', 0),
(978, 'steam:1100001035697ce', 'WEAPON_POOLCUE', 0),
(979, 'steam:1100001035697ce', 'Nightvision', 0),
(980, 'steam:1100001035697ce', 'lighter', 0),
(981, 'steam:1100001035697ce', 'sprite', 0),
(982, 'steam:1100001035697ce', 'tomatec', 0),
(983, 'steam:1100001035697ce', 'fabric', 0),
(984, 'steam:1100001035697ce', 'disc_ammo_smg_large', 0),
(985, 'steam:1100001035697ce', 'WEAPON_FLASHLIGHT', 0),
(986, 'steam:1100001035697ce', 'WEAPON_MACHETE', 0),
(987, 'steam:1100001035697ce', 'WEAPON_GRENADE', 0),
(988, 'steam:1100001035697ce', 'WEAPON_RAILGUN', 0),
(989, 'steam:1100001035697ce', 'camtablet', 0),
(990, 'steam:1100001035697ce', 'sachetketchup', 0),
(991, 'steam:1100001035697ce', 'WEAPON_DIGISCANNER', 0),
(992, 'steam:1100001035697ce', 'WEAPON_SNIPERRIFLE', 0),
(993, 'steam:1100001035697ce', 'WEAPON_CARBINERIFLE', 0),
(994, 'steam:1100001035697ce', 'WEAPON_SAWNOFFSHOTGUN', 0),
(995, 'steam:1100001035697ce', 'WEAPON_BZGAS', 0),
(996, 'steam:1100001035697ce', 'chips', 0),
(997, 'steam:1100001035697ce', 'WEAPON_GRENADELAUNCHER', 0),
(998, 'steam:1100001035697ce', 'tomater', 0),
(999, 'steam:1100001035697ce', 'bread', 4),
(1000, 'steam:1100001035697ce', 'disc_ammo_smg', 0),
(1001, 'steam:1100001035697ce', 'water', 4),
(1002, 'steam:1100001035697ce', 'diamond', 0),
(1003, 'steam:1100001035697ce', 'packaged_chicken', 0),
(1004, 'steam:1100001035697ce', 'disc_ammo_shotgun', 0),
(1005, 'steam:1100001035697ce', 'WEAPON_WRENCH', 0),
(1006, 'steam:1100001035697ce', 'macka', 0),
(1007, 'steam:1100001035697ce', 'WEAPON_VINTAGEPISTOL', 0),
(1008, 'steam:1100001035697ce', 'WEAPON_COMBATPISTOL', 0),
(1009, 'steam:1100001035697ce', 'icetea', 0),
(1010, 'steam:1100001035697ce', 'WEAPON_SWITCHBLADE', 0),
(1011, 'steam:1100001035697ce', 'WEAPON_STUNGUN', 0),
(1012, 'steam:1100001035697ce', 'WEAPON_PETROLCAN', 0),
(1013, 'steam:1100001035697ce', 'steakcui', 0),
(1014, 'steam:1100001035697ce', 'WEAPON_STICKYBOMB', 0),
(1015, 'steam:1100001035697ce', 'WEAPON_SPECIALCARBINE', 0),
(1016, 'steam:1100001035697ce', 'WEAPON_COMBATPDW', 0),
(1017, 'steam:1100001035697ce', 'WEAPON_NIGHTSTICK', 0),
(1018, 'steam:1100001035697ce', 'WEAPON_RPG', 0),
(1019, 'steam:1100001035697ce', 'WEAPON_MARKSMANRIFLE', 0),
(1020, 'steam:1100001035697ce', 'WEAPON_PISTOL50', 0),
(1021, 'steam:1100001035697ce', 'WEAPON_DBSHOTGUN', 0),
(1022, 'steam:1100001035697ce', 'WEAPON_PISTOL', 0),
(1023, 'steam:1100001035697ce', 'copper', 0),
(1024, 'steam:1100001035697ce', 'WEAPON_APPISTOL', 0),
(1025, 'steam:1100001035697ce', 'WEAPON_MUSKET', 0),
(1026, 'steam:1100001035697ce', 'WEAPON_GUSENBERG', 0),
(1027, 'steam:1100001035697ce', 'WEAPON_FIREEXTINGUISHER', 0),
(1028, 'steam:1100001035697ce', 'WEAPON_ASSAULTRIFLE', 0),
(1029, 'steam:1100001035697ce', 'WEAPON_COMPACTLAUNCHER', 0),
(1030, 'steam:1100001035697ce', 'loka', 0),
(1031, 'steam:1100001035697ce', 'WEAPON_HATCHET', 0),
(1032, 'steam:1100001035697ce', 'WEAPON_MINIGUN', 0),
(1033, 'steam:1100001035697ce', 'essence', 0),
(1034, 'steam:1100001035697ce', 'WEAPON_FLARE', 0),
(1035, 'steam:1100001035697ce', 'WEAPON_BAT', 0),
(1036, 'steam:1100001035697ce', 'WEAPON_MICROSMG', 0),
(1037, 'steam:1100001035697ce', 'WEAPON_REVOLVER', 0),
(1038, 'steam:1100001035697ce', 'WEAPON_MARKSMANPISTOL', 0),
(1039, 'steam:1100001035697ce', 'WEAPON_FIREWORK', 0),
(1040, 'steam:1100001035697ce', 'cheesebows', 0),
(1041, 'steam:1100001035697ce', 'patate', 0),
(1042, 'steam:1100001035697ce', 'WEAPON_HEAVYPISTOL', 0),
(1043, 'steam:1100001035697ce', 'WEAPON_GOLFCLUB', 0),
(1044, 'steam:1100001035697ce', 'WEAPON_MINISMG', 0),
(1045, 'steam:1100001035697ce', 'WEAPON_HANDCUFFS', 0),
(1046, 'steam:1100001035697ce', 'steakc', 0),
(1047, 'steam:1100001035697ce', 'WEAPON_AUTOSHOTGUN', 0),
(1048, 'steam:1100001035697ce', 'skin', 0),
(1049, 'steam:1100001035697ce', 'fromage', 0),
(1050, 'steam:1100001035697ce', 'WEAPON_CROWBAR', 0),
(1051, 'steam:1100001035697ce', 'jusfruit', 0),
(1052, 'steam:1100001035697ce', 'disc_ammo_pistol_large', 0),
(1053, 'steam:1100001035697ce', 'WEAPON_GARBAGEBAG', 0),
(1054, 'steam:1100001035697ce', 'WEAPON_BATTLEAXE', 0),
(1055, 'steam:1100001035697ce', 'alive_chicken', 0),
(1056, 'steam:1100001035697ce', 'flashlight', 0),
(1057, 'steam:1100001035697ce', 'WEAPON_DOUBLEACTION', 0),
(1058, 'steam:1100001035697ce', 'wool', 0),
(1059, 'steam:1100001035697ce', 'WEAPON_HAMMER', 0),
(1060, 'steam:1100001035697ce', 'WEAPON_ASSAULTSMG', 0),
(1061, 'steam:1100001035697ce', 'WEAPON_SMOKEGRENADE', 0),
(1062, 'steam:1100001035697ce', 'disc_ammo_rifle', 0),
(1063, 'steam:1100001035697ce', 'disc_ammo_snp', 0),
(1064, 'steam:1100001035697ce', 'WEAPON_HOMINGLAUNCHER', 0),
(1065, 'steam:1100001035697ce', 'WEAPON_ASSAULTSHOTGUN', 0),
(1066, 'steam:1100001035697ce', 'petrol', 0),
(1067, 'steam:1100001035697ce', 'iron', 0),
(1068, 'steam:1100001035697ce', 'WEAPON_DAGGER', 0),
(1069, 'steam:1100001035697ce', 'marabou', 0),
(1070, 'steam:1100001035697ce', 'energy', 0),
(1071, 'steam:1100001035697ce', 'WEAPON_COMBATMG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_parking`
--
ALTER TABLE `car_parking`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communityservice`
--
ALTER TABLE `communityservice`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disc_ammo`
--
ALTER TABLE `disc_ammo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `owner` (`owner`),
  ADD KEY `plate` (`plate`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qalle_brottsregister`
--
ALTER TABLE `qalle_brottsregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitycams`
--
ALTER TABLE `securitycams`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account`
--
ALTER TABLE `addon_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `car_parking`
--
ALTER TABLE `car_parking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `datastore`
--
ALTER TABLE `datastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `disc_ammo`
--
ALTER TABLE `disc_ammo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `qalle_brottsregister`
--
ALTER TABLE `qalle_brottsregister`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `securitycams`
--
ALTER TABLE `securitycams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1072;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
