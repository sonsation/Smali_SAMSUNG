.class public Lcom/samsung/android/app/music/provider/dao/MyStationDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "MyStationDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$MyStationColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/Station;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$MyStationColumns;"
    }
.end annotation


# static fields
.field private static GET_LATEST_STATION_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFY_URI:[Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "my_station"

.field public static final VIEW_NAME:Ljava/lang/String; = "mystation_view"

.field private static instance:Lcom/samsung/android/app/music/provider/dao/MyStationDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->LOG_TAG:Ljava/lang/String;

    .line 39
    const-string v0, "SELECT s.name from ( SELECT max(length(st.station_station_name)) as counter, st.station_station_name as name from station st  INNER JOIN my_station ms on ms.mystation_station_id = st.station_id AND st.station_station_name like(?)  ORDER BY station_station_name DESC limit 1  ) s "

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->GET_LATEST_STATION_NAME:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->instance:Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->NOTIFY_URI:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 57
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->instance:Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    return-object v0
.end method


# virtual methods
.method public addSeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "seedId"    # Ljava/lang/String;
    .param p3, "seedName"    # Ljava/lang/String;
    .param p4, "seedImageUrl"    # Ljava/lang/String;
    .param p5, "seedType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 185
    const/4 v0, 0x1

    const/4 v7, 0x0

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v9

    .line 186
    .local v9, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 518
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Station;->createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 519
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 520
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->setIsMyStation(I)V

    .line 522
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Station;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 463
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v0, "myStationValue":Landroid/content/ContentValues;
    const-string v1, "mystation_station_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "mystation_ordinal"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getMyStationOrdinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v1, "mystation_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 467
    const-string v1, "mystation_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-object v0
.end method

.method public bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Station;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 62
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 64
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "my_station"

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

    const-string v2, "mystation_station_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT UNIQUE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mystation_ordinal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mystation_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mystation_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FOREIGN KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mystation_station_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ON DELETE CASCADE)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void

    .line 62
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 135
    const-string v0, "CREATE TRIGGER tr_myStation_delete_station AFTER DELETE ON my_station BEGIN  DELETE FROM station WHERE station_type =\'02\' AND station_id = old.mystation_station_id ; END ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 86
    const-string v0, "CREATE VIEW mystation_view AS SELECT M._id, S.station_id, S.station_track_id, S.station_prevtrack_id, S.station_nexttrack_id, S.station_station_name, S.station_ordinal, S.station_genre_id, S.genre_name, S.genre_display_name, S.genre_type, S.genre_last_udate_time, S.genre_is_prefethced, S.station_type, S.station_description, S.station_update_date, S.station_is_turned, S.station_tag, S.station_staying_time, M.mystation_ordinal, M.mystation_date, M.mystation_type, M.mystation_station_id, T.track_track_title, T.track_artist_id, T.track_artist_name, T.track_album_id, T.track_album_title, T.track_coverart_url, T.track_type, T.track_sequence_number, T.track_seed_usable, T.track_is_explicit, S.genre_is_visible, S.station_is_hidden, S.station_is_audioAdYn, S.station_is_videoAdYn, S.station_is_imageAdYn FROM  my_station AS M INNER JOIN station_view AS S ON M.mystation_station_id=S.station_id LEFT JOIN radio_track AS T ON T.track_id=S.station_track_id AND M.mystation_station_id=T.station_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public delete([Ljava/lang/String;)I
    .locals 7
    .param p1, "stationIds"    # [Ljava/lang/String;

    .prologue
    .line 477
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v3, "mystation_station_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "index":I
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 481
    .local v2, "stationId":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 482
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_0
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    add-int/lit8 v0, v0, 0x1

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "stationId":Ljava/lang/String;
    :cond_1
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public doesStationExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "station_id"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "station_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesStationNameExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, "station_station_name"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 160
    const-string v0, "DROP TRIGGER IF EXISTS tr_myStation_delete_station;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 155
    const-string v0, "DROP VIEW mystation_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Station;)Ljava/lang/String;
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mystation_station_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Station;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllFavoriteStations()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v3, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/4 v0, 0x0

    .line 417
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    .line 421
    .local v2, "model":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v2, :cond_1

    const-string v4, "01"

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 429
    .end local v2    # "model":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    if-eqz v0, :cond_3

    .line 430
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 431
    const/4 v0, 0x0

    .line 434
    :cond_3
    :goto_0
    return-object v3

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    if-eqz v0, :cond_3

    .line 430
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 431
    const/4 v0, 0x0

    goto :goto_0

    .line 429
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 430
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 431
    const/4 v0, 0x0

    :cond_4
    throw v4
.end method

.method public getAllMyStations()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMyStationsOrderByDate()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "mystation_date"

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCountOfMyStations()I
    .locals 4

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT count(mystation_station_id) from my_station"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method public getLastDuplicatedStationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 336
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->GET_LATEST_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 337
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getModel(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 203
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getSeeds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->setSeedList(Ljava/util/ArrayList;)V

    .line 206
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getModel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getModel(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public getMyStationsCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "mystation_view"

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 402
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public getNewNameForStation(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string v1, " "

    .line 354
    .local v1, "delimiter":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getLastDuplicatedStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "latestName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 357
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .local v7, "str":Ljava/util/StringTokenizer;
    const-string v4, ""

    .line 359
    .local v4, "newStationName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 360
    .local v0, "countOfToken":I
    if-lez v0, :cond_2

    .line 361
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 362
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "token":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 365
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 366
    .local v6, "num":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 367
    .end local v6    # "num":I
    :catch_0
    move-exception v5

    .line 368
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 380
    .end local v0    # "countOfToken":I
    .end local v3    # "latestName":Ljava/lang/String;
    .end local v4    # "newStationName":Ljava/lang/String;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "str":Ljava/util/StringTokenizer;
    .end local v8    # "token":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 371
    .restart local v0    # "countOfToken":I
    .restart local v3    # "latestName":Ljava/lang/String;
    .restart local v4    # "newStationName":Ljava/lang/String;
    .restart local v7    # "str":Ljava/util/StringTokenizer;
    .restart local v8    # "token":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 375
    .end local v8    # "token":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    goto :goto_1

    .line 378
    .end local v0    # "countOfToken":I
    .end local v3    # "latestName":Ljava/lang/String;
    .end local v4    # "newStationName":Ljava/lang/String;
    .end local v7    # "str":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v9, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getNewNameForStation >> Error in updateStation SINGLE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    const/4 p1, 0x0

    goto :goto_1

    .line 381
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    throw v9
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 453
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->NOTIFY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string v0, "mystation_view"

    return-object v0
.end method

.method public getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "station_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getModel(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const-string v0, "my_station"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, "mystation_view"

    return-object v0
.end method

.method public insert(Lcom/samsung/android/app/music/common/model/Station;Z)J
    .locals 9
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "notifyChange"    # Z

    .prologue
    .line 212
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v5, "stationValue":Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->doesStationNameExistInOnlyMyStation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 218
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->doesStationExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "newName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 222
    .local v0, "count":I
    :cond_0
    const/16 v6, 0x32

    if-lt v0, v6, :cond_2

    .line 223
    sget-object v6, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->LOG_TAG:Ljava/lang/String;

    const-string v7, "insert >> Count is over 50"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-wide/16 v2, -0x1

    .line 254
    .end local v0    # "count":I
    .end local v1    # "newName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v2

    .line 226
    .restart local v0    # "count":I
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getNewNameForStation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->doesStationNameExistInOnlyMyStation(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 230
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/common/model/Station;->setStationName(Ljava/lang/String;)V

    .line 231
    const/16 v6, 0x64

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/music/common/model/Station;->setNeedUpdateStationInfo(I)V

    .line 232
    const-string/jumbo v6, "station_station_name"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v0    # "count":I
    .end local v1    # "newName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isPersonalStation()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isSmartStation()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    :cond_3
    sget-object v6, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert >> Station "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    .line 245
    :cond_4
    const-string v6, "mystation_ordinal"

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getMax(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 246
    .local v4, "ordinal":I
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/common/model/Station;->setMyStationOrdinal(I)V

    .line 248
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v2

    .line 250
    .local v2, "id":J
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isSmartStation()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getSeeds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 251
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->insert(Ljava/util/Collection;)I

    goto :goto_0

    .line 235
    .end local v2    # "id":J
    .end local v4    # "ordinal":I
    :cond_5
    const-string/jumbo v6, "station_station_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Z)J
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertAfterQuery(Ljava/util/Collection;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "stations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/4 v1, 0x0

    .line 267
    .local v1, "inserted":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/Station;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 271
    .local v3, "model":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->doesStationExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 272
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Ljava/lang/Object;)J

    move-result-wide v4

    .line 273
    .local v4, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v3    # "model":Lcom/samsung/android/app/music/common/model/Station;
    .end local v4    # "rowId":J
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    .line 286
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/Station;>;"
    :goto_1
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v6
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method public isStationInMyStations(Ljava/lang/String;)Z
    .locals 8
    .param p1, "station_id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "SELECT count(mystation_station_id) from my_station WHERE mystation_station_id = ? "

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 299
    const/4 v6, 0x1

    invoke-virtual {v1, v6, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 302
    .local v2, "num":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 306
    .end local v2    # "num":J
    :goto_0
    return v4

    .restart local v2    # "num":J
    :cond_0
    move v4, v5

    .line 302
    goto :goto_0

    .line 304
    .end local v2    # "num":J
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iLog >> Error in isStationInFavorites: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 306
    goto :goto_0
.end method

.method public removeSeed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "seedId"    # Ljava/lang/String;
    .param p3, "softDelete"    # Z

    .prologue
    .line 172
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->deleteSeed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "resetLevel"    # I

    .prologue
    .line 494
    packed-switch p2, :pswitch_data_0

    .line 501
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 504
    :goto_0
    return-void

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->deleteTable()I

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateMyStationOrdinal(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getCountDistinct()I

    move-result v2

    sub-int v0, v2, p2

    .line 440
    .local v0, "reversedOrdinal":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string v2, "mystation_ordinal"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mystation_station_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 143
    add-int/lit8 v0, p2, 0x1

    .local v0, "version":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 144
    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 150
    :cond_0
    return-void

    .line 144
    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method
