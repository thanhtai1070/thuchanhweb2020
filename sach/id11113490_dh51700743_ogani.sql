-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 10, 2020 lúc 05:47 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id11113490_dh51700743_ogani`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `maKh` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `maDh` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `ngaylapDh` date NOT NULL,
  `ngayGiao` date NOT NULL,
  `soluongDat` int(11) NOT NULL,
  `tongtienDh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`maKh`, `maDh`, `ngaylapDh`, `ngayGiao`, `soluongDat`, `tongtienDh`) VALUES
('1407', 'HD213', '2020-02-20', '2020-02-21', 30, 500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKh` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `tenKh` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `emailKh` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `soDienThoai` int(10) NOT NULL,
  `diaChi` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `ngaySinh` date NOT NULL,
  `gioiTinh` int(11) NOT NULL,
  `matKhau` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`maKh`, `tenKh`, `emailKh`, `soDienThoai`, `diaChi`, `ngaySinh`, `gioiTinh`, `matKhau`) VALUES
('01', 'Nguyễn Thanh Tài', 'a@gmail.com', 394519836, 'tân bình', '1999-10-16', 0, '123'),
('04', 'Đinh Thị Tuyết nhi', 'tuyetnhi10062000@gmail.com', 964667760, 'tân bình', '2000-06-10', 1, '123'),
('1407', 'Bùi Võ Thanh Uy', 'uynhasach@gmail.com', 837140799, 'Long An', '0000-00-00', 0, '1407'),
('1800571515', 'nhinhi', 'dinhthituyetnhi@icloud.com', 123456, 'tân bình', '2020-12-10', 1, '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `maLoai` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `tenLoai` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maLoai`, `tenLoai`) VALUES
('1', 'Sách giáo khoa'),
('2', 'sách cuộc sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ncc`
--

CREATE TABLE `ncc` (
  `maNcc` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `diachiNcc` text COLLATE utf8mb4_bin NOT NULL,
  `soluongSp` int(11) NOT NULL,
  `emailNcc` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `sdtNcc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `ncc`
--

INSERT INTO `ncc` (`maNcc`, `diachiNcc`, `soluongSp`, `emailNcc`, `sdtNcc`) VALUES
('CC1', 'Tân Trụ', 30, 'tantrubookstoer@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `tennv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `tennv`, `matkhau`, `quyen`) VALUES
(2, 'admin', '123', 1),
(3, 'admin2', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nxb`
--

CREATE TABLE `nxb` (
  `maNxb` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `tenNxb` text COLLATE utf8mb4_bin NOT NULL,
  `namXb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `nxb`
--

INSERT INTO `nxb` (`maNxb`, `tenNxb`, `namXb`) VALUES
('25', 'Nhà xuất bản Thống Kê', 2000),
('DT', 'NXB Dân Trí', 2018),
('EL', 'NXB ENLIGHT', 2010),
('N23', 'NXB Kim Đồng', 2002),
('PN1', 'NXB Phụ Nữ', 2012),
('VH1', 'NXB Văn Học', 2002);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `maSp` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `tenSp` text COLLATE utf8mb4_bin NOT NULL,
  `maLoai` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `soTrang` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinh` text COLLATE utf8mb4_bin NOT NULL,
  `motaSp` text COLLATE utf8mb4_bin NOT NULL,
  `maNxb` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `maTg` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `maNcc` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`maSp`, `tenSp`, `maLoai`, `soTrang`, `gia`, `hinh`, `motaSp`, `maNxb`, `maTg`, `maNcc`) VALUES
('001', 'TIN HỌC ĐẠI CƯƠNG', '1', 54, 50000, 'OIP..jpg', 'Sách tin học đại cương ', '25', '001', 'CC1'),
('002', 'NHÀ GIẢI KIM', '1', 124, 15000, 'book_nhagiakim.jpg', 'Sách selfhelp', '25', '001', 'CC1'),
('003', 'KẾ TOÁN TÀI CHÍNH', '1', 659, 59000, 'tumblr_oiirv3Mx4i1w15qfho1_400.jpg', 'sách kế toán tài chính', '25', '001', 'CC1'),
('004', 'NGỮ VĂN 9', '1', 56, 24000, 'thuyet-minh-ve-sach-giao-khoa-ngu-van-lop-9.jpg', 'Sách ngữ văn 9 tập 2', 'VH1', '001', 'CC1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `maTg` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `tenTg` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`maTg`, `tenTg`) VALUES
('001', 'Tô Văn Nam'),
('002', 'Paulo'),
('003', 'Trần Xuân Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`maDh`),
  ADD KEY `maKh` (`maKh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maLoai`);

--
-- Chỉ mục cho bảng `ncc`
--
ALTER TABLE `ncc`
  ADD PRIMARY KEY (`maNcc`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `nxb`
--
ALTER TABLE `nxb`
  ADD PRIMARY KEY (`maNxb`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`maSp`),
  ADD KEY `maNxb` (`maNxb`),
  ADD KEY `maTg` (`maTg`),
  ADD KEY `maNcc` (`maNcc`),
  ADD KEY `maLoai` (`maLoai`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`maTg`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`maKh`) REFERENCES `khachhang` (`maKh`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maLoai`) REFERENCES `loai` (`maLoai`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`maTg`) REFERENCES `tacgia` (`maTg`),
  ADD CONSTRAINT `sanpham_ibfk_4` FOREIGN KEY (`maNxb`) REFERENCES `nxb` (`maNxb`),
  ADD CONSTRAINT `sanpham_ibfk_5` FOREIGN KEY (`maNcc`) REFERENCES `ncc` (`maNcc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
