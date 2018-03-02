CREATE TABLE AxisOmniChannel.mxpullfundsbenemtb (
    feba_id                 VARCHAR(10),
    BANK_ID                 INTEGER(5) NOT NULL,
    bay_user_id             VARCHAR(30) NOT NULL,
    db_ts                   TIMESTAMP ,
    bene_id                 INTEGER(10) NOT NULL,
    reg_mobile_no           VARCHAR(15) NOT NULL,
    FREE_FIELD_1         VARCHAR(30),
    free_field_2            VARCHAR(30),
    free_field_3            VARCHAR(30),
    free_flg1               CHAR(1),
    free_flg2               CHAR(1),
    is_del_flag             CHAR(1) NOT NULL,
    mod_by                  VARCHAR(20) NOT NULL,
    mod_on                  DATE NOT NULL,
    created_by              VARCHAR(20) NOT NULL,
    created_on              DATE NOT NULL,
    bene_status             VARCHAR(10) NOT NULL,
    recepient_acct_name     VARCHAR(30) NOT NULL,
    remitter_acct_no        VARCHAR(20) NOT NULL,
    customer_id             VARCHAR(10) NOT NULL,
    bene_detl_updated_on    DATE,
    group_id                VARCHAR(15),
    channel_id              VARCHAR(5) NOT NULL,
    device_detail           VARCHAR(30),
    ip_address              VARCHAR(40) NOT NULL,
    lang_code               VARCHAR(3),
    device_os_type          VARCHAR(10),
    device                  VARCHAR(10),
    app_version             VARCHAR(3),
    recipient_mob_no        VARCHAR(12),
    recipient_acct_no       VARCHAR(20) NOT NULL,
    cooling_period          INTEGER(3) NOT NULL,
    bene_payee_type         VARCHAR(10) NOT NULL,
    recipient_pf_nickname   VARCHAR(20) NOT NULL,
    bene_pf_deletion_on     DATE,
    recipient_acct_type     VARCHAR(10) NOT NULL,
    pf_register_upto        DATE NOT NULL,
    pf_amt_cycle            INTEGER(10) NOT NULL,
    pf_frequence_cycle      VARCHAR(20) NOT NULL,
    recipient_cust_id       VARCHAR(15)
);
/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.recepient_acct_name IS 'Recepient account  Name' */
/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.remitter_acct_no IS
    'Remitter account  integer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.recipient_mob_no IS
    'Recepient account  mobile no if exists'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.recipient_acct_no IS
    'Recepient account  integer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.recipient_pf_nickname IS
    'Recepient account  Nickname'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.recipient_acct_type IS
    'Recepient account  type'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.pf_register_upto IS
    'Pull Funds register end date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.pf_amt_cycle IS
    'Pull Funds amount for cycle'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.pf_frequence_cycle IS
    'Pull Funds  cycle'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN AxisOmniChannel.mxpullfundsbenemtb.recipient_cust_id IS
    'Recepient account  Custid if exists'; */

CREATE UNIQUE INDEX mxpullfundsbenemtb__idx ON
    AxisOmniChannel.mxpullfundsbenemtb ( bene_id ASC,BANK_ID  ASC );

CREATE INDEX mxpullfundsbenemtb__idxv1 ON
    AxisOmniChannel.mxpullfundsbenemtb ( remitter_acct_no ASC,BANK_ID  ASC );

CREATE INDEX mxpullfundsbenemtb__idxv2 ON
    AxisOmniChannel.mxpullfundsbenemtb ( remitter_acct_no ASC,recipient_acct_no ASC );

CREATE INDEX mxpullfundsbenemtb__idxv3 ON
    AxisOmniChannel.mxpullfundsbenemtb (
        customer_id
    ASC,
        recipient_pf_nickname
    ASC,
        recipient_acct_no
    ASC );

ALTER TABLE AxisOmniChannel.mxpullfundsbenemtb ADD CONSTRAINT mxpullfundsbenemtb_pk PRIMARY KEY ( bene_id );