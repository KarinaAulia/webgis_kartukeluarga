-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for webgis_kk
CREATE DATABASE IF NOT EXISTS `webgis_kk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webgis_kk`;

-- Dumping structure for table webgis_kk.markers
CREATE TABLE IF NOT EXISTS `markers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noKK` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `wa` varchar(20) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `anggotaKeluarga` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_noKK` (`noKK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table webgis_kk.markers: ~20 rows (approximately)
INSERT INTO `markers` (`id`, `noKK`, `alamat`, `wa`, `lat`, `lng`, `anggotaKeluarga`, `created_at`, `updated_at`) VALUES
	(3, '6101001001001001', 'Jl. Merdeka No. 1', '081234567890', -0.008856, 109.296481, '[{"nama":"Siti Aminah","nik":"6101010101010001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1980-01-01"},{"nama":"Budi Santoso","nik":"6101010101010002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Ketapang","tanggal_lahir":"1978-05-10"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:02'),
	(4, '6101001001001002', 'Jl. Sudirman No. 2', '081234567891', -0.010368, 109.301948, '[{"nama":"Nur Aini","nik":"6101010101020001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1982-03-12"},{"nama":"Ahmad Fauzi","nik":"6101010101020002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Pontianak","tanggal_lahir":"1979-08-22"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:02'),
	(5, '6101001001001003', 'Jl. Gatot Subroto No. 3', '081234567892', -0.014357, 109.298, '[{"nama":"Dewi Lestari","nik":"6101010101030001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1985-07-15"},{"nama":"Rudi Hartono","nik":"6101010101030002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Jakarta","tanggal_lahir":"1983-12-05"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:02'),
	(6, '6101001001001004', 'Jl. Diponegoro No. 4', '081234567893', -0.006651, 109.303864, '[{"nama":"Sri Wahyuni","nik":"6101010101040001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1987-09-20"},{"nama":"Hendra Gunawan","nik":"6101010101040002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Surabaya","tanggal_lahir":"1984-11-11"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:02'),
	(7, '6101001001001005', 'Jl. Ahmad Yani No. 5', '081234567894', -0.014026, 109.301568, '[{"nama":"Maya Sari","nik":"6101010101050001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1981-02-14"},{"nama":"Dani Saputra","nik":"6101010101050002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Bandung","tanggal_lahir":"1977-06-19"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:02'),
	(8, '6101001001001006', 'Jl. Pahlawan No. 6', '081234567895', -0.009576, 109.304623, '[{"nama":"Lina Marlina","nik":"6101010101060001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1983-10-08"},{"nama":"Slamet Riyadi","nik":"6101010101060002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Semarang","tanggal_lahir":"1980-01-30"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:03'),
	(9, '6101001001001007', 'Jl. Sultan Agung No. 7', '081234567896', -0.01381688419070302, 109.29837, '[{"nama":"Rina Oktaviani","nik":"6101010101070001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1986-04-17"},{"nama":"Agus Prasetyo","nik":"6101010101070002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Yogyakarta","tanggal_lahir":"1982-09-09"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:03'),
	(10, '6101001001001008', 'Jl. Hasanuddin No. 8', '081234567897', -0.014364530650850905, 109.298925, '[{"nama":"Yuni Astuti","nik":"6101010101080001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1984-05-23"},{"nama":"Eko Susilo","nik":"6101010101080002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Malang","tanggal_lahir":"1981-11-15"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:03'),
	(11, '6101001001001009', 'Jl. Kartini No. 9', '081234567898', -0.005, 109.31, '[{"nama":"Sulastri","nik":"6101010101090001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1982-12-28"},{"nama":"Fajar Nugroho","nik":"6101010101090002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Pontianak","tanggal_lahir":"1979-03-03"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:03'),
	(12, '6101001001001010', 'Jl. Sisingamangaraja No. 10', '081234567899', -0.025, 109.35, '[{"nama":"Wati Rahmawati","nik":"6101010101100001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1985-08-30"},{"nama":"Teguh Wibowo","nik":"6101010101100002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Bekasi","tanggal_lahir":"1981-02-25"}]', '2025-06-12 00:35:43', '2025-06-12 00:59:03'),
	(13, '6101001001001021', 'Jl. Melati No. 21', '081245000021', -0.03, 109.29, '[{"nama":"Rina Dewi","nik":"6101010101210001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1984-05-12"},{"nama":"Andi Saputra","nik":"6101010101210002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Jakarta","tanggal_lahir":"1982-09-08"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(14, '6101001001001022', 'Jl. Kenanga No. 22', '081245000022', 0, 109.33, '[{"nama":"Siti Maesaroh","nik":"6101010101220001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1985-07-20"},{"nama":"Bambang Hermawan","nik":"6101010101220002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Surabaya","tanggal_lahir":"1983-10-15"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(15, '6101001001001023', 'Jl. Anggrek No. 23', '081245000023', -0.015, 109.27, '[{"nama":"Dewi Lestari","nik":"6101010101230001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1987-03-17"},{"nama":"Rudi Hartono","nik":"6101010101230002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Bandung","tanggal_lahir":"1984-12-03"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(16, '6101001001001024', 'Jl. Mawar No. 24', '081245000024', -0.01, 109.41, '[{"nama":"Sri Wahyuni","nik":"6101010101240001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1986-08-22"},{"nama":"Hendra Gunawan","nik":"6101010101240002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Semarang","tanggal_lahir":"1982-11-13"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(17, '6101001001001025', 'Jl. Flamboyan No. 25', '081245000025', 0.005, 109.39, '[{"nama":"Maya Sari","nik":"6101010101250001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1981-02-14"},{"nama":"Dani Saputra","nik":"6101010101250002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Yogyakarta","tanggal_lahir":"1977-06-19"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(18, '6101001001001026', 'Jl. Teratai No. 26', '081245000026', -0.02, 109.25, '[{"nama":"Lina Marlina","nik":"6101010101260001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1983-10-08"},{"nama":"Slamet Riyadi","nik":"6101010101260002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Pontianak","tanggal_lahir":"1980-01-30"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(19, '6101001001001027', 'Jl. Dahlia No. 27', '081245000027', -0.04, 109.37, '[{"nama":"Yuni Astuti","nik":"6101010101270001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1984-05-23"},{"nama":"Eko Susilo","nik":"6101010101270002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Pontianak","tanggal_lahir":"1981-11-15"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(20, '6101001001001028', 'Jl. Cempaka No. 28', '081245000028', -0.035, 109.43, '[{"nama":"Sulastri","nik":"6101010101280001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1982-12-28"},{"nama":"Fajar Nugroho","nik":"6101010101280002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Pontianak","tanggal_lahir":"1979-03-03"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(21, '6101001001001029', 'Jl. Bougenville No. 29', '081245000029', -0.01, 109.28, '[{"nama":"Wati Rahmawati","nik":"6101010101290001","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1985-08-30"},{"nama":"Teguh Wibowo","nik":"6101010101290002","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Pontianak","tanggal_lahir":"1981-02-25"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03'),
	(22, '6101001001001030', 'Jl. Kamboja No. 30', '081245000030', -0.03, 109.3, '[{"nama":"Dian Lestari","nik":"6101010101000044","jenis_kelamin":"Perempuan","agama":"Islam","status":"Kawin","pendidikan":"SMA","tempat_lahir":"Pontianak","tanggal_lahir":"1984-06-14"},{"nama":"Faisal Akbar","nik":"6101010101000045","jenis_kelamin":"Laki-laki","agama":"Islam","status":"Kawin","pendidikan":"S1","tempat_lahir":"Palembang","tanggal_lahir":"1981-12-10"}]', '2025-06-12 00:46:52', '2025-06-12 00:59:03');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
