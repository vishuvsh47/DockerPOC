CREATE TABLE AxisOmniChannel.mxvmtbenmtb (
    feba_id                  VARCHAR(10),
    BANK_ID                INTEGER(5) NOT NULL,
    bay_user_id              VARCHAR(30) NOT NULL,
    db_ts                    TIMESTAMP,
    bene_id                  INTEGER(10) NOT NULL,
    reg_mobile_no            VARCHAR(15) NOT NULL,
    FREE_FIELD_1          VARCHAR(30),
    free_field_2             VARCHAR(30),
    free_field_3             VARCHAR(30),
    free_flg1                CHAR(1),
    free_flg2                CHAR(1),
    is_del_flag              CHAR(1) NOT NULL,
    mod_by                   VARCHAR(20) NOT NULL,
    mod_on                   DATE NOT NULL,
    created_by               VARCHAR(20) NOT NULL,
    created_on               DATE NOT NULL,
    bene_status              VARCHAR(10) NOT NULL,
    bene_visacard_name       VARCHAR(30) NOT NULL,
    bene_visacard_no         VARCHAR(20) NOT NULL,
    customer_id              VARCHAR(10) NOT NULL,
    bene_detl_updated_on     DATE,
    group_id                 VARCHAR(15),
    channel_id               VARCHAR(5) NOT NULL,
    device_detail            VARCHAR(30),
    ip_address               VARCHAR(40) NOT NULL,
    lang_code                VARCHAR(3),
    device_os_type           VARCHAR(10),
    device                   VARCHAR(10),
    app_version              VARCHAR(3),
    bene_mobile_no           VARCHAR(12),
    bene_bank_dtl            VARCHAR(50),
    cooling_period           INTEGER(3) NOT NULL,
    bene_payee_type          VARCHAR(10) NOT NULL,
    bene_visacard_nickname   VARCHAR(20) NOT NULL,
    bene_vcc_deletion_on     DATE
);
CREATE UNIQUE INDEX mxvmtbenmtb__idx ON
    AxisOmniChannel.mxvmtbenmtb ( bene_id ASC,BANK_ID  ASC );

CREATE INDEX mxvmtbenmtb__idxv1 ON
    AxisOmniChannel.mxvmtbenmtb (
        BANK_ID 
    ASC,
        customer_id
    ASC,
        bene_visacard_no
    ASC );

CREATE INDEX mxvmtbenmtb__idxv2 ON
    AxisOmniChannel.mxvmtbenmtb ( BANK_ID  ASC,customer_id ASC );

CREATE INDEX mxvmtbenmtb__idxv3 ON
    AxisOmniChannel.mxvmtbenmtb (
        BANK_ID 
    ASC,
        bene_visacard_no
    ASC,
        customer_id
    ASC );

ALTER TABLE AxisOmniChannel.mxvmtbenmtb ADD CONSTRAINT mxvmtbenmtb_pk PRIMARY KEY ( bene_id );