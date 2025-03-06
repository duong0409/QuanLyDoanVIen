-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2016 lúc 03:04 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ten` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ten`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanphi`
--

CREATE TABLE `doanphi` (
  `madoanvien` int(5) NOT NULL,
  `ngaynop` date NOT NULL,
  `hannop` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doanphi`
--

INSERT INTO `doanphi` (`madoanvien`, `ngaynop`, `hannop`) VALUES
(1, '2015-03-21', '2016-03-21'),
(2, '2015-04-21', '2016-04-21'),
(3, '2015-05-21', '2016-05-21'),
(4, '2015-06-21', '2016-06-21'),
(5, '2015-07-21', '2016-07-21'),
(6, '2015-08-21', '2016-08-21'),
(7, '2015-09-21', '2016-09-21'),
(8, '2015-10-21', '2016-10-21'),
(9, '2015-11-21', '2016-11-21'),
(10, '2015-12-21', '2016-12-21'),
(11, '2015-01-09', '2016-01-09'),
(12, '2015-02-21', '2016-02-21'),
(13, '2016-03-15', '2017-03-15'),
(14, '2016-04-15', '2017-04-15'),
(15, '2016-05-15', '2017-05-15'),
(16, '2016-06-15', '2017-06-15'),
(17, '2016-07-15', '2017-07-15'),
(18, '2016-08-15', '2017-08-15'),
(19, '2016-09-15', '2017-09-15'),
(20, '2016-10-15', '2017-10-15'),
(20, '2016-10-20', '2017-10-20'),
(21, '2016-10-21', '2017-10-21'),
(22, '2016-10-22', '2017-10-22'),
(23, '2016-10-23', '2017-10-23'),
(24, '2016-10-24', '2017-10-24'),
(25, '2016-10-25', '2017-10-25'),
(26, '2016-10-26', '2017-10-26'),
(27, '2016-10-27', '2017-10-27'),
(28, '2016-10-28', '2017-10-28'),
(29, '2016-10-29', '2017-10-29'),
(30, '2016-10-30', '2017-10-30'),
(32, '2016-05-12', '2017-05-12'),
(33, '2016-05-13', '2017-05-13'),
(34, '2016-05-14', '2017-05-14'),
(35, '2016-05-15', '2017-05-15'),
(36, '2016-05-16', '2017-05-16'),
(37, '2016-05-17', '2017-05-17'),
(38, '2016-05-18', '2017-05-18'),
(39, '2016-05-19', '2017-05-19'),
(40, '2016-05-30', '2017-05-30'),
(41, '2016-07-20', '2017-07-20'),
(42, '2016-07-22', '2017-07-22'),
(43, '2016-07-23', '2017-07-23'),
(44, '2016-07-24', '2017-07-24'),
(45, '2016-07-25', '2017-07-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanvien`
--

CREATE TABLE `doanvien` (
  `madoanvien` int(5) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `malop` int(11) NOT NULL,
  `que` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoatdong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiohientai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayvaodoan` date NOT NULL,
  `noivaodoan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doanvien`
--

INSERT INTO `doanvien` (`madoanvien`, `hoten`, `malop`, `que`, `hoatdong`, `noiohientai`, `ngayvaodoan`, `noivaodoan`) VALUES
(1, 'Nguyễn Hoàng Dũng', 1, 'Ninh Bình', 'Tốt', 'Hà Nội', '2013-05-18', 'Ninh Bình'),
(2, 'Lê Việt Hùng', 1, 'Hà Nam', 'Khá', 'Hà Nội', '2013-03-12', 'Hà Nam'),
(3, 'Hoàng Mạnh Tấn', 1, 'Ninh Bình', 'Yếu', 'Hà Nội', '2013-05-05', 'Ninh Bình'),
(4, 'Hoàng Trọng Nhân', 1, 'Quảng Trị', 'Tốt', 'Hà Nội', '2013-07-20', 'Quảng Trị'),
(5, 'Lê Việt Mạnh', 1, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-01-20', 'Phủ Lý'),
(6, 'Hoàng Minh Hiền', 2, 'Ninh Bình', 'Tốt', 'Hà Nội', '2013-05-18', 'Ninh Bình'),
(7, 'Dỗ Tiến Anh', 2, 'Hà Nam', 'Khá', 'Hà Nội', '2013-03-12', 'Hà Nam'),
(8, 'Nguyễn Thị Na', 2, 'Vĩnh Phúc', 'Yếu', 'Hà Nội', '2013-09-09', 'Vĩnh Phúc'),
(9, 'Lê Quế Anh', 2, 'Quảng Nam', 'Tốt', 'Hà Nội', '2013-03-20', 'Quảng Nam'),
(10, 'Chu Đức Mạnh', 2, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-07-22', 'Phủ Lý'),
(11, 'Lại Trọng Nhân', 3, 'Gia Lâm', 'Tốt', 'Hà Nội', '2013-02-22', 'Gia Lâm'),
(12, 'Đỗ Huy Hùng', 3, 'Hà Nam', 'Khá', 'Hà Nội', '2013-04-11', 'Hà Nam'),
(13, 'Tống Thị Kim', 3, 'Bắc Ninh', 'Yếu', 'Hà Nội', '2013-05-05', 'Bắc Ninh'),
(14, 'Nguyễn Việt Lê', 3, 'Nam Định', 'Tốt', 'Hà Nội', '2013-06-12', 'Nam Định'),
(15, 'Đào Thị Hà', 3, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-01-20', 'Phủ Lý'),
(16, 'Hoàng Mạnh Nghĩa', 4, 'Ninh Bình', 'Tốt', 'Hà Nội', '2013-05-18', 'Ninh Bình'),
(17, 'Nông Đức Hoàng', 4, 'Hà Nam', 'Khá', 'Hà Nội', '2013-04-13', 'Hà Nam'),
(18, 'Nguyễn Văn Sơn', 4, 'Quảng Ninh', 'Yếu', 'Hà Nội', '2013-11-21', 'Quảng Ninh'),
(19, 'Lại Mạnh Thắng', 4, 'Quảng Trị', 'Tốt', 'Hà Nội', '2013-12-11', 'Quảng trị'),
(20, 'Chu Việt Hùng', 4, 'Hà Nam', 'Khá', 'Hà Nội', '2013-10-30', 'Hà Nam'),
(21, 'Nguyễn Việt Lê', 5, 'Bắc Ninh', 'Tốt', 'Hà Nội', '2013-05-14', 'Bắc Ninh'),
(22, 'Lê Mạnh Hoàng', 5, 'Hà Nam', 'Khá', 'Hà Nội', '2013-03-30', 'Hà Nam'),
(23, 'Hoàng Mạnh Tùng', 5, 'Thái Bình', 'Yếu', 'Hà Nội', '2013-05-14', 'Thái Bình'),
(24, 'Hoàng Đại Nam', 5, 'Quảng Trị', 'Tốt', 'Hà Nội', '2013-07-24', 'Quảng trị'),
(25, 'Lê Việt Đức', 5, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-03-20', 'Phủ Lý'),
(26, 'Nguyễn Hoàng Dũng', 6, 'Ninh Bình', 'Tốt', 'Hà Nội', '2013-05-18', 'Ninh Bình'),
(27, 'Lê Việt Hùng', 6, 'Hà Nam', 'Khá', 'Hà Nội', '2013-03-12', 'Hà Nam'),
(28, 'Hoàng Mạnh Tấn', 6, 'Ninh Bình', 'Yếu', 'Hà Nội', '2013-05-05', 'Ninh Bình'),
(29, 'Hoàng Trọng Nhân', 6, 'Quảng Trị', 'Tốt', 'Hà Nội', '2013-07-20', 'Quảng trị'),
(30, 'Lê Việt Mạnh', 6, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-01-20', 'Phủ Lý'),
(31, 'Nguyễn Lê Việt', 7, 'Thái Bình', 'Tốt', 'Hà Nội', '2013-05-14', 'Thái Bình'),
(32, 'Lê Việt Huy', 7, 'Hà Nội', 'Khá', 'Hà Nội', '2013-03-23', 'Hà Nội'),
(33, 'Hoàng Mạnh Tùng', 7, 'Ninh Bình', 'Yếu', 'Hà Nội', '2013-05-14', 'Ninh Bình'),
(34, 'Hoàng Trọng Hải', 7, 'Quảng Nam', 'Tốt', 'Hà Nội', '2013-07-20', 'Quảng Nam'),
(35, 'Lê Việt Anh', 7, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-01-24', 'Phủ Lý'),
(36, 'Nguyễn Hoàng Hải', 8, 'Ninh Bình', 'Tốt', 'Hà Nội', '2013-02-18', 'Ninh Bình'),
(37, 'Lê Việt Bình', 8, 'Hà Nam', 'Khá', 'Hà Nội', '2013-03-12', 'Hà Nam'),
(38, 'Hoàng Mạnh Sơng', 8, 'Ninh Bình', 'Yếu', 'Hà Nội', '2013-03-05', 'Ninh Bình'),
(39, 'Hoàng Trọng Nhàn', 8, 'Phú Yên', 'Tốt', 'Hà Nội', '2013-12-20', 'Phú Yên'),
(40, 'Lê Việt Hương', 8, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-01-11', 'Phủ Lý'),
(41, 'Nguyễn Huy Dũng', 9, 'Ninh Bình', 'Tốt', 'Hà Nội', '2013-05-18', 'Ninh Bình'),
(42, 'Lê Việt Dũng', 9, 'Hà Nam', 'Khá', 'Hà Nội', '2013-03-12', 'Hà Nam'),
(43, 'Hoàng Thị Mai', 9, 'Phủ Lý', 'Yếu', 'Hà Nội', '2013-05-05', 'Phủ Lý'),
(44, 'Hoàng Lại Nhân', 9, 'Lạng Sơn', 'Tốt', 'Hà Nội', '2013-07-20', 'Lạng Sơn'),
(45, 'Lê Vân Mạnh', 9, 'Phủ Lý', 'Khá', 'Hà Nội', '2013-01-20', 'Phủ Lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `makhoahoc` int(5) NOT NULL,
  `tenkhoahoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaybatdau` date DEFAULT NULL,
  `ngayketthuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`makhoahoc`, `tenkhoahoc`, `ngaybatdau`, `ngayketthuc`) VALUES
(1, 'K35', '2016-05-17', '2019-05-17'),
(2, 'K36', '2016-07-25', '2019-07-25'),
(3, 'K37', '2016-06-30', '2019-06-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `malop` int(5) NOT NULL,
  `tenlop` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `manganh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`malop`, `tenlop`, `manganh`) VALUES
(1, 'CNTT1', 1),
(2, 'CNTT2', 2),
(3, 'CNTT3', 3),
(4, 'QTKD1', 4),
(5, 'QTKD2', 5),
(6, 'QTKD3', 6),
(7, 'KTXD1', 7),
(8, 'KTXD2', 8),
(9, 'KTXD3', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhhoc`
--

CREATE TABLE `nganhhoc` (
  `manganh` int(5) NOT NULL,
  `tennganh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `makhoahoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nganhhoc`
--

INSERT INTO `nganhhoc` (`manganh`, `tennganh`, `makhoahoc`) VALUES
(1, 'Điện', 1),
(2, 'Công nghệ thông tin', 1),
(3, 'Cơ Khí', 1),
(4, 'Quản trị kinh doanh', 2),
(5, 'Tài chính ngân hàng', 2),
(6, 'Công nghệ ô tô', 2),
(7, 'Tin học kế toán', 3),
(8, 'Xây dựng', 3),
(9, 'Tự động hóa', 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `doanphi`
--
ALTER TABLE `doanphi`
  ADD KEY `madoanvien` (`madoanvien`);

--
-- Chỉ mục cho bảng `doanvien`
--
ALTER TABLE `doanvien`
  ADD PRIMARY KEY (`madoanvien`),
  ADD KEY `malop` (`malop`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`makhoahoc`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `manganh` (`manganh`);

--
-- Chỉ mục cho bảng `nganhhoc`
--
ALTER TABLE `nganhhoc`
  ADD PRIMARY KEY (`manganh`),
  ADD KEY `makhoahoc` (`makhoahoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `doanvien`
--
ALTER TABLE `doanvien`
  MODIFY `madoanvien` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `makhoahoc` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `malop` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `nganhhoc`
--
ALTER TABLE `nganhhoc`
  MODIFY `manganh` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `doanphi`
--
ALTER TABLE `doanphi`
  ADD CONSTRAINT `doanphi_ibfk_1` FOREIGN KEY (`madoanvien`) REFERENCES `doanvien` (`madoanvien`);

--
-- Các ràng buộc cho bảng `doanvien`
--
ALTER TABLE `doanvien`
  ADD CONSTRAINT `doanvien_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`manganh`) REFERENCES `nganhhoc` (`manganh`);

--
-- Các ràng buộc cho bảng `nganhhoc`
--
ALTER TABLE `nganhhoc`
  ADD CONSTRAINT `nganhhoc_ibfk_1` FOREIGN KEY (`makhoahoc`) REFERENCES `khoahoc` (`makhoahoc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
