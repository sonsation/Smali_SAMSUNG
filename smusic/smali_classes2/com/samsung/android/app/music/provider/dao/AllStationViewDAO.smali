.class public Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "AllStationViewDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$AllStationColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/Station;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$AllStationColumns;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final VIEW_NAME:Ljava/lang/String; = "all_station_view"

.field private static instance:Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->LOG_TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->instance:Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->instance:Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;

    return-object v0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 225
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Station;->createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Station;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Station;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 186
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    const-string v0, "CREATE VIEW all_station_view AS SELECT M._id, M.station_id, M.station_station_name, M.station_type, M.station_ordinal, M.station_genre_id, M.genre_name, M.genre_display_name, M.genre_is_visible, -1 as genre_ordinal, M.genre_type, M.genre_last_udate_time, M.genre_is_prefethced, M.station_track_id, M.track_type, M.track_track_title, M.track_artist_id, M.track_artist_name, M.track_album_id, M.track_album_title, M.track_coverart_url, M.track_sequence_number, M.track_seed_usable, M.track_is_explicit, M.station_prevtrack_id, M.station_nexttrack_id, M.mystation_ordinal, M.station_description, M.station_update_date, M.station_is_turned, M.station_tag, M.station_staying_time, M.station_is_hidden, M.station_is_audioAdYn, M.station_is_videoAdYn, M.station_is_imageAdYn, 0 as station_track_count, 1 as is_mystation, CASE station_type WHEN \'01\' THEN \'2\' ELSE \'0\' END AS station_sub_type FROM mystation_view AS M UNION ALL SELECT S._id, S.station_id, S.station_station_name, S.station_type, S.station_ordinal, S.station_genre_id, S.genre_name, S.genre_display_name, S.genre_is_visible, S.genre_ordinal, S.genre_type, S.genre_last_udate_time, S.genre_is_prefethced, S.station_track_id, S.track_type, S.track_track_title, S.track_artist_id, S.track_artist_name, S.track_album_id, S.track_album_title, S.track_coverart_url, S.track_sequence_number, S.track_seed_usable, S.track_is_explicit, S.station_prevtrack_id, S.station_nexttrack_id, 2147483647 AS mystation_ordinal, S.station_description, S.station_update_date, S.station_is_turned, S.station_tag, S.station_staying_time, S.station_is_hidden, S.station_is_audioAdYn, S.station_is_videoAdYn, S.station_is_imageAdYn, 0 as station_track_count, 0 as is_mystation, \'1\' AS station_sub_type FROM station_view AS S WHERE station_type!=\'02\' AND (S.station_type!=\'03\' OR S.station_genre_id!=\'2147483647\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifExists"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 160
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 154
    const-string v0, "DROP VIEW all_station_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Station;)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Station;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllStationViewCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    .local v8, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 37
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "all_station_view"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 38
    return-object v8
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "all_station_view"

    return-object v0
.end method

.method public getStation(Ljava/lang/String;ZLjava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "isMyStation"    # Z
    .param p3, "stationType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 163
    if-nez p1, :cond_0

    .line 164
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getStation : stationId is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "whereClause":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_mystation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/AllStationViewDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Station;

    goto :goto_0

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_mystation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "all_station_view"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "all_station_view"

    return-object v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 150
    return-void
.end method
