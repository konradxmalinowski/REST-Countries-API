-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 10:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `countries`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `Id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `population` bigint(20) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `regionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`Id`, `name`, `capital`, `population`, `flag`, `regionId`) VALUES
(2, 'Afghanistan', 'Kabul', 40218234, 'https://flagcdn.com/af.svg', 3),
(3, 'Ã…land Islands', 'Mariehamn', 28875, 'https://flagcdn.com/ax.svg', 1),
(4, 'Albania', 'Tirana', 2837743, 'https://flagcdn.com/al.svg', 1),
(5, 'Algeria', 'Algiers', 44700000, 'https://flagcdn.com/dz.svg', 2),
(6, 'American Samoa', 'Pago Pago', 55197, 'https://flagcdn.com/as.svg', 5),
(7, 'Andorra', 'Andorra la Vella', 77265, 'https://flagcdn.com/ad.svg', 1),
(8, 'Angola', 'Luanda', 32866268, 'https://flagcdn.com/ao.svg', 2),
(9, 'Armenia', 'Yerevan', 2963234, 'https://flagcdn.com/am.svg', 3),
(10, 'Australia', 'Canberra', 25687041, 'https://flagcdn.com/au.svg', 5),
(11, 'Austria', 'Vienna', 8917205, 'https://flagcdn.com/at.svg', 1),
(12, 'Azerbaijan', 'Baku', 10110116, 'https://flagcdn.com/az.svg', 3),
(13, 'Bahrain', 'Manama', 1701583, 'https://flagcdn.com/bh.svg', 3),
(14, 'Bangladesh', 'Dhaka', 164689383, 'https://flagcdn.com/bd.svg', 3),
(15, 'Belarus', 'Minsk', 9398861, 'https://flagcdn.com/by.svg', 1),
(16, 'Belgium', 'Brussels', 11555997, 'https://flagcdn.com/be.svg', 1),
(17, 'Benin', 'Porto-Novo', 12123198, 'https://flagcdn.com/bj.svg', 2),
(18, 'Bhutan', 'Thimphu', 771612, 'https://flagcdn.com/bt.svg', 3),
(19, 'Bosnia and Herzegovina', 'Sarajevo', 3280815, 'https://flagcdn.com/ba.svg', 1),
(20, 'Botswana', 'Gaborone', 2351625, 'https://flagcdn.com/bw.svg', 2),
(21, 'British Indian Ocean Territory', 'Diego Garcia', 3000, 'https://flagcdn.com/io.svg', 2),
(22, 'Brunei Darussalam', 'Bandar Seri Begawan', 437483, 'https://flagcdn.com/bn.svg', 3),
(23, 'Bulgaria', 'Sofia', 6927288, 'https://flagcdn.com/bg.svg', 1),
(24, 'Burkina Faso', 'Ouagadougou', 20903278, 'https://flagcdn.com/bf.svg', 2),
(25, 'Burundi', 'Gitega', 11890781, 'https://flagcdn.com/bi.svg', 2),
(26, 'Cambodia', 'Phnom Penh', 16718971, 'https://flagcdn.com/kh.svg', 3),
(27, 'Cameroon', 'YaoundÃ©', 26545864, 'https://flagcdn.com/cm.svg', 2),
(28, 'Cabo Verde', 'Praia', 555988, 'https://flagcdn.com/cv.svg', 2),
(29, 'Central African Republic', 'Bangui', 4829764, 'https://flagcdn.com/cf.svg', 2),
(30, 'Chad', 'N\'Djamena', 16425859, 'https://flagcdn.com/td.svg', 2),
(31, 'China', 'Beijing', 1402112000, 'https://flagcdn.com/cn.svg', 3),
(32, 'Christmas Island', 'Flying Fish Cove', 2072, 'https://flagcdn.com/cx.svg', 5),
(33, 'Cocos (Keeling) Islands', 'West Island', 550, 'https://flagcdn.com/cc.svg', 5),
(34, 'Comoros', 'Moroni', 869595, 'https://flagcdn.com/km.svg', 2),
(35, 'Congo', 'Brazzaville', 5518092, 'https://flagcdn.com/cg.svg', 2),
(36, 'Congo (Democratic Republic of the)', 'Kinshasa', 89561404, 'https://flagcdn.com/cd.svg', 2),
(37, 'Cook Islands', 'Avarua', 18100, 'https://flagcdn.com/ck.svg', 5),
(38, 'Croatia', 'Zagreb', 4047200, 'https://flagcdn.com/hr.svg', 1),
(39, 'Cyprus', 'Nicosia', 1207361, 'https://flagcdn.com/cy.svg', 1),
(40, 'Czech Republic', 'Prague', 10698896, 'https://flagcdn.com/cz.svg', 1),
(41, 'Denmark', 'Copenhagen', 5831404, 'https://flagcdn.com/dk.svg', 1),
(42, 'Djibouti', 'Djibouti', 988002, 'https://flagcdn.com/dj.svg', 2),
(43, 'Egypt', 'Cairo', 102334403, 'https://flagcdn.com/eg.svg', 2),
(44, 'Equatorial Guinea', 'Malabo', 1402985, 'https://flagcdn.com/gq.svg', 2),
(45, 'Eritrea', 'Asmara', 5352000, 'https://flagcdn.com/er.svg', 2),
(46, 'Estonia', 'Tallinn', 1331057, 'https://flagcdn.com/ee.svg', 1),
(47, 'Ethiopia', 'Addis Ababa', 114963583, 'https://flagcdn.com/et.svg', 2),
(48, 'Faroe Islands', 'TÃ³rshavn', 48865, 'https://flagcdn.com/fo.svg', 1),
(49, 'Fiji', 'Suva', 896444, 'https://flagcdn.com/fj.svg', 5),
(50, 'Finland', 'Helsinki', 5530719, 'https://flagcdn.com/fi.svg', 1),
(51, 'France', 'Paris', 67391582, 'https://flagcdn.com/fr.svg', 1),
(52, 'French Polynesia', 'PapeetÄ“', 280904, 'https://flagcdn.com/pf.svg', 5),
(53, 'French Southern Territories', 'Port-aux-FranÃ§ais', 140, 'https://flagcdn.com/tf.svg', 2),
(54, 'Gabon', 'Libreville', 2225728, 'https://flagcdn.com/ga.svg', 2),
(55, 'Gambia', 'Banjul', 2416664, 'https://flagcdn.com/gm.svg', 2),
(56, 'Georgia', 'Tbilisi', 3714000, 'https://flagcdn.com/ge.svg', 3),
(57, 'Germany', 'Berlin', 83240525, 'https://flagcdn.com/de.svg', 1),
(58, 'Ghana', 'Accra', 31072945, 'https://flagcdn.com/gh.svg', 2),
(59, 'Gibraltar', 'Gibraltar', 33691, 'https://flagcdn.com/gi.svg', 1),
(60, 'Greece', 'Athens', 10715549, 'https://flagcdn.com/gr.svg', 1),
(61, 'Guam', 'HagÃ¥tÃ±a', 168783, 'https://flagcdn.com/gu.svg', 5),
(62, 'Guernsey', 'St. Peter Port', 62999, 'https://flagcdn.com/gg.svg', 1),
(63, 'Guinea', 'Conakry', 13132792, 'https://flagcdn.com/gn.svg', 2),
(64, 'Guinea-Bissau', 'Bissau', 1967998, 'https://flagcdn.com/gw.svg', 2),
(65, 'Vatican City', 'Vatican City', 451, 'https://flagcdn.com/va.svg', 1),
(66, 'Hungary', 'Budapest', 9749763, 'https://flagcdn.com/hu.svg', 1),
(67, 'Hong Kong', 'City of Victoria', 7481800, 'https://flagcdn.com/hk.svg', 3),
(68, 'Iceland', 'ReykjavÃ­k', 366425, 'https://flagcdn.com/is.svg', 1),
(69, 'India', 'New Delhi', 1380004385, 'https://flagcdn.com/in.svg', 3),
(70, 'Indonesia', 'Jakarta', 273523621, 'https://flagcdn.com/id.svg', 3),
(71, 'Ivory Coast', 'Yamoussoukro', 26378275, 'https://flagcdn.com/ci.svg', 2),
(72, 'Iran (Islamic Republic of)', 'Tehran', 83992953, 'https://flagcdn.com/ir.svg', 3),
(73, 'Iraq', 'Baghdad', 40222503, 'https://flagcdn.com/iq.svg', 3),
(74, 'Ireland', 'Dublin', 4994724, 'https://flagcdn.com/ie.svg', 1),
(75, 'Isle of Man', 'Douglas', 85032, 'https://flagcdn.com/im.svg', 1),
(76, 'Israel', 'Jerusalem', 9216900, 'https://flagcdn.com/il.svg', 3),
(77, 'Italy', 'Rome', 59554023, 'https://flagcdn.com/it.svg', 1),
(78, 'Japan', 'Tokyo', 125836021, 'https://flagcdn.com/jp.svg', 3),
(79, 'Jersey', 'Saint Helier', 100800, 'https://flagcdn.com/je.svg', 1),
(80, 'Jordan', 'Amman', 10203140, 'https://flagcdn.com/jo.svg', 3),
(81, 'Kazakhstan', 'Nur-Sultan', 18754440, 'https://flagcdn.com/kz.svg', 3),
(82, 'Kenya', 'Nairobi', 53771300, 'https://flagcdn.com/ke.svg', 2),
(83, 'Kiribati', 'South Tarawa', 119446, 'https://flagcdn.com/ki.svg', 5),
(84, 'Kuwait', 'Kuwait City', 4270563, 'https://flagcdn.com/kw.svg', 3),
(85, 'Kyrgyzstan', 'Bishkek', 6591600, 'https://flagcdn.com/kg.svg', 3),
(86, 'Lao People\'s Democratic Republic', 'Vientiane', 7275556, 'https://flagcdn.com/la.svg', 3),
(87, 'Latvia', 'Riga', 1901548, 'https://flagcdn.com/lv.svg', 1),
(88, 'Lebanon', 'Beirut', 6825442, 'https://flagcdn.com/lb.svg', 3),
(89, 'Lesotho', 'Maseru', 2142252, 'https://flagcdn.com/ls.svg', 2),
(90, 'Liberia', 'Monrovia', 5057677, 'https://flagcdn.com/lr.svg', 2),
(91, 'Libya', 'Tripoli', 6871287, 'https://flagcdn.com/ly.svg', 2),
(92, 'Liechtenstein', 'Vaduz', 38137, 'https://flagcdn.com/li.svg', 1),
(93, 'Lithuania', 'Vilnius', 2794700, 'https://flagcdn.com/lt.svg', 1),
(94, 'Luxembourg', 'Luxembourg', 632275, 'https://flagcdn.com/lu.svg', 1),
(95, 'North Macedonia', 'Skopje', 2083380, 'https://flagcdn.com/mk.svg', 1),
(96, 'Madagascar', 'Antananarivo', 27691019, 'https://flagcdn.com/mg.svg', 2),
(97, 'Malawi', 'Lilongwe', 19129955, 'https://flagcdn.com/mw.svg', 2),
(98, 'Malaysia', 'Kuala Lumpur', 32365998, 'https://flagcdn.com/my.svg', 3),
(99, 'Maldives', 'MalÃ©', 540542, 'https://flagcdn.com/mv.svg', 3),
(100, 'Mali', 'Bamako', 20250834, 'https://flagcdn.com/ml.svg', 2),
(101, 'Malta', 'Valletta', 525285, 'https://flagcdn.com/mt.svg', 1),
(102, 'Marshall Islands', 'Majuro', 59194, 'https://flagcdn.com/mh.svg', 5),
(103, 'Mauritania', 'Nouakchott', 4649660, 'https://flagcdn.com/mr.svg', 2),
(104, 'Mauritius', 'Port Louis', 1265740, 'https://flagcdn.com/mu.svg', 2),
(105, 'Mayotte', 'Mamoudzou', 226915, 'https://flagcdn.com/yt.svg', 2),
(106, 'Micronesia (Federated States of)', 'Palikir', 115021, 'https://flagcdn.com/fm.svg', 5),
(107, 'Moldova (Republic of)', 'ChiÈ™inÄƒu', 2617820, 'https://flagcdn.com/md.svg', 1),
(108, 'Monaco', 'Monaco', 39244, 'https://flagcdn.com/mc.svg', 1),
(109, 'Mongolia', 'Ulan Bator', 3278292, 'https://flagcdn.com/mn.svg', 3),
(110, 'Montenegro', 'Podgorica', 621718, 'https://flagcdn.com/me.svg', 1),
(111, 'Morocco', 'Rabat', 36910558, 'https://flagcdn.com/ma.svg', 2),
(112, 'Mozambique', 'Maputo', 31255435, 'https://flagcdn.com/mz.svg', 2),
(113, 'Myanmar', 'Naypyidaw', 54409794, 'https://flagcdn.com/mm.svg', 3),
(114, 'Namibia', 'Windhoek', 2540916, 'https://flagcdn.com/na.svg', 2),
(115, 'Nauru', 'Yaren', 10834, 'https://flagcdn.com/nr.svg', 5),
(116, 'Nepal', 'Kathmandu', 29136808, 'https://flagcdn.com/np.svg', 3),
(117, 'Netherlands', 'Amsterdam', 17441139, 'https://flagcdn.com/nl.svg', 1),
(118, 'New Caledonia', 'NoumÃ©a', 271960, 'https://flagcdn.com/nc.svg', 5),
(119, 'New Zealand', 'Wellington', 5084300, 'https://flagcdn.com/nz.svg', 5),
(120, 'Niger', 'Niamey', 24206636, 'https://flagcdn.com/ne.svg', 2),
(121, 'Nigeria', 'Abuja', 206139587, 'https://flagcdn.com/ng.svg', 2),
(122, 'Niue', 'Alofi', 1470, 'https://flagcdn.com/nu.svg', 5),
(123, 'Norfolk Island', 'Kingston', 2302, 'https://flagcdn.com/nf.svg', 5),
(124, 'Korea (Democratic People\'s Republic of)', 'Pyongyang', 25778815, 'https://flagcdn.com/kp.svg', 3),
(125, 'Northern Mariana Islands', 'Saipan', 57557, 'https://flagcdn.com/mp.svg', 5),
(126, 'Norway', 'Oslo', 5379475, 'https://flagcdn.com/no.svg', 1),
(127, 'Oman', 'Muscat', 5106622, 'https://flagcdn.com/om.svg', 3),
(128, 'Pakistan', 'Islamabad', 220892331, 'https://flagcdn.com/pk.svg', 3),
(129, 'Palau', 'Ngerulmud', 18092, 'https://flagcdn.com/pw.svg', 5),
(130, 'Palestine, State of', 'Ramallah', 4803269, 'https://flagcdn.com/ps.svg', 3),
(131, 'Papua New Guinea', 'Port Moresby', 8947027, 'https://flagcdn.com/pg.svg', 5),
(132, 'Philippines', 'Manila', 109581085, 'https://flagcdn.com/ph.svg', 3),
(133, 'Pitcairn', 'Adamstown', 56, 'https://flagcdn.com/pn.svg', 5),
(135, 'Portugal', 'Lisbon', 10305564, 'https://flagcdn.com/pt.svg', 1),
(136, 'Qatar', 'Doha', 2881060, 'https://flagcdn.com/qa.svg', 3),
(137, 'Republic of Kosovo', 'Pristina', 1775378, 'https://flagcdn.com/xk.svg', 1),
(138, 'RÃ©union', 'Saint-Denis', 840974, 'https://flagcdn.com/re.svg', 2),
(139, 'Romania', 'Bucharest', 19286123, 'https://flagcdn.com/ro.svg', 1),
(140, 'Russian Federation', 'Moscow', 144104080, 'https://flagcdn.com/ru.svg', 1),
(141, 'Rwanda', 'Kigali', 12952209, 'https://flagcdn.com/rw.svg', 2),
(142, 'Saint Helena, Ascension and Tristan da Cunha', 'Jamestown', 4255, 'https://flagcdn.com/sh.svg', 2),
(143, 'Samoa', 'Apia', 198410, 'https://flagcdn.com/ws.svg', 5),
(144, 'San Marino', 'City of San Marino', 33938, 'https://flagcdn.com/sm.svg', 1),
(145, 'Sao Tome and Principe', 'SÃ£o TomÃ©', 219161, 'https://flagcdn.com/st.svg', 2),
(146, 'Saudi Arabia', 'Riyadh', 34813867, 'https://flagcdn.com/sa.svg', 3),
(147, 'Senegal', 'Dakar', 16743930, 'https://flagcdn.com/sn.svg', 2),
(148, 'Serbia', 'Belgrade', 6908224, 'https://flagcdn.com/rs.svg', 1),
(149, 'Seychelles', 'Victoria', 98462, 'https://flagcdn.com/sc.svg', 2),
(150, 'Sierra Leone', 'Freetown', 7976985, 'https://flagcdn.com/sl.svg', 2),
(151, 'Singapore', 'Singapore', 5685807, 'https://flagcdn.com/sg.svg', 3),
(152, 'Slovakia', 'Bratislava', 5458827, 'https://flagcdn.com/sk.svg', 1),
(153, 'Slovenia', 'Ljubljana', 2100126, 'https://flagcdn.com/si.svg', 1),
(154, 'Solomon Islands', 'Honiara', 686878, 'https://flagcdn.com/sb.svg', 5),
(155, 'Somalia', 'Mogadishu', 15893219, 'https://flagcdn.com/so.svg', 2),
(156, 'South Africa', 'Pretoria', 59308690, 'https://flagcdn.com/za.svg', 2),
(157, 'Korea (Republic of)', 'Seoul', 51780579, 'https://flagcdn.com/kr.svg', 3),
(158, 'Spain', 'Madrid', 47351567, 'https://flagcdn.com/es.svg', 1),
(159, 'Sri Lanka', 'Sri Jayawardenepura Kotte', 21919000, 'https://flagcdn.com/lk.svg', 3),
(160, 'Sudan', 'Khartoum', 43849269, 'https://flagcdn.com/sd.svg', 2),
(161, 'South Sudan', 'Juba', 11193729, 'https://flagcdn.com/ss.svg', 2),
(162, 'Svalbard and Jan Mayen', 'Longyearbyen', 2562, 'https://flagcdn.com/sj.svg', 1),
(163, 'Swaziland', 'Mbabane', 1160164, 'https://flagcdn.com/sz.svg', 2),
(164, 'Sweden', 'Stockholm', 10353442, 'https://flagcdn.com/se.svg', 1),
(165, 'Switzerland', 'Bern', 8636896, 'https://flagcdn.com/ch.svg', 1),
(166, 'Syrian Arab Republic', 'Damascus', 17500657, 'https://flagcdn.com/sy.svg', 3),
(167, 'Taiwan', 'Taipei', 23503349, 'https://flagcdn.com/tw.svg', 3),
(168, 'Tajikistan', 'Dushanbe', 9537642, 'https://flagcdn.com/tj.svg', 3),
(169, 'Tanzania, United Republic of', 'Dodoma', 59734213, 'https://flagcdn.com/tz.svg', 2),
(170, 'Thailand', 'Bangkok', 69799978, 'https://flagcdn.com/th.svg', 3),
(171, 'Timor-Leste', 'Dili', 1318442, 'https://flagcdn.com/tl.svg', 3),
(172, 'Togo', 'LomÃ©', 8278737, 'https://flagcdn.com/tg.svg', 2),
(173, 'Tokelau', 'Fakaofo', 1411, 'https://flagcdn.com/tk.svg', 5),
(174, 'Tonga', 'Nuku\'alofa', 105697, 'https://flagcdn.com/to.svg', 5),
(175, 'Tunisia', 'Tunis', 11818618, 'https://flagcdn.com/tn.svg', 2),
(176, 'Turkey', 'Ankara', 84339067, 'https://flagcdn.com/tr.svg', 3),
(177, 'Turkmenistan', 'Ashgabat', 6031187, 'https://flagcdn.com/tm.svg', 3),
(178, 'Tuvalu', 'Funafuti', 11792, 'https://flagcdn.com/tv.svg', 5),
(179, 'Uganda', 'Kampala', 45741000, 'https://flagcdn.com/ug.svg', 2),
(180, 'Ukraine', 'Kyiv', 44134693, 'https://flagcdn.com/ua.svg', 1),
(181, 'United Arab Emirates', 'Abu Dhabi', 9890400, 'https://flagcdn.com/ae.svg', 3),
(182, 'United Kingdom of Great Britain and Northern Ireland', 'London', 67215293, 'https://flagcdn.com/gb.svg', 1),
(183, 'Uzbekistan', 'Tashkent', 34232050, 'https://flagcdn.com/uz.svg', 3),
(184, 'Vanuatu', 'Port Vila', 307150, 'https://flagcdn.com/vu.svg', 5),
(185, 'Vietnam', 'Hanoi', 97338583, 'https://flagcdn.com/vn.svg', 3),
(186, 'Wallis and Futuna', 'Mata-Utu', 11750, 'https://flagcdn.com/wf.svg', 5),
(187, 'Western Sahara', 'El AaiÃºn', 510713, 'https://flagcdn.com/eh.svg', 2),
(188, 'Yemen', 'Sana\'a', 29825968, 'https://flagcdn.com/ye.svg', 3),
(189, 'Zambia', 'Lusaka', 18383956, 'https://flagcdn.com/zm.svg', 2),
(190, 'Zimbabwe', 'Harare', 14862927, 'https://flagcdn.com/zw.svg', 2),
(191, 'Poland', 'Warsaw', 38000000, 'https://flagcdn.com/pl.svg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`Id`, `Name`) VALUES
(1, 'Europe'),
(2, 'Africa'),
(3, 'Asia'),
(5, 'Oceania'),
(6, 'Default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `regionId` (`regionId`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
