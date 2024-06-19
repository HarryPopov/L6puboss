-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 17, 2024 kell 11:19 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `kohvikud`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukoha_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `toidukoha_id`) VALUES
(1, 'Flipopia', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vita', 3, 62),
(2, 'Feedmix', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices ve', 2, 91),
(3, 'Aivee', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 7, 71),
(4, 'Jabberstorm', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecen', 9, 76),
(5, 'Babblestorm', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor p', 1, 55),
(6, 'Skaboo', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices ve', 10, 69),
(7, 'Oyope', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ', 6, 45),
(8, 'Eazzy', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 10, 47),
(9, 'Oyope', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 6, 71),
(10, 'Riffpath', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 5, 96),
(11, 'Jaxspan', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 7, 41),
(12, 'Shuffledrive', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 5, 37),
(13, 'Wordware', 'Mauris lacinia sapien quis libero.', 7, 86),
(14, 'Linkbridge', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. V', 4, 79),
(15, 'Centidel', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 3, 20),
(16, 'Trilith', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 10, 82),
(17, 'Mydo', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 3, 7),
(18, 'Devshare', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pha', 3, 64),
(19, 'Skajo', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 8, 32),
(20, 'Wikibox', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 8, 66),
(21, 'Kwinu', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 9, 76),
(22, 'Lazzy', 'Fusce posuere felis sed lacus.', 10, 87),
(23, 'Devcast', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 7, 68),
(24, 'Flashdog', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 4, 67),
(25, 'Topiclounge', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 10, 79),
(26, 'Babbleset', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et t', 8, 1),
(27, 'Digitube', 'In quis justo. Maecenas rhoncus aliquam lacus.', 7, 99),
(28, 'Mita', 'Donec ut mauris eget massa tempor convallis.', 5, 54),
(29, 'Eimbee', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 7, 43),
(30, 'Omba', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integ', 10, 62),
(31, 'Eire', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 2, 64),
(32, 'Ozu', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 3, 75),
(33, 'Jetpulse', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 5, 32),
(34, 'Meeveo', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 3, 75),
(35, 'Geba', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ', 3, 70),
(36, 'Meemm', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 3, 36),
(37, 'Kazu', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 7, 88),
(38, 'Linklinks', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 10, 3),
(39, 'Quaxo', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, 15),
(40, 'Digitube', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 3, 8),
(41, 'Voonder', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 9, 97),
(42, 'Vimbo', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Na', 5, 20),
(43, 'Avaveo', 'Pellentesque ultrices mattis odio.', 3, 49),
(44, 'Wordify', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 5, 16),
(45, 'Dynabox', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 5, 95),
(46, 'Trudeo', 'Etiam faucibus cursus urna.', 3, 99),
(47, 'Tagchat', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id', 10, 44),
(48, 'Reallinks', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 6, 76),
(49, 'InnoZ', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 2, 85),
(50, 'Katz', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse o', 10, 42),
(51, 'Thoughtblab', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit ', 10, 19),
(52, 'Gigashots', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Qui', 2, 77),
(53, 'Omba', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 5, 44),
(54, 'Meevee', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa', 9, 13),
(55, 'Camido', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 4, 88),
(56, 'Kimia', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 8, 11),
(57, 'Lazzy', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie ', 1, 77),
(58, 'Talane', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 5, 82),
(59, 'Gabtune', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 9, 25),
(60, 'Skyba', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 5, 63),
(61, 'Talane', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque', 9, 26),
(62, 'Dabtype', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 7, 98),
(63, 'Brainbox', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus', 6, 14),
(64, 'Wordify', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula ve', 6, 38),
(65, 'Vimbo', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero', 7, 93),
(66, 'Bubblebox', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. M', 4, 74),
(67, 'Feedspan', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcor', 7, 7),
(68, 'Voolith', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 2, 45),
(69, 'Mynte', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 2, 36),
(70, 'Photospace', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 5, 44),
(71, 'Wordify', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculi', 10, 33),
(72, 'Fivebridge', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 9, 2),
(73, 'Dabtype', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est ris', 6, 32),
(74, 'Oyoba', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 8, 31),
(75, 'Camimbo', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 2, 36),
(76, 'Jayo', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 3, 94),
(77, 'Innojam', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris eni', 10, 52),
(78, 'Zoombox', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 7, 52),
(79, 'Photobug', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel ', 6, 73),
(80, 'Oloo', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vita', 7, 27),
(81, 'Aimbu', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. S', 4, 47),
(82, 'Zoombox', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. V', 3, 43),
(83, 'Twitterlist', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 8, 43),
(84, 'Pixoboo', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 8, 23),
(85, 'Skidoo', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue element', 9, 52),
(86, 'Riffwire', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 5, 78),
(87, 'Geba', 'Proin eu mi. Nulla ac enim.', 6, 7),
(88, 'Trunyx', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat du', 7, 65),
(89, 'Centimia', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 8, 20),
(90, 'Bubbletube', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui n', 1, 27),
(91, 'Eare', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', 3, 72),
(92, 'Katz', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip', 9, 33),
(93, 'Voonyx', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 10, 19),
(94, 'Devify', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, 28),
(95, 'Muxo', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, 59),
(96, 'Livetube', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 2, 5),
(97, 'Babbleblab', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea di', 5, 95),
(98, 'Tagchat', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pha', 1, 77),
(99, 'Twinte', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id', 1, 38),
(100, 'Photobug', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 4, 65);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `toidukohad`
--

CREATE TABLE `toidukohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `toidukohad`
--

INSERT INTO `toidukohad` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud`) VALUES
(1, 'Hinze Pavia', 'Durrës', 1.2, 16),
(2, 'Dominique Corp', 'Ban Chalong', 6.3, 37),
(3, 'Tomkin Maestro', 'Mayenne', 4.6, 35),
(4, 'Angelo Cavet', 'Židlochovice', 7.4, 21),
(5, 'Marshall Stilgoe', 'Lavrica', 4.6, 65),
(6, 'Mayor Brockie', 'Shah Alam', 5.2, 94),
(7, 'Boyce Bakhrushkin', 'Lebedyn', 5.6, 92),
(8, 'Athena Tierny', 'Thị Trấn Thất Khê', 3.4, 38),
(9, 'Molly Marzelle', 'Hisya', 6.7, 25),
(10, 'Hy Oddboy', 'Zhijiang', 7.4, 20),
(11, 'Dud Richley', 'Qadsīyā', 4.7, 37),
(12, 'Skippy London', 'Kadipaten', 3.1, 77),
(13, 'Pauli Byfield', 'Danxi', 7.8, 93),
(14, 'Lolly Habens', 'Gemblengmulyo', 4.2, 50),
(15, 'Rosalyn Seman', 'Moluo', 5.3, 56),
(16, 'Lissa Fandrich', 'Geidam', 1.1, 63),
(17, 'Pen Iredale', 'Lyubeshiv', 4.6, 67),
(18, 'Glyn Sorel', 'Neuquén', 5, 24),
(19, 'Ernesta Blagburn', 'Uusikaupunki', 4.9, 86),
(20, 'Flinn Shirt', 'Jining', 5.6, 41),
(21, 'Gabi Houlden', 'Águas de Lindóia', 5.9, 27),
(22, 'Zara Beals', 'Retenggoma', 5.6, 23),
(23, 'Gerrie Di Matteo', 'Jevišovice', 8, 1),
(24, 'Bebe Booeln', 'Indramayu', 6.7, 51),
(25, 'Jeane Barbie', 'Santa Catalina', 1.6, 96),
(26, 'Granger McKew', 'Bakung', 7.5, 32),
(27, 'Joann Pirdy', 'Libog', 8, 50),
(28, 'Kile Parade', 'Kumla', 2.5, 95),
(29, 'Olivier Shillinglaw', 'Norcasia', 9.1, 4),
(30, 'Lyon Cammis', 'Carrières-sur-Seine', 2.7, 18),
(31, 'Sal Cumesky', 'Chuanshan', 7.6, 81),
(32, 'Peggie Dulinty', 'Sājir', 1.8, 56),
(33, 'Lennard Mottershaw', 'Östhammar', 4.3, 80),
(34, 'Carolynn Samarth', 'Xuhang', 1.1, 2),
(35, 'Blake Gillow', 'Kapuskasing', 6.7, 57),
(36, 'Agnella Wrigglesworth', 'Wuluo', 1.4, 61),
(37, 'Richy Sancias', 'Megion', 6.1, 93),
(38, 'Jobina Malafe', 'Kultuk', 6.7, 98),
(39, 'Simona Rawsen', 'Bonoua', 5.6, 7),
(40, 'Kristina Cornborough', 'Rodotópi', 8.9, 61),
(41, 'Gaynor Rotchell', 'Tanshi', 7.4, 80),
(42, 'Carrie Leech', 'Tengah', 7.2, 45),
(43, 'Bard Girdlestone', 'Buga', 4.2, 27),
(44, 'Bobbee Sebborn', 'Zhangjiaji', 1.4, 23),
(45, 'Benjy Duckers', 'Barão de São Miguel', 8.8, 2),
(46, 'Sile Scotford', 'Tomakivka', 8.6, 55),
(47, 'Jud Kundert', 'Fulu', 5.8, 44),
(48, 'Helene Leask', 'Vänersborg', 3.7, 58),
(49, 'Skell Monier', 'Sandayong Sur', 4.2, 49),
(50, 'Ludovika Fritz', 'Baoquan', 3, 97),
(51, 'Shina McDuff', 'Kafr Thulth', 9.7, 71),
(52, 'Cullan Freire', 'Néos Oropós', 3.6, 77),
(53, 'Henryetta Frayn', 'Lysekil', 8.8, 25),
(54, 'Bekki Bartelot', 'Al Mughayyir', 7.2, 68),
(55, 'Gracie Gaudin', 'Semikarakorsk', 3.7, 24),
(56, 'Benedicta De Bischof', 'Sukamaju', 3.6, 29),
(57, 'Lindsy Tosdevin', 'Xixiang', 1.6, 84),
(58, 'Krystle Moorwood', 'Kardítsa', 7.6, 92),
(59, 'Trace Rudram', 'Marttila', 8.4, 89),
(60, 'Ravi Aspy', 'Askeaton', 4.6, 80),
(61, 'Carolus McCathie', 'Chemerivtsi', 9.3, 74),
(62, 'Genia Bollis', 'Thành Phố Hà Giang', 7, 91),
(63, 'Norbert Touhig', 'Old Kilcullen', 9.5, 66),
(64, 'Cass Swindells', 'Margahayukencana', 6.7, 53),
(65, 'Leonora Greystoke', 'Boje', 9.1, 5),
(66, 'Rania Burrow', 'Kruisfontein', 1.5, 23),
(67, 'Drusy Justun', 'Petrovskoye', 3.2, 42),
(68, 'Fitz Whorlton', 'San Antonio', 3.8, 38),
(69, 'Mordecai Dudny', 'Dallas', 4.1, 48),
(70, 'Kalila Yaldren', 'Beidou', 4.3, 83),
(71, 'Amberly Harcarse', 'Matviyivka', 7.1, 24),
(72, 'Merola Masson', 'Caacupé', 7.6, 28),
(73, 'Ediva Argabrite', 'Yŏnan-ŭp', 8.2, 39),
(74, 'Nan Marushak', 'El Coco', 9.6, 2),
(75, 'Mirna Warrilow', 'Baranowo', 9.5, 32),
(76, 'Marilin Hoyer', 'Xiadian', 4.8, 48),
(77, 'Cissiee Jurisch', 'Rujewa', 4.1, 55),
(78, 'Spike Nelthorp', 'Żernica', 6.7, 23),
(79, 'Lebbie Siney', 'Qingshanhu', 2.5, 93),
(80, 'Jo-anne Mirfin', 'Tangjiawan', 8.2, 85),
(81, 'Bax Chritchlow', 'Ramiriquí', 5.5, 30),
(82, 'Stacy Campione', 'Pita Kotte', 5.7, 23),
(83, 'Denny Napton', 'Tamansari', 7.3, 5),
(84, 'Curry Parrott', 'Outlook', 7, 95),
(85, 'Rusty Nassau', 'San Sebastian', 9.9, 82),
(86, 'Wallie Vasilkov', 'Inashiki', 4.4, 41),
(87, 'Dulsea Houlison', 'Karangtengah', 1.5, 86),
(88, 'Everard Lavery', 'Tarlac City', 8.1, 90),
(89, 'Maren Alejandre', 'Krasnovishersk', 8.3, 41),
(90, 'Diego Behrens', 'Rueil-Malmaison', 8.7, 20),
(91, 'Serge Winscum', 'Ippy', 8.8, 39),
(92, 'Vivyan Statham', 'Puhechang', 8, 61),
(93, 'Miles Demonge', 'Vodňany', 9.5, 37),
(94, 'Mace Goucher', 'Xinyang', 9.2, 32),
(95, 'Aura Jobbing', 'Kayunga', 6.6, 58),
(96, 'Garrot Kerbler', 'Girardot', 8.3, 63),
(97, 'Anett Draysey', 'Columbia', 4.8, 89),
(98, 'Stanley Duthy', 'Hegeng', 7.9, 62),
(99, 'Sydel Rudall', 'Mocun', 5.4, 53),
(100, 'Beryle Ison', 'Māmu Kānjan', 5.7, 36);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
