-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Waktu pembuatan: 08 Jan 2023 pada 14.28
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET TIME_ZONE = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DOBU`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `ARTIKEL` (
  `ID_ARTIKEL` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_ARTIKEL` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `DESC_ARTIKEL` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `THUMBNAIL_ARTIKEL` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `ARTIKEL` (
  `ID_ARTIKEL`,
  `NAME_ARTIKEL`,
  `DESC_ARTIKEL`,
  `THUMBNAIL_ARTIKEL`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '00a78638-8f58-11ed-94f4-005056c00001',
  'Hari Bakti PU ke-74',
  'Kegiatan donor darah yang difasilitasi oleh PMI Daerah Sulawesi Tengah ini, sering kali menjadi salah satu kegiatan rutin yang ditambahkan ke dalam rangkaian acara-acara besar Balai Wilayah Sungai Sulawesi III Palu. Sebab, seperti yang diketahui oleh Sobat Balai, bahwa Donor Darah tidak hanya sebagai kegiatan amal tetapi juga sangat bermanfaat bagi kesehatan tubuh. \r\n\r\n            Donor darah merupakan upaya seseorang dalam memberikan sejumlah darahnya yang ditranfusikan kepada orang lain. Sayangnya, banyak orang takut donor darah dengan beragam alasan. Mulai dari takut jarum suntik hingga takut darahnya habis. Padahal, manfaat donor darah bagi pendonor banyak banget lho. Malahan setelah donor darah, tubuh jadi lebih fit karena produksi darah diperbaharui. Selain itu, tekanan darah jadi lebih stabil. Keuntungan juga bisa didapat bagi mereka yang kelebihan sel darah merah. Karena dengan donor darah, tubuh jadi menyeimbangkan dengan kebutuhan.',
  NULL,
  '2023-01-16 13:25:31',
  '2023-01-25 13:25:31'
),
(
  'e540cd47-8f57-11ed-94f4-005056c00001',
  'Manfaat Rutin Donor Darah',
  'Tahukah Anda bahwa setiap 8 detik, ada satu orang yang membutuhkan transfusi darah di Indonesia dan setiap menitnya, ada 10 orang sekarang menanti donasi donor darah? Menurut Badan Kesehatan Dunia (WHO) tahun 2015, Indonesia kekurangan jumlah produksi darah secara nasional, yaitu sekitar 500 ribu kantong tiap tahunnya. Bisa jadi kesadaran masyarakat untuk menjadi pendonor sukarela masih rendah. Padahal, banyak sekali manfaat rutin donor darah bagi kesehatan pendonornya.\r\n            \r\nMental Health Foundation menyebut, donor darah dapat mengurangi stres, meningkatkan persepsi terhadap keadaan emosional yang meliputi kepuasan hidup dan kebahagiaan hidup (emotional well-being), baik untuk kesehatan tubuh, membantu menyingkirkan perasaan negatif, menciptakan rasa saling memiliki dan mengurangi perasaan kesepian (isolation).',
  NULL,
  '2023-01-09 13:23:53',
  '2023-01-10 13:23:53'
),
(
  'e540eb62-8f57-11ed-94f4-005056c00001',
  'Membantu Orang Lain Sehat, Diri Kita Menjadi Sehat',
  'Mengawali rangkaian kegiatan Peringatan Hari Ulang Tahun Pertambangan Dan Energi (HUT PE) ke-77, Kementerian Energi Dan Sumber Daya Mineral bekerja sama dengan PMI Provinsi DKI melaksanakan kegiatan bakti sosial donor darah. Ditargetkan akan terkumpul sebanyak 200 kantong dari kegiatan donor darah kali ini.\r\n\r\n            \"Berkaitan dengan HUT PE, Kementerian ESDM melaksanakan kegiatan donor darah. Kita mentargetkan yang ikut berpartisipasi dalam kegiatan donor darah kali ini akan terkumpul sebanyak 200 kantong darah, dan yang sudah mendaftar via google form itu 147 orang dan sisanya on site,\"kata Reni Febriana penanggung jawab acara Kegiatan Acara Donor Darah HUT PE 2022. Rabu (21/9).\r\n            \r\n            Reni menambahkan, untuk mendapatkan target 200 kantong darah terkadang diperlukan pendonor melebih target kantong darah karena beberapa pendonor yang mendaftar belum tentu dapat mendonorkan darahnya karena berbagai alasan.',
  NULL,
  '2023-01-08 13:23:53',
  '2023-01-09 13:23:53'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_bank`
--

CREATE TABLE `BOOK_BANK` (
  `ID_BOOK_BANK` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NOVEL` INT(11) NOT NULL,
  `KOMIK` INT(11) NOT NULL,
  `BIOGRAFI` INT(11) NOT NULL,
  `ILMIAH` INT(11) NOT NULL,
  `KAMUS` INT(11) NOT NULL,
  `ATLAS` INT(11) NOT NULL,
  `MAJALAH` INT(11) NOT NULL,
  `DONGENG` INT(11) NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `book_bank`
--

INSERT INTO `BOOK_BANK` (
  `ID_BOOK_BANK`,
  `ID_INSTITUTIONS`,
  `NOVEL`,
  `KOMIK`,
  `BIOGRAFI`,
  `ILMIAH`,
  `KAMUS`,
  `ATLAS`,
  `MAJALAH`,
  `DONGENG`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '0fb8f0ac-7997-3f20-a638-d1708dc1b118',
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  34,
  37,
  41,
  26,
  43,
  36,
  43,
  31,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '1f4101d8-baea-32b4-ade5-684be78212ea',
  '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb',
  45,
  11,
  7,
  11,
  44,
  35,
  22,
  42,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '20b06242-65e0-36cc-b120-ae504148cfaf',
  '05993934-409e-3c74-9559-150c4cee359b',
  48,
  27,
  18,
  13,
  12,
  11,
  7,
  16,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '2442d336-9ac4-3bc4-80e1-39956f373db8',
  '05fae751-7d73-3b41-a567-44843869588f',
  22,
  9,
  36,
  21,
  34,
  50,
  18,
  27,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '278722a6-a972-3a76-9222-318d00564ae2',
  '537b0937-ddf0-3143-afb9-5511d880d50c',
  23,
  22,
  47,
  15,
  27,
  2,
  39,
  38,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '3bf5ed20-776f-3300-87f0-0d6091384baa',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  42,
  21,
  1,
  47,
  26,
  32,
  6,
  44,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '471c30f3-9c3a-34ba-a386-91eecb43f7b5',
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  33,
  27,
  37,
  33,
  42,
  24,
  38,
  10,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '81dac187-8e01-34e6-8fd6-10cadd285cd7',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  1,
  33,
  8,
  22,
  23,
  45,
  40,
  17,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '90d881c2-41d4-3648-a900-363afa496a2b',
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  25,
  37,
  0,
  40,
  35,
  4,
  11,
  36,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '9eb37c1c-95a9-300d-a928-ded293d19d50',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  50,
  32,
  17,
  1,
  47,
  23,
  22,
  4,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'a3cc48c6-571c-39e4-b376-17fe0ceb9878',
  '731ef6df-6171-33fd-bd05-93cd76db2cdd',
  14,
  18,
  18,
  22,
  50,
  35,
  46,
  44,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'b613a02d-1e7d-3e14-9803-77029e54d7ee',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  5,
  20,
  39,
  28,
  42,
  18,
  49,
  24,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'c349cf8c-3b7f-3772-9c4e-71386d772ef6',
  'f1b7740b-30c6-38ae-98f6-a994afbf55e6',
  16,
  35,
  41,
  12,
  12,
  20,
  25,
  0,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'cc93f673-9132-3b2f-9321-c1702db3fb4d',
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  44,
  27,
  11,
  46,
  26,
  2,
  29,
  49,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'f53f49e2-b9b3-3ff2-9584-59ed9bf02310',
  '9ed81d0a-e58a-3d0b-9dd3-91eafab5266f',
  17,
  1,
  11,
  22,
  1,
  12,
  13,
  20,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donators`
--

CREATE TABLE `DONATORS` (
  `ID_DONATORS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `PASSWORD_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `GENDER_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `STATUS_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `RHESUS_TYPE_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONTACT_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ADDRESS_DONATORS` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `POINT_DONATORS` INT(11) NOT NULL DEFAULT 0,
  `PROFILE_IMAGES_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `donators`
--

INSERT INTO `DONATORS` (
  `ID_DONATORS`,
  `NAME_DONATORS`,
  `EMAIL_DONATORS`,
  `PASSWORD_DONATORS`,
  `GENDER_DONATORS`,
  `STATUS_DONATORS`,
  `CONTACT_DONATORS`,
  `ADDRESS_DONATORS`,
  `POINT_DONATORS`,
  `PROFILE_IMAGES_DONATORS`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '2364eef4-1a92-3efd-acc0-07be4865024e',
  'Gantar Prasetya',
  'widodo.irwan@example.net',
  '$2y$10$ykqX7XV//jj4LcdQF7utbOhqjm4BYk/RyLzmql52t7b/BT3WnWf1W',
  'female',
  'A',
  'positive',
  '0848 336 351',
  'Dk. Yos No. 656, Lhokseumawe 30802, Kalbar',
  74,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
),
(
  '246b290d-e2d1-4819-bfde-3ea062c3c282',
  'Diandra Ridha Nurani',
  'diandraridha@gmail.com',
  '$2y$10$nM6F11WVzBKyGRXJbmGfiOVskC.8OzbvrBNz0JBSZHfLGs8P4gYue',
  'male',
  'A',
  'negative',
  '082145198847',
  'Jl bukan jokowi no 69 kyoto, jepang',
  9,
  NULL,
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '3629f5dd-edf8-45e6-9647-8396f4981cf7',
  'Diyas Yakluna Baihaqi',
  'diyasyakluna@gmail.com',
  '$2y$10$uDSbR08fbsK14.IfzjcVbu4Ke2xAuSpMFcMv6/90w7DsZugpGKlRy',
  'male',
  'A',
  'negative',
  '087772934259',
  'Jln. Isekai, mantep mantep aselole jos jos jos',
  66,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
),
(
  '4a916385-5a44-39d2-8c85-88e29cdf846b',
  'Suci Ana Purwanti S.Kom',
  'ivan.puspita@example.net',
  '$2y$10$YnuKSgt90zl5vWfIMX4nAeA2Phurf22izWXXaIpqR0Uv4/5rCdsEO',
  'male',
  'A',
  'positive',
  '0258 7546 7461',
  'Jr. Abdul No. 43, Bandung 33162, DKI',
  76,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
),
(
  '4b10656b-2a32-3b1e-b82d-cdba8df68512',
  'Fathonah Susanti S.Farm',
  'muni12@example.org',
  '$2y$10$E1mZ2JJamfFffCDKnuk3Z.2E44Oxqzui17zdrDmrxuyVmHbEYJ6eC',
  'male',
  'O',
  'positive',
  '(+62) 21 8535 4097',
  'Dk. Pasteur No. 343, Palangka Raya 77746, Riau',
  19,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
),
(
  '741cba6c-eddb-4355-b361-57bf3197d972',
  'Magdalena Edelways Enjelina Pasaribu',
  'magdalnapasaribu@gmail.com',
  '$2y$10$asicMtIpnUOW3yQTvIVb.exCdkDcLiDANCVRRsyy8VeUORca4/58u',
  'male',
  'B',
  'negative',
  '081286226512',
  'Jl. Aster, Kab. Tokyo - Japan',
  79,
  NULL,
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '91c31c3a-0509-3d6b-b74a-9ddc0f1b2369',
  'Dalimin Januar',
  'irnanto.sudiati@example.net',
  '$2y$10$uJQqZqN8.8LbUCWAdbaAjOHU03JMjB29baOwnT9vk/TXQuAVfJ8gy',
  'female',
  'B',
  'negative',
  '022 8476 283',
  'Gg. Dahlia No. 158, Lhokseumawe 97250, DIY',
  56,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
),
(
  'c4b89bd9-604b-3252-8669-671baf205ce4',
  'Rudi Sitorus S.Farm',
  'yoga.novitasari@example.org',
  '$2y$10$ues8d.QCs/hu7TgXbbftl.c940klXX3Q4dGOj/r.ira0VaGEAdFFm',
  'female',
  'AB',
  'positive',
  '0640 2375 275',
  'Ki. Raya Ujungberung No. 660, Denpasar 59925, Sulbar',
  92,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
),
(
  'c76c0253-e9ec-42f5-9faa-9975ff22884a',
  'Aebil Taskari Rusydi',
  'aebiltaskari@gmail.com',
  '$2y$10$JEoL9kdg3fXCSGWOYBXgj.m2xMljumZBB09zr0jW.hBZW0.uPUDxC',
  'male',
  'O',
  'negative',
  '085608845319',
  'Jl.Kediri Raya Weeh, Jawa Timur',
  98,
  NULL,
  '2023-01-08 13:13:26',
  '2023-01-08 13:13:26'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donor_events`
--

CREATE TABLE `DONOR_EVENTS` (
  `ID_DONOR_EVENTS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_DONOR_EVENTS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `START_DATE_DONOR_EVENTS` DATE NOT NULL,
  `END_DATE_DONOR_EVENTS` DATE NOT NULL,
  `START_TIME_DONOR_EVENTS` TIME NOT NULL,
  `END_TIME_DONOR_EVENTS` TIME NOT NULL,
  `DESC_DONOR_EVENTS` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `THUMBNAIL_DONOR_EVENTS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `POINT_DONOR_EVENTS` INT(11) NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `donor_events`
--

INSERT INTO `DONOR_EVENTS` (
  `ID_DONOR_EVENTS`,
  `ID_INSTITUTIONS`,
  `NAME_DONOR_EVENTS`,
  `START_DATE_DONOR_EVENTS`,
  `END_DATE_DONOR_EVENTS`,
  `START_TIME_DONOR_EVENTS`,
  `END_TIME_DONOR_EVENTS`,
  `DESC_DONOR_EVENTS`,
  `THUMBNAIL_DONOR_EVENTS`,
  `POINT_DONOR_EVENTS`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '06423d1e-cff9-49cd-9923-e1246c587b9a',
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  'BERDERMA, Pemuda Siaga Pandemi Bersama Donor Plasma',
  '2023-07-20',
  '2023-08-15',
  '08:00:00',
  '17:00:00',
  'Gandeng PMI, Garda Pemuda NasDem Jabar Gelar Donor Darah dan Plasma',
  NULL,
  21,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '0d37697f-98f3-4d7b-9b62-c3abbb657d3a',
  '05993934-409e-3c74-9559-150c4cee359b',
  'We Share We Can',
  '2023-02-03',
  '2023-12-11',
  '08:00:00',
  '17:00:00',
  'Acara donor darah di awal tahun dengan harapan agar keadaan segera membaik',
  NULL,
  65,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '1185d56f-627a-4e33-aae0-9688d53cff80',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'Donor massal menyambut HUT Kota Bandung',
  '2023-03-29',
  '2023-06-01',
  '08:00:00',
  '17:00:00',
  'Acara donor darah yang diadakan untuk memperingati hari jadi kota bandung',
  NULL,
  10,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '247edc9c-9b7b-47ff-ae76-fa9253f52780',
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  'A Drop for Hopes',
  '2023-07-20',
  '2023-08-15',
  '08:00:00',
  '17:00:00',
  'Secara keseluruhan Tupperware Indonesia berhasil mengumpulkan ribuan kantong darah dari penyelenggaraan acara Donor Darah nasional ',
  NULL,
  18,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '256dddc0-1776-4632-a60d-db8df9269b8f',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'Setetes darah anda sangat berharga',
  '2023-03-03',
  '2023-06-05',
  '08:00:00',
  '17:00:00',
  'Donor darah yang meriah terdapat beberapa tamu undangan top level kota bandung',
  NULL,
  64,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '2c124579-221c-4f32-b3dc-eeb9f53fe870',
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  'Yuk... Donor Darah',
  '2023-03-20',
  '2023-08-15',
  '08:00:00',
  '17:00:00',
  'Diadakan Donor Darah pada setiap sekolah negeri di SMA Se-kota surakarta',
  NULL,
  22,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '42b50978-d45f-4eea-9259-393b80af6063',
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  'Donor Darah bersama PMI Kota Surakarta',
  '2023-02-05',
  '2023-04-01',
  '08:00:00',
  '17:00:00',
  'Pemerintah kota Surakarta bekerjasama dengan PMI untuk menggelar donor darah',
  NULL,
  20,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '4d6c7feb-fb5b-40f2-81c3-fd1b66dbb009',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'Setitik Darah Sejuta Rasa',
  '2023-03-01',
  '2023-06-01',
  '08:00:00',
  '17:00:00',
  '',
  NULL,
  23,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '5ade741c-3c73-474e-a755-5b762e27deb4',
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  'Kegiatan Donor Darah Pemuda Pasar Jaya bersama PMI',
  '2023-06-07',
  '2023-06-25',
  '08:00:00',
  '17:00:00',
  'Donor darah untuk mengingatkan kepada pemuda tentang pentingnya donor darah',
  NULL,
  54,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '5d92bde3-6c7f-4bb9-8f7a-5fa3df7f49fb',
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  'Donor darah satu tetes darah yang berarti bagi mereka',
  '2023-01-01',
  '2023-12-12',
  '08:00:00',
  '17:00:00',
  'Donor darah sebagai penggalangan darah untuk membatu pasien covid',
  NULL,
  86,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '717b1b8c-956d-4bc1-875d-1bed56d1a01c',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'Charity Day - Book Donor',
  '2023-01-20',
  '2023-02-15',
  '08:00:00',
  '17:00:00',
  'Event Donor Darah bersama BluPlaza',
  NULL,
  21,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '7f4ec328-e2cf-4d86-bf40-98f4ecd2842c',
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  'MAP Fashion Book Donation',
  '2023-07-20',
  '2023-10-15',
  '08:00:00',
  '17:00:00',
  'Divisi Fashion MAP bekerja sama dengan PMI Karawang mengadakan kegiatan Donor Darah untuk seluruh karyawan MAP',
  NULL,
  23,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '86b88609-6396-49f0-8434-e766a8beaf09',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'Donor Darah Serentak Seluruh Indonesia',
  '2023-09-23',
  '2023-10-03',
  '08:00:00',
  '17:00:00',
  'Acara Donor darah yang dilaksanakan oleh PMI Indonesia',
  NULL,
  5,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '99f24c93-b69a-4a3b-8f4a-4b793b2183a1',
  '537b0937-ddf0-3143-afb9-5511d880d50c',
  'Aksi Donor Darah',
  '2023-02-22',
  '2023-05-15',
  '08:00:00',
  '17:00:00',
  'Aksi donor darah dan seminar nasional tentang pentingnya donor',
  NULL,
  42,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '9a4be1ac-78be-421d-9d34-f43755ac798e',
  '05993934-409e-3c74-9559-150c4cee359b',
  'Baksos Donor Darah',
  '2023-06-03',
  '2023-06-05',
  '08:00:00',
  '17:00:00',
  'Diadakanya bakti sosial serta donor darah secara sukarela oleh masyarakat',
  NULL,
  35,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'a4467d5b-91c4-448c-bea4-f8cdb07b1700',
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  'Give Book and Keep The World Beating',
  '2023-04-24',
  '2023-05-01',
  '08:00:00',
  '17:00:00',
  'Universitas telkom dan PMI Kota bandung bekerjasama mengadakan acara donor darah',
  NULL,
  76,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'a8feb35e-cba0-40ce-b06c-9de94456c833',
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  'DONOR DARAH LPPM KE-35',
  '2023-06-20',
  '2023-06-25',
  '08:00:00',
  '17:00:00',
  'Kegiatan Donor Darah dalam Rangka LPPM ke-35',
  NULL,
  25,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'cd274d8e-5f5d-4da1-8283-6b3bf98c3489',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  '#darurat donor darah 2.0',
  '2023-02-03',
  '2023-10-15',
  '08:00:00',
  '17:00:00',
  'Penyuluhan tentang pentingnya manusia sehat untuk mendonorkan darahnya',
  NULL,
  98,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'd4e0ca1a-ee5d-4fd0-992c-28cecae3e08d',
  '05fae751-7d73-3b41-a567-44843869588f',
  'Donor darah, share your book save their life',
  '2023-03-03',
  '2023-07-25',
  '08:00:00',
  '17:00:00',
  'PMI seluruh sekolah di kota Surabaya bekerja sama mengadakan donor darah sebanding dengan kebutuhan darah yang meningkat',
  NULL,
  43,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'd928facc-7cab-405a-ae9c-5803f7faa071',
  '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb',
  'Donor Darah Polwan Polres Banyumas',
  '2023-03-02',
  '2023-03-05',
  '08:00:00',
  '17:00:00',
  'Polres kota banyumas menggandeng PMI Kota Banyumas menggelar aksi donor darah',
  NULL,
  22,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'dd8f15af-57ba-4a90-944b-4b777697bf35',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'Donor Darah DWP Jawa Barat',
  '2023-05-14',
  '2023-11-17',
  '08:00:00',
  '17:00:00',
  'Acara Donor Darah pada DWP Jawa Barat',
  NULL,
  14,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'dfb60afe-1040-4ffb-8d3e-dc7c8ddf6be9',
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  'Donor Darah Peringatan Hari Anti Narkotika Internasional 2023',
  '2023-02-15',
  '2023-04-29',
  '08:00:00',
  '17:00:00',
  'Donor darah untuk memperingati hari narkotika nasional 2023',
  NULL,
  35,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'ea22c93c-7d17-4cfa-aa8f-bc046cab7b1e',
  '05fae751-7d73-3b41-a567-44843869588f',
  'PMI day, the day for giving a life with book donation',
  '2023-02-03',
  '2023-06-05',
  '08:00:00',
  '17:00:00',
  'Donor darah oleh pelajar provinsi jawa timur',
  NULL,
  54,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'fa3c88b7-8cbf-4e18-b89e-496651bc709a',
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  'Donor Darah dan Donor Plasma Konvalesen Pertamina RJBT',
  '2023-07-03',
  '2023-07-05',
  '08:00:00',
  '17:00:00',
  'Kegiatan donor darah kerjasama Pertamina dengan PMI',
  NULL,
  15,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  'ff30220a-7e24-41ff-bf80-1ac2814aa5b5',
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  'Donor Darah dan Cek Kesehatan',
  '2023-08-10',
  '2023-08-15',
  '08:00:00',
  '17:00:00',
  'PMI Kota Bekasi mengadakan acara donor darah dan cek kesehatan gratis bagi masyarakat',
  NULL,
  31,
  NULL,
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donor_notes`
--

CREATE TABLE `DONOR_NOTES` (
  `ID_DONOR_NOTES` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_DONATORS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_DONOR_EVENTS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `STATUS_DONOR_NOTES` TINYINT(4) NOT NULL,
  `SCHEDULE_DONOR_NOTES` DATE NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donor_submissions`
--

CREATE TABLE `DONOR_SUBMISSIONS` (
  `ID_DONOR_SUBMISSIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_DONATORS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `RECIPIENT_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `APPLICANT_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `BLOOD_TYPE_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `RHESUS_TYPE_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `QUANTITY_DONOR_SUBMISSIONS` INT(11) NOT NULL,
  `TIME_USED_DONOR_SUBMISSIONS` DATETIME DEFAULT NULL,
  `KTP_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `LETTER_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `STATUS_DONOR_SUBMISSIONS` TINYINT(4) NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `EMPLOYEES` (
  `ID_EMPLOYEES` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `PASSWORD_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONTACT_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ADDRESS_EMPLOYEES` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `EMPLOYEES` (
  `ID_EMPLOYEES`,
  `ID_INSTITUTIONS`,
  `NAME_EMPLOYEES`,
  `EMAIL_EMPLOYEES`,
  `PASSWORD_EMPLOYEES`,
  `CONTACT_EMPLOYEES`,
  `ADDRESS_EMPLOYEES`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '121aac59-93ed-37f7-99da-bf717e12cb9c',
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  'Hartana Balijan Dongoran',
  'hairyanto10@example.com',
  '$2y$10$QtUaqsY5fcXgEvICDotGAe433OnZLKmZ2gGd1mSnCNQO.SB6Sl/FS',
  '0350 7122 9491',
  'Jr. Sutarjo No. 458, Tangerang 28069, Gorontalo',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '297a688e-a961-4db5-894d-b216a840b068',
  '731ef6df-6171-33fd-bd05-93cd76db2cdd',
  '(Admin) Aebil Taskari Rusydi',
  'aebiltaskari@pmi.co.id',
  '$2y$10$.rbEaxsT0lVpOr8ZKZA2Y.vO2HFUbevZse11sCZ591W3WdVsQEwdO',
  '085256433390',
  'Jln A.Lamaggarung, Makassar',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '404b7708-968b-3cee-9468-8a01c036ac90',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'Raihan Marpaung',
  'cengkir.simanjuntak@example.org',
  '$2y$10$7DNbyJz39oK5wWrL1B.faOzPusKJFDXq9g2V7IuqjsWz6Di5RO2dy',
  '(+62) 29 4621 5232',
  'Psr. Moch. Yamin No. 747, Banda Aceh 82786, Sulteng',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '43190297-44c2-440e-a886-4582068a6de8',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  '(Admin) Diandra Ridha Nurani',
  'diandraridha@pmi.co.id',
  '$2y$10$LagGRbcb5m7uHfmcvJIsBeneVTX3VG7BMA6iGuGrp3v99XoMk02XS',
  '082145198847',
  'Jl bukan jokowi, Bandung',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '4a263ff2-49fd-49ab-99eb-891db3fa94b5',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  '(Admin) Magdalena Edelways Enjelina Pasaribu',
  'magdalnapasaribu@pmi.co.id',
  '$2y$10$S7UbMEiFfkymK.yuWXntxeqC4SaIq0BpoblX8DQJmVmLf1cpxpcxy',
  '081286226512',
  'Jln. aster ter, Batak',
  '2023-01-08 13:13:28',
  '2023-01-08 13:13:28'
),
(
  '6d2d8cd7-938e-3b5c-a50b-a6d895cd5d17',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'Ikhsan Anggabaya Siregar',
  'pnainggolan@example.org',
  '$2y$10$A55kZeztWEl3KIFT0gZSmetDzaoXvUwLu8Cn2fo2Gxf7B5/MsyQq6',
  '0807 5846 3108',
  'Jln. Thamrin No. 387, Batu 25849, Aceh',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  'aa131cbb-7a3a-36a0-928c-383df2f542fa',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'Zaenab Suartini S.E.I',
  'tmaryati@example.com',
  '$2y$10$Aeuk0Kjo3hw5xoP7O53uHupanR7TtjFZ/eNSFCgQj3J1LFrmeVt3q',
  '021 1284 973',
  'Psr. Abdul Muis No. 304, Balikpapan 92932, Bali',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  'fd4aab18-563a-4989-a17f-4b7e3e9d48ef',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  '(Admin) Diyas Yakluna Baihaqi',
  'diyasyakluna@dobu.co.id',
  '$2y$10$7.qgrGV12cA0y.x8CITOdO3NCVPVFiKH3VJax3.q9gbcyLIzkqaG6',
  '087772934259',
  'Jln. Isekai timur, Medan',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  'fdb9b2ec-0eca-328e-a469-c6dc4f3b8ecb',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'Emas Sihotang M.Kom.',
  'mustofa.nadine@example.org',
  '$2y$10$i7GPzovamTLEeHqYe38XD.8nc5VKL960vWcSVX179F8.6.xCmvUt.',
  '0840 7659 003',
  'Ki. Jambu No. 580, Payakumbuh 21928, Aceh',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `FAILED_JOBS` (
  `ID` BIGINT(20) UNSIGNED NOT NULL,
  `UUID` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONNECTION` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `QUEUE` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `PAYLOAD` LONGTEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EXCEPTION` LONGTEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `FAILED_AT` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

-- --------------------------------------------------------

--
-- Struktur dari tabel `institutions`
--

CREATE TABLE `INSTITUTIONS` (
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONTACT_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ADDRESS_INSTITUTIONS` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `LONGITUDE_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `LATITUDE_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `institutions`
--

INSERT INTO `INSTITUTIONS` (
  `ID_INSTITUTIONS`,
  `NAME_INSTITUTIONS`,
  `CONTACT_INSTITUTIONS`,
  `EMAIL_INSTITUTIONS`,
  `ADDRESS_INSTITUTIONS`,
  `LONGITUDE_INSTITUTIONS`,
  `LATITUDE_INSTITUTIONS`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'TELKOM UNIVERSITY',
  '(022) 2500095',
  'halo@pmijabar.or.id',
  'Jl. Ir. H. Juanda No.426A, Dago, Kecamatan Coblong, Kota Bandung, Jawa Barat 40135',
  '-6.86324723578973',
  '107.62146541259783',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'PMI Jawa Timur Pusat',
  '(031) 5055173',
  ' jawa_timur@pmi.or.id',
  'Jl. Karang Menjangan 22 Surabaya',
  '-7.263475929872024',
  '112.76294054132508',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '05993934-409e-3c74-9559-150c4cee359b',
  'PMI Surabaya',
  '(031) 99443899',
  'pmisurabaya@pmi.or.id',
  'Jl. Sumatera No.71, Gubeng, Kec. Gubeng, Kota SBY, Jawa Timur 60281',
  '-7.270122660967294',
  '112.7485233269915',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '05fae751-7d73-3b41-a567-44843869588f',
  'Unit Tranfusi Darah Palang Merah Indonesia Kota Surabaya',
  '(031) 531328',
  'contact.pmi@gmail.com',
  'Jl. Embong Ploso No.7-15, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271',
  '-7.267914199486669',
  '112.74577088043364',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  'Palang Merah Indonesia Kabupaten Karawang',
  '(0267) 405190',
  'karang.pmi@yahoo.com',
  'Jl. Jend.Ahmad Yani No.68, By Pass, Nagasari, Kec. Karawang Bar., Kabupaten Karawang, Jawa Barat 41314',
  '-6.299290',
  '107.299850',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  'PMI Kota Bandung',
  '(022) 4207052',
  'pmi.bandung@pmijabar.or.id',
  'Jl. Aceh No.79, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114',
  '-6.90850812347344',
  '107.61962559763123',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'PMI Bogor',
  '(0251) 832 4080',
  'sekretariat@rspmibogor.or.id',
  'Jl. Rumah Sakit I, RT.01/RW.08, Tegallega, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16129',
  '-6.614890',
  '106.812890',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  'PMI (Palang Merah Indonesia) Kota Bekasi',
  '(021) 88960247',
  'markas@pmikotabekasi.or.id',
  'Jl. Pramuka No.1, RT.006/RW.006, Marga Jaya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17141',
  '-6.240870',
  '107.000640',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '537b0937-ddf0-3143-afb9-5511d880d50c',
  'Unit Donor Darah PMI Kota Semarang',
  '(024) 3515050',
  'kota_semarang@pmi.or.id',
  'Jl. Mgr Sugiyopranoto No.31, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50131',
  '-6.984000',
  '110.408450',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '731ef6df-6171-33fd-bd05-93cd76db2cdd',
  'PMI Kota Makassar',
  '(0411) 3621954',
  'pmimakassar@pmi.co.id',
  'Jl. Kandea No.16, Baraya, Kec. Bontoala, Kota Makassar, Sulawesi Selatan 90211',
  '-7.795520',
  '112.009530',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb',
  'Klinik PMI Sokaraja / UDD PMI Kab Banyumas',
  '(0281) 6441014',
  'pmisokaraja@gmail.com',
  'Jl. Pekaja No.37, Dusun II Sokaraja Tengah, Sokaraja Tengah, Kec. Sokaraja, Kabupaten Banyumas, Jawa Tengah 53181',
  '-7.461380',
  '109.286360',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  'PMI Kota Surakarta',
  '(0271) 646505',
  'kota_surakarta@pmi.or.id',
  'Jl. Kolonel Sutarto No.58, Jebres, Kec. Jebres, Kota Surakarta, Jawa Tengah 57126',
  '-7.559450',
  '110.842530',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  'PMI Palang Merah Indonesia',
  '6285755538777',
  'malang@pmi.co.id',
  'Jl. Raya Sidorahayu, Losari, Sidorahayu, Kec. Wagir, Kabupaten Malang, Jawa Timur 65158',
  '-8.012460',
  '112.594800',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  '9ed81d0a-e58a-3d0b-9dd3-91eafab5266f',
  'Palang Merah Indonesia Banyuwangi',
  '(0332) 421868',
  'cspmibanyuwangi@pmi.co.id',
  'Jl. R. A. Kartini, Kepatihan, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur 68411',
  '-8.211760',
  '114.377610',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
),
(
  'f1b7740b-30c6-38ae-98f6-a994afbf55e6',
  'Palang Merah Indonesia Kabupaten Sukabumi',
  '(0266) 236447',
  'info@pmisukabumikab.org',
  'Jl. Raya Sukabumi, Sukaresmi, Kec. Cisaat, Kabupaten Sukabumi, Jawa Barat 43152',
  '-6.912208',
  '106.904933',
  '2023-01-08 13:13:27',
  '2023-01-08 13:13:27'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `MIGRATIONS` (
  `ID` INT(10) UNSIGNED NOT NULL,
  `MIGRATION` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `BATCH` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `MIGRATIONS` (
  `ID`,
  `MIGRATION`,
  `BATCH`
) VALUES (
  1,
  '2014_10_12_000000_create_users_table',
  1
),
(
  2,
  '2014_10_12_100000_create_password_resets_table',
  1
),
(
  3,
  '2019_08_19_000000_create_failed_jobs_table',
  1
),
(
  4,
  '2019_12_14_000001_create_personal_access_tokens_table',
  1
),
(
  5,
  '2023_01_03_072915_create_donators_table',
  1
),
(
  6,
  '2023_01_03_073540_create_institutions_table',
  1
),
(
  7,
  '2023_01_03_073932_create_status_donors_table',
  1
),
(
  8,
  '2023_01_03_074537_create_employees_table',
  1
),
(
  9,
  '2023_01_03_074647_create_book_bank_table',
  1
),
(
  10,
  '2023_01_03_074814_create_donor_submissions_table',
  1
),
(
  11,
  '2023_01_03_074929_create_donor_events_table',
  1
),
(
  12,
  '2023_01_03_075110_create_donor_notes_table',
  1
),
(
  13,
  '2023_01_08_161425_create_artikel_table',
  1
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `PASSWORD_RESETS` (
  `EMAIL` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `TOKEN` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `PERSONAL_ACCESS_TOKENS` (
  `ID` BIGINT(20) UNSIGNED NOT NULL,
  `TOKENABLE_TYPE` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `TOKENABLE_ID` BIGINT(20) UNSIGNED NOT NULL,
  `NAME` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `TOKEN` VARCHAR(64) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ABILITIES` TEXT COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `LAST_USED_AT` TIMESTAMP NULL DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_donor`
--

CREATE TABLE `STATUS_DONOR` (
  `ID_STATUS_DONOR` TINYINT(3) UNSIGNED NOT NULL,
  `NAME_STATUS_DONOR` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `status_donor`
--

INSERT INTO `STATUS_DONOR` (
  `ID_STATUS_DONOR`,
  `NAME_STATUS_DONOR`
) VALUES (
  1,
  'Menunggu Persetujuan'
),
(
  2,
  'Dijadwalkan'
),
(
  3,
  'Diterima'
),
(
  4,
  'Ditolak'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `USERS` (
  `ID` BIGINT(20) UNSIGNED NOT NULL,
  `NAME` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_VERIFIED_AT` TIMESTAMP NULL DEFAULT NULL,
  `PASSWORD` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `REMEMBER_TOKEN` VARCHAR(100) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `ARTIKEL` ADD PRIMARY KEY (`ID_ARTIKEL`);

--
-- Indeks untuk tabel `book_bank`
--
ALTER TABLE `BOOK_BANK` ADD PRIMARY KEY (`ID_BOOK_BANK`);

--
-- Indeks untuk tabel `donators`
--
ALTER TABLE `DONATORS` ADD PRIMARY KEY (`ID_DONATORS`), ADD UNIQUE KEY `DONATORS_EMAIL_DONATORS_UNIQUE` (`EMAIL_DONATORS`);

--
-- Indeks untuk tabel `donor_events`
--
ALTER TABLE `DONOR_EVENTS` ADD PRIMARY KEY (`ID_DONOR_EVENTS`);

--
-- Indeks untuk tabel `donor_notes`
--
ALTER TABLE `DONOR_NOTES` ADD PRIMARY KEY (`ID_DONOR_NOTES`);

--
-- Indeks untuk tabel `donor_submissions`
--
ALTER TABLE `DONOR_SUBMISSIONS` ADD PRIMARY KEY (`ID_DONOR_SUBMISSIONS`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `EMPLOYEES` ADD PRIMARY KEY (`ID_EMPLOYEES`), ADD UNIQUE KEY `EMPLOYEES_EMAIL_EMPLOYEES_UNIQUE` (`EMAIL_EMPLOYEES`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `FAILED_JOBS` ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `FAILED_JOBS_UUID_UNIQUE` (`UUID`);

--
-- Indeks untuk tabel `institutions`
--
ALTER TABLE `INSTITUTIONS` ADD PRIMARY KEY (`ID_INSTITUTIONS`), ADD UNIQUE KEY `INSTITUTIONS_EMAIL_INSTITUTIONS_UNIQUE` (`EMAIL_INSTITUTIONS`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `MIGRATIONS` ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `PASSWORD_RESETS` ADD KEY `PASSWORD_RESETS_EMAIL_INDEX` (`EMAIL`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `PERSONAL_ACCESS_TOKENS` ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `PERSONAL_ACCESS_TOKENS_TOKEN_UNIQUE` (`TOKEN`), ADD KEY `PERSONAL_ACCESS_TOKENS_TOKENABLE_TYPE_TOKENABLE_ID_INDEX` (`TOKENABLE_TYPE`, `TOKENABLE_ID`);

--
-- Indeks untuk tabel `status_donor`
--
ALTER TABLE `STATUS_DONOR` ADD PRIMARY KEY (`ID_STATUS_DONOR`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `USERS` ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `USERS_EMAIL_UNIQUE` (`EMAIL`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `FAILED_JOBS` MODIFY `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `MIGRATIONS` MODIFY `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `PERSONAL_ACCESS_TOKENS` MODIFY `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_donor`
--
ALTER TABLE `STATUS_DONOR` MODIFY `ID_STATUS_DONOR` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `USERS` MODIFY `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;