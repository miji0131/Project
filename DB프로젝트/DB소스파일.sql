-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

drop table TRIP cascade constraints purge;
drop table HOTEL cascade constraints purge;
drop table TRIP_LOCATION cascade constraints purge;
drop table CUSTOMER cascade constraints purge;
drop table RESTAURANT cascade constraints purge;
drop table MEMO cascade constraints purge;

-- TRIP_LOCATION Table Create SQL
-- 테이블 생성 SQL - TRIP_LOCATION
CREATE TABLE TRIP_LOCATION
(
    trip_location    VARCHAR2(20)    NOT NULL, 
    region           VARCHAR2(20)    NOT NULL, 
     PRIMARY KEY (trip_location)
);

-- 테이블 Comment 설정 SQL - TRIP_LOCATION
COMMENT ON TABLE TRIP_LOCATION IS '지역';

-- 컬럼 Comment 설정 SQL - TRIP_LOCATION.trip_location
COMMENT ON COLUMN TRIP_LOCATION.trip_location IS '지역ID';

-- 컬럼 Comment 설정 SQL - TRIP_LOCATION.region
COMMENT ON COLUMN TRIP_LOCATION.region IS '지역명';

insert into TRIP_LOCATION values(2,'서울');
insert into TRIP_LOCATION values(51,'부산');
insert into TRIP_LOCATION values(53,'대구');
insert into TRIP_LOCATION values(32,'인천');
insert into TRIP_LOCATION values(62,'광주');
insert into TRIP_LOCATION values(42,'대전');
insert into TRIP_LOCATION values(52,'울산');
insert into TRIP_LOCATION values(44,'세종');
insert into TRIP_LOCATION values(31,'경기');
insert into TRIP_LOCATION values(33,'강원');
insert into TRIP_LOCATION values(43,'충북');
insert into TRIP_LOCATION values(41,'충남');
insert into TRIP_LOCATION values(63,'전북');
insert into TRIP_LOCATION values(61,'전남');
insert into TRIP_LOCATION values(54,'경북');
insert into TRIP_LOCATION values(55,'경남');
insert into TRIP_LOCATION values(64,'제주');


-- TRIP Table Create SQL
-- 테이블 생성 SQL - TRIP
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

-- 테이블 Comment 설정 SQL - TRIP
COMMENT ON TABLE TRIP IS '여행지';

-- 컬럼 Comment 설정 SQL - TRIP.trip_id
COMMENT ON COLUMN TRIP.trip_id IS '여행지ID';

-- 컬럼 Comment 설정 SQL - TRIP.t_name
COMMENT ON COLUMN TRIP.t_name IS '이름';

-- 컬럼 Comment 설정 SQL - TRIP.description
COMMENT ON COLUMN TRIP.description IS '설명';

-- 컬럼 Comment 설정 SQL - TRIP.t_imageURL1
COMMENT ON COLUMN TRIP.t_imageURL1 IS '이미지1';

-- 컬럼 Comment 설정 SQL - TRIP.t_imageURL2
COMMENT ON COLUMN TRIP.t_imageURL2 IS '이미지2';

-- 컬럼 Comment 설정 SQL - TRIP.t_location
COMMENT ON COLUMN TRIP.t_location IS '위치';

-- 컬럼 Comment 설정 SQL - TRIP.t_average_score
COMMENT ON COLUMN TRIP.t_average_score IS '평점';

-- 컬럼 Comment 설정 SQL - TRIP.date_of_creation
COMMENT ON COLUMN TRIP.date_of_creation IS '생성일';

-- 컬럼 Comment 설정 SQL - TRIP.month
COMMENT ON COLUMN TRIP.month IS '추천월';

-- 컬럼 Comment 설정 SQL - TRIP.trip_location
COMMENT ON COLUMN TRIP.trip_location IS '지역ID';

-- Foreign Key 설정 SQL - TRIP(trip_location) -> TRIP_LOCATION(trip_location)
ALTER TABLE TRIP
    ADD CONSTRAINT FK_TRIP_trip_location_TRIP_LOCATION_trip_location FOREIGN KEY (trip_location)
        REFERENCES TRIP_LOCATION (trip_location) ;

insert into TRIP values (1, '롯데월드', '서울특별시 송파구에 위치한 복합 쇼핑몰', null, null, '서울 송파구 올림픽로 240',
     null, to_date('2020/05/01', 'yyyy/mm/dd'),null,2);
insert into TRIP values (2, '경복궁', '조선전기에 창건되어 정궁으로 이용된 궁궐',  null, null, '서울 종로구 사직로 161 경복궁', 
     null, to_date('2020/05/01', 'yyyy/mm/dd'), null, 2);
insert into TRIP values (3, '남대문시장', '숭례문 앞에 위치해 있는 한국 최대의 재래시장', null, null, '서울 중구 남대문시장4길 21',
     null, to_date('2020/05/01', 'yyyy/mm/dd'), null, 2);

insert into TRIP values (4, '광안리', '해운대해수욕장과 함께 부산을 대표하는 해수욕장', null, null, '부산광역시 수영구 광안해변로 219',
     null, to_date('2020/06/01', 'yyyy/mm/dd'), null, 51);
insert into TRIP values (5, '스파랜드', '신세계백화점 센텀시티점 내부에 위치한 찜질방', null, null, '부산 해운대구 센텀남대로 35 신세계백화점센텀시티점',
     null, to_date('2020/06/01', 'yyyy/mm/dd'), null, 51);
insert into TRIP values (6, '해운대', '부산 해운대구 중동 ·좌동 ·우동에 걸쳐 있는 해수욕장', null, null, '부산 해운대구 우동',
     null, to_date('2020/06/01', 'yyyy/mm/dd'), null, 51);

insert into TRIP values (7, '이월드', '두류동에 위치한 테마파크', null, null, '대구 달서구 두류공원로 200', 
    null, TO_DATE('2020/07/01', 'yyyy/mm/dd'), null, 53);
insert into TRIP values (8, '서문시장', '대구 최대의 전통시장', null, null, '대구 중구 달성로 50', 
     null, TO_DATE('2020/07/01', 'yyyy/mm/dd'), null, 53);
insert into TRIP values (9, '수성못', '수성구에 위치한 호수공원', null, null, '대구광역시 수성구 무학로 78', 
     null, TO_DATE('2020/07/01', 'yyyy/mm/dd'), null, 53);

insert into TRIP values (10,'차이나타운', '중국인들이 현 선린동 일대에 이민, 정착하여 그들만의 생활문화를 형성한 곳', null, null, 
     '인천 중구 차이나타운로26번길 12-17', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 32);
insert into TRIP values (11, '월미도', '인천광역시 중구 북성동에 있는 육계도', null, null, '인천 중구 북성동1가 98-352', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 32);
insert into TRIP values (12, '송도 센트럴파크', '경제자유구역 송도국제도시를 대표하는 공원', null, null, '인천 연수구 컨벤시아대로 160',
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 32);
    
insert into TRIP values(13, '국립 광주 박물관', '신안선에 출토된 문화재를 관리·보존하기 위해 설립된 국립 박물관', null, null,
    '광주 북구 하서로 110', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 62);
insert into TRIP values(14, '남광주시장','광주를 대표하는 수산물 전문 시장', null, null, '광주광역시 동구 제봉로17번길 18-6', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 62);
insert into TRIP values(15, '광주호 호수생태원', '자연관찰원, 자연학습장, 잔디 휴식광장, 수변 습지 등 테마별 단지로 조성된 생태공원', null, null,
    '광주 북구 충효동 905', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 62);

insert into TRIP values(16, '성심당', '향토기업인 로쏘 주식회사가 운영하는 제과점', null, null, '대전 중구 대종로480번길 15', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 42);
insert into TRIP values(17, '장태산자연휴양림', '대전광역시 서구 장안동에 있는 자연휴양림', null, null,'대전광역시 서구 장안로 461', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 42);
insert into TRIP values(18, '한밭수목원', '수목원. 정부대전청사와 엑스포과학공원 사이 위치', null, null, '대전 서구 둔산대로 169', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 42);

insert into TRIP values(19, '태화강', '울산의 도심 정중앙을 지나 동해로 흘러가는 강', null, null, '울산 북구 명촌동', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 52);
insert into TRIP values(20, '주전 몽돌해변', '울산 12경으로 울산 시민들이 즐겨 찾는 여름철 대표 해변 관광지', null, null, '울산 동구 주전동', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 52);
insert into TRIP values(21, '간절곶', '울산광역시 울주군 서생면 대송리 일원에서 돌출한 곶', null, null, '울산 울주군 서생면 대송리', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 52);

insert into TRIP values(22, '세종호수공원', '세종시에 건설된 호수공원', null, null, '세종 다솜로 216', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 44);
insert into TRIP values(23, '베어트리 파크', '아시아흑곰, 불곰을 포함한 동물이 있는 수목원', null, null, '세종 전동면 신송로 217', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 44);
insert into TRIP values(24, '국립조세박물관', '세금에 관한 다양한 정보를 제공하여 세금에 대한 이해를 넓히고 세금 관련 정보를 제공받을 수 있도록 하기 위하여 설립', 
     null, null, '세종 국세청로 8-14', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 44);

insert into TRIP values(25, '이천 산수유마을', '편안한 산책길로 자연 속에서 심신을 정화하기에 좋은 코스', null, null, '경기 이천시 백사면 원적로775번길 17', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 31);
insert into TRIP values(26, '에버랜드', '다양한 시설로 즐거운 휴식과 기쁨을 선사하는 테마파크', null, null,
    '경기 용인시 처인구 포곡읍 에버랜드로 199', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 31);
insert into TRIP values(27, '벽초지 문화수목원', '동양과 서양의 아름다운 정원을 모두 품은 곳', null, null,
    '경기 파주시 광탄면 부흥로 242', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 31);

insert into TRIP values(28, '설악산국립공원', '백두대간에 위치한 강원특별자치도의 명산', null, null, '강원 인제군 북면 한계리', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 33);
insert into TRIP values(29, '주문진 도깨비 촬영지', ' 도깨비 촬영지로 이용된 방파제도 제법 많은 사람이 찾아온다', null, null,
    '강원 강릉시 주문진읍 교항리 81-151', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 33);
insert into TRIP values(30, '남이섬', '북한강 한가운데 있는 하중', null, null,
    '강원 춘천시 남산면 남이섬길 1', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 33);

insert into TRIP values(31, '청남대', '남쪽의 청와대', null, null,'충북 청주시 상당구 문의면 청남대길 646 청남대관리사업소', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 43);
insert into TRIP values(32, '단양 석문', '석문 안에 살았다는 마고할미의 전설이 전해져 내려오는 등 희귀하고 아름다운 경승지', null, null,
    '충북 단양군 매포읍 삼봉로 644-33', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 43);
insert into TRIP values(33, '고수동굴', '빗물이 지하로 스며들어 석회암을 천천히 녹여가며 만들어진 석회동굴', null, null,
    '충북 단양군 단양읍 고수동굴길 8', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 43);
 
insert into TRIP values(34, '외암민속마을', '정원이 보존되어 있으며 다량의 민구와 민속품을 보유', null, null,
    '충남 아산시 송악면 외암민속길 5', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 41);
insert into TRIP values(35, '독립기념관', '올바른 국가관을 정립하는 데에 이바지함을 목적으로 하는 겨레의 전당', null, null,
    '충남 천안시 동남구 목천읍 독립기념관로 1', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 41);
insert into TRIP values(36, '백제문화단지', '국내에서 최초로 재현된 백제시대 목탑', null, null,
    '충남 부여군 규암면 백제문로 455', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 41);

insert into TRIP values(37, '부안 채석강', '전라북도 부안군 변산반도 맨 서쪽에 있는 해식절벽과 바닷가', null, null,
    '전북 부안군 변산면 격포리', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 63);
insert into TRIP values(38, '정읍 내장산 국립공원', '내장동과 순창군 복흥면의 경계에 있는 산', null, null,
    '전북 정읍시 내장산로 1207', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 63);
insert into TRIP values(39, '전주한옥마을', '가지런히 놓인 까만 기왓장 지붕이 편안하게 들어온다', null, null,
    '전북 전주시 완산구 기린대로 99', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 63);

insert into TRIP values(40, '순천만습지', '전라남도 순천시지역에 있는 만으로 여수시,고흥군의 여자만에 포함', null, null,
    '전남 순천시 순천만길 513-25', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 61); 
insert into TRIP values(41, '낙안읍성', '전라남도 순천시 낙안면에 소재한 읍성', null, null, 
    '전남 순천시 낙안면 충민길 30', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 61);
insert into TRIP values(42, '대한다원 보성녹차밭', '보성읍에 있는 녹차 재배를 위한 농장', null, null,
    '전남 보성군 보성읍 녹차로 763-43', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 61);

insert into TRIP values(43, '불국사', '세계적으로 우수성을 인정받는 기념비적인 예술품', null, null,
    '경북 경주시 불국로 385', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 54);
insert into TRIP values(44, '경주월드', '테마파크', null, null, '경북 경주시 보문로 544', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 54);
insert into TRIP values(45,'하회마을', '우리나라의 대표적인 씨족마을', null, null, '경북 안동시 풍천면 전서로 186', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 54);

insert into TRIP values(46, '진해군항제', '매년 4월 1일부터 10일까지 열리는 대표적인 축제', null, null,
    '경남 창원시 진해구 대천동 3', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 55);
insert into TRIP values(47, '거제 바람의언덕', '도장포 마을의 북쪽에 자리 잡은 나지막한 언덕', null, null,
    '경남 거제시 남부면 갈곶리 산14-47', null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 55);
insert into TRIP values(48, '이순신 공원', '탁 트인 시원한 통영 앞바다가 내려다 보이는 해안가에 조성되어 있는 공원', null, null, '경남 통영시 정량동 688-1', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 55);

insert into TRIP values(49, '제주김녕미로공원', '관엽식물 미로공원으로, 키큰 나무 사이로 샛길을 만들어 방향감각을 잃게 하는 미로로 이루어져 있다', null, null, '제주 제주시 구좌읍 만장굴길 122', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 64);
insert into TRIP values(50, '우도', '제주도의 동쪽 끝에 접하는 섬', null, null, '제주 제주시 우도면', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 64);
insert into TRIP values(51, '성산일출봉', '제주특별자치도 서귀포시 성산읍 성산리에 있는 산', null, null, '제주 서귀포시 성산읍 성산리 1', 
     null, TO_DATE('2020/05/01', 'yyyy/mm/dd'), null, 64);

-- Foreign Key 삭제 SQL - TRIP(trip_location)
-- ALTER TABLE TRIP
-- DROP CONSTRAINT FK_TRIP_trip_location_TRIP_LOCATION_trip_location;


-- CUSTOMER Table Create SQL
-- 테이블 생성 SQL - CUSTOMER
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

-- 테이블 Comment 설정 SQL - CUSTOMER
COMMENT ON TABLE CUSTOMER IS '사용자';

-- 컬럼 Comment 설정 SQL - CUSTOMER.customer_id
COMMENT ON COLUMN CUSTOMER.customer_id IS '사용자ID';

-- 컬럼 Comment 설정 SQL - CUSTOMER.password
COMMENT ON COLUMN CUSTOMER.password IS '비밀번호';

-- 컬럼 Comment 설정 SQL - CUSTOMER.c_name
COMMENT ON COLUMN CUSTOMER.c_name IS '이름';

-- 컬럼 Comment 설정 SQL - CUSTOMER.email
COMMENT ON COLUMN CUSTOMER.email IS '이메일';

-- 컬럼 Comment 설정 SQL - CUSTOMER.registration_date
COMMENT ON COLUMN CUSTOMER.registration_date IS '가입일';

-- 컬럼 Comment 설정 SQL - CUSTOMER.profile_file
COMMENT ON COLUMN CUSTOMER.profile_file IS '프로필사진';

insert into CUSTOMER values('user_1','1111','김하늘','Haneul@naver.com',
    to_date('2024/04/03', 'yyyy/mm/dd'),null);
insert into CUSTOMER values('user_2','2222','김서현','Seohyun@naver.com',
    to_date('2024/02/25', 'yyyy/mm/dd'),null);
insert into CUSTOMER values('user_3','3333','이미지','dlalwl0131@gmail.com',
    to_date('2024/03/16', 'yyyy/mm/dd'),null);
insert into CUSTOMER values('user_4','4444','오승민','seungmin@naver.com',
    to_date('2024/01/15', 'yyyy/mm/dd'),null);

-- RESTAURANT Table Create SQL
-- 테이블 생성 SQL - RESTAURANT
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

-- 테이블 Comment 설정 SQL - RESTAURANT
COMMENT ON TABLE RESTAURANT IS '맛집';

-- 컬럼 Comment 설정 SQL - RESTAURANT.restaurant_id
COMMENT ON COLUMN RESTAURANT.restaurant_id IS '맛집ID';

-- 컬럼 Comment 설정 SQL - RESTAURANT.r_name
COMMENT ON COLUMN RESTAURANT.r_name IS '이름';

-- 컬럼 Comment 설정 SQL - RESTAURANT.r_location
COMMENT ON COLUMN RESTAURANT.r_location IS '위치';

-- 컬럼 Comment 설정 SQL - RESTAURANT.menu
COMMENT ON COLUMN RESTAURANT.menu IS '메뉴';

-- 컬럼 Comment 설정 SQL - RESTAURANT.r_average_score
COMMENT ON COLUMN RESTAURANT.r_average_score IS '평점';

-- 컬럼 Comment 설정 SQL - RESTAURANT.r_imageURL1
COMMENT ON COLUMN RESTAURANT.r_imageURL1 IS '이미지1';

-- 컬럼 Comment 설정 SQL - RESTAURANT.r_imageURL2
COMMENT ON COLUMN RESTAURANT.r_imageURL2 IS '이미지2';

-- 컬럼 Comment 설정 SQL - RESTAURANT.trip_location
COMMENT ON COLUMN RESTAURANT.trip_location IS '지역ID';

-- Foreign Key 설정 SQL - RESTAURANT(trip_location) -> TRIP_LOCATION(trip_location)
ALTER TABLE RESTAURANT
    ADD CONSTRAINT FK_RESTAURANT_trip_location_TRIP_LOCATION_trip_location FOREIGN KEY (trip_location)
        REFERENCES TRIP_LOCATION (trip_location) ;


insert into RESTAURANT values(21,'멘야하나비','서울 송파구 백제고분로45길 38 1층 멘야하나비 잠실 본점','제소바, 도니꾸 마제소바', 4.51,null,null,2);
insert into RESTAURANT values(22,'연교','서울 마포구 연희로1길 65 1층','성쟁바오, 오향닭', 4.48,null,null,2);

insert into RESTAURANT values(511,'톤쇼우','부산 수영구 광안해변로279번길 13 1층','히레카츠, 로스카츠, 버크셔k로스카츠', 4.55,null,null,51);
insert into RESTAURANT values(512,'원조할매국밥','부산 해운대구 송정중앙로 38','할매국밥, 돼지국밥', 4.45,null,null,51);

insert into RESTAURANT values(531,'신라식당','대구 중구 중앙대로 406-8','돌판 낙지볶음, 순두부찌개', 4.39,null,null,53);
insert into RESTAURANT values(532,'걸리버막창','대구 북구 옥산로 53', '막창, 생삼겹', 4.57,null,null,53);

insert into RESTAURANT values(321,'화통삼','인천 연수구 컨벤시아대로 100 현대힐스테이트 601동 135호 화통삼','흑돼지, 생우대갈비', 4.4,null,null,32);
insert into RESTAURANT values(322,'차이홍','인천 연수구 센트럴로 123 M 19 컨벤시아 신관 1층 차이홍','유니자장면, 북경식탕수육', 4.22,null,null,32);
    
insert into RESTAURANT values(621, '유소바 양림점', '광주 남구 천변좌로 468 유소바', '덴푸라 자루소바, 에비 온소바(덴푸라)', 4.73, null, null, 62);
insert into RESTAURANT values(622, '소코아 상무점', '광주 서구 상무중앙로 86 트윈스 빌딩 1층', '소코아카레, 토리카레, 키마카레', 4.55, null, null, 62);

insert into RESTAURANT values(421, '해이커피 만년점', '대전 서구 만년로67번길 34-26 2동 1층 해이커피', '밀크 스콘, 누텔라스콘', 4.71, null, null, 42);
insert into RESTAURANT values(422, '맛집부추해물칼국수', '대전 대덕구 신탄진로804번길 31', '칼국수, 삽겹살쭈꾸미', 4.36, null, null, 42);

insert into RESTAURANT values(521, '게스트로', '울산 남구 삼산중로84번길 11-13 1층', '마르게리따, 트러플 버섯크림', 4.66, null, null, 52);
insert into RESTAURANT values(522, '헤이다이닝 울산삼산점', '울산 남구 돋질로312번길 7 헤이다이닝', '이베리코 온 더 리조또, 트러플 까르보나라', 4.62, null, null, 52);

insert into RESTAURANT values(441, '아시안키친', '세종 절재로 194 세종중앙타운 1층 147호', '직화고기분짜, 해장쌀국수', 4.79, null, null, 44);
insert into RESTAURANT values(442, '아리에떼', '세종 장군면 덕고개길 12', '치아바타 샌드위치, 부채살버섯크림리조또', 4.6, null, null, 44);

-- Foreign Key 삭제 SQL - RESTAURANT(trip_location)
-- ALTER TABLE RESTAURANT
-- DROP CONSTRAINT FK_RESTAURANT_trip_location_TRIP_LOCATION_trip_location;


-- HOTEL Table Create SQL
-- 테이블 생성 SQL - HOTEL
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

-- 테이블 Comment 설정 SQL - HOTEL
COMMENT ON TABLE HOTEL IS '숙소';

-- 컬럼 Comment 설정 SQL - HOTEL.hotel_id
COMMENT ON COLUMN HOTEL.hotel_id IS '숙소ID';

-- 컬럼 Comment 설정 SQL - HOTEL.h_name
COMMENT ON COLUMN HOTEL.h_name IS '이름';

-- 컬럼 Comment 설정 SQL - HOTEL.h_location
COMMENT ON COLUMN HOTEL.h_location IS '위치';

-- 컬럼 Comment 설정 SQL - HOTEL.h_average_score
COMMENT ON COLUMN HOTEL.h_average_score IS '평점';

-- 컬럼 Comment 설정 SQL - HOTEL.h_imageURL1
COMMENT ON COLUMN HOTEL.h_imageURL1 IS '이미지1';

-- 컬럼 Comment 설정 SQL - HOTEL.h_imageURL2
COMMENT ON COLUMN HOTEL.h_imageURL2 IS '이미지2';

-- 컬럼 Comment 설정 SQL - HOTEL.trip_location
COMMENT ON COLUMN HOTEL.trip_location IS '지역ID';

-- Foreign Key 설정 SQL - HOTEL(trip_location) -> TRIP_LOCATION(trip_location)
ALTER TABLE HOTEL
    ADD CONSTRAINT FK_HOTEL_trip_location_TRIP_LOCATION_trip_location FOREIGN KEY (trip_location)
        REFERENCES TRIP_LOCATION (trip_location) ;
        
insert into HOTEL values(21,'신라호텔','서울 중구 동호로 249',4.6,null,null,2);
insert into HOTEL values(22,'파크 하얏트','서울 강남구 테헤란로 606', 4.57,null,null,2);

insert into HOTEL values(511,'그랜드조선','부산 해운대구 해운대해변로 292',4.55,null,null,51);
insert into HOTEL values(512,'시그니엘','부산 해운대구 달맞이길 30', 4.61,null,null,51);

insert into HOTEL values(531,'호텔인터불고','대구 수성구 팔현길 212 호텔인터불고',4.45,null,null,53);
insert into HOTEL values(532,'호텔수성','대구 수성구 용학로 106-7', 4.29,null,null,53);

insert into HOTEL values(321,'파라다이스시티','인천 중구 영종해안남로321번길 186',4.59,null,null,32);
insert into HOTEL values(322,'네스트호텔','인천 중구 영종해안남로 19-5', 4.44,null,null,32);

insert into HOTEL values(621, '노블스테이', '광주 광산구 임방울대로826번길 19-7', 4.47, null, null, 62);
insert into HOTEL values(622, '홀리데이인 광주호텔', '광주 서구 시청로 53', 4.46, null, null, 62);
    
insert into HOTEL values(421, '호텔 오노마', '대전 유성구 엑스포로 1 호텔 오노마 대전', 4.07, null, null, 42);
insert into HOTEL values(422, '호텔인터시티', '대전 유성구 온천로 92', 4.32, null, null, 42);
    
insert into HOTEL values(521, '신라스테이 울산', '울산 남구 삼산로 200 신라스테이', 4.43, null, null, 52);
insert into HOTEL values(522, '고늘스테이', '울산 동구 일산진6길 69 2층 고늘스테이', 4.76, null, null, 52);
    
insert into HOTEL values(441, '베스트웨스턴플러스호텔세종', '세종 도움1로 7', 4.46, null, null, 44);
insert into HOTEL values(442, '휴휴당 한옥 펜션', '세종 부강면 문곡구절골길 142-10', 4.81, null, null, 44);

-- Foreign Key 삭제 SQL - HOTEL(trip_location)
-- ALTER TABLE HOTEL
-- DROP CONSTRAINT FK_HOTEL_trip_location_TRIP_LOCATION_trip_location;


-- MEMO Table Create SQL
-- 테이블 생성 SQL - MEMO
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

-- 테이블 Comment 설정 SQL - MEMO
COMMENT ON TABLE MEMO IS '리뷰';

-- 컬럼 Comment 설정 SQL - MEMO.MEMO_id
COMMENT ON COLUMN MEMO.MEMO_id IS '리뷰ID';

-- 컬럼 Comment 설정 SQL - MEMO.content
COMMENT ON COLUMN MEMO.content IS '리뷰내용';

-- 컬럼 Comment 설정 SQL - MEMO.rating
COMMENT ON COLUMN MEMO.rating IS '별점';

-- 컬럼 Comment 설정 SQL - MEMO.date_created
COMMENT ON COLUMN MEMO.date_created IS '작성일';

-- 컬럼 Comment 설정 SQL - MEMO.v_imageURL1
COMMENT ON COLUMN MEMO.v_imageURL1 IS '사진1';

-- 컬럼 Comment 설정 SQL - MEMO.v_imageURL2
COMMENT ON COLUMN MEMO.v_imageURL2 IS '사진2';

-- 컬럼 Comment 설정 SQL - MEMO.v_imageURL3
COMMENT ON COLUMN MEMO.v_imageURL3 IS '사진3';

-- 컬럼 Comment 설정 SQL - MEMO.customer_id
COMMENT ON COLUMN MEMO.customer_id IS '사용자ID';

-- 컬럼 Comment 설정 SQL - MEMO.trip_id
COMMENT ON COLUMN MEMO.trip_id IS '여행지ID';

-- 컬럼 Comment 설정 SQL - MEMO.restaurant_id
COMMENT ON COLUMN MEMO.restaurant_id IS '맛집ID';

-- 컬럼 Comment 설정 SQL - MEMO.lodging_id
COMMENT ON COLUMN MEMO.lodging_id IS '숙소ID';

-- Foreign Key 설정 SQL - MEMO(customer_id) -> CUSTOMER(customer_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_customer_id_CUSTOMER_customer_id FOREIGN KEY (customer_id)
        REFERENCES CUSTOMER (customer_id) ;



-- Foreign Key 삭제 SQL - MEMO(customer_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_customer_id_CUSTOMER_customer_id;

-- Foreign Key 설정 SQL - MEMO(trip_id) -> TRIP(trip_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_trip_id_TRIP_trip_id FOREIGN KEY (trip_id)
        REFERENCES TRIP (trip_id) ;

-- Foreign Key 삭제 SQL - MEMO(trip_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_trip_id_TRIP_trip_id;

-- Foreign Key 설정 SQL - MEMO(restaurant_id) -> RESTAURANT(restaurant_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_restaurant_id_RESTAURANT_restaurant_id FOREIGN KEY (restaurant_id)
        REFERENCES RESTAURANT (restaurant_id) ;

-- Foreign Key 삭제 SQL - MEMO(restaurant_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_restaurant_id_RESTAURANT_restaurant_id;

-- Foreign Key 설정 SQL - MEMO(lodging_id) -> HOTEL(hotel_id)
ALTER TABLE MEMO
    ADD CONSTRAINT FK_MEMO_lodging_id_HOTEL_hotel_id FOREIGN KEY (lodging_id)
        REFERENCES HOTEL (hotel_id) ;

-- Foreign Key 삭제 SQL - MEMO(lodging_id)
-- ALTER TABLE MEMO
-- DROP CONSTRAINT FK_MEMO_lodging_id_HOTEL_hotel_id;

commit;