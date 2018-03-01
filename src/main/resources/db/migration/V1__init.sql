CREATE TABLE AxisOmniChannel.mxaxisbankbenemtb (
    feba_id                varchar(10),
    BANK_ID              integer(5) NOT NULL,
    bay_user_id            varchar(30) NOT NULL,
    db_ts                  TIMESTAMP ,
    corporate_id           varchar(20),
    bene_id                integer(10) NOT NULL,
    reg_mobile_no          varchar(15) NOT NULL,
    FREE_FIELD_1         varchar(30),
    free_field_2           varchar(30),
    free_field_3           varchar(30),
    free_flg1              CHAR(1),
    free_flg2              CHAR(1),
    is_del_flag            CHAR(1) NOT NULL,
    mod_by                 varchar(20) NOT NULL,
    mod_on                 DATE NOT NULL,
    created_by             varchar(20) NOT NULL,
    created_on             DATE NOT NULL,
    consumer_code          varchar(100) NOT NULL,
    bene_status            varchar(10) NOT NULL,
    autopay_flg            CHAR(1),
    AUTOPAY_AMT          integer(5),
    autopay_crn            varchar(5),
    autopay_acid           varchar(15),
    autopay_brch_id        varchar(12),
    autopay_mode           CHAR(1),
    bene_nick_name         varchar(30) NOT NULL,
    bene_acc_name          varchar(20) NOT NULL,
    bene_acc_cat           varchar(8) NOT NULL,
    bene_acc_type          varchar(8) NOT NULL,
    bene_acc_currency      varchar(5) NOT NULL,
    bene_acc_no            varchar(15) NOT NULL,
    bene_branch_id         varchar(15) NOT NULL,
    customer_id            varchar(10) NOT NULL,
    bene_detl_updated_on   DATE,
    group_id               varchar(15),
    channel_id             varchar(5) NOT NULL,
    device_detail          varchar(30),
    ip_address             varchar(40) NOT NULL,
    lang_code              varchar(3),
    device_os_type         varchar(10),
    device                 varchar(10),
    app_version            varchar(3),
    bene_ifsc_code         varchar(15) NOT NULL,
    bene_mobile_no         varchar(12),
    bene_addition_dt       varchar(100),
    bene_bank_name         varchar(20),
    bene_state_name        varchar(20),
    bene_branch_dtl        varchar(50),
    cooling_period         integer(3) NOT NULL,
    bene_payee_type        varchar(10) NOT NULL
);


CREATE INDEX mxaxisbankbenemtb__idx ON
    AxisOmniChannel.mxaxisbankbenemtb ( bay_user_id ASC,BANK_ID  ASC );

CREATE UNIQUE INDEX mxaxisbankbenemtb__idxv1 ON
    AxisOmniChannel.mxaxisbankbenemtb ( bene_id ASC,BANK_ID  ASC );

CREATE INDEX mxaxisbankbenemtb__idxv2 ON
    AxisOmniChannel.mxaxisbankbenemtb ( consumer_code ASC,BANK_ID  ASC );

CREATE INDEX mxaxisbankbenemtb__idxv3 ON
    AxisOmniChannel.mxaxisbankbenemtb (
        customer_id
    ASC,
        bene_payee_type
    ASC,
        bene_nick_name
    ASC );

CREATE INDEX mxaxisbankbenemtb__idxv4 ON
    AxisOmniChannel.mxaxisbankbenemtb (
        bene_acc_no
    ASC,
        customer_id
    ASC,
        BANK_ID 
    ASC );

CREATE INDEX mxaxisbankbenemtb__idxv5 ON
    AxisOmniChannel.mxaxisbankbenemtb ( customer_id ASC,BANK_ID  ASC );

CREATE INDEX mxaxisbankbenemtb__idxv6 ON
    AxisOmniChannel.mxaxisbankbenemtb ( bene_id ASC,customer_id ASC );

ALTER TABLE AxisOmniChannel.mxaxisbankbenemtb ADD CONSTRAINT mxaxisbankbenemtb_pk PRIMARY KEY ( bene_id );
insert into AxisOmniChannel.mxaxisbankbenemtb values(1,00101,001,'2018-02-28 09:51:55',101,000001,1234567890,null,null,null,"T","F","F","abc",'2018-02-28 09:55:54',"bbc",'2018-02-28 09:53:54',"12355","Active",'F',00000,"INR",1222333,005,'A',"Nikki","Nikki k","Cons","Saving","INR",10001111,006,002,null,01,02,"Win",'104.102.25.24',"Eng","Android","S5",6.5,000025,6669998885,'2018-02-28 09:51:55',"Axis",null,null,0,"Direct");