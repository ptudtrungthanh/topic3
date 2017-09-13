create database QLSV
on primary
(
 name=qlsv_data,filename='D:\CSDL_QLSV\qlsv_data.mdf',size=20,maxsize=40,filegrowth=20%
)

log on
(
 name=qlsv_datalog,filename='D:\CSDL_QLSV\qlsv_datalog.ldf',size=20,maxsize=40,filegrowth=20%
)
sp_helpdb QLSV
----------------------
use QLSV
---------------------
create table SINHVIEN (STT int  ,MaSV nvarchar(10) not null primary key, HoTenSV nvarchar(30),NoiSinh nvarchar(120),NgaySinh Datetime check (NgaySinh<Getdate()),
Khoa nvarchar(40),Toan double, Ly double, Hoa double, DiemTB double)

insert into SINHVIEN  values('10','b99200','Vo Van Tin',N'Bình Khương,Bình Sơn, Quảng Ngãi','1990/09/01','2','2','2','3')
	
drop table SINHVIEN 
	select * from SINHVIEN order by STT asc
