--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" DROP CONSTRAINT "FK_PLATFORM_USER_PLATFORM_ROLE_USER_ID";

ALTER TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" DROP CONSTRAINT "FK_USER_ACCOUNT_BANKACCOUNT_ACCOUNT_ID";

ALTER TABLE "PUBLIC"."ACCOUNT" DROP CONSTRAINT "FK_ACCOUNT_PORTFOLIO_ID";

ALTER TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" DROP CONSTRAINT "FK_USER_ACCOUNT_BANKACCOUNT_USER_ID";

ALTER TABLE "PUBLIC"."ASSET" DROP CONSTRAINT "FK_ASSET_OWNER_PORTFOLIO_ID";

ALTER TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" DROP CONSTRAINT "FK_PLATFORM_USER_PLATFORM_ROLE_ROLE_ID";

ALTER TABLE "PUBLIC"."PLATFORM_USER" DROP CONSTRAINT "FK_PLATFORM_USER_BANKING_USER_ID";

ALTER TABLE "PUBLIC"."ACCOUNT" DROP CONSTRAINT "PRIMARY_KEY_E";

ALTER TABLE "PUBLIC"."PORTFOLIO" DROP CONSTRAINT "CONSTRAINT_E8";

ALTER TABLE "PUBLIC"."PLATFORM_USER" DROP CONSTRAINT "CONSTRAINT_D";

ALTER TABLE "PUBLIC"."PLATFORM_ROLE" DROP CONSTRAINT "CONSTRAINT_DB";

ALTER TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" DROP CONSTRAINT "CONSTRAINT_37";

ALTER TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" DROP CONSTRAINT "CONSTRAINT_D0";

ALTER TABLE "PUBLIC"."PLATFORM_USER" DROP CONSTRAINT "PRIMARY_KEY_D";

ALTER TABLE "PUBLIC"."PLATFORM_ROLE" DROP CONSTRAINT "PRIMARY_KEY_DB";

ALTER TABLE "PUBLIC"."USER_ACCOUNT" DROP CONSTRAINT "PRIMARY_KEY_9";

ALTER TABLE "PUBLIC"."USER_ACCOUNT" DROP CONSTRAINT "CONSTRAINT_9";

ALTER TABLE "PUBLIC"."PORTFOLIO" DROP CONSTRAINT "PRIMARY_KEY_E8";

ALTER TABLE "PUBLIC"."ASSET" DROP CONSTRAINT "CONSTRAINT_3";

ALTER TABLE "PUBLIC"."ACCOUNT" DROP CONSTRAINT "CONSTRAINT_E";

DROP INDEX "PUBLIC"."FK_USER_ACCOUNT_BANKACCOUNT_ACCOUNT_ID_INDEX_D";

DROP INDEX "PUBLIC"."FK_ACCOUNT_PORTFOLIO_ID_INDEX_E";

DROP INDEX "PUBLIC"."FK_PLATFORM_USER_PLATFORM_ROLE_USER_ID_INDEX_3";

DROP INDEX "PUBLIC"."PRIMARY_KEY_E";

DROP INDEX "PUBLIC"."PRIMARY_KEY_D";

DROP INDEX "PUBLIC"."PRIMARY_KEY_D0";

DROP INDEX "PUBLIC"."PRIMARY_KEY_3";

DROP INDEX "PUBLIC"."PRIMARY_KEY_9";

DROP INDEX "PUBLIC"."FK_USER_ACCOUNT_BANKACCOUNT_USER_ID_INDEX_D";

DROP INDEX "PUBLIC"."PRIMARY_KEY_DB";

DROP INDEX "PUBLIC"."FK_PLATFORM_USER_BANKING_USER_ID_INDEX_D";

DROP INDEX "PUBLIC"."PRIMARY_KEY_37";

DROP INDEX "PUBLIC"."FK_ASSET_OWNER_PORTFOLIO_ID_INDEX_3";

DROP INDEX "PUBLIC"."FK_PLATFORM_USER_PLATFORM_ROLE_ROLE_ID_INDEX_3";

DROP INDEX "PUBLIC"."PRIMARY_KEY_E8";

DROP TABLE "INFORMATION_SCHEMA"."TRIGGERS";

DROP TABLE "INFORMATION_SCHEMA"."VIEWS";

DROP TABLE "INFORMATION_SCHEMA"."SESSIONS";

DROP TABLE "INFORMATION_SCHEMA"."FUNCTION_COLUMNS";

DROP TABLE "INFORMATION_SCHEMA"."KEY_COLUMN_USAGE";

DROP TABLE "PUBLIC"."PLATFORM_ROLE";

DROP TABLE "INFORMATION_SCHEMA"."SYNONYMS";

DROP TABLE "INFORMATION_SCHEMA"."DOMAINS";

DROP TABLE "INFORMATION_SCHEMA"."TABLE_TYPES";

DROP TABLE "PUBLIC"."ACCOUNT";

DROP TABLE "INFORMATION_SCHEMA"."SEQUENCES";

DROP TABLE "INFORMATION_SCHEMA"."TYPE_INFO";

DROP TABLE "PUBLIC"."PLATFORM_USER";

DROP TABLE "INFORMATION_SCHEMA"."CROSS_REFERENCES";

DROP TABLE "INFORMATION_SCHEMA"."CONSTRAINTS";

DROP TABLE "INFORMATION_SCHEMA"."ROLES";

DROP TABLE "INFORMATION_SCHEMA"."LOCKS";

DROP TABLE "INFORMATION_SCHEMA"."HELP";

DROP TABLE "INFORMATION_SCHEMA"."FUNCTION_ALIASES";

DROP TABLE "INFORMATION_SCHEMA"."SCHEMATA";

DROP TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT";

DROP TABLE "INFORMATION_SCHEMA"."REFERENTIAL_CONSTRAINTS";

DROP TABLE "INFORMATION_SCHEMA"."SETTINGS";

DROP TABLE "PUBLIC"."ASSET";

DROP TABLE "PUBLIC"."PORTFOLIO";

DROP TABLE "INFORMATION_SCHEMA"."TABLE_PRIVILEGES";

DROP TABLE "INFORMATION_SCHEMA"."TABLE_CONSTRAINTS";

DROP TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE";

DROP TABLE "INFORMATION_SCHEMA"."COLUMNS";

DROP TABLE "INFORMATION_SCHEMA"."CATALOGS";

DROP TABLE "INFORMATION_SCHEMA"."IN_DOUBT";

DROP TABLE "INFORMATION_SCHEMA"."COLLATIONS";

DROP TABLE "INFORMATION_SCHEMA"."COLUMN_PRIVILEGES";

DROP TABLE "INFORMATION_SCHEMA"."QUERY_STATISTICS";

DROP TABLE "PUBLIC"."USER_ACCOUNT";

DROP TABLE "INFORMATION_SCHEMA"."USERS";

DROP TABLE "INFORMATION_SCHEMA"."CONSTANTS";

DROP TABLE "INFORMATION_SCHEMA"."SESSION_STATE";

DROP TABLE "INFORMATION_SCHEMA"."RIGHTS";

DROP TABLE "INFORMATION_SCHEMA"."TABLES";

DROP TABLE "INFORMATION_SCHEMA"."INDEXES";

CREATE TABLE "INFORMATION_SCHEMA"."TRIGGERS" (
		"TRIGGER_CATALOG" VARCHAR(2147483647),
		"TRIGGER_SCHEMA" VARCHAR(2147483647),
		"TRIGGER_NAME" VARCHAR(2147483647),
		"TRIGGER_TYPE" VARCHAR(2147483647),
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"BEFORE" BOOLEAN,
		"JAVA_CLASS" VARCHAR(2147483647),
		"QUEUE_SIZE" INTEGER,
		"NO_WAIT" BOOLEAN,
		"REMARKS" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."VIEWS" (
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"VIEW_DEFINITION" VARCHAR(2147483647),
		"CHECK_OPTION" VARCHAR(2147483647),
		"IS_UPDATABLE" VARCHAR(2147483647),
		"STATUS" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."SESSIONS" (
		"ID" INTEGER,
		"USER_NAME" VARCHAR(2147483647),
		"SESSION_START" null,
		"STATEMENT" VARCHAR(2147483647),
		"STATEMENT_START" null,
		"CONTAINS_UNCOMMITTED" BOOLEAN,
		"STATE" VARCHAR(2147483647),
		"BLOCKER_ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."FUNCTION_COLUMNS" (
		"ALIAS_CATALOG" VARCHAR(2147483647),
		"ALIAS_SCHEMA" VARCHAR(2147483647),
		"ALIAS_NAME" VARCHAR(2147483647),
		"JAVA_CLASS" VARCHAR(2147483647),
		"JAVA_METHOD" VARCHAR(2147483647),
		"COLUMN_COUNT" INTEGER,
		"POS" INTEGER,
		"COLUMN_NAME" VARCHAR(2147483647),
		"DATA_TYPE" INTEGER,
		"TYPE_NAME" VARCHAR(2147483647),
		"PRECISION" INTEGER,
		"SCALE" SMALLINT,
		"RADIX" SMALLINT,
		"NULLABLE" SMALLINT,
		"COLUMN_TYPE" SMALLINT,
		"REMARKS" VARCHAR(2147483647),
		"COLUMN_DEFAULT" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."KEY_COLUMN_USAGE" (
		"CONSTRAINT_CATALOG" VARCHAR(2147483647),
		"CONSTRAINT_SCHEMA" VARCHAR(2147483647),
		"CONSTRAINT_NAME" VARCHAR(2147483647),
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"COLUMN_NAME" VARCHAR(2147483647),
		"ORDINAL_POSITION" INTEGER,
		"POSITION_IN_UNIQUE_CONSTRAINT" INTEGER
	);

CREATE TABLE "PUBLIC"."PLATFORM_ROLE" (
		"ID" INTEGER DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_8BAF3973_6165_4C4F_851A_26BF267A038E") NOT NULL,
		"CREATED_DATE" TIMESTAMP,
		"ROLENAME" VARCHAR(2147483647),
		"UPDATED_DATE" TIMESTAMP,
		"VERSION" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."SYNONYMS" (
		"SYNONYM_CATALOG" VARCHAR(2147483647),
		"SYNONYM_SCHEMA" VARCHAR(2147483647),
		"SYNONYM_NAME" VARCHAR(2147483647),
		"SYNONYM_FOR" VARCHAR(2147483647),
		"SYNONYM_FOR_SCHEMA" VARCHAR(2147483647),
		"TYPE_NAME" VARCHAR(2147483647),
		"STATUS" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."DOMAINS" (
		"DOMAIN_CATALOG" VARCHAR(2147483647),
		"DOMAIN_SCHEMA" VARCHAR(2147483647),
		"DOMAIN_NAME" VARCHAR(2147483647),
		"COLUMN_DEFAULT" VARCHAR(2147483647),
		"IS_NULLABLE" VARCHAR(2147483647),
		"DATA_TYPE" INTEGER,
		"PRECISION" INTEGER,
		"SCALE" INTEGER,
		"TYPE_NAME" VARCHAR(2147483647),
		"SELECTIVITY" INTEGER,
		"CHECK_CONSTRAINT" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."TABLE_TYPES" (
		"TYPE" VARCHAR(2147483647)
	);

CREATE TABLE "PUBLIC"."ACCOUNT" (
		"ACCOUNT_ID" INTEGER DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_51D5627F_6034_42E1_88DC_D83401FCD6D1") NOT NULL,
		"ACCOUNT_TYPE" VARCHAR(1),
		"BALANCE" DOUBLE,
		"CREATED_DATE" TIMESTAMP,
		"UPDATED_DATE" TIMESTAMP,
		"VERSION" INTEGER,
		"RATE" DOUBLE,
		"PORTFOLIO_ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."SEQUENCES" (
		"SEQUENCE_CATALOG" VARCHAR(2147483647),
		"SEQUENCE_SCHEMA" VARCHAR(2147483647),
		"SEQUENCE_NAME" VARCHAR(2147483647),
		"CURRENT_VALUE" BIGINT,
		"INCREMENT" BIGINT,
		"IS_GENERATED" BOOLEAN,
		"REMARKS" VARCHAR(2147483647),
		"CACHE" BIGINT,
		"MIN_VALUE" BIGINT,
		"MAX_VALUE" BIGINT,
		"IS_CYCLE" BOOLEAN,
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."TYPE_INFO" (
		"TYPE_NAME" VARCHAR(2147483647),
		"DATA_TYPE" INTEGER,
		"PRECISION" INTEGER,
		"PREFIX" VARCHAR(2147483647),
		"SUFFIX" VARCHAR(2147483647),
		"PARAMS" VARCHAR(2147483647),
		"AUTO_INCREMENT" BOOLEAN,
		"MINIMUM_SCALE" SMALLINT,
		"MAXIMUM_SCALE" SMALLINT,
		"RADIX" INTEGER,
		"POS" INTEGER,
		"CASE_SENSITIVE" BOOLEAN,
		"NULLABLE" SMALLINT,
		"SEARCHABLE" SMALLINT
	);

CREATE TABLE "PUBLIC"."PLATFORM_USER" (
		"ID" INTEGER DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_0D5150C1_AF19_4EF6_A807_F8373DAA559C") NOT NULL,
		"CREATED_DATE" TIMESTAMP,
		"PWHASH" VARCHAR(2147483647),
		"UPDATED_DATE" TIMESTAMP,
		"USERNAME" VARCHAR(2147483647),
		"VERSION" INTEGER,
		"BANKING_USER_ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."CROSS_REFERENCES" (
		"PKTABLE_CATALOG" VARCHAR(2147483647),
		"PKTABLE_SCHEMA" VARCHAR(2147483647),
		"PKTABLE_NAME" VARCHAR(2147483647),
		"PKCOLUMN_NAME" VARCHAR(2147483647),
		"FKTABLE_CATALOG" VARCHAR(2147483647),
		"FKTABLE_SCHEMA" VARCHAR(2147483647),
		"FKTABLE_NAME" VARCHAR(2147483647),
		"FKCOLUMN_NAME" VARCHAR(2147483647),
		"ORDINAL_POSITION" SMALLINT,
		"UPDATE_RULE" SMALLINT,
		"DELETE_RULE" SMALLINT,
		"FK_NAME" VARCHAR(2147483647),
		"PK_NAME" VARCHAR(2147483647),
		"DEFERRABILITY" SMALLINT
	);

CREATE TABLE "INFORMATION_SCHEMA"."CONSTRAINTS" (
		"CONSTRAINT_CATALOG" VARCHAR(2147483647),
		"CONSTRAINT_SCHEMA" VARCHAR(2147483647),
		"CONSTRAINT_NAME" VARCHAR(2147483647),
		"CONSTRAINT_TYPE" VARCHAR(2147483647),
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"UNIQUE_INDEX_NAME" VARCHAR(2147483647),
		"CHECK_EXPRESSION" VARCHAR(2147483647),
		"COLUMN_LIST" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."ROLES" (
		"NAME" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."LOCKS" (
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"SESSION_ID" INTEGER,
		"LOCK_TYPE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."HELP" (
		"ID" INTEGER,
		"SECTION" VARCHAR(2147483647),
		"TOPIC" VARCHAR(2147483647),
		"SYNTAX" VARCHAR(2147483647),
		"TEXT" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."FUNCTION_ALIASES" (
		"ALIAS_CATALOG" VARCHAR(2147483647),
		"ALIAS_SCHEMA" VARCHAR(2147483647),
		"ALIAS_NAME" VARCHAR(2147483647),
		"JAVA_CLASS" VARCHAR(2147483647),
		"JAVA_METHOD" VARCHAR(2147483647),
		"DATA_TYPE" INTEGER,
		"TYPE_NAME" VARCHAR(2147483647),
		"COLUMN_COUNT" INTEGER,
		"RETURNS_RESULT" SMALLINT,
		"REMARKS" VARCHAR(2147483647),
		"ID" INTEGER,
		"SOURCE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."SCHEMATA" (
		"CATALOG_NAME" VARCHAR(2147483647),
		"SCHEMA_NAME" VARCHAR(2147483647),
		"SCHEMA_OWNER" VARCHAR(2147483647),
		"DEFAULT_CHARACTER_SET_NAME" VARCHAR(2147483647),
		"DEFAULT_COLLATION_NAME" VARCHAR(2147483647),
		"IS_DEFAULT" BOOLEAN,
		"REMARKS" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" (
		"ACCOUNT_ID" INTEGER NOT NULL,
		"USER_ID" INTEGER NOT NULL
	);

CREATE TABLE "INFORMATION_SCHEMA"."REFERENTIAL_CONSTRAINTS" (
		"CONSTRAINT_CATALOG" VARCHAR(2147483647),
		"CONSTRAINT_SCHEMA" VARCHAR(2147483647),
		"CONSTRAINT_NAME" VARCHAR(2147483647),
		"UNIQUE_CONSTRAINT_CATALOG" VARCHAR(2147483647),
		"UNIQUE_CONSTRAINT_SCHEMA" VARCHAR(2147483647),
		"UNIQUE_CONSTRAINT_NAME" VARCHAR(2147483647),
		"MATCH_OPTION" VARCHAR(2147483647),
		"UPDATE_RULE" VARCHAR(2147483647),
		"DELETE_RULE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."SETTINGS" (
		"NAME" VARCHAR(2147483647),
		"VALUE" VARCHAR(2147483647)
	);

CREATE TABLE "PUBLIC"."ASSET" (
		"ASSET_ID" INTEGER DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_AE9CB629_EED1_427E_86A3_22533B1778B2") NOT NULL,
		"CURRENT_VALUE" DOUBLE,
		"CREATED_DATE" TIMESTAMP,
		"NAME" VARCHAR(2147483647),
		"PRICE" DOUBLE,
		"UNITS" INTEGER,
		"UPDATED_DATE" TIMESTAMP,
		"VERSION" INTEGER,
		"OWNER_PORTFOLIO_ID" INTEGER
	);

CREATE TABLE "PUBLIC"."PORTFOLIO" (
		"PORTFOLIO_ID" INTEGER DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_A8D656DB_CBDD_4FFB_8E08_01DF68BD2AC5") NOT NULL,
		"BALANCE" DOUBLE,
		"CREATED_DATE" TIMESTAMP,
		"UPDATED_DATE" TIMESTAMP,
		"VERSION" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."TABLE_PRIVILEGES" (
		"GRANTOR" VARCHAR(2147483647),
		"GRANTEE" VARCHAR(2147483647),
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"PRIVILEGE_TYPE" VARCHAR(2147483647),
		"IS_GRANTABLE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."TABLE_CONSTRAINTS" (
		"CONSTRAINT_CATALOG" VARCHAR(2147483647),
		"CONSTRAINT_SCHEMA" VARCHAR(2147483647),
		"CONSTRAINT_NAME" VARCHAR(2147483647),
		"CONSTRAINT_TYPE" VARCHAR(2147483647),
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"IS_DEFERRABLE" VARCHAR(2147483647),
		"INITIALLY_DEFERRED" VARCHAR(2147483647)
	);

CREATE TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" (
		"USER_ID" INTEGER NOT NULL,
		"ROLE_ID" INTEGER NOT NULL
	);

CREATE TABLE "INFORMATION_SCHEMA"."COLUMNS" (
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"COLUMN_NAME" VARCHAR(2147483647),
		"ORDINAL_POSITION" INTEGER,
		"DOMAIN_CATALOG" VARCHAR(2147483647),
		"DOMAIN_SCHEMA" VARCHAR(2147483647),
		"DOMAIN_NAME" VARCHAR(2147483647),
		"COLUMN_DEFAULT" VARCHAR(2147483647),
		"IS_NULLABLE" VARCHAR(2147483647),
		"DATA_TYPE" INTEGER,
		"CHARACTER_MAXIMUM_LENGTH" INTEGER,
		"CHARACTER_OCTET_LENGTH" INTEGER,
		"NUMERIC_PRECISION" INTEGER,
		"NUMERIC_PRECISION_RADIX" INTEGER,
		"NUMERIC_SCALE" INTEGER,
		"DATETIME_PRECISION" INTEGER,
		"INTERVAL_TYPE" VARCHAR(2147483647),
		"INTERVAL_PRECISION" INTEGER,
		"CHARACTER_SET_NAME" VARCHAR(2147483647),
		"COLLATION_NAME" VARCHAR(2147483647),
		"TYPE_NAME" VARCHAR(2147483647),
		"NULLABLE" INTEGER,
		"IS_COMPUTED" BOOLEAN,
		"SELECTIVITY" INTEGER,
		"CHECK_CONSTRAINT" VARCHAR(2147483647),
		"SEQUENCE_NAME" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"SOURCE_DATA_TYPE" SMALLINT,
		"COLUMN_TYPE" VARCHAR(2147483647),
		"COLUMN_ON_UPDATE" VARCHAR(2147483647),
		"IS_VISIBLE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."CATALOGS" (
		"CATALOG_NAME" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."IN_DOUBT" (
		"TRANSACTION" VARCHAR(2147483647),
		"STATE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."COLLATIONS" (
		"NAME" VARCHAR(2147483647),
		"KEY" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."COLUMN_PRIVILEGES" (
		"GRANTOR" VARCHAR(2147483647),
		"GRANTEE" VARCHAR(2147483647),
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"COLUMN_NAME" VARCHAR(2147483647),
		"PRIVILEGE_TYPE" VARCHAR(2147483647),
		"IS_GRANTABLE" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."QUERY_STATISTICS" (
		"SQL_STATEMENT" VARCHAR(2147483647),
		"EXECUTION_COUNT" INTEGER,
		"MIN_EXECUTION_TIME" DOUBLE,
		"MAX_EXECUTION_TIME" DOUBLE,
		"CUMULATIVE_EXECUTION_TIME" DOUBLE,
		"AVERAGE_EXECUTION_TIME" DOUBLE,
		"STD_DEV_EXECUTION_TIME" DOUBLE,
		"MIN_ROW_COUNT" INTEGER,
		"MAX_ROW_COUNT" INTEGER,
		"CUMULATIVE_ROW_COUNT" BIGINT,
		"AVERAGE_ROW_COUNT" DOUBLE,
		"STD_DEV_ROW_COUNT" DOUBLE
	);

CREATE TABLE "PUBLIC"."USER_ACCOUNT" (
		"USER_ID" INTEGER DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_71780CB4_2A4E_4BBC_9B8C_BCA274FB4C34") NOT NULL,
		"CREATED_DATE" TIMESTAMP,
		"NAME" VARCHAR(2147483647),
		"UPDATED_DATE" TIMESTAMP,
		"VERSION" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."USERS" (
		"NAME" VARCHAR(2147483647),
		"ADMIN" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."CONSTANTS" (
		"CONSTANT_CATALOG" VARCHAR(2147483647),
		"CONSTANT_SCHEMA" VARCHAR(2147483647),
		"CONSTANT_NAME" VARCHAR(2147483647),
		"DATA_TYPE" INTEGER,
		"REMARKS" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."SESSION_STATE" (
		"KEY" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647)
	);

CREATE TABLE "INFORMATION_SCHEMA"."RIGHTS" (
		"GRANTEE" VARCHAR(2147483647),
		"GRANTEETYPE" VARCHAR(2147483647),
		"GRANTEDROLE" VARCHAR(2147483647),
		"RIGHTS" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"ID" INTEGER
	);

CREATE TABLE "INFORMATION_SCHEMA"."TABLES" (
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"TABLE_TYPE" VARCHAR(2147483647),
		"STORAGE_TYPE" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"LAST_MODIFICATION" BIGINT,
		"ID" INTEGER,
		"TYPE_NAME" VARCHAR(2147483647),
		"TABLE_CLASS" VARCHAR(2147483647),
		"ROW_COUNT_ESTIMATE" BIGINT
	);

CREATE TABLE "INFORMATION_SCHEMA"."INDEXES" (
		"TABLE_CATALOG" VARCHAR(2147483647),
		"TABLE_SCHEMA" VARCHAR(2147483647),
		"TABLE_NAME" VARCHAR(2147483647),
		"NON_UNIQUE" BOOLEAN,
		"INDEX_NAME" VARCHAR(2147483647),
		"ORDINAL_POSITION" SMALLINT,
		"COLUMN_NAME" VARCHAR(2147483647),
		"CARDINALITY" INTEGER,
		"PRIMARY_KEY" BOOLEAN,
		"INDEX_TYPE_NAME" VARCHAR(2147483647),
		"IS_GENERATED" BOOLEAN,
		"INDEX_TYPE" SMALLINT,
		"ASC_OR_DESC" VARCHAR(2147483647),
		"PAGES" INTEGER,
		"FILTER_CONDITION" VARCHAR(2147483647),
		"REMARKS" VARCHAR(2147483647),
		"SQL" VARCHAR(2147483647),
		"ID" INTEGER,
		"SORT_TYPE" INTEGER,
		"CONSTRAINT_NAME" VARCHAR(2147483647),
		"INDEX_CLASS" VARCHAR(2147483647),
		"AFFINITY" BOOLEAN
	);

CREATE INDEX "PUBLIC"."FK_USER_ACCOUNT_BANKACCOUNT_ACCOUNT_ID_INDEX_D" ON "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" ("ACCOUNT_ID" ASC);

CREATE INDEX "PUBLIC"."FK_ACCOUNT_PORTFOLIO_ID_INDEX_E" ON "PUBLIC"."ACCOUNT" ("PORTFOLIO_ID" ASC);

CREATE INDEX "PUBLIC"."FK_PLATFORM_USER_PLATFORM_ROLE_USER_ID_INDEX_3" ON "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" ("USER_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_E" ON "PUBLIC"."ACCOUNT" ("ACCOUNT_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_D" ON "PUBLIC"."PLATFORM_USER" ("ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_D0" ON "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" ("ACCOUNT_ID" ASC, "USER_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_3" ON "PUBLIC"."ASSET" ("ASSET_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_9" ON "PUBLIC"."USER_ACCOUNT" ("USER_ID" ASC);

CREATE INDEX "PUBLIC"."FK_USER_ACCOUNT_BANKACCOUNT_USER_ID_INDEX_D" ON "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" ("USER_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_DB" ON "PUBLIC"."PLATFORM_ROLE" ("ID" ASC);

CREATE INDEX "PUBLIC"."FK_PLATFORM_USER_BANKING_USER_ID_INDEX_D" ON "PUBLIC"."PLATFORM_USER" ("BANKING_USER_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_37" ON "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" ("USER_ID" ASC, "ROLE_ID" ASC);

CREATE INDEX "PUBLIC"."FK_ASSET_OWNER_PORTFOLIO_ID_INDEX_3" ON "PUBLIC"."ASSET" ("OWNER_PORTFOLIO_ID" ASC);

CREATE INDEX "PUBLIC"."FK_PLATFORM_USER_PLATFORM_ROLE_ROLE_ID_INDEX_3" ON "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" ("ROLE_ID" ASC);

CREATE UNIQUE INDEX "PUBLIC"."PRIMARY_KEY_E8" ON "PUBLIC"."PORTFOLIO" ("PORTFOLIO_ID" ASC);

ALTER TABLE "PUBLIC"."ACCOUNT" ADD CONSTRAINT "PRIMARY_KEY_E" UNIQUE ("ACCOUNT_ID");

ALTER TABLE "PUBLIC"."PORTFOLIO" ADD CONSTRAINT "CONSTRAINT_E8" PRIMARY KEY ("PORTFOLIO_ID");

ALTER TABLE "PUBLIC"."PLATFORM_USER" ADD CONSTRAINT "CONSTRAINT_D" PRIMARY KEY ("ID");

ALTER TABLE "PUBLIC"."PLATFORM_ROLE" ADD CONSTRAINT "CONSTRAINT_DB" PRIMARY KEY ("ID");

ALTER TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" ADD CONSTRAINT "CONSTRAINT_37" PRIMARY KEY ("USER_ID", "ROLE_ID");

ALTER TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" ADD CONSTRAINT "CONSTRAINT_D0" PRIMARY KEY ("ACCOUNT_ID", "USER_ID");

ALTER TABLE "PUBLIC"."PLATFORM_USER" ADD CONSTRAINT "PRIMARY_KEY_D" UNIQUE ("ID");

ALTER TABLE "PUBLIC"."PLATFORM_ROLE" ADD CONSTRAINT "PRIMARY_KEY_DB" UNIQUE ("ID");

ALTER TABLE "PUBLIC"."USER_ACCOUNT" ADD CONSTRAINT "PRIMARY_KEY_9" UNIQUE ("USER_ID");

ALTER TABLE "PUBLIC"."USER_ACCOUNT" ADD CONSTRAINT "CONSTRAINT_9" PRIMARY KEY ("USER_ID");

ALTER TABLE "PUBLIC"."PORTFOLIO" ADD CONSTRAINT "PRIMARY_KEY_E8" UNIQUE ("PORTFOLIO_ID");

ALTER TABLE "PUBLIC"."ASSET" ADD CONSTRAINT "CONSTRAINT_3" PRIMARY KEY ("ASSET_ID");

ALTER TABLE "PUBLIC"."ACCOUNT" ADD CONSTRAINT "CONSTRAINT_E" PRIMARY KEY ("ACCOUNT_ID");

ALTER TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" ADD CONSTRAINT "FK_PLATFORM_USER_PLATFORM_ROLE_USER_ID" FOREIGN KEY ("USER_ID")
	REFERENCES "PUBLIC"."PLATFORM_USER" ("ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" ADD CONSTRAINT "FK_USER_ACCOUNT_BANKACCOUNT_ACCOUNT_ID" FOREIGN KEY ("ACCOUNT_ID")
	REFERENCES "PUBLIC"."ACCOUNT" ("ACCOUNT_ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE "PUBLIC"."ACCOUNT" ADD CONSTRAINT "FK_ACCOUNT_PORTFOLIO_ID" FOREIGN KEY ("PORTFOLIO_ID")
	REFERENCES "PUBLIC"."PORTFOLIO" ("PORTFOLIO_ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE "PUBLIC"."USER_ACCOUNT_BANKACCOUNT" ADD CONSTRAINT "FK_USER_ACCOUNT_BANKACCOUNT_USER_ID" FOREIGN KEY ("USER_ID")
	REFERENCES "PUBLIC"."USER_ACCOUNT" ("USER_ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE "PUBLIC"."ASSET" ADD CONSTRAINT "FK_ASSET_OWNER_PORTFOLIO_ID" FOREIGN KEY ("OWNER_PORTFOLIO_ID")
	REFERENCES "PUBLIC"."PORTFOLIO" ("PORTFOLIO_ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE "PUBLIC"."PLATFORM_USER_PLATFORM_ROLE" ADD CONSTRAINT "FK_PLATFORM_USER_PLATFORM_ROLE_ROLE_ID" FOREIGN KEY ("ROLE_ID")
	REFERENCES "PUBLIC"."PLATFORM_ROLE" ("ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE "PUBLIC"."PLATFORM_USER" ADD CONSTRAINT "FK_PLATFORM_USER_BANKING_USER_ID" FOREIGN KEY ("BANKING_USER_ID")
	REFERENCES "PUBLIC"."USER_ACCOUNT" ("USER_ID")
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;
