use employee;

create table tdepartment(
DNumber varchar(255) primary key,
DName varchar(255)
);


create table trank(
RNumber varchar(255) primary key,
RName varchar(255)
);


create table temployee(
ENumber varchar(255) primary key,
DNumber varchar(255),
RNumber varchar(255),
EName varchar(255),
ERRN varchar(255),
EAddr varchar(255),
StartDate datetime,
ResignationDate datetime,
foreign key(DNumber) references tdepartment(DNumber),
foreign key(RNumber) references trank(RNumber)
);



create table titem(
INumber varchar(255) primary key,
IName varchar(255),
price int,
RegisterDate datetime
);


create table tproduction(
PNumber varchar(255) primary key,
ENumber varchar(255),
INumber varchar(255),
PCount int,
PDate datetime,
foreign key(ENumber) references temployee(ENumber),
foreign key(INumber) references titem(INumber)
);


create table tcustomer(
CNumber varchar(255) primary key,
CName varchar(255),
CAddr varchar(255),
ContractDate datetime
);



create table treturnreason(
RRNumber varchar(255) primary key,
RReason varchar(255)
);




create table torder(
ONumber varchar(255) primary key,
CNumber varchar(255),
PNumber varchar(255),
ODate datetime,
foreign key(PNumber) references tproduction(PNumber),
foreign key(CNumber) references tcustomer(CNumber)
);




create table treturn(
TNumber varchar(255) primary key,
ONumber varchar(255),
RCcount int,
RRNumber varchar(255),
RDate datetime,
foreign key(RRNumber) references treturnreason(RRNumber),
foreign key(ONumber) references torder(ONumber)
);
INSERT INTO tdepartment (DNumber,DName) VALUES
('D1001','문구생산부'),
('D2001','가구생산부'),
('D3001','악세사리생산부'),
('D4001','전자기기생산부'),
('D5001','음료생산부');


insert into trank (RNumber,RName) values
('R0001','사원'),
('R0002','주임'),
('R0003','대리'),
('R0004','과장'),
('R0005','차장'),
('R0006','부장'),
('R0007','이사'),
('R0008','상무'),
('R0009','전무'),
('R0010','사장');


insert into titem (INumber, IName, Price, RegisterDate) value
('I1011', '가위', 600, '2019-01-02 14:32:23'),
('I1022', '풀', 500, '2019-01-13 15:33:23'),
('I1003', '공책', 1000, '2019-01-23 16:34:23'),
('I1004', '볼펜', 1500, '2019-02-15 17:26:23'),
('I1005', '지우개', 300, '2019-02-21 18:19:23');


insert into treturnreason (RRNumber, RReason) value
('RR0001', '불량'),
('RR0002', '단순변심'),
('RR0003', '환불'),
('RR0004', '배송오류');

INSERT INTO tcustomer (CNumber, CName, CAddr, ContractDate) VALUES
('C1001', '대한문방구', '서울시 강남구', '2019-01-23 13:32:12'),
('C1002', '용호문방구', '서울시 용산구', '2019-01-27 14:10:01'),
('C1003', '오랜문방구', '울산시 중구', '2019-02-03 16:08:06'),
('C1004', '학교앞문방구', '부산시 남구', '2019-02-17 18:17:52'),
('C1005', '최고문방구', '부산시 북구', '2019-02-25 18:31:32'),
('C2001', '튼튼가구', '서울시 동작구', '2019-03-10 10:13:22'),
('C2002', '동해가구', '서울시 송파구', '2019-03-13 12:07:11'),
('C2003', '그린가구', '서울시 강남구', '2019-03-21 17:52:34'),
('C2004', '소나무가구', '부산시 진구', '2019-04-03 17:56:22'),
('C2005', '조경가구', '부산시 남구', '2019-04-22 18:07:56');



INSERT INTO temployee (ENumber, DNumber, RNumber, EName, ERRN, EAddr, StartDate, ResignationDate) VALUES
('E0001', NULL, 'R0001', '김이수', '850726-118323', '서울시 강남구', '2018-01-02 09:00:00', NULL),
('E0002', NULL, 'R0001', '김사원', '900513-1136345', '부산시 북구', '2018-01-02 09:00:00', NULL),
('E0003', NULL, 'R0002', '이길동', '890206-1112632', '대전시 서구', '2018-01-02 09:00:00', NULL),
('E0004', NULL, 'R0002', '서준수', '880816-1116234', '서울시 동구', '2018-01-02 09:00:00', NULL),
('E0005', NULL, 'R0003', '이기영', '920322-2114233', '울산시 동구', '2018-01-02 09:00:00', NULL),
('E1001', 'D1001', 'R0001', '박하나', '760312-212752', '서울시 강남구', '2016-01-02 09:00:00', NULL),
('E1002', 'D1001', 'R0002', '김문구', '830622-1152643', '부산시 남구', '2014-03-05 09:00:00', NULL),
('E1003', 'D1001', 'R0003', '이과장', '790312-117865', '부산시 중구', '2010-02-03 09:00:00', NULL),
('E1004', 'D1001', 'R0003', '이해요', '720506-1112346', '서울시 도봉구', '2010-05-06 09:00:00', NULL),
('E1005', 'D1001', 'R0001', '박총괄', '670107-1116244', '서울시 광진구', '2012-02-06 09:00:00', NULL),
('E1006', 'D1001', 'R0001', '김이해', '870721-1113245', '부산시 북구', '2016-05-02 09:00:00', '2021-02-25 23:59:59');

INSERT INTO tproduction (PNumber, ENumber, INumber, PCount, PDate) VALUES
('P1001', 'E1001', 'I1001', 620, '2020-01-03 11:32:22'),
('P1002', 'E1002', 'I1002', 32, '2020-02-16 09:11:07'),
('P1003', 'E1003', 'I1003', 323, '2020-02-21 10:07:35'),
('P1004', 'E1004', 'I1004', 122, '2020-02-25 15:32:11'),
('P1005', 'E1005', 'I1005', 210, '2020-03-03 11:17:08'),
('P1006', 'E1006', 'I1001', 1020, '2020-03-06 09:03:56'),
('P1007', 'E1007', 'I1002', 923, '2020-03-12 10:07:32');

insert into torder (ONumber, Cnumber, PNumber, ODate) value
('O1001', 'C1001', 'P1001', '2021-01-07 09:08:32'),
('O1002', 'C1002', 'P1002', '2021-01-08 10:31:27'),
('O1003', 'C1003', 'P1003', '2021-01-12 09:43:31'),
('O1004', 'C1004', 'P1004', '2021-01-21 15:05:17'),
('O1005', 'C1005', 'P1005', '2021-01-27 11:13:08'),
('O1006', 'C1002', 'P1006', '2021-01-31 14:31:22'),
('O1007', 'C1003', 'P1008', '2021-02-06 16:42:16');


INSERT INTO treturn (RNumber, ONumber, RCount, RRNumber, RDate) VALUES
('R1001', 'O1002', 5,   'RR0001', '2022-01-03 13:32:07'),
('R1002', 'O1007', 700, 'RR0004', '2022-01-03 15:17:47'),
('R1003', 'O1009', 210, 'RR0002', '2022-01-03 16:22:16'),
('R2001', 'O2001', 10,  'RR0001', '2022-01-05 09:07:13'),
('R2002', 'O2007', 65,  'RR0002', '2022-01-24 14:06:45'),
('R3001', 'O3001', 18,  'RR0001', '2022-01-06 09:13:52'),
('R3002', 'O3004', 62,  'RR0003', '2022-01-07 14:03:31');

