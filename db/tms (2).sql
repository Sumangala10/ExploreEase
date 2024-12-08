-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 03:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`) VALUES
(1, 'admin', 'ce5140df15d046a66883807d18d0264b');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `FirstName` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `NameOnCard` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CardNumber` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ExpMonth` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ExpYear` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CVV` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Country` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `StreetLine1` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `StreetLine2` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `City` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `State1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Pincode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Additional_Information` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `BookingTime` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingId`, `PackageId`, `FirstName`, `Email`, `Phone`, `NameOnCard`, `CardNumber`, `ExpMonth`, `ExpYear`, `CVV`, `Country`, `StreetLine1`, `StreetLine2`, `City`, `State1`, `Pincode`, `Additional_Information`, `status`, `CancelledBy`, `BookingTime`) VALUES
(37, 18, 'MANJUNATH', 'manjunath@gmail.com', '09483905427', 'debit ', '1111111111111111', '11', '2025', '', 'Europe', 'VANDSE POST', 'eeeee', 'Udupi', 'KARNATAKA', '576233', 'hdfhdfhdfdf', 2, 'a', '2024-05-25 16:37:30'),
(38, 18, 'MANJUNATH', 'manjunath@gmail.com', '09483905427', 'debit ', '1111111111111111', '11', '2025', '', 'Europe', 'VANDSE POST', 'eeeee', 'Udupi', 'KARNATAKA', '576233', 'egegerg', 1, NULL, '2024-05-25 20:14:05'),
(39, 18, 'MANJUNATH', 'manjunath1@gmail.com', '09483905427', 'debit ', '1111111111111111', '11', '2025', '', 'United states', 'VANDSE POST', 'eeeee', 'Udupi', 'KARNATAKA', '576233', 'ewetwet', 2, 'a', '2024-05-26 06:09:54'),
(40, 18, 'MANJUNATH', 'manjunath1@gmail.com', '09483905427', 'debit ', '1111111111111111', '11', '2024', '', 'United states', 'VANDSE POST', 'eeeee', 'Udupi', 'KARNATAKA', '576233', '1eerg', 1, NULL, '2024-05-26 11:22:55'),
(41, 22, 'MANJUNATH', 'manjunath1@gmail.com', '09483905427', 'debit ', '1111111111111111', '11', '2024', '', 'United states', 'VANDSE POST', 'eeeee', 'Udupi', 'KARNATAKA', '576233', 'htyhryjtu', 2, 'a', '2024-05-28 04:59:44'),
(42, 18, '1111111', 'manjunath1@gmail.com', '1111111111', '111', '1111111111111111', '11', '2025', '', 'Europe', '1111111', '1', '1111', '11', '11', '1111111111', 0, NULL, '2024-05-31 18:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `packageoffer`
--

CREATE TABLE `packageoffer` (
  `OfferId` int(11) NOT NULL,
  `OfferName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `OfferLocation` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `OfferDetails` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ActualPrice` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `OfferPrice` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PercentageOff` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `OfferImage` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packageoffer`
--

INSERT INTO `packageoffer` (`OfferId`, `OfferName`, `OfferLocation`, `OfferDetails`, `ActualPrice`, `OfferPrice`, `PercentageOff`, `OfferImage`) VALUES
(10, 'Udupi', 'Udupi', 'Udupi is a district in the Indian state of Karnataka, known for its historical, religious, and culinary significance. The town of Udupi is famous for the Sri Krishna Temple, dedicated to Lord Krishna, and is one of the most important pilgrimage sites for Hindus. The temple is renowned for its unique worship rituals and is associated with the Dvaita philosophy founded by Sri Madhvacharya.\r\n\r\nApart from its religious significance, Udupi is also known for its distinct vegetarian cuisine, popularly known as Udupi cuisine. Dishes like dosa, idli, vada, sambar, and various rice preparations are widely enjoyed not only in Karnataka but throughout India. Udupi cuisine is characterized by its simplicity, use of fresh ingredients, and emphasis on aromatic spices.\r\n\r\nThe district of Udupi is also blessed with picturesque beaches, including Malpe Beach, which attracts tourists with its golden sands and water sports activities. Additionally, Udupi is known for its educational institutions, including Manipal Academy of Higher Education, which is renowned internationally.', '6550', '5900', '15%', 'Kapu.jpg'),
(11, 'Coorg', 'Kodagu', 'Kodagu, also known as Coorg, is a district in the Indian state of Karnataka. It\'s renowned for its scenic beauty, lush coffee plantations, and diverse wildlife. Kodagu is also famous for its rich cultural heritage, including its unique cuisine and traditional Kodava attire. The region attracts tourists for its picturesque landscapes, trekking opportunities, and outdoor activities.', '8999', '7600', '20%', 'coorg.jpg'),
(12, 'Mysuru-City ', 'Mysuru', 'Mysuru, also called Mysore, city, south-central Karnataka state, southern India. It lies northwest of Chamundi Hill and midway between the Kaveri (Cauvery) and Kabani (Kabbani) rivers on the undulating Deccan plateau at an elevation of 2,525 feet (770 metres). The land surrounding the city is characterized by rain-filled shallow depressions (tanks). The site was mentioned in the epic Mahabharata as Mahishmati (Mahismati). Mysore was known as Purigere in the Mauryan era (3rd century BCE) and later became Mahishapura. It was the administrative capital of the princely state of Mysore from 1799 to 1831 and long was the second most-populous city (after Bengaluru [Bangalore]) of Karnataka state, until being surpassed by Hubballi-Dharwad in the second half of the 20th century. Its urban agglomeration, however, is still the state’s second largest. Mysuru is an important manufacturing and trading centre, and it has textile (cotton and silk), rice, and oil mills, sandalwood-oil and chemical factories, and tanneries. The suburb of Belagula, to the northwest, produces chrome dyes and chemical fertilizer. The city’s industries are powered by the hydroelectric station near Sivasamudram Island to the east. Mysuru’s cottage industries include cotton weaving, tobacco and coffee processing, and the making of bidis (cigarettes). The area is known for its artwork in ivory, metal, and wood, and the market near the railway station serves as a collection centre for local farm products. The city has an airport, lies at the junction of two northern railway lines, and is a major intersection on India’s principal western road system. An ancient fort, rebuilt along European lines in the 18th century, stands in the centre of Mysuru. The fort area comprises Mysore Palace (1912) with its ivory and gold throne, Curzon Park, the Silver Jubilee Clock Tower (1927), Gandhi Square, and two statues of maharajas. To the west, near Gordon Park, are the former British residency (1805), the noted Oriental Library, university buildings, and public offices. Jaganmohan Palace and Lalitha Mahal are other notable buildings. The University of Mysore was founded in 1916; other educational facilities include Maharaja’s College, Maharani’s College for Women, and affiliated colleges of medicine, law, engineering, and teacher training. There are also several institutions for the advancement of Kannada culture.', '7699', '7300', '10%', '6467163cdec85.jpg'),
(13, 'Hassan', 'Hassan', 'Hassan is a district in the Indian state of Karnataka, located in the southern part of the state. Here are some key points about Hassan:\r\n\r\n1. **Historical Significance:** Hassan has a rich history dating back to ancient times. It was ruled by various dynasties, including the Hoysalas, the Vijayanagara Empire, and the Mysore Kingdom. The district is home to numerous historical monuments, temples, and archaeological sites.\r\n\r\n2. **Hoysala Architecture:** One of the main attractions of Hassan is its Hoysala architecture, characterized by intricately carved temples built during the Hoysala dynasty rule in the 11th to 14th centuries. The Chennakesava Temple in Belur, the Hoysaleswara Temple in Halebidu, and the Shravanabelagola Jain Temple are among the finest examples of Hoysala architecture.\r\n\r\n3. **Spiritual Centers:** Hassan is known for its religious diversity and is home to temples, mosques, churches, and Jain basadis. The district hosts various religious festivals and attracts pilgrims from different parts of India.\r\n\r\n4. **Natural Beauty:** While known primarily for its historical and religious significance, Hassan also boasts scenic beauty, with lush green landscapes, rolling hills, and serene water bodies. The region is dotted with parks, gardens, and wildlife sanctuaries.\r\n\r\n5. **Agriculture:** Agriculture is the mainstay of the economy in Hassan. The district is known for its production of crops like paddy, sugarcane, coffee, and areca nut. The favorable climate and fertile soil make it conducive to agriculture.\r\n\r\nOverall, Hassan is a district with a blend of historical heritage, religious diversity, natural beauty, and agricultural prosperity, making it a significant cultural and economic hub in Karnataka.', '8599', '6300', '30%', 'hasana.jpeg'),
(14, 'Hassan', 'Udupi', 'ioio', '44444', '45', '50', '665a126855e24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`) VALUES
(18, 'Udupi', 'Family Package', 'Udupi', 6550, 'Free pickup and drop facility', 'Udupi is a district in the Indian state of Karnataka, known for its historical, religious, and culinary significance. The town of Udupi is famous for the Sri Krishna Temple, dedicated to Lord Krishna, and is one of the most important pilgrimage sites for Hindus. The temple is renowned for its unique worship rituals and is associated with the Dvaita philosophy founded by Sri Madhvacharya.\r\n\r\nApart from its religious significance, Udupi is also known for its distinct vegetarian cuisine, popularly known as Udupi cuisine. Dishes like dosa, idli, vada, sambar, and various rice preparations are widely enjoyed not only in Karnataka but throughout India. Udupi cuisine is characterized by its simplicity, use of fresh ingredients, and emphasis on aromatic spices.\r\n\r\nThe district of Udupi is also blessed with picturesque beaches, including Malpe Beach, which attracts tourists with its golden sands and water sports activities. Additionally, Udupi is known for its educational institutions, including Manipal Academy of Higher Education, which is renowned internationally.', 'Kapu.jpg'),
(19, 'Bengaluru', 'Family', 'Bengaluru', 5999, 'Free pickup and drop facility', 'Bangalore, officially known as Bengaluru, is the capital city of the Indian state of Karnataka. It\'s renowned as the Silicon Valley of India due to its thriving IT industry, which has attracted tech giants and startups alike. The city boasts a pleasant climate year-round and is famous for its lush greenery, earning it the nickname \"Garden City of India.\" Bengaluru is culturally diverse, with a rich heritage reflected in its historic landmarks, temples, palaces, and gardens. Its vibrant food scene offers a delightful mix of traditional South Indian cuisine and international flavors. The city\'s cosmopolitan vibe, dynamic nightlife, and bustling markets make it a favorite destination for tourists and professionals alike.', 'BangalorePalace.jpg'),
(20, 'coorg', 'Couple', 'Kodagu', 8999, 'Free pickup and drop facility', 'Kodagu, also known as Coorg, is a district in the Indian state of Karnataka. It\'s renowned for its scenic beauty, lush coffee plantations, and diverse wildlife. Kodagu is also famous for its rich cultural heritage, including its unique cuisine and traditional Kodava attire. The region attracts tourists for its picturesque landscapes, trekking opportunities, and outdoor activities.', 'coorg.jpg'),
(21, 'Dharmastala', 'Family Package', 'Dakshina Kannada', 4999, 'Free pickup and drop facility', 'Dakshina Kannada is a district in the Indian state of Karnataka, located on the southwestern coast of the state. The district headquarters is Mangalore, which is a major port city and a commercial hub. Dakshina Kannada is known for its rich cultural heritage, diverse linguistic communities, and vibrant traditions.\r\n\r\nThe district is famous for its beautiful coastal stretches, including popular beaches like Panambur, Tannirbhavi, and Surathkal. Mangalore, the largest city in Dakshina Kannada, is known for its historic temples, churches, and mosques, reflecting the cultural diversity of the region. The Kadri Manjunatha Temple, St. Aloysius Chapel, and Sultan Battery are notable landmarks in Mangalore.\r\n\r\nDakshina Kannada is also renowned for its cuisine, which includes a blend of coastal and South Indian flavors. Seafood dishes like Mangalorean fish curry, Neer dosa, and Kori Rotti are popular delicacies enjoyed by locals and visitors alike.\r\n\r\nThe district is home to various educational institutions, including Mangalore University and several engineering and medical colleges. Additionally, Dakshina Kannada is an important agricultural region, known for its cultivation of cash crops like coconut, areca nut, and spices.\r\n\r\nOverall, Dakshina Kannada is a vibrant district with a unique blend of cultural, natural, and economic significance.', 'dharmasthala.jpg'),
(22, 'Murdeshwara', 'Family', 'Uttara Kannada', 5999, 'Free pickup and drop facility', 'Uttara Kannada is a district in the Indian state of Karnataka, situated on the western coast. It is known for its diverse geography, rich cultural heritage, and abundant natural beauty. The district headquarters is Karwar, a picturesque town located along the Arabian Sea.\r\n\r\nUttara Kannada is blessed with lush greenery, stunning waterfalls, pristine beaches, and dense forests, making it a popular destination for nature lovers and adventure enthusiasts. The Western Ghats, a UNESCO World Heritage Site, cover a significant portion of the district and offer opportunities for trekking, wildlife viewing, and exploring the rich biodiversity.\r\n\r\nThe coastline of Uttara Kannada is dotted with beautiful beaches such as Gokarna, Om Beach, and Devbagh, which attract tourists with their golden sands and serene surroundings. Gokarna is also a renowned pilgrimage center, known for its ancient temples and religious significance.\r\n\r\nThe district is home to several wildlife sanctuaries and national parks, including the Kali Tiger Reserve, Anshi National Park, and Dandeli Wildlife Sanctuary, which are habitats for a variety of flora and fauna, including the elusive Bengal tiger.\r\n\r\nUttara Kannada has a vibrant cultural heritage, with influences from various communities such as Konkanis, Kannadigas, and Siddis. The region celebrates numerous festivals and traditional art forms like Yakshagana, a classical dance-drama unique to the coastal regions of Karnataka.\r\n\r\nIn addition to its natural and cultural attractions, Uttara Kannada is also known for its timber and marine industries, as well as its contribution to the state\'s tourism sector. Overall, the district offers a blend of natural splendor, cultural richness, and economic significance.', 'murdeshwara.jpg'),
(23, 'Chikkamagaluru', 'Family Package', 'Chikkamagaluru', 5599, 'Free pickup and drop facility', 'Chikkamagaluru is a district in the Indian state of Karnataka, known for its breathtaking natural beauty, coffee plantations, and hill stations. The district headquarters shares its name with the district and is often referred to as Chikmagalur. Here are some key points about Chikkamagaluru:\r\n\r\n1. **Coffee Plantations:** Chikkamagaluru is often called the \"Coffee Land of Karnataka\" due to its extensive coffee plantations. The region\'s favorable climate and fertile soil make it ideal for growing coffee, and it\'s one of the largest coffee producers in India.\r\n\r\n2. **Hill Stations:** The district is home to several picturesque hill stations, including Kemmangundi, Mullayanagiri, and Baba Budangiri. These hill stations offer stunning views of the Western Ghats, lush greenery, and opportunities for trekking and outdoor activities.\r\n\r\n3. **Natural Beauty:** Chikkamagaluru is blessed with abundant natural beauty, including waterfalls, rivers, and dense forests. Some notable natural attractions include Hebbe Falls, Kalhatti Falls, and Bhadra Wildlife Sanctuary, which is home to diverse flora and fauna.\r\n\r\n4. **Spiritual Centers:** The district is dotted with temples, shrines, and religious centers. The Sharadamba Temple in Sringeri, the Dattatreya Peetha in Baba Budangiri, and the Kodandarama Temple in Hiremagalur are among the prominent spiritual landmarks in Chikkamagaluru.\r\n\r\n5. **Tourism:** Chikkamagaluru attracts tourists from all over India and abroad who come to experience its tranquil surroundings, explore its natural wonders, and enjoy activities like trekking, camping, and birdwatching.\r\n\r\nOverall, Chikkamagaluru is a haven for nature lovers, adventure seekers, and those looking to escape the hustle and bustle of city life amidst serene surroundings.', 'Kudremukh-National-Park.jpg'),
(24, 'Mysuru-City', 'Family Package', 'Mysore', 7699, 'Free pickup and drop facility', 'Mysuru, also called Mysore, city, south-central Karnataka state, southern India. It lies northwest of Chamundi Hill and midway between the Kaveri (Cauvery) and Kabani (Kabbani) rivers on the undulating Deccan plateau at an elevation of 2,525 feet (770 metres). The land surrounding the city is characterized by rain-filled shallow depressions (tanks).\r\n\r\nThe site was mentioned in the epic Mahabharata as Mahishmati (Mahismati). Mysore was known as Purigere in the Mauryan era (3rd century BCE) and later became Mahishapura. It was the administrative capital of the princely state of Mysore from 1799 to 1831 and long was the second most-populous city (after Bengaluru [Bangalore]) of Karnataka state, until being surpassed by Hubballi-Dharwad in the second half of the 20th century. Its urban agglomeration, however, is still the state’s second largest.\r\n\r\nMysuru is an important manufacturing and trading centre, and it has textile (cotton and silk), rice, and oil mills, sandalwood-oil and chemical factories, and tanneries. The suburb of Belagula, to the northwest, produces chrome dyes and chemical fertilizer. The city’s industries are powered by the hydroelectric station near Sivasamudram Island to the east. Mysuru’s cottage industries include cotton weaving, tobacco and coffee processing, and the making of bidis (cigarettes). The area is known for its artwork in ivory, metal, and wood, and the market near the railway station serves as a collection centre for local farm products. The city has an airport, lies at the junction of two northern railway lines, and is a major intersection on India’s principal western road system.\r\nAn ancient fort, rebuilt along European lines in the 18th century, stands in the centre of Mysuru. The fort area comprises Mysore Palace (1912) with its ivory and gold throne, Curzon Park, the Silver Jubilee Clock Tower (1927), Gandhi Square, and two statues of maharajas. To the west, near Gordon Park, are the former British residency (1805), the noted Oriental Library, university buildings, and public offices. Jaganmohan Palace and Lalitha Mahal are other notable buildings. The University of Mysore was founded in 1916; other educational facilities include Maharaja’s College, Maharani’s College for Women, and affiliated colleges of medicine, law, engineering, and teacher training. There are also several institutions for the advancement of Kannada culture.', '6467097f8c7b1.jpg'),
(25, 'hassan', 'Couple', 'hassan', 8599, 'Free pickup and drop facility', 'Hassan is a district in the Indian state of Karnataka, located in the southern part of the state. Here are some key points about Hassan:\r\n\r\n1. **Historical Significance:** Hassan has a rich history dating back to ancient times. It was ruled by various dynasties, including the Hoysalas, the Vijayanagara Empire, and the Mysore Kingdom. The district is home to numerous historical monuments, temples, and archaeological sites.\r\n\r\n2. **Hoysala Architecture:** One of the main attractions of Hassan is its Hoysala architecture, characterized by intricately carved temples built during the Hoysala dynasty rule in the 11th to 14th centuries. The Chennakesava Temple in Belur, the Hoysaleswara Temple in Halebidu, and the Shravanabelagola Jain Temple are among the finest examples of Hoysala architecture.\r\n\r\n3. **Spiritual Centers:** Hassan is known for its religious diversity and is home to temples, mosques, churches, and Jain basadis. The district hosts various religious festivals and attracts pilgrims from different parts of India.\r\n\r\n4. **Natural Beauty:** While known primarily for its historical and religious significance, Hassan also boasts scenic beauty, with lush green landscapes, rolling hills, and serene water bodies. The region is dotted with parks, gardens, and wildlife sanctuaries.\r\n\r\n5. **Agriculture:** Agriculture is the mainstay of the economy in Hassan. The district is known for its production of crops like paddy, sugarcane, coffee, and areca nut. The favorable climate and fertile soil make it conducive to agriculture.\r\n\r\nOverall, Hassan is a district with a blend of historical heritage, religious diversity, natural beauty, and agricultural prosperity, making it a significant cultural and economic hub in Karnataka.', 'hasana.jpeg'),
(26, 'Hampi', 'Family Package', 'Ballari', 5700, 'Free pickup and drop facility', 'The austere, grandiose site of Hampi was the last capital of the last great Hindu Kingdom of Vijayanagar. Its fabulously rich princes built Dravidian temples and palaces which won the admiration of travellers between the 14th and 16th centuries. Conquered by the Deccan Muslim confederacy in 1565, the city was pillaged over a period of six months before being abandoned.\r\nThe austere and grandiose site of Hampi comprise mainly the remnants of the Capital City of Vijayanagara Empire (14th-16th Cent CE), the last great Hindu Kingdom. The property encompasses an area of 4187, 24 hectares, located in the Tungabhadra basin in Central Karnataka, Bellary District.\r\n\r\nHampi’s spectacular setting is dominated by river Tungabhadra, craggy hill ranges and open plains, with widespread physical remains. The sophistication of the varied urban, royal and sacred systems is evident from the more than 1600 surviving remains that include forts, riverside features, royal and sacred complexes, temples, shrines, pillared halls, Mandapas, memorial structures, gateways, defence check posts, stables, water structures, etc.\r\n\r\nAmong these, the Krishna temple complex, Narasimha, Ganesa, Hemakuta group of temples, Achyutaraya temple complex, Vitthala temple complex, Pattabhirama temple complex, Lotus Mahal complex, can be highlighted. Suburban townships (puras) surrounded the large Dravidian temple complexes containing subsidiary shrines, bazaars, residential areas and tanks applying the unique hydraulic technologies and skilfully and harmoniously integrating the town and defence architecture with surrounding landscape. The remains unearthed in the site delineate both the extent of the economic prosperity and political status that once existed indicating a highly developed society.\r\n\r\nDravidian architecture flourished under the Vijayanagara Empire and its ultimate form is characterised by their massive dimensions, cloistered enclosures, and lofty towers over the entrances encased by decorated pillars.\r\n\r\nThe Vitthla temple is the most exquisitely ornate structure on the site and represents the culmination of Vijayanagara temple architecture. It is a fully developed temple with associated buildings like Kalyana Mandapa and Utsava Mandapa within a cloistered enclosure pierced with three entrance Gopurams. In addition to the typical spaces present in contemporary temples, it boasts of a Garuda shrine fashioned as a granite ratha and a grand bazaar street. This complex also has a large Pushkarani (stepped tank) with a Vasantotsava mandapa (ceremonial pavilion at the centre), wells and a network of water channels.', 'hampi.jpeg'),
(27, 'Shivamogga', 'Family Package', 'Shivamogga', 8599, 'Free pickup and drop facility', 'Shivamogga, also known as Shimoga, is a district in the Indian state of Karnataka. Here are some key points about Shivamogga:\r\n\r\n1. **Geography:** Shivamogga is located in the Malnad region of Karnataka, surrounded by lush green hills, forests, and rivers. The district is known for its natural beauty and is often referred to as the \"Gateway to the Western Ghats.\"\r\n\r\n2. **Agriculture:** Agriculture is the primary occupation in Shivamogga, with the cultivation of crops like paddy, areca nut, coconut, and spices being prominent. The district is also known for its extensive production of betel leaves.\r\n\r\n3. **Water Resources:** Shivamogga is blessed with several rivers, including the Tunga, Bhadra, and Sharavathi rivers. The Sharavathi River forms the famous Jog Falls, one of the highest waterfalls in India, which is a major tourist attraction in the region.\r\n\r\n4. **Historical and Cultural Heritage:** The district has a rich historical and cultural heritage, with numerous temples, forts, and archaeological sites. The Shivappa Nayaka Palace, Keladi Temple Complex, and Kodachadri Hill are among the notable historical landmarks in Shivamogga.\r\n\r\n5. **Education and Economy:** Shivamogga is a growing educational and commercial center in Karnataka. It is home to various educational institutions, including the Kuvempu University. The district also has industries related to agro-processing, timber, and textiles.\r\n\r\n6. **Tourism:** Shivamogga attracts tourists with its natural attractions, historical sites, and religious centers. Apart from Jog Falls, other tourist spots include Kodachadri Hill, Sakrebailu Elephant Camp, and Tyavarekoppa Lion and Tiger Safari.\r\n\r\nOverall, Shivamogga is a district with a blend of natural beauty, cultural heritage, and economic significance, making it an important region in Karnataka.', 'joga.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `RegDate`) VALUES
(12, 'MANJUNATH', 'manjunath@gmail.com', '1111', 'user', 'active', '2024-05-25 11:06:43'),
(13, 'MANJUNATH', 'manjunath1@gmail.com', '1111', 'user', 'active', '2024-05-26 06:06:55'),
(14, 'shammu', 'sumapoojari100@gmail.com', '1111', 'user', 'active', '2024-06-03 19:39:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `packageoffer`
--
ALTER TABLE `packageoffer`
  ADD PRIMARY KEY (`OfferId`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `packageoffer`
--
ALTER TABLE `packageoffer`
  MODIFY `OfferId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
