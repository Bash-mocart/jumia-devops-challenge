package com.jumia.validator.config;

import org.hibernate.dialect.Dialect;
import org.hibernate.dialect.function.SQLFunctionTemplate;
import org.hibernate.dialect.function.StandardSQLFunction;
import org.hibernate.dialect.function.VarArgsSQLFunction;
import org.hibernate.type.StringType;

import java.sql.Types;

public class SQLDialect extends Dialect {
    public SQLDialect() {
        registerColumnType(Types.BIT, "integer");
        registerColumnType(Types.TINYINT, "tinyint");
        registerColumnType(Types.SMALLINT, "smallint");
        registerColumnType(Types.INTEGER, "integer");
        registerColumnType(Types.BIGINT, "bigint");
        registerColumnType(Types.FLOAT, "float");
        registerColumnType(Types.REAL, "real");
        registerColumnType(Types.DOUBLE, "double");
        registerColumnType(Types.NUMERIC, "numeric");
        registerColumnType(Types.DECIMAL, "decimal");
        registerColumnType(Types.CHAR, "char");
        registerColumnType(Types.VARCHAR, "varchar");
        registerColumnType(Types.LONGVARCHAR, "longvarchar");
        registerColumnType(Types.DATE, "date");
        registerColumnType(Types.TIME, "time");
        registerColumnType(Types.TIMESTAMP, "timestamp");
        registerColumnType(Types.BINARY, "blob");
        registerColumnType(Types.VARBINARY, "blob");
        registerColumnType(Types.LONGVARBINARY, "blob");
        // registerColumnType(Types.NULL, "null");
        registerColumnType(Types.BLOB, "blob");
        registerColumnType(Types.CLOB, "clob");
        registerColumnType(Types.BOOLEAN, "integer");

        registerFunction("concat", new VarArgsSQLFunction(StringType.INSTANCE, "", "||", ""));
        registerFunction("mod", new SQLFunctionTemplate(StringType.INSTANCE, "?1 % ?2"));
        registerFunction("substr", new StandardSQLFunction("substr", StringType.INSTANCE));
        registerFunction("substring", new StandardSQLFunction("substr", StringType.INSTANCE));
    ***REMOVED***

    public boolean supportsIdentityColumns() {
        return true;
    ***REMOVED***

    public boolean hasDataTypeInIdentityColumn() {
        return false; // As specify in NHibernate dialect
    ***REMOVED***

    public String getIdentityColumnString() {
        // return "integer primary key autoincrement";
        return "integer";
    ***REMOVED***

    public String getIdentitySelectString() {
        return "select last_insert_rowid()";
    ***REMOVED***

    public boolean supportsLimit() {
        return true;
    ***REMOVED***

    protected String getLimitString(String query, boolean hasOffset) {
        return new StringBuffer(query.length() + 20).append(query).append(hasOffset ? " limit ? offset ?" : " limit ?")
                .toString();
    ***REMOVED***

    public boolean supportsTemporaryTables() {
        return true;
    ***REMOVED***

    public String getCreateTemporaryTableString() {
        return "create temporary table if not exists";
    ***REMOVED***

    public boolean dropTemporaryTableAfterUse() {
        return false;
    ***REMOVED***

    public boolean supportsCurrentTimestampSelection() {
        return true;
    ***REMOVED***

    public boolean isCurrentTimestampSelectStringCallable() {
        return false;
    ***REMOVED***

    public String getCurrentTimestampSelectString() {
        return "select current_timestamp";
    ***REMOVED***

    public boolean supportsUnionAll() {
        return true;
    ***REMOVED***

    public boolean hasAlterTable() {
        return false; // As specify in NHibernate dialect
    ***REMOVED***

    public boolean dropConstraints() {
        return false;
    ***REMOVED***

    public String getAddColumnString() {
        return "add column";
    ***REMOVED***

    public String getForUpdateString() {
        return "";
    ***REMOVED***

    public boolean supportsOuterJoinForUpdate() {
        return false;
    ***REMOVED***

    public String getDropForeignKeyString() {
        throw new UnsupportedOperationException("No drop foreign key syntax supported by SQLiteDialect");
    ***REMOVED***

    public String getAddForeignKeyConstraintString(String constraintName, String[] foreignKey, String referencedTable,
                                                   String[] primaryKey, boolean referencesPrimaryKey) {
        throw new UnsupportedOperationException("No add foreign key syntax supported by SQLiteDialect");
    ***REMOVED***

    public String getAddPrimaryKeyConstraintString(String constraintName) {
        throw new UnsupportedOperationException("No add primary key syntax supported by SQLiteDialect");
    ***REMOVED***

    public boolean supportsIfExistsBeforeTableName() {
        return true;
    ***REMOVED***

    public boolean supportsCascadeDelete() {
        return false;
    ***REMOVED***
***REMOVED***
