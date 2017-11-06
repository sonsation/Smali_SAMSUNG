.class public Lcom/samsung/android/app/music/provider/DaoMaster;
.super Ljava/lang/Object;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;,
        Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    }
.end annotation


# static fields
.field private static final DAO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static LOG_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/music/provider/DaoMaster;

.field private static maxIndex:I

.field private static minIndex:I


# instance fields
.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDBChangedListener:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/samsung/android/app/music/provider/DaoMaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->mInstance:Lcom/samsung/android/app/music/provider/DaoMaster;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDBChangedListener:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    .line 166
    return-void
.end method

.method private createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 251
    sget v1, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    if-gt v1, v2, :cond_2

    .line 252
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 253
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getTableOrder()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 254
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllTables : match index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dao - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 255
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 251
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    return-void
.end method

.method private createAllTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 275
    sget v1, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    if-gt v1, v2, :cond_2

    .line 276
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 277
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getTriggerOrder()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 278
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllTriggers : match index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dao - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 275
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_2
    return-void
.end method

.method private createAllViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 263
    sget v1, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    if-gt v1, v2, :cond_2

    .line 264
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 265
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getViewOrder()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 266
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllViews : match index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dao - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->createView(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 263
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_2
    return-void
.end method

.method private getDBNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 198
    const/4 v10, 0x0

    .line 199
    .local v10, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "sqlite_master"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 200
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 202
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .restart local v10    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "name":Ljava/lang/String;
    const-string v0, "android_metadata"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sqlite_sequence"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_3
    return-object v10
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;
    .locals 2

    .prologue
    .line 156
    const-class v1, Lcom/samsung/android/app/music/provider/DaoMaster;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->mInstance:Lcom/samsung/android/app/music/provider/DaoMaster;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/provider/DaoMaster;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->mInstance:Lcom/samsung/android/app/music/provider/DaoMaster;

    .line 160
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->mInstance:Lcom/samsung/android/app/music/provider/DaoMaster;

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-string/jumbo v0, "table"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDBNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getViewNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-string/jumbo v0, "view"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDBNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v6, 0xa

    .line 111
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v2

    invoke-static {v2, v3, v3, v3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;

    move-result-object v2

    invoke-static {v2, v4, v4, v4}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    invoke-static {v2, v5, v7, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v2

    invoke-static {v2, v7, v5, v7}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0x9

    const/16 v5, 0x9

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/PurchasedTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/PurchasedTrackDAO;

    move-result-object v2

    invoke-static {v2, v6, v6, v6}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/VoucherDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/VoucherDAO;

    move-result-object v2

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/16 v5, 0xb

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SubscriptionDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/SubscriptionDAO;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, 0xc

    const/16 v5, 0xc

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/DownloadQueueDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/DownloadQueueDAO;

    move-result-object v2

    const/16 v3, 0xd

    const/16 v4, 0xd

    const/16 v5, 0xd

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/ThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/ThumbnailDAO;

    move-result-object v2

    const/16 v3, 0xe

    const/16 v4, 0xe

    const/16 v5, 0xe

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;

    move-result-object v2

    const/16 v3, 0xf

    const/16 v4, 0xf

    const/16 v5, 0xf

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkTrackListDAO;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/DownloadBasketDAO;

    move-result-object v2

    const/16 v3, 0x11

    const/16 v4, 0x11

    const/16 v5, 0x11

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    move-result-object v2

    const/16 v3, 0x12

    const/16 v4, 0x12

    const/16 v5, 0x12

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    move-result-object v2

    const/16 v3, 0x13

    const/16 v4, 0x13

    const/16 v5, 0x13

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v2

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v2

    const/16 v3, 0x15

    const/16 v4, 0x15

    const/16 v5, 0x15

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v2

    const/16 v3, 0x16

    const/16 v4, 0x16

    const/16 v5, 0x16

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v2

    const/16 v3, 0x17

    const/16 v4, 0x17

    const/16 v5, 0x17

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v2

    const/16 v3, 0x18

    const/16 v4, 0x18

    const/16 v5, 0x18

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/RadioHistoryDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/RadioHistoryDAO;

    move-result-object v2

    const/16 v3, 0x19

    const/16 v4, 0x19

    const/16 v5, 0x19

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    move-result-object v2

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    const/16 v5, 0x1a

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;

    move-result-object v2

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    const/16 v5, 0x1b

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/VirtualAudioMetaDAO;

    move-result-object v2

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    const/16 v5, 0x1c

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sput v6, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    .line 140
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    .line 142
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 143
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getTableOrder()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getTableOrder()I

    move-result v2

    sput v2, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    .line 146
    :cond_1
    sget v2, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getTableOrder()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getTableOrder()I

    move-result v2

    sput v2, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    goto :goto_0

    .line 150
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init : min - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/provider/DaoMaster;->minIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/provider/DaoMaster;->maxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private updateTables(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 287
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 288
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 290
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_0
    return-void
.end method

.method private updateTrigger(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 293
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 294
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 296
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->createAllTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 297
    return-void
.end method

.method private updateView(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 300
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 301
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getViewName()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "viewName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP VIEW IF EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    sget-object v3, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTables : drop view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    .end local v1    # "viewName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->createAllViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 310
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    const-string v1, "beginTransaction : start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 195
    return-void
.end method

.method public cleanupStaledTrackRecord()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 402
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    const-string/jumbo v3, "station_track_id AS track_id"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 403
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v5

    const-string/jumbo v6, "station_prevtrack_id AS track_id"

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v7}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->unionQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 404
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v5

    const-string/jumbo v6, "station_nexttrack_id AS track_id"

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v7}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->unionQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 402
    invoke-virtual {v2, v3, v9, v4}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->unionQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "allTrackquery":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "track_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v3

    const-string/jumbo v4, "track_id"

    new-array v5, v10, [Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v9, v5}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->exceptQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "deleteQuery":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupTrackRecord >> delete query - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public endTransaction()V
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    const-string v1, "endTransaction : end"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 228
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "smusic.db"

    return-object v0
.end method

.method public getDatabaseVersion()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x4eeb

    return v0
.end method

.method public declared-synchronized getDatabases()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 315
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : Creating tables for schema version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabaseVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 319
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->createAllViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->createAllTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 322
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 326
    return-void

    .line 324
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 328
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : Upgrading schema from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->updateTables(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->updateView(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->updateTrigger(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDBChangedListener:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDBChangedListener:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;->onDatabaseVersionChanged(II)V

    .line 337
    :cond_0
    return-void
.end method

.method public removeDatabase(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 360
    .local v0, "database":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1

    .line 361
    .local v1, "deleted":Z
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDatabase : database deleted ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v1, :cond_0

    .line 363
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->setDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    :cond_0
    return-void
.end method

.method public replaceDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbPath"    # Ljava/lang/String;

    .prologue
    .line 378
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "replaceDatabase : path - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 380
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 383
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->setDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
    return-void
.end method

.method public resetDatabase(I)V
    .locals 5
    .param p1, "resetLevel"    # I

    .prologue
    .line 241
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetDatabase : reset level - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcom/samsung/android/app/music/provider/DaoMaster;->DAO_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    .line 243
    .local v0, "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    sget-object v2, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetDatabase  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset level - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0

    .line 247
    .end local v0    # "dao":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    :cond_0
    return-void
.end method

.method public setDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 178
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDatabase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mContext:Ljava/lang/ref/WeakReference;

    .line 180
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->initialize()V

    .line 182
    return-void
.end method

.method public declared-synchronized setDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnDatabaseVersionChangedListener(Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/DaoMaster;->mDBChangedListener:Lcom/samsung/android/app/music/provider/DaoMaster$OnDatabaseVersionChangedListener;

    .line 190
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/samsung/android/app/music/provider/DaoMaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTransactionSuccessful : success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 233
    return-void
.end method
