-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2023 pada 18.28
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_from` varchar(100) NOT NULL,
  `surat_to` varchar(100) NOT NULL,
  `tgl_terima` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `perihal` text NOT NULL,
  `keterangan` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','sekretaris') DEFAULT 'admin',
  `last_login` timestamp NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
(1, 'dody', '$2y$10$9VYCtZJ8JQ0DaGq4F/rbhOLT1uIr1mK6.76yd3Vx84wMMjPr2JqYC', 'dody@gmail.com', 'dody maulana noorjaya', '082150168539', 'admin', '2023-10-27 00:22:20', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
