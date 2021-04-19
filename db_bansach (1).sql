-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 31, 2021 lúc 08:01 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_bansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuongBan` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaDH`, `MaSP`, `SoLuongBan`, `DonGia`) VALUES
(1, 1, 1, 81000),
(2, 1, 1, 81000),
(2, 3, 1, 58000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `NgayGiao` date NOT NULL,
  `HoTen` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDH`, `MaKH`, `MaNV`, `NgayLap`, `NgayGiao`, `HoTen`, `DienThoai`, `DiaChi`, `TongTien`, `MaTinhTrang`) VALUES
(1, 1, 2, '2021-01-08', '2021-01-09', 'Phan Minh Mẫn', '0789281272', 'Quảng Nam', 81000, 3),
(2, 1, 2, '2021-01-09', '2021-01-15', 'Phan Minh Mẫn', '0789281231', 'Quảng Nam', 139000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `DienThoai`, `DiaChi`, `TaiKhoan`, `MatKhau`) VALUES
(1, 'Phan Minh Mẫn', 'manminh@gmail.com', '0789281271', 'Quảng Nam', 'man123', '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoai`, `TenLoai`) VALUES
(1, 'Sách Bán Chạy'),
(2, 'Sách Mới Phát Hành');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `GioiTinh`, `NgaySinh`, `DienThoai`, `DiaChi`, `TaiKhoan`, `MatKhau`, `Quyen`) VALUES
(1, 'ADMIN', 'Nam', '1999-01-22', '', '', 'admin', 'admin', 1),
(2, 'Cù Trịnh Phi', 'Nam', '1999-02-03', '0789281272', 'Đà Nẵng', 'phi123', '123', 2),
(3, 'Đào Minh Đức', 'Nam', '1999-06-04', '0789281231', 'Quảng Nam', 'duc123', '123', 2),
(4, 'Lê Minh Trường', 'Nam', '1999-01-31', '0898250324', 'Quảng Nam', 'truong123', '1234', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuongCon` int(11) NOT NULL,
  `NhaXuatBan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `KhoiLuong` int(11) NOT NULL,
  `NgayPhatHanh` date NOT NULL,
  `KichThuoc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SoTrang` int(11) NOT NULL,
  `NgonNgu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TacGia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `HinhAnh`, `DonGia`, `SoLuongCon`, `NhaXuatBan`, `KhoiLuong`, `NgayPhatHanh`, `KichThuoc`, `SoTrang`, `NgonNgu`, `TacGia`, `MoTa`) VALUES
(1, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh (Bìa Mềm) - Tái Bản 2018', 1, 'toi-thay-hoa-vang-tren-co-xanh.jpg', 81000, 12, 'NxB Trẻ', 418, '2018-12-13', '13 x 20cm', 376, 'Tiếng Việt', 'Nguyễn Ngọc Ánh', '“Tôi thấy hoa vàng trên cỏ xanh” truyện dài mới nhất của nhà văn vừa nhận giải văn chương ASEAN Nguyễn Nhật Ánh - đã được Nhà xuất bản Trẻ mua tác quyền và giới thiệu đến độc giả cả nước.\r\n\r\nCuốn sách viết về tuổi thơ nghèo khó ở một làng quê, bên cạnh đề tài tình yêu quen thuộc, lần đầu tiên Nguyễn Nhật Ánh đưa vào tác phẩm của mình những nhân vật phản diện và đặt ra vấn đề đạo đức như sự vô tâm, cái ác. 81 chương ngắn là 81 câu chuyện nhỏ của những đứa trẻ xảy ra ở một ngôi làng: chuyện về con cóc Cậu trời, chuyện ma, chuyện công chúa và hoàng tử, bên cạnh chuyện đói ăn, cháy nhà, lụt lội,...'),
(3, 'Lạnh Lùng', 1, 'lanh-lung.jpg', 58000, 4, 'Nxb Hội Nhà Văn', 360, '2021-01-09', '20.5 x 14.5cm', 224, 'Tiếng Việt', 'Nhất Linh', 'Tiểu thuyết Lạnh lùng của Nhất Linh đăng dài kỳ trên báo Ngày nay, từ số 16 (ngày 12-7-1936) đến số 37 (ngày 6-12-1936), NXB Đời Nay xuất bản lần đầu năm 1937. Lạnh lùng là câu chuyện về Nhung - một góa phụ trẻ tuổi, lòng đầy khát khao yêu đương nhưng bị trói buộc trong nghĩa vụ thủ tiết thờ chồng. Tác phẩm là tiếng nói lên án lễ giáo phong kiến kìm hãm và đi ngược lại quyền sống của con người, đồng thời ngợi ca và cổ vũ tình yêu tự do, giải phóng cá nhân.'),
(4, 'Những Ngày Thơ Ấu (Tái Bản 2020)', 2, 'nhung-ngay-tho-au.jpg', 64000, 16, 'Nxb Hội Nhà Văn', 320, '2021-01-08', '20.5 x 14.5cm', 184, ' Tiếng Việt', 'Nguyên Hồng', 'Những ngày thơ ấu của Nguyên Hồng\r\nHồi ký “Những ngày thơ ấu” là một trong những tác phẩm đặc sắc nhất của Nguyên Hồng, bao gồm thiên hồi ký cùng tên “Những ngày thơ ấu” và bốn truyện ngắn khác, được NXB Đời Nay in lần đầu năm 1940. Với lối viết chân thực giản dị mà thắm đượm trữ tình, tác phẩm đã tái hiện những kỷ niệm sâu sắc về thời thơ ấu nhiều cay đắng của tác giả trong một gia đình không hạnh phúc.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdonhang`
--

CREATE TABLE `tinhtrangdonhang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdonhang`
--

INSERT INTO `tinhtrangdonhang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Mới đặt hàng'),
(2, 'Đã duyệt'),
(3, 'Đã giao'),
(4, 'Đã hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDH`,`MaSP`),
  ADD KEY `chitietdonhang_ibfk_2` (`MaSP`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaTinhTrang` (`MaTinhTrang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `sanpham_ibfk_1` (`MaLoai`);

--
-- Chỉ mục cho bảng `tinhtrangdonhang`
--
ALTER TABLE `tinhtrangdonhang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdonhang`
--
ALTER TABLE `tinhtrangdonhang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrangdonhang` (`MaTinhTrang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisanpham` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
