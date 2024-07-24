-- ���̺� ������ ���踦 ����Ͽ� �� ���� �����ص� ������ �߻����� �ʰ� ���ĵǾ����ϴ�.

drop table TRIP cascade constraints purge;
drop table HOTEL cascade constraints purge;
drop table TRIP_LOCATION cascade constraints purge;
drop table CUSTOMER cascade constraints purge;
drop table RESTAURANT cascade constraints purge;
drop table MEMO cascade constraints purge;

-- TRIP_LOCATION Table Create SQL
-- ���̺� ���� SQL - TRIP_LOCATION
CREATE TABLE TRIP_LOCATION
(
    trip_location    VARCHAR2(20)    NOT NULL, 
    region           VARCHAR2(20)    NOT NULL, 
     PRIMARY KEY (trip_location)
);

-- ���̺� Comment ���� SQL - TRIP_LOCATION
COMMENT ON TABLE TRIP_LOCATION IS '����';

-- �÷� Comment ���� SQL - TRIP_LOCATION.trip_location
COMMENT ON COLUMN TRIP_LOCATION.trip_location IS '����ID';

-- �÷� Comment ���� SQL - TRIP_LOCATION.region
COMMENT ON COLUMN TRIP_LOCATION.region IS '������';

insert into TRIP_LOCATION values(2,'����');
insert into TRIP_LOCATION values(51,'�λ�');
insert into TRIP_LOCATION values(53,'�뱸');
insert into TRIP_LOCATION values(32,'��õ');
insert into TRIP_LOCATION values(62,'����');
insert into TRIP_LOCATION values(42,'����');
insert into TRIP_LOCATION values(52,'���');
insert into TRIP_LOCATION values(44,'����');
insert into TRIP_LOCATION values(31,'���');
insert into TRIP_LOCATION values(33,'����');
insert into TRIP_LOCATION values(43,'���');
insert into TRIP_LOCATION values(41,'�泲');
insert into TRIP_LOCATION values(63,'����');
insert into TRIP_LOCATION values(61,'����');
insert into TRIP_LOCATION values(54,'���');
insert into TRIP_LOCATION values(55,'�泲');
insert into TRIP_LOCATION values(64,'����');


-- TRIP Table Create SQL
-- ���̺� ���� SQL - TRIP
CREATE TABLE TRIP
(
    trip_id             VARCHAR2(50)     NOT NULL, 
    t_name              VARCHAR2(50)     NOT NULL, 
    description         VARCHAR2(250)    NULL, 
    t_imageURL1         BLOB             NULL, 
    t_imageURL2         BLOB             NULL, 
    t_location          VARCHAR2(200)     NOT NULL, 
    t_average_score     VARCHAR2(100)     NULL, 
    date_of_creation    DATE             NULL, 
    month               VARCHAR2(20)     NULL, 
    trip_location       VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (trip_id)
);

-- ���̺� Comment ���� SQL - TRIP
COMMENT ON TABLE TRIP IS '������';

-- �÷� Comment ���� SQL - TRIP.trip_id
COMMENT ON COLUMN TRIP.trip_id IS '������ID';

-- �÷� Comment ���� SQL - TRIP.t_name
COMMENT ON COLUMN TRIP.t_name IS '�̸�';

-- �÷� Comment ���� SQL - TRIP.description
COMMENT ON COLUMN TRIP.description IS '����';

-- �÷� Comment ���� SQL - TRIP.t_imageURL1
COMMENT ON COLUMN TRIP.t_imageURL1 IS '�̹���1';

-- �÷� Comment ���� SQL - TRIP.t_imageURL2
COMMENT ON COLUMN TRIP.t_imageURL2 IS '�̹���2';

-- �÷� Comment ���� SQL - TRIP.t_location
COMMENT ON COLUMN TRIP.t_location IS '��ġ';

-- �÷� Comment ���� SQL - TRIP.t_average_score
COMMENT ON COLUMN TRIP.t_average_score IS '����';

-- �÷� Comment ���� SQL - TRIP.date_of_creation
COMMENT ON COLUMN TRIP.date_of_creation IS '������';

-- �÷� Comment ���� SQL - TRIP.month
COMMENT ON COLUMN TRIP.month IS '��õ��';

-- �÷� Comment ���� SQL - TRIP.trip_location
COMMENT ON COLUMN TRIP.trip_location IS '����ID';

-- Foreign Key ���� SQL - TRIP(trip_location) -> TRIP_LOCATION(trip_location)
ALTER TABLE TRIP
    ADD CONSTRAINT FK_TRIP_trip_location_TRIP_LOCATION_trip_location FOREIGN KEY (trip_location)
        REFERENCES TRIP_LOCATION (trip_location) ;

insert into TRIP values (1, '�Ե�����', '����Ư���� ���ı��� ��ġ�� ���� ���θ�', null, null, '���� ���ı� �ø��ȷ� 240',
     null, to_date('2020/05/01', 'yyyy/mm/dd'),null,2);
insert into TRIP values (2, '�溹��', '�������⿡ â�ǵǾ� �������� �̿�� �ñ�',  null, null, '���� ���α� ������ 161 �溹��', 
     null, to_date('2020/05/01', 'yyyy/mm/dd'), null, 2);
insert into TRIP values (3, '���빮����', '���ʹ� �տ� ��ġ�� �ִ� �ѱ� �ִ��� �緡����', null, null, '���� �߱� ���빮����4�� 21',
     null, to_date('2020/05/01', 'yyyy/mm/dd'), null, 2);

insert into TRIP values (4, '���ȸ�', '�ؿ���ؼ������ �Բ� �λ��� ��ǥ�ϴ� �ؼ�����', null, null, '�λ걤���� ������ �����غ��� 219',
     null, to_date('2020/06/01', 'yyyy/mm/dd'), null, 51);
insert into TRIP values (5, '���ķ���', '�ż����ȭ�� ���ҽ�Ƽ�� ���ο� ��ġ�� ������', null, null, '�λ� �ؿ�뱸 ���ҳ���� 35 �ż����ȭ�����ҽ�Ƽ��',
     null, to_date('2020/06/01', 'yyyy/mm/dd'), null, 51);
insert into TRIP values (6, '�ؿ��', '�λ� �ؿ�뱸 �ߵ� ���µ� ���쵿�� ���� �ִ� �ؼ�����', null, null, '�λ� �ؿ�뱸 �쵿',
     null, to_date('2020/06/01', 'yyyy/mm/dd'), null, 51);

insert into TRIP values (7, '�̿���', '�η����� ��ġ�� �׸���ũ', null, null, '�뱸 �޼��� �η������� 200', 
    null, TO_DATE('2020/07/01', 'yyyy/mm/dd'), null, 53);
insert into TRIP values (8, '��������', '�뱸 �ִ��� �������', null, null, '�뱸 �߱� �޼��� 50', 
     null, TO_DATE('2020/07/01', 'yyyy/mm/dd'), null, 53);
insert into TRIP values (9, '������', '�������� ��ġ�� ȣ������', null, null, '�뱸������ ������ ���з� 78', 
     null, TO_DATE('2020/07/01', 'yyyy/mm/dd'), null, 53);

insert into TRIP values (10,'���̳�Ÿ��', '�߱��ε��� �� ������ �ϴ뿡 �̹�, �����Ͽ� �׵鸸�� ��Ȱ��ȭ�� ������ ��', null, null, 
     '��õ �߱� ���̳�Ÿ���26���� 12-17', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 32);
insert into TRIP values (11, '���̵�', '��õ������ �߱� �ϼ����� �ִ� ���赵', null, null, '��õ �߱� �ϼ���1�� 98-352', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 32);
insert into TRIP values (12, '�۵� ��Ʈ����ũ', '������������ �۵��������ø� ��ǥ�ϴ� ����', null, null, '��õ ������ �����þƴ�� 160',
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 32);
    
insert into TRIP values(13, '���� ���� �ڹ���', '�žȼ��� ����� ��ȭ�縦 �����������ϱ� ���� ������ ���� �ڹ���', null, null,
    '���� �ϱ� �ϼ��� 110', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 62);
insert into TRIP values(14, '�����ֽ���','���ָ� ��ǥ�ϴ� ���깰 ���� ����', null, null, '���ֱ����� ���� ������17���� 18-6', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 62);
insert into TRIP values(15, '����ȣ ȣ�����¿�', '�ڿ�������, �ڿ��н���, �ܵ� �޽ı���, ���� ���� �� �׸��� ������ ������ ���°���', null, null,
    '���� �ϱ� ��ȿ�� 905', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 62);

insert into TRIP values(16, '���ɴ�', '�������� �ν� �ֽ�ȸ�簡 ��ϴ� ������', null, null, '���� �߱� ������480���� 15', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 42);
insert into TRIP values(17, '���»��ڿ��޾縲', '���������� ���� ��ȵ��� �ִ� �ڿ��޾縲', null, null,'���������� ���� ��ȷ� 461', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 42);
insert into TRIP values(18, '�ѹ�����', '�����. ���δ���û��� ���������а��� ���� ��ġ', null, null, '���� ���� �л��� 169', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 42);

insert into TRIP values(19, '��ȭ��', '����� ���� ���߾��� ���� ���ط� �귯���� ��', null, null, '��� �ϱ� ���̵�', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 52);
insert into TRIP values(20, '���� �����غ�', '��� 12������ ��� �ùε��� ��� ã�� ����ö ��ǥ �غ� ������', null, null, '��� ���� ������', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 52);
insert into TRIP values(21, '������', '��걤���� ���ֱ� ������ ��۸� �Ͽ����� ������ ��', null, null, '��� ���ֱ� ������ ��۸�', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 52);

insert into TRIP values(22, '����ȣ������', '�����ÿ� �Ǽ��� ȣ������', null, null, '���� �ټط� 216', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 44);
insert into TRIP values(23, '����Ʈ�� ��ũ', '�ƽþ����, �Ұ��� ������ ������ �ִ� �����', null, null, '���� ������ �ż۷� 217', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 44);
insert into TRIP values(24, '���������ڹ���', '���ݿ� ���� �پ��� ������ �����Ͽ� ���ݿ� ���� ���ظ� ������ ���� ���� ������ �������� �� �ֵ��� �ϱ� ���Ͽ� ����', 
     null, null, '���� ����û�� 8-14', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 44);

insert into TRIP values(25, '��õ ���������', '����� ��å��� �ڿ� �ӿ��� �ɽ��� ��ȭ�ϱ⿡ ���� �ڽ�', null, null, '��� ��õ�� ���� ������775���� 17', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 31);
insert into TRIP values(26, '��������', '�پ��� �ü��� ��ſ� �޽İ� ����� �����ϴ� �׸���ũ', null, null,
    '��� ���ν� ó�α� ������ ��������� 199', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 31);
insert into TRIP values(27, '������ ��ȭ�����', '����� ������ �Ƹ��ٿ� ������ ��� ǰ�� ��', null, null,
    '��� ���ֽ� ��ź�� ����� 242', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 31);

insert into TRIP values(28, '���ǻ걹������', '��δ밣�� ��ġ�� ����Ư����ġ���� ���', null, null, '���� ������ �ϸ� �Ѱ踮', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 33);
insert into TRIP values(29, '�ֹ��� ������ �Կ���', ' ������ �Կ����� �̿�� �������� ���� ���� ����� ã�ƿ´�', null, null,
    '���� ������ �ֹ����� ���׸� 81-151', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 33);
insert into TRIP values(30, '���̼�', '���Ѱ� �Ѱ�� �ִ� ����', null, null,
    '���� ��õ�� ����� ���̼��� 1', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 33);

insert into TRIP values(31, 'û����', '������ û�ʹ�', null, null,'��� û�ֽ� ��籸 ���Ǹ� û����� 646 û������������', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 43);
insert into TRIP values(32, '�ܾ� ����', '���� �ȿ� ��Ҵٴ� �����ҹ��� ������ ������ �������� �� ����ϰ� �Ƹ��ٿ� �����', null, null,
    '��� �ܾ籺 ������ ����� 644-33', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 43);
insert into TRIP values(33, '�������', '������ ���Ϸ� ������ ��ȸ���� õõ�� �쿩���� ������� ��ȸ����', null, null,
    '��� �ܾ籺 �ܾ��� ��������� 8', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 43);
 
insert into TRIP values(34, '�ܾϹμӸ���', '������ �����Ǿ� ������ �ٷ��� �α��� �μ�ǰ�� ����', null, null,
    '�泲 �ƻ�� �۾Ǹ� �ܾϹμӱ� 5', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 41);
insert into TRIP values(35, '��������', '�ùٸ� �������� �����ϴ� ���� �̹������� �������� �ϴ� �ܷ��� ����', null, null,
    '�泲 õ�Ƚ� ������ ��õ�� ���������� 1', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 41);
insert into TRIP values(36, '������ȭ����', '�������� ���ʷ� ������ �����ô� ��ž', null, null,
    '�泲 �ο��� �Ծϸ� �������� 455', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 41);

insert into TRIP values(37, '�ξ� ä����', '����ϵ� �ξȱ� ����ݵ� �� ���ʿ� �ִ� �ؽ������� �ٴ尡', null, null,
    '���� �ξȱ� ����� ������', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 63);
insert into TRIP values(38, '���� ����� ��������', '���嵿�� ��â�� ������� ��迡 �ִ� ��', null, null,
    '���� ������ ������ 1207', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 63);
insert into TRIP values(39, '�����ѿ�����', '�������� ���� � ����� ������ ����ϰ� ���´�', null, null,
    '���� ���ֽ� �ϻ걸 �⸰��� 99', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 63);

insert into TRIP values(40, '��õ������', '���󳲵� ��õ�������� �ִ� ������ ������,���ﱺ�� ���ڸ��� ����', null, null,
    '���� ��õ�� ��õ���� 513-25', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 61); 
insert into TRIP values(41, '��������', '���󳲵� ��õ�� ���ȸ鿡 ������ ����', null, null, 
    '���� ��õ�� ���ȸ� ��α� 30', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 61);
insert into TRIP values(42, '���Ѵٿ� ����������', '�������� �ִ� ���� ��踦 ���� ����', null, null,
    '���� ������ ������ ������ 763-43', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 61);

insert into TRIP values(43, '�ұ���', '���������� ������� �����޴� �������� ����ǰ', null, null,
    '��� ���ֽ� �ұ��� 385', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 54);
insert into TRIP values(44, '���ֿ���', '�׸���ũ', null, null, '��� ���ֽ� ������ 544', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 54);
insert into TRIP values(45,'��ȸ����', '�츮������ ��ǥ���� ��������', null, null, '��� �ȵ��� ǳõ�� ������ 186', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 54);

insert into TRIP values(46, '���ر�����', '�ų� 4�� 1�Ϻ��� 10�ϱ��� ������ ��ǥ���� ����', null, null,
    '�泲 â���� ���ر� ��õ�� 3', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 55);
insert into TRIP values(47, '���� �ٶ��Ǿ��', '������ ������ ���ʿ� �ڸ� ���� �������� ���', null, null,
    '�泲 ������ ���θ� ������ ��14-47', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 55);
insert into TRIP values(48, '�̼��� ����', 'Ź Ʈ�� �ÿ��� �뿵 �չٴٰ� ������ ���̴� �ؾȰ��� �����Ǿ� �ִ� ����', null, null, '�泲 �뿵�� ������ 688-1', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 55);

insert into TRIP values(49, '���ֱ��̷ΰ���', '�����Ĺ� �̷ΰ�������, Űū ���� ���̷� ������ ����� ���Ⱘ���� �Ұ� �ϴ� �̷η� �̷���� �ִ�', null, null, '���� ���ֽ� ������ ���屼�� 122', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 64);
insert into TRIP values(50, '�쵵', '���ֵ��� ���� ���� ���ϴ� ��', null, null, '���� ���ֽ� �쵵��', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 64);
insert into TRIP values(51, '���������', '����Ư����ġ�� �������� ������ ���긮�� �ִ� ��', null, null, '���� �������� ������ ���긮 1', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 64);

-- Foreign Key ���� SQL - TRIP(trip_location)
-- ALTER TABLE TRIP
-- DROP CONSTRAINT FK_TRIP_trip_location_TRIP_LOCATION_trip_location;


-- CUSTOMER Table Create SQL
-- ���̺� ���� SQL - CUSTOMER
CREATE TABLE CUSTOMER
(
    customer_id          VARCHAR2(20)    NOT NULL, 
    password             VARCHAR2(20)    NOT NULL, 
    c_name               VARCHAR2(20)    NOT NULL, 
    email                VARCHAR2(100)    NOT NULL, 
    registration_date    DATE            NOT NULL, 
    profile_file         BLOB            NULL, 
     PRIMARY KEY (customer_id)
);

-- ���̺� Comment ���� SQL - CUSTOMER
COMMENT ON TABLE CUSTOMER IS '�����';

-- �÷� Comment ���� SQL - CUSTOMER.customer_id
COMMENT ON COLUMN CUSTOMER.customer_id IS '�����ID';

-- �÷� Comment ���� SQL - CUSTOMER.password
COMMENT ON COLUMN CUSTOMER.password IS '��й�ȣ';

-- �÷� Comment ���� SQL - CUSTOMER.c_name
COMMENT ON COLUMN CUSTOMER.c_name IS '�̸�';

-- �÷� Comment ���� SQL - CUSTOMER.email
COMMENT ON COLUMN CUSTOMER.email IS '�̸���';

-- �÷� Comment ���� SQL - CUSTOMER.registration_date
COMMENT ON COLUMN CUSTOMER.registration_date IS '������';

-- �÷� Comment ���� SQL - CUSTOMER.profile_file
COMMENT ON COLUMN CUSTOMER.profile_file IS '�����ʻ���';

insert into CUSTOMER values('user_1','1111','���ϴ�','Haneul@naver.com',
    to_date('2024/04/03', 'yyyy/mm/dd'),null);
insert into CUSTOMER values('user_2','2222','�輭��','Seohyun@naver.com',
    to_date('2024/02/25', 'yyyy/mm/dd'),null);
insert into CUSTOMER values('user_3','3333','�̹���','dlalwl0131@gmail.com',
    to_date('2024/03/16', 'yyyy/mm/dd'),null);
insert into CUSTOMER values('user_4','4444','���¹�','seungmin@naver.com',
    to_date('2024/01/15', 'yyyy/mm/dd'),null);

-- RESTAURANT Table Create SQL
-- ���̺� ���� SQL - RESTAURANT
CREATE TABLE RESTAURANT
(
    restaurant_id      VARCHAR2(20)     NOT NULL, 
    r_name             VARCHAR2(50)     NOT NULL, 
    r_location         VARCHAR2(100)     NOT NULL, 
    menu               VARCHAR2(100)    NOT NULL, 
    r_average_score    NUMBER           NULL, 
    r_imageURL1        BLOB             NULL, 
    r_imageURL2        BLOB             NULL, 
    trip_location      VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (restaurant_id)
);

-- ���̺� Comment ���� SQL - RESTAURANT
COMMENT ON TABLE RESTAURANT IS '����';

-- �÷� Comment ���� SQL - RESTAURANT.restaurant_id
COMMENT ON COLUMN RESTAURANT.restaurant_id IS '����ID';

-- �÷� Comment ���� SQL - RESTAURANT.r_name
COMMENT ON COLUMN RESTAURANT.r_name IS '�̸�';

-- �÷� Comment ���� SQL - RESTAURANT.r_location
COMMENT ON COLUMN RESTAURANT.r_location IS '��ġ';

-- �÷� Comment ���� SQL - RESTAURANT.menu
COMMENT ON COLUMN RESTAURANT.menu IS '�޴�';

-- �÷� Comment ���� SQL - RESTAURANT.r_average_score
COMMENT ON COLUMN RESTAURANT.r_average_score IS '����';

-- �÷� Comment ���� SQL - RESTAURANT.r_imageURL1
COMMENT ON COLUMN RESTAURANT.r_imageURL1 IS '�̹���1';

-- �÷� Comment ���� SQL - RESTAURANT.r_imageURL2
COMMENT ON COLUMN RESTAURANT.r_imageURL2 IS '�̹���2';

-- �÷� Comment ���� SQL - RESTAURANT.trip_location
COMMENT ON COLUMN RESTAURANT.trip_location IS '����ID';

-- Foreign Key ���� SQL - RESTAURANT(trip_location) -> TRIP_LOCATION(trip_location)
ALTER TABLE RESTAURANT
    ADD CONSTRAINT FK_RESTAURANT_trip_location_TRIP_LOCATION_trip_location FOREIGN KEY (trip_location)
        REFERENCES TRIP_LOCATION (trip_location) ;


insert into RESTAURANT values(21,'����ϳ���','���� ���ı� ������з�45�� 38 1�� ����ϳ��� ��� ����','���ҹ�, ���ϲ� �����ҹ�', 4.51,null,null,2);
insert into RESTAURANT values(22,'����','���� ������ �����1�� 65 1��','����ٿ�, �����', 4.48,null,null,2);

insert into RESTAURANT values(511,'����','�λ� ������ �����غ���279���� 13 1��','����ī��, �ν�ī��, ��ũ��k�ν�ī��', 4.55,null,null,51);
insert into RESTAURANT values(512,'�����Ҹű���','�λ� �ؿ�뱸 �����߾ӷ� 38','�Ҹű���, ��������', 4.45,null,null,51);

insert into RESTAURANT values(531,'�Ŷ�Ĵ�','�뱸 �߱� �߾Ӵ�� 406-8','���� ��������, ���κ��', 4.39,null,null,53);
insert into RESTAURANT values(532,'�ɸ�����â','�뱸 �ϱ� ����� 53', '��â, �����', 4.57,null,null,53);

insert into RESTAURANT values(321,'ȭ���','��õ ������ �����þƴ�� 100 ������������Ʈ 601�� 135ȣ ȭ���','�����, ����밥��', 4.4,null,null,32);
insert into RESTAURANT values(322,'����ȫ','��õ ������ ��Ʈ���� 123 M 19 �����þ� �Ű� 1�� ����ȫ','���������, �ϰ��������', 4.22,null,null,32);
    
insert into RESTAURANT values(621, '���ҹ� �縲��', '���� ���� õ���·� 468 ���ҹ�', '��Ǫ�� �ڷ�ҹ�, ���� �¼ҹ�(��Ǫ��)', 4.73, null, null, 62);
insert into RESTAURANT values(622, '���ھ� ����', '���� ���� ���߾ӷ� 86 Ʈ���� ���� 1��', '���ھ�ī��, �丮ī��, Ű��ī��', 4.55, null, null, 62);

insert into RESTAURANT values(421, '����Ŀ�� ������', '���� ���� �����67���� 34-26 2�� 1�� ����Ŀ��', '��ũ ����, ���ڶ���', 4.71, null, null, 42);
insert into RESTAURANT values(422, '���������ع�Į����', '���� ����� ��ź����804���� 31', 'Į����, �����޲ٹ�', 4.36, null, null, 42);

insert into RESTAURANT values(521, '�Խ�Ʈ��', '��� ���� ����߷�84���� 11-13 1��', '�����Ը���, Ʈ���� ����ũ��', 4.66, null, null, 52);
insert into RESTAURANT values(522, '���̴��̴� �������', '��� ���� ������312���� 7 ���̴��̴�', '�̺����� �� �� ������, Ʈ���� �������', 4.62, null, null, 52);

insert into RESTAURANT values(441, '�ƽþ�Űģ', '���� ����� 194 �����߾�Ÿ�� 1�� 147ȣ', '��ȭ����¥, ����ұ���', 4.79, null, null, 44);
insert into RESTAURANT values(442, '�Ƹ�����', '���� �屺�� ������ 12', 'ġ�ƹ�Ÿ ������ġ, ��ä�����ũ��������', 4.6, null, null, 44);

-- Foreign Key ���� SQL - RESTAURANT(trip_location)
-- ALTER TABLE RESTAURANT
-- DROP CONSTRAINT FK_RESTAURANT_trip_location_TRIP_LOCATION_trip_location;


-- HOTEL Table Create SQL
-- ���̺� ���� SQL - HOTEL
CREATE TABLE HOTEL
(
    hotel_id           VARCHAR2(20)    NOT NULL, 
    h_name             VARCHAR2(50)    NOT NULL, 
    h_location         VARCHAR2(100)    NOT NULL, 
    h_average_score    NUMBER          NULL, 
    h_imageURL1        BLOB            NULL, 
    h_imageURL2        BLOB            NULL, 
    trip_location      VARCHAR2(20)    NOT NULL, 
     PRIMARY KEY (hotel_id)
);

-- ���̺� Comment ���� SQL - HOTEL
COMMENT ON TABLE HOTEL IS '����';

-- �÷� Comment ���� SQL - HOTEL.hotel_id
COMMENT ON COLUMN HOTEL.hotel_id IS '����ID';

-- �÷� Comment ���� SQL - HOTEL.h_name
COMMENT ON COLUMN HOTEL.h_name IS '�̸�';

-- �÷� Comment ���� SQL - HOTEL.h_location
COMMENT ON COLUMN HOTEL.h_location IS '��ġ';

-- �÷� Comment ���� SQL - HOTEL.h_average_score
COMMENT ON COLUMN HOTEL.h_average_score IS '����';

-- �÷� Comment ���� SQL - HOTEL.h_imageURL1
COMMENT ON COLUMN HOTEL.h_imageURL1 IS '�̹���1';

-- �÷� Comment ���� SQL - HOTEL.h_imageURL2
COMMENT ON COLUMN HOTEL.h_imageURL2 IS '�̹���2';

-- �÷� Comment ���� SQL - HOTEL.trip_location
COMMENT ON COLUMN HOTEL.trip_location IS '����ID';

-- Foreign Key ���� SQL - HOTEL(trip_location) -> TRIP_LOCATION(trip_location)
ALTER TABLE HOTEL
    ADD CONSTRAINT FK_HOTEL_trip_location_TRIP_LOCATION_trip_location FOREIGN KEY (trip_location)
        REFERENCES TRIP_LOCATION (trip_location) ;
        
insert into HOTEL values(21,'�Ŷ�ȣ��','���� �߱� ��ȣ�� 249',4.6,null,null,2);
insert into HOTEL values(22,'��ũ �Ͼ�Ʈ','���� ������ ������� 606', 4.57,null,null,2);

insert into HOTEL values(511,'�׷�������','�λ� �ؿ�뱸 �ؿ���غ��� 292',4.55,null,null,51);
insert into HOTEL values(512,'�ñ״Ͽ�','�λ� �ؿ�뱸 �޸��̱� 30', 4.61,null,null,51);

insert into HOTEL values(531,'ȣ�����ͺҰ�','�뱸 ������ ������ 212 ȣ�����ͺҰ�',4.45,null,null,53);
insert into HOTEL values(532,'ȣ�ڼ���','�뱸 ������ ���з� 106-7', 4.29,null,null,53);

insert into HOTEL values(321,'�Ķ���̽���Ƽ','��õ �߱� �����ؾȳ���321���� 186',4.59,null,null,32);
insert into HOTEL values(322,'�׽�Ʈȣ��','��õ �߱� �����ؾȳ��� 19-5', 4.44,null,null,32);

insert into HOTEL values(621, '�������', '���� ���걸 �ӹ����826���� 19-7', 4.47, null, null, 62);
insert into HOTEL values(622, 'Ȧ�������� ����ȣ��', '���� ���� ��û�� 53', 4.46, null, null, 62);
    
insert into HOTEL values(421, 'ȣ�� ���븶', '���� ������ �������� 1 ȣ�� ���븶 ����', 4.07, null, null, 42);
insert into HOTEL values(422, 'ȣ�����ͽ�Ƽ', '���� ������ ��õ�� 92', 4.32, null, null, 42);
    
insert into HOTEL values(521, '�Ŷ����� ���', '��� ���� ���� 200 �Ŷ�����', 4.43, null, null, 52);
insert into HOTEL values(522, '��ý�����', '��� ���� �ϻ���6�� 69 2�� ��ý�����', 4.76, null, null, 52);
    
insert into HOTEL values(441, '����Ʈ�������÷���ȣ�ڼ���', '���� ����1�� 7', 4.46, null, null, 44);
insert into HOTEL values(442, '���޴� �ѿ� ���', '���� �ΰ��� �������� 142-10', 4.81, null, null, 44);

-- Foreign Key ���� SQL - HOTEL(trip_location)
-- ALTER TABLE HOTEL
-- DROP CONSTRAINT FK_HOTEL_trip_location_TRIP_LOCATION_trip_location;


-- MEMO Table Create SQL
-- ���̺� ���� SQL - MEMO
CREATE TABLE MEMO
(
    MEMO_id        VARCHAR2(20)    NOT NULL, 
    content          VARCHAR2(50)    NOT NULL, 
    rating           VARCHAR2(10)    NULL, 
    date_created     DATE            NOT NULL, 
    v_imageURL1      BLOB            NULL, 
    v_imageURL2      BLOB            NULL, 
    v_imageURL3      BLOB            NULL, 
    customer_id      VARCHAR2(20)    NOT NULL, 
    trip_id          VARCHAR2(20)    NOT NULL, 
    restaurant_id    VARCHAR2(20)    NOT NULL, 
    lodging_id       VARCHAR2(20)    NOT NULL, 
     PRIMARY KEY (MEMO_id)
);

-- ���̺� Comment ���� SQL - MEMO
COMMENT ON TABLE MEMO IS '����';

-- �÷� Comment ���� SQL - MEMO.MEMO_id
COMMENT ON COLUMN MEMO.MEMO_id IS '����ID';

-- �÷� Comment ���� SQL - MEMO.content
COMMENT ON COLUMN MEMO.content IS '���䳻��';

-- �÷� Comment ���� SQL - MEMO.rating
COMMENT ON COLUMN MEMO.rating IS '����';

-- �÷� Comment ���� SQL - MEMO.date_created
COMMENT ON COLUMN MEMO.date_created IS '�ۼ���';

-- �÷� Comment ���� SQL - MEMO.v_imageURL1
COMMENT ON COLUMN MEMO.v_imageURL1 IS '����1';

-- �÷� Comment ���� SQL - MEMO.v_imageURL2
COMMENT ON COLUMN MEMO.v_imageURL2 IS '����2';

-- �÷� Comment ���� SQL - MEMO.v_imageURL3
COMMENT ON COLUMN MEMO.v_imageURL3 IS '����3';

-- �÷� Comment ���� SQL - MEMO.customer_id
COMMENT ON COLUMN MEMO.customer_id IS '�����ID';

-- �÷� Comment ���� SQL - MEMO.trip_id
COMMENT ON COLUMN MEMO.trip_id IS '������ID';

-- �÷� Comment ���� SQL - MEMO.restaurant_id
COMMENT ON COLUMN MEMO.restaurant_id IS '����ID';

-- �÷� Comment ���� SQL - MEMO.lodging_id
COMMENT ON COLUMN MEMO.lodging_id IS '����ID';

-- Foreign Key ���� SQL - MEMO(customer_id) -> CUSTOMER(customer_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_customer_id_CUSTOMER_customer_id FOREIGN KEY (customer_id)
        REFERENCES CUSTOMER (customer_id) ;



-- Foreign Key ���� SQL - MEMO(customer_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_customer_id_CUSTOMER_customer_id;

-- Foreign Key ���� SQL - MEMO(trip_id) -> TRIP(trip_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_trip_id_TRIP_trip_id FOREIGN KEY (trip_id)
        REFERENCES TRIP (trip_id) ;

-- Foreign Key ���� SQL - MEMO(trip_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_trip_id_TRIP_trip_id;

-- Foreign Key ���� SQL - MEMO(restaurant_id) -> RESTAURANT(restaurant_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_restaurant_id_RESTAURANT_restaurant_id FOREIGN KEY (restaurant_id)
        REFERENCES RESTAURANT (restaurant_id) ;

-- Foreign Key ���� SQL - MEMO(restaurant_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_restaurant_id_RESTAURANT_restaurant_id;

-- Foreign Key ���� SQL - MEMO(lodging_id) -> HOTEL(hotel_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_lodging_id_HOTEL_hotel_id FOREIGN KEY (lodging_id)
        REFERENCES HOTEL (hotel_id) ;

-- Foreign Key ���� SQL - MEMO(lodging_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_lodging_id_HOTEL_hotel_id;

commit;