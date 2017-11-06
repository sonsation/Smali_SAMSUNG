.class public Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "SmartStationSeedDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$SmartStationSeedColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$SmartStationSeedColumns;"
    }
.end annotation


# static fields
.field private static final NOTIRY_URI:[Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "milk_smart_station_seed"

.field public static instance:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->instance:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 41
    const-string v0, "content://com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private addHitCount(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)J
    .locals 6
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getSmartSeedHitCount(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I

    move-result v0

    .line 250
    .local v0, "hit":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Landroid/content/ContentValues;

    move-result-object v1

    .line 251
    .local v1, "value":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "where":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 253
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    const-string v4, "addHitCount. generated where clause is null!!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-wide/16 v4, -0x1

    .line 259
    :goto_0
    return-wide v4

    .line 257
    :cond_0
    const-string/jumbo v3, "seed_hit_count"

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    goto :goto_0
.end method

.method private deleteUnusableSeed(Ljava/lang/String;)V
    .locals 4
    .param p1, "belong"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 305
    .local v1, "today":I
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getLatestFixedListDay(ILjava/lang/String;Z)I

    move-result v0

    .line 307
    .local v0, "deadLineDay":I
    if-lez v0, :cond_1

    .line 308
    sub-int v2, v1, v0

    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getValidInterval(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 309
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getValidInterval(Ljava/lang/String;)I

    move-result v2

    sub-int v0, v1, v2

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seed_belong_to=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "seed_added_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->deleteByWhereClause(Ljava/lang/String;)I

    .line 313
    :cond_1
    return-void
.end method

.method private getAvailableMixedSeedList(Ljava/lang/String;III)Ljava/util/ArrayList;
    .locals 12
    .param p1, "belong"    # Ljava/lang/String;
    .param p2, "today"    # I
    .param p3, "deadline"    # I
    .param p4, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    const/4 v7, -0x1

    invoke-direct {p0, p1, p2, v7}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getAvailableSeedList(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v5

    .line 318
    .local v5, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    const/4 v7, -0x1

    invoke-direct {p0, p1, p3, v7}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getAvailableSeedList(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v1

    .line 320
    .local v1, "fixedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .line 321
    .local v6, "todaySeed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    const/4 v3, 0x0

    .line 322
    .local v3, "isFoundInFixedList":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .line 323
    .local v2, "fixedSeed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 324
    const/4 v3, 0x1

    .line 325
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->setAddedTime(J)V

    .line 326
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getCount()I

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getCount()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->setCount(I)V

    goto :goto_1

    .line 330
    .end local v2    # "fixedSeed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    :cond_2
    if-nez v3, :cond_0

    .line 331
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v3    # "isFoundInFixedList":Z
    .end local v6    # "todaySeed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    new-instance v7, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO$1;-><init>(Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_4

    .line 367
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :goto_2
    return-object v4

    .line 365
    .restart local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "bestSeed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-virtual {v4, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v0

    .line 367
    goto :goto_2
.end method

.method private getAvailableSeedList(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 9
    .param p1, "belong"    # Ljava/lang/String;
    .param p2, "today"    # I
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "seed_belong_to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " =? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "seed_added_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? ORDER BY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "seed_hit_count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " desc,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "seed_added_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " desc,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " desc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "sql":Ljava/lang/String;
    if-eq p3, v7, :cond_0

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIMIT ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 381
    .local v0, "cursor":Landroid/database/Cursor;
    if-eq p3, v7, :cond_1

    .line 382
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    .line 383
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 382
    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 389
    :goto_0
    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 392
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    .line 386
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 385
    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_2
    if-eqz v0, :cond_3

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_3
    :goto_2
    return-object v3

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    if-eqz v0, :cond_3

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 399
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->instance:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->instance:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    .line 35
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->instance:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    return-object v0
.end method

.method private getLatestFixedListDay(ILjava/lang/String;Z)I
    .locals 9
    .param p1, "today"    # I
    .param p2, "belong"    # Ljava/lang/String;
    .param p3, "includeToday"    # Z

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 265
    .local v2, "deadLineDay":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "seed_belong_to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " =?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 268
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_3

    .line 270
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 272
    const-string/jumbo v6, "seed_added_date"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 273
    .local v0, "addedDay":I
    if-lez v0, :cond_0

    .line 274
    if-eqz p3, :cond_1

    .line 275
    if-ge v2, v0, :cond_0

    .line 276
    move v2, v0

    .line 277
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLatestFixedListDay. Verification Mode Dead Line is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_1
    if-le p1, v0, :cond_0

    .line 281
    if-ge v2, v0, :cond_0

    .line 282
    move v2, v0

    .line 283
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLatestFixedListDay. Dead Line is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 291
    .end local v0    # "addedDay":I
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    if-eqz v1, :cond_2

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    const/4 v1, 0x0

    .line 300
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return v2

    .line 294
    :cond_3
    if-eqz v1, :cond_2

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    const/4 v1, 0x0

    goto :goto_2

    .line 294
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    const/4 v1, 0x0

    :cond_4
    throw v6
.end method

.method private hasSeed(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z
    .locals 6
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 209
    .local v1, "days":I
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "belong":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seed_belong_to=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "seed_added_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "seed_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .line 218
    .local v2, "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 189
    const-string/jumbo v0, "seed_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "seedId":Ljava/lang/String;
    const-string/jumbo v0, "seed_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "seedName":Ljava/lang/String;
    const-string/jumbo v0, "seed_belong_to"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "seedBelong":Ljava/lang/String;
    const-string/jumbo v0, "seed_album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "album":Ljava/lang/String;
    const-string/jumbo v0, "seed_artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "artist":Ljava/lang/String;
    const-string/jumbo v0, "seed_hit_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 195
    .local v7, "seedCount":I
    const-string/jumbo v0, "seed_added_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 196
    .local v8, "addedTime":J
    const-string/jumbo v0, "seed_added_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 197
    .local v10, "addedDate":J
    new-instance v1, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-object v1
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v0, "trackValue":Landroid/content/ContentValues;
    const-string/jumbo v1, "seed_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "seed_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "seed_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "seed_belong_to"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v1, "seed_added_date"

    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string/jumbo v1, "seed_added_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string/jumbo v1, "seed_hit_count"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    return-object v0
.end method

.method protected bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 46
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 49
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "milk_smart_station_seed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_artist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_belong_to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_added_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_added_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_hit_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_belong_to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_added_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT IGNORE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    return-void

    .line 46
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 94
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 89
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 104
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 99
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Ljava/lang/String;
    .locals 3
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "belong":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seed_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "seed_belong_to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModSearchList(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 419
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v6

    .line 421
    .local v6, "today":I
    const-string/jumbo v7, "search"

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getLatestFixedListDay(ILjava/lang/String;Z)I

    move-result v1

    .line 423
    .local v1, "deadLineDay":I
    if-gtz v1, :cond_0

    .line 424
    move v1, v6

    .line 427
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "seed_belong_to"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " =? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "seed_added_date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=? ORDER BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "seed_hit_count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " desc,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "seed_added_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " desc,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " desc LIMIT ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 431
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "search"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 432
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 431
    invoke-virtual {v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 436
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_2
    :goto_1
    return-object v4

    .line 440
    :catch_0
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    if-eqz v0, :cond_2

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 443
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 169
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "milk_smart_station_seed"

    return-object v0
.end method

.method public getSmartSeedHitCount(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I
    .locals 12
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 222
    const/4 v5, -0x1

    .line 223
    .local v5, "ret":I
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v2

    .line 224
    .local v2, "days":I
    if-nez p1, :cond_0

    move v6, v5

    .line 245
    .end local v5    # "ret":I
    .local v6, "ret":I
    :goto_0
    return v6

    .line 227
    .end local v6    # "ret":I
    .restart local v5    # "ret":I
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "belong":Ljava/lang/String;
    const-string/jumbo v4, "seed_belong_to=? AND seed_added_date=?  AND seed_id=? "

    .line 229
    .local v4, "parameter":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    const-string/jumbo v8, "seed_hit_count"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 240
    :cond_1
    if-eqz v1, :cond_2

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v1, 0x0

    :cond_2
    :goto_1
    move v6, v5

    .line 245
    .end local v5    # "ret":I
    .restart local v6    # "ret":I
    goto :goto_0

    .line 237
    .end local v6    # "ret":I
    .restart local v5    # "ret":I
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v1, :cond_2

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v1, 0x0

    goto :goto_1

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_3

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v1, 0x0

    :cond_3
    throw v8
.end method

.method public getSmartStationSeedList(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "belong"    # Ljava/lang/String;
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 409
    .local v1, "today":I
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getLatestFixedListDay(ILjava/lang/String;Z)I

    move-result v0

    .line 411
    .local v0, "deadLineDay":I
    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->isAvailableDeadline(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getAvailableMixedSeedList(Ljava/lang/String;III)Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getAvailableSeedList(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "milk_smart_station_seed"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)J
    .locals 6
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 130
    const-wide/16 v2, -0x1

    .line 131
    .local v2, "ret":J
    const/4 v0, 0x0

    .line 132
    .local v0, "belong":Ljava/lang/String;
    if-nez p1, :cond_0

    move-wide v4, v2

    .line 149
    :goto_0
    return-wide v4

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Seed insert. Title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v4, v2

    .line 140
    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->hasSeed(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->addHitCount(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)J

    move-result-wide v4

    goto :goto_0

    .line 146
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v2

    .line 148
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->deleteUnusableSeed(Ljava/lang/String;)V

    move-wide v4, v2

    .line 149
    goto :goto_0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->insert(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "resetLevel"    # I

    .prologue
    .line 121
    return-void
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTable. old - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v1, 0x4ee8

    if-ge p2, v1, :cond_1

    .line 70
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateTable. create new table."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/16 v1, 0x4ee9

    if-ge p2, v1, :cond_0

    .line 76
    const-string v1, "ALTER TABLE milk_smart_station_seed ADD seed_album TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v1, "ALTER TABLE milk_smart_station_seed ADD seed_artist TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS unique_seed ON milk_smart_station_seed(seed_id, seed_belong_to, seed_added_date)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateTable. 20201 applied."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
