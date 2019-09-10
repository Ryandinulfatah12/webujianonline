-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Sep 2019 pada 14.33
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `paket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `paket`) VALUES
(1, 'Paket A'),
(2, 'Paket B'),
(3, 'Paket C'),
(4, 'Paket D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`id_pelajaran`, `nama_pelajaran`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Matematika'),
(3, 'Bahasa Inggris'),
(4, 'Teori Kejuruan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nilai`
--

CREATE TABLE `tabel_nilai` (
  `id_nilai` int(4) NOT NULL,
  `id_user` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `kosong` int(4) NOT NULL,
  `point` int(4) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_nilai`
--

INSERT INTO `tabel_nilai` (`id_nilai`, `id_user`, `benar`, `salah`, `kosong`, `point`, `tanggal`) VALUES
(1, 7, 1, 3, 1, 5, '2011-02-13'),
(2, 7, 1, 3, 1, 5, '2011-02-13'),
(3, 7, 5, 0, 0, 25, '2011-02-13'),
(4, 6, 4, 1, 0, 20, '2011-02-13'),
(5, 6, 4, 1, 0, 20, '2011-02-13'),
(6, 6, 0, 4, 1, 0, '2011-02-24'),
(7, 12, 5, 0, 0, 25, '2011-11-20'),
(8, 5, 2, 3, 0, 10, '2011-11-21'),
(9, 5, 2, 1, 2, 10, '2011-11-26'),
(10, 13, 1, 4, 0, 5, '2011-12-27'),
(11, 13, 5, 1, 0, 25, '2011-12-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_soal`
--

CREATE TABLE `tabel_soal` (
  `id_soal` int(4) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  `tipe` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_soal`
--

INSERT INTO `tabel_soal` (`id_soal`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `jawaban`, `publish`, `tipe`) VALUES
(2, 'Agus Ke Kampus Pakai Apa?', 'Mobil', 'Motor', 'Pesawat', 'Jalan Kaki', 'B', 'yes', 1),
(3, 'Warna Kesukaan Kamu Apa?', 'Merah', 'Kuning', 'Biru', 'Orange', 'C', 'yes', 1),
(4, 'Binatang Kesukaan Kamu Apa?', 'Kucing', 'Harimau', 'Kelinci', 'Kodok', 'A', 'yes', 1),
(5, 'Makanan Kesukaan Kamu Apa?', 'Mie Ayam', 'Sate', 'Bakso', 'Nasi Goreng', 'D', 'yes', 1),
(6, 'Olah Raga Kesukaan Kamu Apa?', 'Badminton', 'Bola', 'Voli', 'Jalan Kaki', 'A', 'yes', 1),
(8, 'Siapa Nama Pacar Kamu?', 'Cinta Laura', 'Sandra Dewi', 'Adinda Larasati', 'Siera', 'C', 'no', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nisn` int(11) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `nama_sekolah` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nisn`, `nama`, `email`, `jk`, `nama_sekolah`, `username`, `password`) VALUES
(1, 1, 'Ryan Dinul Fatah', 'ryandinul@gmail.com', 'L', 'SMK N 1 Padaherang', 'ryandf', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indeks untuk tabel `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `tabel_soal`
--
ALTER TABLE `tabel_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tabel_soal`
--
ALTER TABLE `tabel_soal`
  MODIFY `id_soal` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
