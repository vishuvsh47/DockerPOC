CREATE TABLE AxisOmniChannel.mxupibenmtb (
    feba_id                VARCHAR(10),
    BANK_ID              INTEGER(5) NOT NULL,
    bay_user_id            VARCHAR(30) NOT NULL,
    db_ts                  TIMESTAMP ,
    bene_id                INTEGER(10) NOT NULL,
    reg_mobile_no          VARCHAR(15) NOT NULL,
    FREE_FIELD_1        VARCHAR(30),
    free_field_2           VARCHAR(30),
    free_field_3           VARCHAR(30),
    free_flg1              CHAR(1),
    free_flg2              CHAR(1),
    is_del_flag            CHAR(1) NOT NULL,
    mod_by                 VARCHAR(20) NOT NULL,
    mod_on                 DATE NOT NULL,
    created_by             VARCHAR(20) NOT NULL,
    created_on             DATE NOT NULL,
    bene_status            VARCHAR(10) NOT NULL,
    bene_upi_name          VARCHAR(30) NOT NULL,
    bene_upi_id            VARCHAR(20) NOT NULL,
    customer_id            VARCHAR(10) NOT NULL,
    bene_detl_updated_on   DATE,
    group_id               VARCHAR(15),
    channel_id             VARCHAR(5) NOT NULL,
    device_detail          VARCHAR(30),
    ip_address             VARCHAR(40) NOT NULL,
    lang_code              VARCHAR(3),
    device_os_type         VARCHAR(10),
    device                 VARCHAR(10),
    app_version            VARCHAR(3),
    bene_mobile_no         VARCHAR(12),
    bene_bank_dtl          VARCHAR(50),
    cooling_period         INTEGER(3) NOT NULL,
    bene_payee_type        VARCHAR(10) NOT NULL,
    bene_upi_nickname      VARCHAR(20) NOT NULL,
    bene_upi_deletion_on   DATE
);
CREATE UNIQUE INDEX mxupibenmtb__idx ON
    AxisOmniChannel.mxupibenmtb ( bene_id ASC,BANK_ID  ASC );

CREATE INDEX mxupibenmtb__idxv1 ON
    AxisOmniChannel.mxupibenmtb ( bay_user_id ASC,bene_upi_id ASC );

CREATE INDEX mxupibenmtb__idxv2 ON
    AxisOmniChannel.mxupibenmtb ( customer_id ASC,BANK_ID  ASC );

ALTER TABLE AxisOmniChannel.mxupibenmtb ADD CONSTRAINT mxupibenmtb_pk PRIMARY KEY ( bene_id );