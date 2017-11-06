.class public Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
.super Ljava/lang/Object;
.source "DBHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$CumulativeDataRegType;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$CumulativeDataRegColumns;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$CumulativeDataType;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$CumulativeDataColumns;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$UpdateDataValues;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$UpdateDataColumns;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$FeedbackColumns;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$CardExtraValues;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$CardColumns;,
        Lcom/samsung/android/sdk/ppmt/storage/DBHandler$Tables;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_CARD:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS card (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE,tid TEXT, mtype TEXT, data TEXT, state TEXT, rc INTEGER, extra TEXT, mrt INTEGER, mdt INTEGER, expdt INTEGER  );"

.field private static final CREATE_TABLE_CUMULATIVE_DATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cumulative_data (_id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,type TEXT NOT NULL, data TEXT);"

.field private static final CREATE_TABLE_CUMULATIVE_DATA_REG:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cumulative_data_reg (_id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE,type TEXT NOT NULL, data TEXT);"

.field private static final CREATE_TABLE_FEEDBACK:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS feedback (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE CONSTRAINT fk_cardtable_mid REFERENCES card(mid) ON DELETE CASCADE,lfbid INTEGER NOT NULL,lts INTEGER NOT NULL,fbid TEXT NOT NULL,fv TEXT NOT NULL,ts TEXT NOT NULL,state TEXT NOT NULL, try INTEGER NOT NULL );"

.field private static final CREATE_TABLE_UPDATED_DATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS update_data (key TEXT NOT NULL, value TEXT, type TEXT NOT NULL, send_done INTEGER NOT NULL DEFAULT 0, UNIQUE (key, type) ON CONFLICT REPLACE );"

.field private static final CREATE_TRIGGER_DELETE_FEEDBACK:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS trigger_delete_fb BEFORE DELETE ON card FOR EACH ROW BEGIN  DELETE FROM feedback WHERE feedback.mid= OLD.mid; END"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ppmt.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_OPEN_LOCK:Ljava/lang/Object;

.field private static final FEEDBACK_DELETE_TRIGGERNAME:Ljava/lang/String; = "trigger_delete_fb"

.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static mHandler:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

.field private static mReferCount:I


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->DB_OPEN_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;-><init>(Lcom/samsung/android/sdk/ppmt/storage/DBHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDbHelper:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDbHelper:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized deleteCumulativeData(J)Z
    .locals 9
    .param p1, "rowId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1248
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cumulative_data"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    :goto_0
    monitor-exit p0

    return v1

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to delete cumulative data. database delete exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1251
    goto :goto_0

    .line 1248
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteCumulativeRegData(J)Z
    .locals 9
    .param p1, "rowId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1469
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cumulative_data_reg"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    :goto_0
    monitor-exit p0

    return v1

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to delete cumulative reg data. database delete exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1472
    goto :goto_0

    .line 1469
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteOldestCumulativeRegData(Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1447
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data_reg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "min(cast(_id as decimal))"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1448
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 1450
    .local v10, "id":J
    if-nez v8, :cond_1

    .line 1466
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1453
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "id":J
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1456
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1458
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 1462
    invoke-direct {p0, v10, v11}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteCumulativeRegData(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1463
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":J
    :catch_0
    move-exception v9

    .line 1464
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete oldest cumulative reg data error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1447
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCumulativeRegDataCount(Ljava/lang/String;)J
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1434
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 1436
    .local v2, "returnValue":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cumulative_data_reg"

    const-string/jumbo v5, "type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v1, v4, v5, v6}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1440
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cumulative reg data count error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1434
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getCumulativeSendDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    .local v8, "cumulativeDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data"

    const/4 v2, 0x0

    const-string/jumbo v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1233
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1235
    .local v12, "id":J
    const-string/jumbo v0, "type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1236
    .local v14, "type":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v1, "data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1237
    .local v10, "data":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    invoke-direct {v0, v12, v13, v14, v10}, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1240
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "data":Ljava/lang/String;
    .end local v12    # "id":J
    .end local v14    # "type":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1241
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get cumulative data error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1243
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v8

    .line 1239
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1230
    .end local v8    # "cumulativeDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 221
    if-nez p0, :cond_0

    .line 237
    :goto_0
    return-object v1

    .line 224
    :cond_0
    sput-object p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    .line 225
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->DB_OPEN_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    sget v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    .line 227
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db open : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mHandler:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 230
    :try_start_1
    new-instance v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mHandler:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :cond_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mHandler:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    monitor-exit v2

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    .line 233
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private removeElementFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 3
    .param p1, "ja"    # Lorg/json/JSONArray;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 928
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 929
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 930
    if-eq v0, p2, :cond_0

    .line 931
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 929
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 934
    :cond_1
    return-object v1
.end method


# virtual methods
.method public declared-synchronized addCardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "userdata"    # Ljava/lang/String;
    .param p3, "msgType"    # Ljava/lang/String;
    .param p4, "targetid"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 279
    monitor-enter p0

    const/4 v0, -0x1

    .line 281
    .local v0, "DEFAULT_DISPLAYID":I
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v5, "fail to add card. mid null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_0
    monitor-exit p0

    return v3

    .line 286
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "tid"

    invoke-virtual {v2, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "mtype"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "data"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v4, "state"

    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v4, "rc"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v4, "mrt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "card"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 297
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to add card"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to add card. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 304
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardDisplayId(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    goto/16 :goto_0
.end method

.method public declared-synchronized addCumulativeData(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1176
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v2, "data"

    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cumulative_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1184
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 1181
    :catch_0
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data. database insert exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1184
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 1175
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addCumulativeRegData(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1421
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v2, "data"

    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cumulative_data_reg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1428
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 1425
    :catch_0
    move-exception v1

    .line 1426
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reg data. database insert exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1428
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 1420
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addFeedbackData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)Z
    .locals 18
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "fbid"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p3, "fv"    # Ljava/lang/String;

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-nez p2, :cond_1

    .line 807
    :cond_0
    sget-object v12, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] fail to add feedback. invalid params"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    const/4 v12, 0x0

    .line 871
    :goto_0
    monitor-exit p0

    return v12

    .line 811
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isCardExist(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 812
    sget-object v12, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] fail to add feedback. card not exists."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    const/4 v12, 0x0

    goto :goto_0

    .line 817
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isFeedbackExist(Ljava/lang/String;)Z

    move-result v6

    .line 819
    .local v6, "isFeedbackExist":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 821
    .local v10, "time":J
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isFeedbackExist(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 822
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 823
    .local v3, "fbids":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 824
    .local v5, "fvs":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 834
    .local v4, "fts":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result v12

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 835
    if-nez p3, :cond_4

    .line 836
    const-string p3, ""

    .line 838
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 839
    invoke-virtual {v4, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 841
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 842
    .local v7, "values":Landroid/content/ContentValues;
    const-string v12, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    sget-object v12, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 844
    const-string v12, "lfbid"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    :cond_5
    const-string v12, "lts"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 847
    const-string v12, "fbid"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v12, "fv"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string/jumbo v12, "ts"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string/jumbo v12, "state"

    const-string/jumbo v13, "wait"

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string/jumbo v12, "try"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    if-nez v6, :cond_8

    .line 854
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "feedback"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 855
    .local v8, "succeed":J
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-nez v12, :cond_9

    .line 856
    sget-object v12, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] fail to add feedback. insert fail"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 826
    .end local v3    # "fbids":Lorg/json/JSONArray;
    .end local v4    # "fts":Lorg/json/JSONArray;
    .end local v5    # "fvs":Lorg/json/JSONArray;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "succeed":J
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFbids(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 827
    .restart local v3    # "fbids":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFvs(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 828
    .restart local v5    # "fvs":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackTimes(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 829
    .restart local v4    # "fts":Lorg/json/JSONArray;
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    if-nez v4, :cond_3

    .line 830
    :cond_7
    sget-object v12, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] fail to add feedback. invalid params"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 860
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "feedback"

    const-string v14, "mid = ?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v7, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 862
    .local v8, "succeed":I
    if-nez v8, :cond_9

    .line 863
    sget-object v12, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] fail to add feedback. no data to update"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 864
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 867
    .end local v3    # "fbids":Lorg/json/JSONArray;
    .end local v4    # "fts":Lorg/json/JSONArray;
    .end local v5    # "fvs":Lorg/json/JSONArray;
    .end local v6    # "isFeedbackExist":Z
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "succeed":I
    .end local v10    # "time":J
    :catch_0
    move-exception v2

    .line 868
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v12, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] addFeedbackData. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 869
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 871
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fbids":Lorg/json/JSONArray;
    .restart local v4    # "fts":Lorg/json/JSONArray;
    .restart local v5    # "fvs":Lorg/json/JSONArray;
    .restart local v6    # "isFeedbackExist":Z
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v10    # "time":J
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 806
    .end local v3    # "fbids":Lorg/json/JSONArray;
    .end local v4    # "fts":Lorg/json/JSONArray;
    .end local v5    # "fvs":Lorg/json/JSONArray;
    .end local v6    # "isFeedbackExist":Z
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "time":J
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public close()V
    .locals 5

    .prologue
    .line 242
    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->DB_OPEN_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    sget v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDbHelper:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mHandler:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDbHelper:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDbHelper:Lcom/samsung/android/sdk/ppmt/storage/DBHandler$DBHelper;

    .line 252
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mHandler:Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    .line 253
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    .line 255
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db close : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mReferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    monitor-exit v2

    .line 257
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized countCardsDisplayedIn(J)I
    .locals 9
    .param p1, "ms"    # J

    .prologue
    .line 671
    monitor-enter p0

    const/4 v0, -0x1

    .line 673
    .local v0, "DEFAULT_VALUE":I
    const/4 v1, 0x0

    .line 675
    .local v1, "cur":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT (*) FROM card WHERE mdt>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mtype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "test"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOT LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'%_test\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "query":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 680
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cards displayed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x36ee80

    div-long v6, p1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hours"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 687
    if-eqz v1, :cond_0

    .line 688
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    .end local v3    # "query":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 687
    .restart local v3    # "query":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 688
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    .end local v3    # "query":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v4, -0x1

    goto :goto_0

    .line 684
    :catch_0
    move-exception v2

    .line 685
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to count cards displayed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x36ee80

    div-long v6, p1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hours:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 687
    if-eqz v1, :cond_2

    .line 688
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 671
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 687
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_3

    .line 688
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized deleteCardData(Ljava/lang/String;)Z
    .locals 10
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 765
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 766
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v4, "fail to delete card data. mid null"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :goto_0
    monitor-exit p0

    return v2

    .line 770
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "card"

    const-string v6, "mid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 772
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 773
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail to delete card"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 777
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail to delete card. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 765
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "result":I
    :cond_1
    move v2, v3

    .line 776
    goto :goto_0
.end method

.method public declared-synchronized deleteDBData()V
    .locals 2

    .prologue
    .line 1503
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v1, "ppmt.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    monitor-exit p0

    return-void

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteFbids(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 15
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "del_fbid"    # Lorg/json/JSONArray;

    .prologue
    .line 875
    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p2, :cond_1

    .line 876
    :cond_0
    sget-object v9, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] fail to delete fbid. invalid params"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    const/4 v9, 0x0

    .line 923
    :goto_0
    monitor-exit p0

    return v9

    .line 880
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isFeedbackExist(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 881
    const/4 v9, 0x1

    goto :goto_0

    .line 885
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFbids(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 886
    .local v2, "fbid":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFvs(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 887
    .local v3, "fvs":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackTimes(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 888
    .local v7, "ts":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-nez v7, :cond_4

    .line 889
    :cond_3
    sget-object v9, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] fail to delete fbid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/4 v9, 0x0

    goto :goto_0

    .line 893
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 894
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 895
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 896
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_6

    .line 897
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 898
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 899
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 893
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 901
    :cond_6
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeElementFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v2

    .line 902
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeElementFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v3

    .line 903
    invoke-direct {p0, v7, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeElementFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v7

    .line 905
    goto :goto_3

    .line 894
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 910
    .end local v5    # "j":I
    :cond_8
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 911
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "fbid"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v9, "fv"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string/jumbo v9, "ts"

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v9, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "feedback"

    const-string v11, "mid = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 916
    .local v6, "result":I
    if-nez v6, :cond_9

    .line 917
    sget-object v9, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] fail to delete fbid."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 918
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 920
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 921
    .end local v2    # "fbid":Lorg/json/JSONArray;
    .end local v3    # "fvs":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "result":I
    .end local v7    # "ts":Lorg/json/JSONArray;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 922
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v9, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] fail to delete fbid. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 923
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 875
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized deleteOldestCumulativeData(Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "min(cast(_id as decimal))"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1190
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 1192
    .local v10, "id":J
    if-nez v8, :cond_1

    .line 1208
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1195
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "id":J
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1196
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1198
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1200
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0, v10, v11}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteCumulativeData(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1205
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":J
    :catch_0
    move-exception v9

    .line 1206
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete oldest cumulative data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1188
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteOldestStartData()V
    .locals 1

    .prologue
    .line 1443
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "start"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteOldestCumulativeRegData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    monitor-exit p0

    return-void

    .line 1443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllCardList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 695
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 698
    .local v8, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 699
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 703
    :catch_0
    move-exception v9

    .line 704
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get all cardlist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 707
    if-eqz v8, :cond_0

    .line 708
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    move-object v10, v11

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v10

    .line 707
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v8, :cond_1

    .line 708
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 695
    .end local v8    # "cur":Landroid/database/Cursor;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 707
    .restart local v8    # "cur":Landroid/database/Cursor;
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_3

    .line 708
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getAllFeedback(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1149
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1150
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get all feedback. state null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v12

    .line 1167
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v11

    .line 1153
    :cond_1
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    .local v11, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1156
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    const-string/jumbo v3, "state=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1158
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1159
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1162
    :catch_0
    move-exception v10

    .line 1163
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get all feedback. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1166
    if-eqz v9, :cond_2

    .line 1167
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v11, v12

    goto :goto_0

    .line 1166
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v9, :cond_0

    .line 1167
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1149
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v11    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1166
    .restart local v9    # "cur":Landroid/database/Cursor;
    .restart local v11    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_4

    .line 1167
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getAppUsageSendDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    monitor-enter p0

    :try_start_0
    const-string v0, "app"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCumulativeSendDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCardDisplayId(Ljava/lang/String;)I
    .locals 13
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 446
    monitor-enter p0

    const/4 v9, -0x1

    .line 448
    .local v9, "DEFAULT_DISPLAYID":I
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get displayid. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v12

    .line 466
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 453
    :cond_1
    const/4 v10, 0x0

    .line 455
    .local v10, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 457
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 465
    if-eqz v10, :cond_0

    .line 466
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 446
    .end local v10    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    .restart local v10    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_3

    .line 466
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move v0, v12

    goto :goto_0

    .line 461
    :catch_0
    move-exception v11

    .line 462
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get displayid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 465
    if-eqz v10, :cond_4

    .line 466
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 465
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_5

    .line 466
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardExpectedDisplayTime(Ljava/lang/String;)J
    .locals 13
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 620
    monitor-enter p0

    const-wide/16 v10, -0x1

    .line 622
    .local v10, "DEFAULT_VALUE":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get expected displaytime. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    const-wide/16 v0, -0x1

    .line 640
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 627
    :cond_1
    const/4 v9, 0x0

    .line 629
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "expdt"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 631
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 639
    if-eqz v9, :cond_0

    .line 640
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 620
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 634
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    const-wide/16 v0, -0x1

    .line 639
    if-eqz v9, :cond_0

    .line 640
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v12

    .line 636
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get expected displaytime. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 637
    const-wide/16 v0, -0x1

    .line 639
    if-eqz v9, :cond_0

    .line 640
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 639
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    .line 640
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardExtraData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 646
    monitor-enter p0

    if-nez p1, :cond_1

    .line 647
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get card extra. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v12

    .line 651
    :cond_1
    const/4 v9, 0x0

    .line 653
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "extra"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 655
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 656
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 657
    .local v11, "extradata":Ljava/lang/String;
    if-nez v11, :cond_3

    move-object v0, v12

    .line 664
    :goto_1
    if-eqz v9, :cond_2

    .line 665
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v12, v0

    goto :goto_0

    .line 657
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 660
    .end local v11    # "extradata":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 661
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get card extra. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 664
    if-eqz v9, :cond_0

    .line 665
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 646
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 664
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_4
    if-eqz v9, :cond_0

    .line 665
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 664
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 665
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized getCardList(Lcom/samsung/android/sdk/ppmt/content/CardState;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "state"    # Lcom/samsung/android/sdk/ppmt/content/CardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ppmt/content/CardState;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 714
    monitor-enter p0

    if-nez p1, :cond_1

    .line 715
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get cardlist. state null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v12

    .line 733
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v11

    .line 719
    :cond_1
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 722
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    const-string/jumbo v3, "state=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 724
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 732
    :cond_2
    if-eqz v9, :cond_0

    .line 733
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 714
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 728
    .restart local v9    # "cur":Landroid/database/Cursor;
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 729
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get card list. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 732
    if-eqz v9, :cond_3

    .line 733
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v12

    goto :goto_0

    .line 732
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_4

    .line 733
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardMsgType(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 520
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get msgtype. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 538
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 525
    :cond_1
    const/4 v9, 0x0

    .line 527
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mtype"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 529
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 537
    if-eqz v9, :cond_0

    .line 538
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 520
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 538
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 533
    :catch_0
    move-exception v10

    .line 534
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get msgtype. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 537
    if-eqz v9, :cond_4

    .line 538
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 537
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 538
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardReceivedTime(Ljava/lang/String;)J
    .locals 13
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 594
    monitor-enter p0

    const-wide/16 v10, -0x1

    .line 596
    .local v10, "DEFAULT_VALUE":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get expected displaytime. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    const-wide/16 v0, -0x1

    .line 614
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 601
    :cond_1
    const/4 v9, 0x0

    .line 603
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mrt"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 605
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 613
    if-eqz v9, :cond_0

    .line 614
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 594
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 608
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    const-wide/16 v0, -0x1

    .line 613
    if-eqz v9, :cond_0

    .line 614
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v12

    .line 610
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get expected displaytime. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 611
    const-wide/16 v0, -0x1

    .line 613
    if-eqz v9, :cond_0

    .line 614
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 613
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    .line 614
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardRetryCount(Ljava/lang/String;)I
    .locals 13
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 568
    monitor-enter p0

    const/4 v9, -0x1

    .line 570
    .local v9, "DEFAULT_VALUE":I
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get targetid. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v12

    .line 588
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 575
    :cond_1
    const/4 v10, 0x0

    .line 577
    .local v10, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rc"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 579
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 587
    if-eqz v10, :cond_0

    .line 588
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 568
    .end local v10    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 587
    .restart local v10    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_3

    .line 588
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move v0, v12

    goto :goto_0

    .line 583
    :catch_0
    move-exception v11

    .line 584
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get targetid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 587
    if-eqz v10, :cond_4

    .line 588
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 587
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_5

    .line 588
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 496
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get cardstate. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 514
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 501
    :cond_1
    const/4 v9, 0x0

    .line 503
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "state"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 505
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 513
    if-eqz v9, :cond_0

    .line 514
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 496
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 514
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 509
    :catch_0
    move-exception v10

    .line 510
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get cardstate. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 513
    if-eqz v9, :cond_4

    .line 514
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 513
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 514
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardTargetId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 544
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get targetid. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 562
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 549
    :cond_1
    const/4 v9, 0x0

    .line 551
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 553
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 561
    if-eqz v9, :cond_0

    .line 562
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 544
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 561
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 562
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 557
    :catch_0
    move-exception v10

    .line 558
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get targetid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 561
    if-eqz v9, :cond_4

    .line 562
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 561
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 562
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCardUserdata(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 472
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get userdata. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 490
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 477
    :cond_1
    const/4 v9, 0x0

    .line 479
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 481
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 489
    if-eqz v9, :cond_0

    .line 490
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 472
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 489
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 490
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 485
    :catch_0
    move-exception v10

    .line 486
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get userdata. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 489
    if-eqz v9, :cond_4

    .line 490
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 489
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 490
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCumulativeDataCount(Ljava/lang/String;)J
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1210
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 1212
    .local v2, "returnValue":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cumulative_data"

    const-string/jumbo v5, "type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v1, v4, v5, v6}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1216
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cumulative data count type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1210
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCumulativeRegSendDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    .local v11, "returnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cumulative_data_reg"

    const/4 v2, 0x0

    const-string/jumbo v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1489
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1491
    .local v12, "id":J
    const-string/jumbo v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1492
    .local v14, "type":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v1, "data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1493
    .local v9, "data":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    invoke-direct {v0, v12, v13, v14, v9}, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1496
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "data":Ljava/lang/String;
    .end local v12    # "id":J
    .end local v14    # "type":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1497
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get cumulative reg data error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1499
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v11

    .line 1495
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1486
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "returnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFeedbackFbids(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 938
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get fbid. invalid params"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 955
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 942
    :cond_1
    const/4 v9, 0x0

    .line 944
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fbid"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 946
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 954
    if-eqz v9, :cond_0

    .line 955
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 938
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 954
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 955
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 950
    :catch_0
    move-exception v10

    .line 951
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get fbid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 954
    if-eqz v9, :cond_4

    .line 955
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 954
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 955
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getFeedbackFvs(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 961
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get feedbackvalues. invalid params"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 978
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 965
    :cond_1
    const/4 v9, 0x0

    .line 967
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fv"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 969
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 977
    if-eqz v9, :cond_0

    .line 978
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 961
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 977
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 978
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 973
    :catch_0
    move-exception v10

    .line 974
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get feedbackvalues. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 977
    if-eqz v9, :cond_4

    .line 978
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 977
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 978
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getFeedbackState(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1126
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get fb state. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 1143
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1130
    :cond_1
    const/4 v9, 0x0

    .line 1132
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "state"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1134
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1135
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1142
    if-eqz v9, :cond_0

    .line 1143
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1126
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1142
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 1143
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v10

    .line 1139
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get fb state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1142
    if-eqz v9, :cond_4

    .line 1143
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 1142
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 1143
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getFeedbackTimes(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 984
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get feedback times. invalid params"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 1001
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 988
    :cond_1
    const/4 v9, 0x0

    .line 990
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 992
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1000
    if-eqz v9, :cond_0

    .line 1001
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 984
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1000
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 1001
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 996
    :catch_0
    move-exception v10

    .line 997
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get feedback times. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1000
    if-eqz v9, :cond_4

    .line 1001
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 1000
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 1001
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getFeedbackTryCount(Ljava/lang/String;)I
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 1103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get fb trycount. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 1120
    :cond_0
    :goto_0
    return v0

    .line 1107
    :cond_1
    const/4 v9, 0x0

    .line 1109
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "try"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1111
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1119
    if-eqz v9, :cond_0

    .line 1120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1119
    :cond_2
    if-eqz v9, :cond_3

    .line 1120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    goto :goto_0

    .line 1115
    :catch_0
    move-exception v10

    .line 1116
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get fb trycount. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    if-eqz v9, :cond_4

    .line 1120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    goto :goto_0

    .line 1119
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 1120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public declared-synchronized getIapSendDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    monitor-enter p0

    :try_start_0
    const-string v0, "iap"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCumulativeSendDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastFbid(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1007
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get lastfbid. invalid params"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    .line 1024
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1011
    :cond_1
    const/4 v9, 0x0

    .line 1013
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lfbid"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1015
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1023
    if-eqz v9, :cond_0

    .line 1024
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1007
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1023
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 1024
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v0, v11

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v10

    .line 1020
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get lastfbid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1023
    if-eqz v9, :cond_4

    .line 1024
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    goto :goto_0

    .line 1023
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 1024
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getLastFeedbackTime(Ljava/lang/String;)J
    .locals 14
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, -0x1

    .line 1030
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to get lts. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v12

    .line 1048
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 1035
    :cond_1
    const/4 v9, 0x0

    .line 1037
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lts"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1039
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 1047
    if-eqz v9, :cond_0

    .line 1048
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1030
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1047
    .restart local v9    # "cur":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 1048
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-wide v0, v12

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v10

    .line 1044
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get lts. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1047
    if-eqz v9, :cond_4

    .line 1048
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-wide v0, v12

    goto :goto_0

    .line 1047
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 1048
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getLocationSendDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    const-string v0, "lo"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCumulativeSendDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMarketingAgree()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "update_data"

    const/4 v2, 0x0

    const-string v3, "key=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v7, "bAgreement"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cs"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1275
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1285
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return v11

    .line 1271
    :catch_0
    move-exception v10

    .line 1272
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get marketing agree error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1270
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1278
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v11, 0x0

    .line 1279
    .local v11, "returnValue":Z
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1281
    .local v8, "agree":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1283
    .end local v8    # "agree":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getSendYetDataCount()J
    .locals 8

    .prologue
    .line 1343
    monitor-enter p0

    const-wide/16 v4, 0x0

    .line 1345
    .local v4, "sendYetDataCount":J
    :try_start_0
    const-string/jumbo v2, "send_done=?"

    .line 1346
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1347
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "update_data"

    invoke-static {v3, v6, v2, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1351
    .end local v1    # "selectArgs":[Ljava/lang/String;
    .end local v2    # "selection":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get getSendYetDataCount data error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1343
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getStartDataCount()J
    .locals 2

    .prologue
    .line 1431
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "start"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCumulativeRegDataCount(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpdateSendData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    .local v12, "updatedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    :try_start_1
    const-string/jumbo v3, "send_done=? OR type=? OR key=?"

    .line 1360
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "bs"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v2, "bAgreement"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1365
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "update_data"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1366
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v1, "key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1368
    .local v10, "key":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1369
    .local v13, "value":Ljava/lang/String;
    const-string/jumbo v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1370
    .local v11, "type":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    invoke-direct {v0, v10, v13, v11}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1373
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1374
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get updated data error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1376
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v12

    .line 1372
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1355
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "updatedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpdateSendMandatoryData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1380
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    .local v12, "updatedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    :try_start_1
    const-string/jumbo v3, "type=? OR key=?"

    .line 1384
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "bs"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v2, "bAgreement"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1388
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "update_data"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1389
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string v1, "key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1391
    .local v10, "key":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1392
    .local v13, "value":Ljava/lang/String;
    const-string/jumbo v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1393
    .local v11, "type":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    invoke-direct {v0, v10, v13, v11}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1396
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1397
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get updated mandatory data error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1399
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-object v12

    .line 1395
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1380
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "updatedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCardExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 260
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    .line 273
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 264
    :cond_1
    const/4 v9, 0x0

    .line 266
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "card"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 268
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 272
    if-eqz v9, :cond_0

    .line 273
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    .restart local v9    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 272
    .local v10, "e":Ljava/lang/Exception;
    if-eqz v9, :cond_2

    .line 273
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 272
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    .line 273
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized isFeedbackExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 786
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v1, "fail to check if feedback exists. mid null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v11

    .line 800
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 790
    :cond_1
    const/4 v9, 0x0

    .line 792
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 794
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 799
    if-eqz v9, :cond_0

    .line 800
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 786
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 795
    .restart local v9    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 796
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to check if feedback exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 799
    if-eqz v9, :cond_2

    .line 800
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 799
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    .line 800
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized removeCardExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 739
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 740
    :cond_0
    :try_start_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to remove card extra data. invalid params"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    .line 744
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardExtraData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 745
    .local v1, "jo_extra":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 747
    :try_start_2
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 749
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 750
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "extra"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "card"

    const-string v8, "mid = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 753
    .local v2, "result":I
    if-eqz v2, :cond_1

    .end local v2    # "result":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    move v4, v5

    .line 761
    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to update card extra. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jo_extra":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized sendDoneUpdateData(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1404
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    .line 1405
    .local v1, "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1406
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "send_done"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1407
    const-string v5, "key=?"

    .line 1408
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mKey:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 1409
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "update_data"

    invoke-virtual {v8, v9, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1411
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1412
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send done update error. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    .line 1415
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit p0

    return v6

    .line 1404
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setFeedbackState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1054
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1055
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to set fb state. invalid params"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :goto_0
    monitor-exit p0

    return v3

    .line 1058
    :cond_1
    :try_start_1
    const-string v5, "discard"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "wait"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1060
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to set fb state. invalid state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1065
    :cond_2
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1066
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "state"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "feedback"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1069
    .local v1, "result":I
    if-nez v1, :cond_3

    .line 1070
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to set fb state. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1074
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to set fb state. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_3
    move v3, v4

    .line 1073
    goto/16 :goto_0
.end method

.method public declared-synchronized setFeedbackTryCount(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "tryCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1081
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1082
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v5, "fail to set fb trycount. mid null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    :goto_0
    monitor-exit p0

    return v3

    .line 1087
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1088
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "try"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "feedback"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1091
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 1092
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to set fb trycount. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1096
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to set fb trycount. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1081
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move v3, v4

    .line 1095
    goto :goto_0
.end method

.method public declared-synchronized truncateCumulativeData(J)Z
    .locals 9
    .param p1, "latestId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1258
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cumulative_data"

    const-string v5, "_id<=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    :goto_0
    monitor-exit p0

    return v1

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to truncate cumulative data. database delete exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1261
    goto :goto_0

    .line 1258
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized truncateCumulativeRegData(J)Z
    .locals 9
    .param p1, "latestId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1478
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cumulative_data_reg"

    const-string v5, "_id<=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    :goto_0
    monitor-exit p0

    return v1

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to truncate cumulative reg data. database delete exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1481
    goto :goto_0

    .line 1478
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateCardDisplayedTime(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "displayedTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    monitor-enter p0

    if-nez p1, :cond_0

    .line 375
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v5, "fail to update card displayed time. mid null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    monitor-exit p0

    return v3

    .line 380
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 381
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "mdt"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "card"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 384
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 385
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card displayed time. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card displayed time. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move v3, v4

    .line 388
    goto :goto_0
.end method

.method public declared-synchronized updateCardExpectedDisplayTime(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "expectedDisplayTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    monitor-enter p0

    if-nez p1, :cond_0

    .line 397
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v5, "fail to update card expected display time. mid null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :goto_0
    monitor-exit p0

    return v3

    .line 402
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "expdt"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "card"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 406
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 407
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card expected display time. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card expected display time. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move v3, v4

    .line 410
    goto :goto_0
.end method

.method public declared-synchronized updateCardExtraData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 419
    :cond_0
    :try_start_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to update card extra. invalid params"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :goto_0
    monitor-exit p0

    return v4

    .line 423
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardExtraData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 424
    .local v1, "jo_extra":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 425
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jo_extra":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .restart local v1    # "jo_extra":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "extra"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "card"

    const-string v8, "mid = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 434
    .local v2, "result":I
    if-nez v2, :cond_3

    .line 435
    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to update card extra. no data to update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 439
    .end local v2    # "result":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to update card extra. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jo_extra":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "jo_extra":Lorg/json/JSONObject;
    .restart local v2    # "result":I
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    move v4, v5

    .line 438
    goto :goto_0
.end method

.method public declared-synchronized updateCardReceivedTime(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "receivedTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    monitor-enter p0

    if-nez p1, :cond_0

    .line 353
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v5, "fail to update card received time. mid null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_0
    monitor-exit p0

    return v3

    .line 358
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "mrt"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "card"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 363
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card received time. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card received time. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move v3, v4

    .line 366
    goto :goto_0
.end method

.method public declared-synchronized updateCardRetryCount(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "retryCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    monitor-enter p0

    if-nez p1, :cond_0

    .line 331
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    const-string v5, "fail to update card retry count. mid null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    monitor-exit p0

    return v3

    .line 336
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "rc"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "card"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 341
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card retry count. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card retry count. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    move v3, v4

    .line 344
    goto :goto_0
.end method

.method public declared-synchronized updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    .locals 11
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/samsung/android/sdk/ppmt/content/CardState;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 309
    :cond_0
    :try_start_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card state. invalid params"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_0
    monitor-exit p0

    return v3

    .line 312
    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] card state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "state"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "card"

    const-string v7, "mid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 318
    .local v1, "result":I
    if-nez v1, :cond_2

    .line 319
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card state. no data to update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 323
    .end local v1    # "result":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to update card state. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "result":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    move v3, v4

    .line 322
    goto/16 :goto_0
.end method

.method public declared-synchronized upsertUpdateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1289
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1290
    :try_start_0
    const-string p2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    :cond_0
    const/4 v13, 0x0

    .line 1295
    .local v13, "upsertedCount":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "update_data"

    const/4 v3, 0x0

    const-string v4, "key=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1296
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_1

    move v14, v13

    .line 1327
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "upsertedCount":I
    .local v14, "upsertedCount":I
    :goto_0
    monitor-exit p0

    return v14

    .line 1300
    .end local v14    # "upsertedCount":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "upsertedCount":I
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1302
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    const-string/jumbo v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1304
    .local v12, "lastValue":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1306
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1307
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "type"

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v1, "value"

    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string/jumbo v1, "send_done"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "update_data"

    const-string v3, "key=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1311
    add-int/lit8 v13, v13, 0x1

    .line 1323
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v12    # "lastValue":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_2
    move v14, v13

    .line 1327
    .end local v13    # "upsertedCount":I
    .restart local v14    # "upsertedCount":I
    goto :goto_0

    .line 1315
    .end local v14    # "upsertedCount":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "upsertedCount":I
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1316
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v1, "key"

    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string/jumbo v1, "type"

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v1, "value"

    sget-object v2, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string/jumbo v1, "send_done"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "update_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1321
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1324
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1325
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upsert update data error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1289
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "upsertedCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized upsertUpdateData(Ljava/util/Map;Ljava/lang/String;)I
    .locals 7
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1331
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v3, 0x0

    .line 1333
    .local v3, "upsertedCount":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1334
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->upsertUpdateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v3, v4

    .line 1335
    goto :goto_0

    .line 1336
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update custom data error. database insert or replace exception. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit p0

    return v3

    .line 1331
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
