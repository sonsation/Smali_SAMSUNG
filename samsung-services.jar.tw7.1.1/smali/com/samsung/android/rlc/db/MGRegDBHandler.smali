.class public Lcom/samsung/android/rlc/db/MGRegDBHandler;
.super Ljava/lang/Object;
.source "MGRegDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    .line 29
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

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    .line 27
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    return-object v0
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "pushReg"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "dlvUrl"    # Ljava/lang/String;
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 37
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "pushtype"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "dlvurl"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "rmmreg"

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 43
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 51
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB insert fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 49
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    throw v3
.end method

.method private select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "pushType"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string v1, "rmmreg"

    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 122
    :try_start_0
    const-string v11, ""

    .line 123
    .local v11, "selectedPush":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "pushtype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v8, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, "result":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v8, :cond_1

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    return-object v10

    .line 136
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "selectedPush":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_3
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v9

    .line 133
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v1, "DB select fail"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-eqz v8, :cond_3

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 135
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 136
    if-eqz v8, :cond_4

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_4
    throw v0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .param p1, "pushReg"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 103
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "rmmreg"

    const-string v4, "pushtype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB update fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 113
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 112
    throw v3
.end method


# virtual methods
.method public declared-synchronized getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 182
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    const-string v2, "dlvurl"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 186
    return-object v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "rmmpref"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 147
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 148
    :try_start_1
    const-string v11, ""

    .line 149
    .local v11, "selectedPush":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "result":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    if-eqz v8, :cond_1

    .line 163
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    .line 154
    return-object v10

    .line 162
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "selectedPush":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 163
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    .line 166
    return-object v12

    .line 158
    :catch_0
    move-exception v9

    .line 159
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    sget-object v1, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB getValue fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    if-eqz v8, :cond_3

    .line 163
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 161
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    .line 162
    if-eqz v8, :cond_4

    .line 163
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized insertValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "success":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v4}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_0

    .line 59
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 60
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "key"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v4, "rmmpref"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const/4 v2, 0x1

    .line 71
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    .line 76
    return v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    sget-object v4, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB insertValue fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 70
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    .line 71
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 70
    throw v4

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 172
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    const-string v2, "pushreg"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 176
    return-object v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pushReg"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "dlvUrl"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "pushreg"

    invoke-direct {p0, p2, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "savedPush":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "Insert new row"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 189
    return-void

    .line 196
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update row : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "savedPush":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "success":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v4}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 84
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "rmmpref"

    const-string v5, "key=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    const/4 v2, 0x1

    .line 94
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    .line 96
    return v2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    sget-object v4, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB updateValue fail"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 93
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    .line 94
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 93
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
