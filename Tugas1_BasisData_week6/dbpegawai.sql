-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Apr 2024 pada 06.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `berat_badan` float NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmp_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `berat_badan`, `umur`) VALUES
(1, '11111', 'Dwiki Kurniawan', 'Laki-laki', 'Depok', '1998-04-25', 1, 1, 'Depok', 57.85, 41),
(2, '11112', 'Muhammad Iqbal', 'Laki-laki', 'Jakarta', '1991-08-15', 1, 2, 'Jakarta', 49.49, 35),
(3, '11113', 'Asep Saepudin', 'Laki-laki', 'Bogor', '1994-03-22', 1, 3, 'Bogor', 43.91, 37),
(4, '11114', 'Santoso Wibisono', 'Laki-laki', 'Tangerang', '1997-11-02', 1, 4, 'Tangerang', 41.07, 47),
(5, '11115', 'Rika Amelia', 'Perempuan', 'Bekasi', '1993-06-28', 1, 1, 'Bekasi', 43.61, 46),
(6, '22221', 'Andika Permana', 'Laki-laki', 'Bandung', '1995-09-17', 2, 1, 'Bandung', 64.85, 54),
(7, '22222', 'Siti Nurhasanah', 'Perempuan', 'Cimahi', '1992-04-03', 2, 2, 'Cimahi', 63.42, 36),
(8, '22223', 'Dewi Lestari', 'Perempuan', 'Sumedang', '1998-12-19', 2, 3, 'Sumedang', 42.56, 45),
(9, '22224', 'Ridwan Akbar', 'Laki-laki', 'Garut', '1996-07-10', 2, 4, 'Garut', 42.51, 41),
(10, '22225', 'Lina Rahmawati', 'Perempuan', 'Cianjur', '1990-01-05', 2, 1, 'Cianjur', 54.9, 37),
(11, '33331', 'Budi Prakoso', 'Laki-laki', 'Depok', '1999-02-14', 3, 1, 'Depok', 66.96, 44),
(12, '33332', 'Rina Kartika', 'Perempuan', 'Bogor', '1992-09-30', 3, 2, 'Bogor', 40.09, 54),
(13, '33333', 'Adi Nugraha', 'Laki-laki', 'Tangerang', '1995-05-21', 3, 3, 'Tangerang', 69.59, 44),
(14, '33334', 'Sari Mutiara', 'Perempuan', 'Bekasi', '1997-08-13', 3, 4, 'Bekasi', 47.67, 41),
(15, '33335', 'Dian Pertiwi', 'Perempuan', 'Jakarta', '1991-12-06', 3, 1, 'Jakarta', 49.56, 41),
(16, '44441', 'Eko Santoso', 'Laki-laki', 'Jakarta', '1993-03-18', 4, 1, 'Jakarta', 74.8, 47),
(17, '44442', 'Nurmala Azzahra', 'Perempuan', 'Depok', '1996-10-24', 4, 2, 'Depok', 45.34, 38),
(18, '44443', 'Bagus Maulana', 'Laki-laki', 'Bogor', '1994-06-09', 4, 3, 'Bogor', 72.3, 53);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
