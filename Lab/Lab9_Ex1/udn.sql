-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 02:30 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `udn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `masv` char(3) NOT NULL DEFAULT '',
  `malhp` char(8) NOT NULL DEFAULT '',
  `thoigian` char(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emp`
--

CREATE TABLE `emp` (
  `ma` char(2) NOT NULL DEFAULT '',
  `ten` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `emp`
--

INSERT INTO `emp` (`ma`, `ten`) VALUES
('01', 'Thuong'),
('02', 'Chung'),
('03', 'My'),
('04', 'Binh'),
('05', 'Hong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `magv` char(3) NOT NULL DEFAULT '',
  `hoten` varchar(30) DEFAULT NULL,
  `matkhau` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`magv`, `hoten`, `matkhau`) VALUES
('G01', 'Nguyễn Văn Lành', '1234'),
('G02', 'Hoàng Thị Mỹ Lệ', '1234'),
('G04', 'Ngô Đình Thưởng', '1234'),
('G05', 'Đoàn Duy Bình', '1234'),
('G06', 'Phạm Anh Phương', '1234'),
('G07', 'Lê Văn Mỹ', '1234'),
('G08', 'Nguyễn Thị Lệ Quyên', '1234'),
('G09', 'Ninh Văn Anh', '1234'),
('G10', 'Nguyễn Thị Thu Hoài', '1234'),
('G11', 'Bạch Thu Hà', '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphan`
--

CREATE TABLE `hocphan` (
  `mahp` char(3) NOT NULL DEFAULT '',
  `tenhp` varchar(30) DEFAULT NULL,
  `tinchi` int(1) DEFAULT NULL,
  `tienquyet` char(3) DEFAULT NULL,
  `hocky` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocphan`
--

INSERT INTO `hocphan` (`mahp`, `tenhp`, `tinchi`, `tienquyet`, `hocky`) VALUES
('H01', 'Triết học Mác-Lênin', 3, 'x', '1'),
('H02', 'Tư tưởng Hồ Chí Minh', 2, 'H01', '2'),
('H03', 'Giải tích', 3, 'x', '1'),
('H04', 'Cơ sở dữ liệu', 3, 'x', '2'),
('H05', 'Ngôn ngữ lập trình C', 3, 'x', '2'),
('H06', 'Ngôn ngữ lập trình Java', 3, 'x', '3'),
('H07', 'Lập trình Web nâng cao', 3, 'H07', '4'),
('H08', 'Phân tích & Thiết kế hệ thống', 3, 'H11', '5'),
('H09', 'Anh văn 1', 2, 'x', '1'),
('H10', 'Đồ án', 5, 'H08', '6'),
('H11', 'Cơ sở dữ liệu nâng cao', 3, 'H04', '5'),
('H12', 'Anh văn 2', 2, 'H09', '3'),
('H13', 'Thiết kế Web', 2, 'x', '2'),
('H14', 'Lập trình trực quan', 3, 'x', '4'),
('H15', 'Lập trình ĐTDD', 2, 'H06', '5'),
('H16', 'Công nghệ XML', 3, 'H07', '6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huyen`
--

CREATE TABLE `huyen` (
  `mahuyen` char(4) NOT NULL DEFAULT '',
  `matinh` char(2) NOT NULL DEFAULT '',
  `tenhuyen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `huyen`
--

INSERT INTO `huyen` (`mahuyen`, `matinh`, `tenhuyen`) VALUES
('0101', '01', 'Ba Đình'),
('0102', '02', 'Quận 1'),
('0103', '03', 'Hải Châu'),
('0104', '04', 'Tam Kỳ'),
('0201', '01', 'Hai Bà Trưng'),
('0202', '02', 'Quận 3'),
('0203', '03', 'Thanh Khê'),
('0204', '04', 'Hội An'),
('0301', '01', 'Đông Anh'),
('0302', '02', 'Quận 10'),
('0303', '03', 'Liên Chiểu'),
('0304', '04', 'Đại Lộc'),
('0401', '01', 'Long Biên'),
('0402', '02', 'Củ Chi'),
('0403', '03', 'Ngũ Hành Sơn'),
('0404', '04', 'Điện Bàn'),
('0501', '01', 'Gia Lâm'),
('0503', '03', 'Hoàng Sa'),
('0504', '04', 'Duy Xuyên'),
('0604', '04', 'Quế Sơn'),
('0702', '02', 'Gò Vấp'),
('0704', '04', 'Thăng Bình'),
('0804', '04', 'Núi Thành'),
('0904', '04', 'Phú Ninh'),
('1004', '04', 'Nông Sơn'),
('1104', '04', 'Tiên Phước'),
('1204', '04', 'Trà My'),
('1304', '04', 'Hiệp Đức'),
('1404', '04', 'Phước Sơn'),
('1504', '04', 'Tây Giang'),
('1604', '04', 'Đông Giang'),
('1704', '04', 'Nam Giang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `malhp` char(8) NOT NULL DEFAULT '',
  `masv` char(3) NOT NULL DEFAULT '',
  `diem` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`malhp`, `masv`, `diem`) VALUES
('H0111502', 'S01', 3.00),
('H0121501', 'S01', 4.00),
('H0121501', 'S03', 8.00),
('H0121501', 'S04', 9.00),
('H0121501', 'S05', 5.00),
('H0121501', 'S06', 8.00),
('H0121501', 'S07', 6.00),
('H0121501', 'S08', 9.00),
('H0121501', 'S09', 3.00),
('H0121501', 'S10', 6.00),
('H0121501', 'S11', 5.00),
('H0121501', 'S12', 6.00),
('H0121501', 'S13', 8.00),
('H0121501', 'S14', 9.00),
('H0121501', 'S15', 8.00),
('H0121601', 'S01', 7.00),
('H0221501', 'S01', 8.00),
('H0221501', 'S02', 6.00),
('H0221501', 'S03', 7.00),
('H0221501', 'S04', 9.00),
('H0221501', 'S05', 9.00),
('H0221501', 'S06', 4.00),
('H0221501', 'S07', 2.00),
('H0221501', 'S08', 6.00),
('H0321501', 'S01', 5.00),
('H0321501', 'S03', 3.00),
('H0321501', 'S04', 8.00),
('H0321501', 'S05', 5.00),
('H0321501', 'S06', 6.00),
('H0321501', 'S07', 6.00),
('H0321501', 'S08', 8.00),
('H0321501', 'S09', 9.00),
('H0321501', 'S10', 1.00),
('H0321501', 'S11', 7.00),
('H0321501', 'S12', 2.00),
('H0321501', 'S13', 8.00),
('H0321501', 'S14', 8.00),
('H0321501', 'S15', 9.00),
('H0411502', 'S01', 8.00),
('H0411502', 'S02', 9.00),
('H0411502', 'S03', 9.00),
('H0411502', 'S05', 7.00),
('H0411502', 'S07', 7.00),
('H0411502', 'S09', 8.00),
('H0411502', 'S11', 2.00),
('H0411502', 'S15', 7.00),
('H0421501', 'S02', 7.00),
('H0511501', 'S03', 8.00),
('H0511501', 'S04', 7.00),
('H0511501', 'S06', 8.00),
('H0511501', 'S07', 8.00),
('H0511501', 'S10', 8.00),
('H0511501', 'S12', 7.00),
('H0511501', 'S13', 5.00),
('H0511501', 'S15', 8.00),
('H0511502', 'S01', 8.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salary`
--

CREATE TABLE `salary` (
  `ma` char(2) NOT NULL DEFAULT '',
  `luong` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salary`
--

INSERT INTO `salary` (`ma`, `luong`) VALUES
('01', 2),
('02', 5),
('03', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masv` char(3) NOT NULL DEFAULT '',
  `hoten` varchar(30) DEFAULT NULL,
  `lop` char(4) DEFAULT NULL,
  `diachi` varchar(40) DEFAULT NULL,
  `matkhau` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masv`, `hoten`, `lop`, `diachi`, `matkhau`) VALUES
('S01', 'Nguyễn Hưng Nguyên', 'TUD', 'Cao Bằng', '1234'),
('S02', 'Lê Hoàng Ni', 'TUD', 'Bắc Cạn', '1234'),
('S03', 'Lê Thị Thúy Hằng', 'SPT', 'Lạng Sơn', '1234'),
('S04', 'Nguyễn Thị Thu Thảo', 'SPT', 'Hà Giang', '1234'),
('S05', 'Trần Thị Cẩm Tiên', 'SPT', 'Lai Châu', '1234'),
('S06', 'Nguyễn Đức Bình', '15T', 'Đà Nẵng', '1234'),
('S07', 'Mai Vũ Ngọc Đức', '15T', 'Hà Nội', '1234'),
('S08', 'Ngô Thị Duyên Hải', '15T', 'Quảng Ngãi', '1234'),
('S09', 'Nguyễn Hoàng Minh', '15T', 'Bình Định', '1234'),
('S10', 'Nguyễn Đức Xinh', '15T', 'Kiên Giang', '1234'),
('S11', 'Phan Huy Bách', '15T', 'Bình Thuận', '1234'),
('S12', 'Võ Đình Dương', '15T', 'Ninh Thuận', '1234'),
('S13', 'Đỗ Thiên Giang', '15T', 'Đồng Nai', '1234'),
('S14', 'Trương Thị Năm', '15T', 'Lai Châu', '1234'),
('S15', 'Trần Tiến Quý', '15T', 'Cao Bằng', '1234'),
('S16', 'Lê Thị Thanh Tâm', '15T', 'Quảng Trị', '1234'),
('S17', 'Tạ Quốc Yên Gam', 'XML', 'Đà Nẵng', '1234'),
('S18', 'Nguyễn Thị Kim Cúc', 'XML', 'Thăng Bình', '1234'),
('S19', 'Võ Đức Hiệp', 'XML', 'Đà Nẵng', '1234'),
('S20', 'Mai Văn Hoàng Nhật', 'XML', 'Gia Lai', '1234'),
('S21', 'Trần Nhơn Phú', 'XML', 'Lai Châu', '1234'),
('S22', 'Huỳnh Trọng Cang', 'TUD', 'Rạch Giá', '1234'),
('S23', 'Trịnh Bảo Uyên', 'TUD', 'Bạc Liêu', '1234'),
('S24', 'Nguyễn Hà Duy', 'SPT', 'Vĩnh Long', '1234'),
('S25', 'Nguyễn Hiền Xinh', 'SPT', 'Bến Tre', '1234'),
('S26', 'Lê Huệ Phương', 'TUD', 'Tiền Giang', '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoikhoabieu`
--

CREATE TABLE `thoikhoabieu` (
  `malhp` char(8) NOT NULL DEFAULT '',
  `magv` char(3) DEFAULT NULL,
  `sosv` int(2) DEFAULT NULL,
  `phong` char(4) DEFAULT NULL,
  `thu` char(1) DEFAULT NULL,
  `tiet` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thoikhoabieu`
--

INSERT INTO `thoikhoabieu` (`malhp`, `magv`, `sosv`, `phong`, `thu`, `tiet`) VALUES
('H0111601', 'G01', 80, 'A205', '2', '1-2'),
('H0111602', 'G02', 80, 'A306', '2', '1-2'),
('H0211601', 'G02', 80, 'B106', '3', '1-2'),
('H0211602', 'G03', 80, 'B207', '3', '3-4'),
('H0311601', 'G04', 80, 'A310', '4', '1-2'),
('H0311602', 'G05', 80, 'A301', '4', '3-4'),
('H0411601', 'G06', 80, 'A319', '4', '1-2'),
('H0411602', 'G06', 80, 'B109', '4', '3-4'),
('H0511601', 'G07', 80, 'A118', '5', '1-3'),
('H0511602', 'G01', 80, 'VPK', '3', '1-2'),
('H0611601', 'G07', 80, 'A319', '6', '1-3'),
('H0711602', 'G08', 80, 'A320', '6', '2-5'),
('H0811601', 'G08', 80, 'B101', '7', '1-2'),
('H0911601', 'G05', 80, 'GDC1', '2', '3-4'),
('H1021601', 'G04', 80, 'VPK', '7', '1-2'),
('H1111601', 'G02', 80, 'B207', '7', '3-4'),
('H1221601', 'G03', 80, 'A309', '2', '3-4'),
('H1321601', 'G01', 60, 'B201', '3', '1-2'),
('H1421601', 'G05', 70, 'A209', '3', '3-4'),
('H1511601', 'G04', 70, 'A307', '3', '1-2'),
('H1621601', 'G02', 70, 'A201', '2', '3-4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `matinh` char(2) NOT NULL DEFAULT '',
  `tentinh` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`matinh`, `tentinh`) VALUES
('01', 'Hà Nội'),
('02', 'Thành phố Hồ Chí Minh'),
('03', 'Đà Nẵng'),
('04', 'Quảng Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`masv`,`malhp`);

--
-- Chỉ mục cho bảng `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`ma`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`magv`);

--
-- Chỉ mục cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`mahp`);

--
-- Chỉ mục cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`mahuyen`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`malhp`,`masv`);

--
-- Chỉ mục cho bảng `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`ma`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masv`);

--
-- Chỉ mục cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD PRIMARY KEY (`malhp`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`matinh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
