-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2021 pada 13.31
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_keranjang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `produk` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id`, `order_id`, `produk`, `qty`, `harga`) VALUES
(1, 1, 1, 5, '350000'),
(2, 3, 1, 1, '15000'),
(3, 3, 8, 1, '60000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(10) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `nama_kategori`) VALUES
(1, 'Lumpia'),
(2, 'Wingko Babat'),
(3, 'Bandeng Presto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pelanggan` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `tanggal`, `pelanggan`) VALUES
(1, '2021-04-14', 1),
(2, '2021-04-14', 2),
(3, '2021-04-22', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id`, `nama`, `email`, `alamat`, `telp`) VALUES
(1, 'Dhimas', 'Dimasantoni492@gmail.com', 'Pedurungan', '081225046170'),
(2, 'Dhimas', 'Dimasantoni492@gmail.com', 'Pedurungan', '081225046170'),
(3, 'Afrian Dhimas Antoni', 'dimasantoni492@gmail.com', 'Jl.Perbalan Purwosari V 760C, Jl.Perbalan Purwosar', '081225046170');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `kategori` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `gambar`, `kategori`) VALUES
(1, 'Lumpia Goreng', 'Ayam', '15000', 'Lumpia01.png', 1),
(2, 'Lumpia Goreng', 'Udang', '13000', 'Lumpia02.png', 1),
(3, 'Lumpia Goreng', 'Telur', '10000', 'Lumpia03.png', 1),
(4, 'Wingko Babat', 'Pandan', '25000', 'wingkobabat01.png', 2),
(5, 'Wingko Babat', 'Durian', '25000', 'wingkobabat02.png', 2),
(6, 'Wingko Babat', 'Nangka', '25000', 'wingkobabat03.png', 2),
(7, 'Bandeng Presto', 'Bandeng', '60000', 'bandeng01.png', 3),
(8, 'Bandeng Presto', 'Bandeng', '60000', 'bandeng02.png', 3),
(9, 'Bandeng Presto', 'Bandeng', '60000', 'bandeng03.png', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Rizky uhuy', 'Rizky@gmail.com', 'default.jpg', '$2y$10$rAPagC3ZID1Lwg7/5UebAO/20/lLVJvZADWZpBk3lCp/WcF9xuPky', 2, 0, 1619024022),
(2, 'Eudora', 'Eudora@gmail.com', 'default.jpg', '$2y$10$/1LhblDBOAJ5Z4RUAk4b1uxmMiFbvCbK650ssyUIrO64e8YvozDSG', 2, 1, 1619025030),
(4, 'Abdul Abbas', 'abdulabbas@gmail.com', 'default.jpg', '$2y$10$UGpt6wZIk0fj8BkwCjlNn.qA3.B660ydo9dgIwC15E7lpJkajFNPi', 2, 1, 1619025762),
(5, 'Setiawan Muhammad', 'setiawanmuhammad010201@gmail.com', 'default.jpg', '$2y$10$5sxb1Y0uM3krwJPvnVxppOuRy3AlFRr0gsHqBOwzJDYuckrm9UoSS', 2, 1, 1619027557),
(6, 'Supardi Mangkualam', 'supardimangkualam@gmail.com', 'default.jpg', '$2y$10$e5euAD1CPi28VFrnftLKwOUTpVbNs29f8mc7SenBISsjDZ7h3C5B6', 2, 1, 1619047569),
(7, 'User Baru', 'userbaru@gmail.com', 'default.jpg', '$2y$10$STxRiXTlz.UKDa/nxVHgYuKX3RRiIb8MyNe8LY7uAMgXMBPZo1/4K', 2, 1, 1619049559),
(8, 'Abdullah Billy', 'abdullahbilly@gmail.com', 'default.jpg', '$2y$10$m48OrQex/VQCd7rlINwY8eDT2ZCAj0CtIyp8iddmgogHkyo/c1Uje', 1, 1, 1623340458),
(9, 'Pak Dosen', 'pakdosen@gmail.com', 'default.jpg', '$2y$10$8NKk4sfOGUjZNiywbza1XOqyjqyvs9GMO7NPtz.2FxznIl4OvewSe', 2, 1, 1625068479),
(10, 'awy saputra', 'awysaputra@gmail.com', 'default.jpg', '$2y$10$0L1JPwqq0e3v5gydrZChBOZMBbur6.bOx2DFAPz5JBJ.iUrh6wrXy', 2, 1, 1626452407);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
