use QLBanHangg
go
----Cau 1a---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV01', 'Nguyen Thi A', 'NU', 'Ha Nam', '0909777666', 'nta@example.com', N'Kế toán')
----Thực hiện full back up
BACKUP DATABASE [QLBanHangg] TO DISK = 'C:\LeHuyenTran.bak' WITH INIT
go

----Cau 1b---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV02', 'Nguyen Van B', 'NAM', 'Ha Noi', '0909777666', 'nva@example.com', N'Kế toán')
----Thực hiện different backup
BACKUP DATABASE [QLBanHangg] TO DISK = 'C:\LeHuyenTran\Tuan5\different backup.bak' WITH INIT
go

----Cau 1c---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV03', 'Nguyen Thi C', 'NU', 'Ha Nam', '0909777666', 'nva@example.com', N'Kế toán')
----Thực hiện BACKUP LOG
BACKUP LOG [QLBanHangg] TO DISK = 'C:\LeHuyenTran\Tuan5.trn' WITH  FORMAT;
go

----Cau 1d---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV04', 'Nguyen Van D', 'Nam', 'Ha Noi', '0909777666', 'nva@example.com', N'Kế toán')
----Thực hiện BACKUP LOG
BACKUP LOG [QLBanHangg] TO DISK = 'C:\LeHuyenTran\Tuan5.trn' WITH  NOINIT;
go

----Cau 2---------
DROP DATABASE QLBanHangg;

RESTORE DATABASE QLBanHangg
FROM DISK = 'C:\LeHuyenTran\QLBanHang.bak'
WITH STANDBY = 'C:\LeHuyenTran.undo'
go