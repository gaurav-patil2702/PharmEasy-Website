-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2024 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmeasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_m_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`, `admin_m_no`) VALUES
(1, 'admin@gmail.com', 'fadmin', 'ladmin', 'admin@123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(15) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
(1, 'Accu-Chek Active Glucometer Test Strips Box Of 50', 'Accu-Chek', 'machine', 'The blood sugar levels in your body can be easily checked with Accu-Chek Active Strips. These are tested for accuracy, are easy to use daily and no manual coding is required. You can simply insert a test strip, collect a small blood sample on it, allow it to get absorbed and read your blood glucose result from the display. Accu-Chek Glucometer Test Strips can be used by patients suffering from Type 1 and Type 2 diabetes.  You must not use the Accu-Chek Instant Glucometer Strips beyond the expiry date given on the pack. Accu-Chek Active allows you to double-check and verify the displayed result after your test.', 'Accu-Chek Active Glucometer Test Strips Box Of 50 , machine ,blood glucose test strips', 'Strips.jpg', 49, 800),
(2, 'Oxygen Flow Meter', 'Humidifier', 'machine', 'An oxygen flow meter is a crucial medical device designed to regulate and measure the rate at which oxygen is delivered to a patient during medical treatments or in healthcare settings. This instrument plays a pivotal role in ensuring that individuals receive the appropriate and prescribed amount of oxygen to support respiratory functions.', 'Oxygen Flow Meter', 'Oxygen Flow Meter.png', 49, 1200),
(3, 'Omron Blood Pressure Monitor HEM-7121J', 'Omron', 'machine', 'Omran B.P Monitor Hem-7121J is an automatic Blood Pressure monitoring device that is made with IntelliSense Technology for the comfortability of patient’s use. It indicates OK when the user wraps the cuff, ensuring that the right amount of pressure is applied to generate accurate and faster results. Now get precise and consistent measurements at your home so you can keep a track of your health easily.', 'Omron Blood Pressure Monitor HEM-7121J , check', 'Omron Blood Pressure Monitor HEM-7121J.png', 49, 1999),
(4, 'Omron Compressor Nebulizer Ne-C106', 'Omron', 'machine', 'Now breathe freely and comfortably with Omron Compressor Nebulizer Ne-C106 that helps you to inhale your medications. It is specially designed so you can use it easily and is suitable for both adults and kids.', 'Omron Compressor Nebulizer Ne-C106', 'Omron Compressor Nebulizer Ne-C106.png', 48, 1492),
(5, 'OneTouch Select Plus Simple Glucometer (FREE 10 strips + lancing device + 10 lancets)', 'OneTouch', 'machine', 'OneTouch Select Plus Simple is a blood glucose monitoring system. OneTouch® Select Plus Simple® meter system. Simple to use, Accurate and virtually pain free.   OneTouch® is the #1 recommended brand by diabetologists in India* (*In a survey conducted in India in 2020 with 150 diabetologists).', 'OneTouch Select Plus Simple Glucometer (FREE 10 strips + lancing device + 10 lancets), 1 Kit', 'OneTouch Select Plus Simple Glucometer (FREE 10 strips + lancing device + 10 lancets).png', 47, 871),
(6, 'Accu-Chek Active Blood Glucose Monitoring System With 10 Free Test Strips', 'Accu-Chek', 'machine', 'Accu-Chek Active Blood Glucose Monitoring System allows accurate glucose measurement at home without any hassle. It is a self-testing device that is portable and easier to operate. Get the test results quicker that is easy to understand with this personalized glucose monitoring device.', 'Accu-Chek Active Blood Glucose Monitoring System With 10 Free Test Strips', 'Accu-Chek Active Blood Glucose Monitoring System With 10 Free Test Strips.png', 50, 1321),
(7, 'Apollo Pharmacy Digital Flexible Thermometer', 'Apollo', 'machine', 'The fast response Apollo Digital Thermometer has a high accuracy rate (+- .20 F), has an easy to read LCD display and comes with an long battery life of up to 200 hours Features  High Accuracy (+- .2 degree F) Liquid Crystal Display Memory for storing the last measured value Battery Life: Approx 200 hours Fast Response time ( 10-20 sec approx) Alarm Signal on measurement of temperature. Auto Shut-off.', 'Apollo Pharmacy Digital Flexible Thermometer', 'Apollo Pharmacy Digital Flexible Thermometer.png', 50, 100),
(8, 'Romsons Respirometer SH-6082', 'ROMSONS', 'machine', 'Let your lungs do healthy and efficient exercising with Romsons Respirometer SH-6082. It has a tri-ball setup that enables patients to perform breathing exercises on a step-up basis. Its light design is easy to handle and comes with a transparent body so you can keep checking your respiration performance. Now bring home this innovative breathing and lung apparatus and get started with your efficient breathing exercises.', 'Romsons Respirometer SH-6082', 'Romsons Respirometer SH-6082.png', 49, 275),
(9, 'Prega News Pregnancy Test Card', 'Prega', 'machine', 'Get pregnancy results in just 5 minutes with Prega News Pregnancy Test Card. It is specially designed for assessing pregnancy results at the comfort of your home with 3 drops of the urine sample. It comes with a sample well and result window that makes it easy for using and reading the results so you can detect whether or not you are pregnant super quick.', 'Prega News Pregnancy Test Card', 'Prega News Pregnancy Test Card.png', 49, 55),
(10, 'Polymed Pulse Oximeter CMS50C', 'Polymed', 'machine', 'Bring home the Polymed Pulse Oximeter CMS50C and experience the comfort of keeping track of your oxygen saturation levels. It is designed to let you conveniently monitor the SpO2 and pulse rate at the same time.', 'Polymed Pulse Oximeter CMS50C', 'Polymed Pulse Oximeter CMS50C.png', 50, 750),
(11, 'Freestyle Libre Reader - Flash Glucose Monitoring System', 'ABBOTT', 'machine', 'FreeStyle Libre Reader Glucose Monitoring System - The FreeStyle Libre system allows you to check your glucose with a painless one-second scan, instead of a finger prick.', 'Freestyle Libre Reader - Flash Glucose Monitoring System', 'Freestyle Libre Reader - Flash Glucose Monitoring System.png', 48, 3549),
(12, 'Nivea Men Dark Spot Reduction Face Wash, 100 gm', 'Nivea', 'self-care', 'Nivea Men Dark Spot Reduction Face Wash, available in a 100 gm pack, is crafted to cater specifically to the skincare needs of men. This face wash is designed to offer a multifaceted approach to skincare, primarily focusing on dark spot reduction. The specialized formula aims to diminish the appearance of dark spots, which can result from factors such as prolonged sun exposure, aging, or skin irritation.', 'Nivea Men Dark Spot Reduction Face Wash, 100 gm', 'Nivea Men Dark Spot Reduction Face Wash, 100 gm.png', 49, 184),
(13, 'Dove Pink Beauty Bathing Bar 375 gm', 'Dove', 'self-care', 'Dove Pink Beauty Bathing Bar is a popular soap product from the Dove brand. It is known for its moisturizing properties and gentle cleansing formula. The \"Pink Beauty\" variant may imply a fragrance or color characteristic, often associated with a pleasant and feminine scent', 'Dove Pink Beauty Bathing Bar 375 gm', 'Dove Pink Beauty Bathing Bar 375 gm.png', 48, 99),
(14, 'Garnier Men Turbo Bright Super Serum Gel Moisturizer', 'Garnier', 'self-care', 'The Garnier Men Turbo Bright Super Serum Gel Moisturizer is likely designed to cater to the specific needs of mens skincare. The term super serum gel moisturizer suggests a multi-functional product that combines the benefits of a serum, gel, and moisturizer.', 'Garnier Men Turbo Bright Super Serum Gel Moisturizer', 'Garnier Men Turbo Bright Super Serum Gel Moisturizer.png', 50, 341),
(15, 'Fair & Lovely Advanced Multi Vitamin Cream - 25 g', 'Fair & Lovely', 'self-care', 'The Fair & Lovely range typically includes various skincare products such as creams, lotions, and face washes. These products are designed to address issues like skin tone unevenness, dark spots, and dullness. The formulations often include ingredients like vitamins, antioxidants, and sun protection to enhance the overall health and appearance of the skin.', 'Fair & Lovely Advanced Multi Vitamin Cream - 25 g', 'Fair & Lovely Advanced Multi Vitamin Cream - 25 g.png', 45, 65),
(16, 'Dettol Cool Soap', 'Dettol', 'self-care', 'Dettol Cool Soap is formulated with Dettols trusted germ-fighting ingredients to provide effective protection against bacteria and viruses. The \"Cool\" variant suggests that the soap offers a refreshing and invigorating sensation, possibly through the inclusion of menthol or other cooling agents', 'Dettol Cool Soap', 'Dettol_Cool Soap.png', 49, 60),
(17, 'Nivea Soft Light Moisturising Cream, 300 ml', 'Nivea', 'self-care', 'Garnier Vitamin C Face Wash is a skincare product crafted to provide a refreshing and revitalizing experience for the skin. Infused with Vitamin C, known for its brightening and antioxidant properties, this face wash serves multiple purposes in promoting a healthy complexion. The Vitamin C content works to illuminate the skin, helping to reduce dullness and enhance its natural radiance.', 'Nivea Soft Light Moisturising Cream, 300 ml', 'Nivea Soft Light Moisturising Cream, 300 ml.png', 48, 299),
(18, 'Garnier Vitamin C Face Wash', 'Garnier', 'self-care', 'Garnier Vitamin C Face Wash is a skincare product crafted to provide a refreshing and revitalizing experience for the skin. Infused with Vitamin C, known for its brightening and antioxidant properties, this face wash serves multiple purposes in promoting a healthy complexion. The Vitamin C content works to illuminate the skin, helping to reduce dullness and enhance its natural radiance.', 'Garnier Vitamin C Face Wash', 'Garnier Vitamin C Face Wash.png', 100, 233),
(19, 'White Tone Face powder and face cream combo', 'White Tone', 'self-care', 'The White Tone Face Powder and Face Cream Combo is a skincare and cosmetic package designed to enhance the complexion and provide a radiant, even-toned appearance. This combo typically serves multiple purposes, combining the benefits of both products for comprehensive skincare and makeup application.', 'White Tone Face powder and face cream combo', 'White Tone Face powder and face cream combo.png', 49, 255),
(20, 'Dove Exfoliating Body Polish Scrub for Women - 300g', 'Dove', 'self-care', 'Dove Exfoliating Body Polish Scrub for Women, available in a 300g container, serves as a rejuvenating and pampering addition to a womans skincare routine. This exfoliating scrub is designed to gently remove dead skin cells, leaving the skin feeling smooth, refreshed, and revitalized. The fine exfoliating particles work to unclog pores and promote skin renewal, unveiling a healthier and more radiant complexion.', 'Dove Exfoliating Body Polish Scrub for Women - 300g', 'Dove Exfoliating Body Polish Scrub for Women - 300g.png', 49, 511),
(21, 'Park Avenue Harmony Perfume 100ml', 'Park Avenue', 'self-care', 'Park Avenue Harmony Perfume, available in a 100ml bottle, is a fragrance designed to offer a distinct and captivating olfactory experience. This perfume serves as an accessory for personal grooming, enhancing ones overall presence with its unique scent. The fragrance is likely crafted to provide a harmonious blend of notes, creating a balanced and appealing aroma suitable for various occasions.', 'Park Avenue Harmony Perfume 100ml', 'Park Avenue Harmony Perfume 100ml.png', 48, 299),
(22, 'ENO Fruit Salt Lemon Flavour Powder 30 gm', 'ENO', 'medicine', 'Eno Antacid/Digestive provides fast relief from acidity & gets to work in 6 secs by neutralizing excess stomach acid upon contact. Based on lab studies, ENO powder gets to work faster than leading liquid and tablet antacids. Nothing is better for fast relief from acidity and heartburn than ENO.', 'ENO Fruit Salt Lemon Flavour Powder 30 gm', 'ENO Fruit Salt Lemon Flavour Powder 30 gm.png', 50, 60),
(23, 'Dabur Sugar Free Chyawanprakash 900 gm', 'Dabur', 'medicine', 'Dabur Sugar Free Chyawanprakash, available in a convenient 900 gm packaging, represents a modern and health-conscious adaptation of the traditional Ayurvedic formulation, Chyawanprash. This product is specifically crafted to cater to individuals who are mindful of their sugar intake while seeking the nutritional benefits of this ancient herbal concoction', 'Dabur Sugar Free Chyawanprakash 900 gm', 'Dabur Chyawanprakash Sugar Free 900 gm.png', 50, 352),
(24, 'Mamaearth Ubtan Body Scrub - 200 gm', 'Mamaearth', 'self-care', '\r\nMamaearth Ubtan Body Scrub, available in a convenient 200 gm packaging, stands out as a rejuvenating and natural skincare solution. This product draws inspiration from the age-old Indian tradition of Ubtan, a herbal mixture renowned for its skin-nourishing properties. ', 'Mamaearth Ubtan Body Scrub - 200 gm', 'Mamaearth Ubtan Body Scrub - 200 gm.jpg', 50, 444),
(25, 'Ponds Cream ', 'Ponds', 'self-care', 'Ponds Cream has long been a trusted and iconic skincare product, known for its versatility and effectiveness in addressing various skin concerns. Whether its the classic Ponds Cold Cream or one of their specialized formulations, Ponds creams are designed to provide nourishment and hydration to the skin.', 'Ponds Cream', 'ponds cream.png', 50, 49),
(26, 'Kayam Tablets', 'Kayam', 'medicine', '\r\nKayam Tablet, available in a convenient 30 tablets pack of 5, is a popular herbal remedy that has gained recognition for its role in promoting digestive health. This formulation is crafted with a blend of natural ingredients, often including senna leaves, which have been traditionally known for their laxative properties.', 'Kayam Tablets', 'Kayam Tablet 30 Tablets Pack of 5.png', 50, 115),
(27, 'Maxirich Multivitamin & Minerals Softgel 10 Capsules', 'Cipla', 'medicine', 'Maxirich Multivitamin & Minerals Softgel is a dietary supplement encapsulated in a convenient softgel form, typically available in a pack containing 10 capsules. These softgels are specially formulated to provide a combination of essential vitamins and minerals to support overall health and well-being.', 'Maxirich Multivitamin & Minerals Softgel 10 Capsules', 'Maxirich Multivitamin & Minerals Softgel 10 Capsules.png', 48, 119),
(28, 'Disprin Regular 325 mg, 10 Tablets', 'Disprin', 'medicine', 'Disprin Regular 325 mg tablets contain acetylsalicylic acid, commonly known as aspirin, as their active ingredient. These tablets are designed to provide relief from mild to moderate pain, such as headaches, toothaches, muscle aches, and menstrual pain. Additionally, Disprin Regular is effective in reducing fever associated with various conditions.', 'Disprin Regular 325 mg, 10 Tablets', 'Disprin Regular 325 mg, 10 Tablets.png', 50, 50),
(29, 'Dr Ortho An Ayurvedic Medicine Oil Bottle Of 120 Ml', 'Dr Ortho', 'medicine', 'Dr Ortho Oil is a 100% Ayurvedic formulation that treats pains and inflammations of the muscles and joints. It provides relief from body aches, muscle pains, joint pains as well as painful swellings. Dr Ortho Oil helps to improve the blood flow and enhance the mobility and elasticity of the joints.', 'Dr Ortho An Ayurvedic Medicine Oil Bottle Of 120 Ml', 'Dr Ortho An Ayurvedic Medicine Oil Bottle Of 120 Ml.png', 50, 292),
(30, 'Vicks 3 in 1', 'Vicks', 'medicine', 'Vicks 3-in-1 works in three ways to provide you easy relief and help you back in top form: Soothes Sore Throat – once dissolved in your mouth, provides throat soothing effect to relieve sore throat.', 'Vicks 3 in 1', 'Vicks3in1.png', 50, 29),
(31, 'Himalaya Diabecon DS ,60 Tablets', 'Himalaya', 'medicine', 'Himalaya Diabecon DS ,60 Tablets reduces excessive blood sugar. It also has a regenerative effect on pancreatic beta cells and is insulinotropic, which means that it stimulates the production and activity of insulin. Gymnema temporarily abolishes the taste for sugar and helps decrease sugar cravings.', 'Himalaya Diabecon DS ,60 Tablets', 'Himalaya Diabecon DS ,60 Tablets.png', 49, 190),
(32, 'Revital H Woman 30 Tablets', 'Revital-H', 'medicine', 'Revital H supplements are designed to provide essential vitamins, minerals, and other nutrients to support overall health and well-being. Products targeting women may include specific nutrients like iron, folic acid, calcium, vitamin D, and others that are important for womens health.', 'Revital H Woman 30 Tablets', 'Revital H Woman 30 Tablets.png', 49, 320),
(33, 'Revital H Complete Multivitamin for Men 30 Capsules', 'Revital-H', 'medicine', 'Revital H contains VItamins A, E, C and D, along with Iron and Zinc are immune-boosting vitamins that help to promote a healthy immune system. Energy and stamina: Vitamins D, B1, B2, B3, B6 and B12 are also present in these capsules which are the best vitamins for energy.', 'Revital H Complete Multivitamin for Men 30 Capsules', 'Revital H Complete Multivitamin for Men 30 Capsules.png', 50, 300),
(34, 'Coviself Covid Self Test Kit', 'Mylab', 'machine', 'Mylab CoviSelf COVID-19 Rapid Antigen Self Test Kit is designed to assist you in taking a safe rapid antigen test easily at the comfort of your home. Get your and your family’s immediate COVID-19-19 Rapid Antigen test done quickly and hassle-free with this self-assessing kit. Now you can get tested for COVID-19 in just 15 minutes with this test kit.', 'Coviself Covid Self Test Kit', 'Coviself Covid Self Test Kit.png', 50, 99),
(35, 'Combiflam - Strip of 20 Tablets', 'Sanofi', 'medicine', 'Combiflam is a medication commonly used to alleviate pain and reduce inflammation. Each strip typically contains 20 tablets, and the primary active ingredients in Combiflam are ibuprofen and paracetamol. These ingredients work synergistically to provide effective relief from various types of pain, including headaches, muscle aches, dental pain, and menstrual cramps.', 'Combiflam - Strip of 20 Tablets', 'Combiflam - Strip of 20 Tablets.png', 50, 42),
(36, 'Cheston Cold Total Tablet 10s', 'Cipla', 'medicine', 'Cheston Cold Total Tablet is a medication commonly used to relieve symptoms associated with colds and respiratory infections. It typically contains a combination of active ingredients, each serving a specific purpose', 'Cheston Cold Total Tablet 10s', 'Cheston Cold Total Tablet 10\s.png', 60, 70);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `order_quantity`, `order_date`, `order_status`) VALUES
(233, 32, 1, 1, '2024-03-09', 0),
(234, 36, 1, 1, '2024-03-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL,
  `user_m_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `user_password`, `user_id`, `user_fname`, `user_address`, `user_m_no`) VALUES
('john123@gmail.com', 'Hey1234#', 1, 'John Cena', 'Mumbai', '9878675412'),
('hey123@gmail.com', 'Hey1234#', 2, 'Hlo World', 'Mumbai', '9878987678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
