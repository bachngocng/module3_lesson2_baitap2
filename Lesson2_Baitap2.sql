create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key auto_increment not null,
cName varchar(50),
cAge int default 0
);
select * from customer;
CREATE TABLE orders(
oID INT primary key auto_increment not null,
cID INT,
oDate DATETIME,
oTotalPrice double,
FOREIGN KEY (cID) REFERENCES customer(cID)
);
create table products(
pID int primary key auto_increment not null,
pName varchar(50) not null,
pPrice double
);
create table orderDetail(
oID int,
pID int,
foreign key (pID) references products(pID),
foreign key (oID) references orders(oID),
primary key(oID, pID),
odQuantity int check (odQuantity > 0));