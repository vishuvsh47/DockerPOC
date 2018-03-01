CREATE TABLE AxisOmniChannel.mxotherbankbenemtb (
    feba_id                varchar(10),
    BANK_ID              integer(5) NOT NULL,
    bay_user_id            varchar(30) NOT NULL,
    db_ts                  DATE ,
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
    bene_payee_type        varchar(10) NOT NULL,
    bene_mmid              varchar(10) NOT NULL,
    bene_country_code      varchar(5) NOT NULL
);

CREATE UNIQUE INDEX mxotherbankbenemtb__idx ON
    AxisOmniChannel.mxotherbankbenemtb ( BANK_ID  ASC,bene_id ASC );

CREATE INDEX mxotherbankbenemtb__idxv1 ON
    AxisOmniChannel.mxotherbankbenemtb ( BANK_ID  ASC,bay_user_id ASC );

CREATE INDEX mxotherbankbenemtb__idxv2 ON
    AxisOmniChannel.mxotherbankbenemtb ( BANK_ID  ASC,customer_id ASC );

CREATE INDEX mxotherbankbenemtb__idxv3 ON
    AxisOmniChannel.mxotherbankbenemtb (
        customer_id
    ASC,
        consumer_code
    ASC,
        BANK_ID 
    ASC );

CREATE INDEX mxotherbankbenemtb__idxv4 ON
    AxisOmniChannel.mxotherbankbenemtb ( customer_id ASC,bene_nick_name ASC );

CREATE INDEX mxotherbankbenemtb__idxv5 ON
    AxisOmniChannel.mxotherbankbenemtb (
        customer_id
    ASC,
        bene_acc_no
    ASC,
        bene_mmid
    ASC );

ALTER TABLE AxisOmniChannel.mxotherbankbenemtb ADD CONSTRAINT mxotherbankbenemtb_pk PRIMARY KEY ( bene_id );