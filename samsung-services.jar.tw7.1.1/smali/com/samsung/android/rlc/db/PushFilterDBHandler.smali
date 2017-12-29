.class public Lcom/samsung/android/rlc/db/PushFilterDBHandler;
.super Ljava/lang/Object;
.source "PushFilterDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    .line 23
    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 19
    return-void
.end method

.method private insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "time"    # I
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v3, "messageid"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v3, "pushfilter"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 35
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 43
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB insert fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 41
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 40
    throw v3
.end method

.method private messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, "success":Z
    :try_start_0
    const-string v0, "DELETE FROM pushfilter WHERE _id IN (SELECT * FROM((SELECT _id FROM pushfilter ORDER BY _id ASC LIMIT 10 )) AS A)"

    .line 50
    .local v0, "dbmessageDelete":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v2, 0x1

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    .end local v0    # "dbmessageDelete":Ljava/lang/String;
    :goto_0
    return v2

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB delete fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 57
    throw v3
.end method

.method private select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v1, "pushfilter"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isSameMessageID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "mMessageID"    # Ljava/lang/String;
    .param p2, "mPushType"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 70
    .local v4, "sameMessageID":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-virtual {v8}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 73
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 74
    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    if-nez v0, :cond_3

    .line 77
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : CURSOR IS NULL!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    if-eqz v0, :cond_1

    .line 120
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_1
    if-eqz v1, :cond_2

    .line 123
    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_2
    :goto_0
    const/4 v8, 0x0

    monitor-exit p0

    .line 78
    return v8

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v9, "DB CLOSE FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 80
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_3
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Total Data count. Remind "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v8, "messageid"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 83
    .local v3, "messageidColumnIndex":I
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Recived MessageID Value -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Comparing MessageID in DataBase "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 87
    const/4 v4, 0x1

    .line 92
    :cond_4
    sget-object v9, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    if-eqz v4, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]PushFilter DB STATE : Already saved same data in DB."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-static {v9, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-nez v4, :cond_6

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_5

    .line 96
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : DB IS FULL! Delete start"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    .line 98
    .local v5, "successDelete":Z
    if-eqz v5, :cond_b

    .line 99
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Delete success"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v5    # "successDelete":Z
    :cond_5
    :goto_3
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Saving new data into DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "time":I
    invoke-direct {p0, v7, p1, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    .line 108
    .local v6, "successInsert":Z
    if-eqz v6, :cond_d

    .line 109
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Save Success into DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .end local v6    # "successInsert":Z
    .end local v7    # "time":I
    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    .line 120
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_7
    if-eqz v1, :cond_8

    .line 123
    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "messageidColumnIndex":I
    :cond_8
    :goto_5
    monitor-exit p0

    .line 130
    return v4

    .line 90
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "messageidColumnIndex":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 92
    :cond_a
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]PushFilter DB STATE : No saved same data in DB"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 101
    .restart local v5    # "successDelete":Z
    :cond_b
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Delete fail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 115
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "messageidColumnIndex":I
    .end local v5    # "successDelete":Z
    :catch_1
    move-exception v2

    .line 116
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 119
    if-eqz v0, :cond_c

    .line 120
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_c
    if-eqz v1, :cond_8

    .line 123
    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 125
    :catch_2
    move-exception v2

    .line 126
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v9, "DB CLOSE FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "messageidColumnIndex":I
    .restart local v6    # "successInsert":Z
    .restart local v7    # "time":I
    :cond_d
    :try_start_9
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]PushFilter DB STATE : Save Fail into DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 117
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "messageidColumnIndex":I
    .end local v6    # "successInsert":Z
    .end local v7    # "time":I
    :catchall_1
    move-exception v8

    .line 119
    if-eqz v0, :cond_e

    .line 120
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_e
    if-eqz v1, :cond_f

    .line 123
    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 117
    :cond_f
    :goto_6
    :try_start_b
    throw v8

    .line 125
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "messageidColumnIndex":I
    :catch_3
    move-exception v2

    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v9, "DB CLOSE FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 125
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "messageidColumnIndex":I
    :catch_4
    move-exception v2

    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    sget-object v9, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v10, "DB CLOSE FAIL"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6
.end method
