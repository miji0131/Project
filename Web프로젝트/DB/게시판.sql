drop table WT_BOARD_POST;
drop table MOD_BOARD;
drop table SG_BOARD_POST;
drop table FAQ_BOARD_POST;

create table WT_BOARD_POST(
    wtID NUMBER PRIMARY KEY,
    wtTitle VARCHAR2(50) NOT NULL,
    userID VARCHAR2(50),
    wtDate  VARCHAR2(50) NOT NULL,
    wtViews NUMBER DEFAULT 0,
    wtContent CLOB NOT NULL
); 
create table MOD_BOARD(
    mID NUMBER PRIMARY KEY,
    mTitle VARCHAR2(50) NOT NULL,
    userID VARCHAR2(50),
    mDate VARCHAR2(50),
    mViews NUMBER DEFAULT 0,
    mContent CLOB NOT NULL
);

create table SG_BOARD_POST(
    sgID NUMBER PRIMARY KEY,
    sgTitle VARCHAR2(50) NOT NULL,
    userID VARCHAR2(50),
    sgDate VARCHAR2(50),
    sgViews NUMBER DEFAULT 0,
    sgContent CLOB NOT NULL
);

create table FAQ_BOARD_POST(
    fID NUMBER PRIMARY KEY,
    fTitle VARCHAR2(50) NOT NULL,
    userID VARCHAR2(50),
    fDate VARCHAR2(50),
    fViews NUMBER DEFAULT 0,
    fContent CLOB NOT NULL
);

 create table GAME_MEMBER (
  member_id VARCHAR2(50) NOT NULL,
  member_pw VARCHAR2(100) NOT NULL,
  member_name VARCHAR2(100) NOT NULL,
  member_email VARCHAR2(50) NOT NULL,
  member_birth VARCHAR2(50) NOT NULL,
  member_gender VARCHAR2(10) NOT NULL,
  member_nation VARCHAR2(10) NOT NULL,
  member_phone VARCHAR2(50) NOT NULL,
  member_join_date VARCHAR2(50) NOT NULL,
  member_id_check varchar(20),
  PRIMARY KEY(member_id)
);
commit;