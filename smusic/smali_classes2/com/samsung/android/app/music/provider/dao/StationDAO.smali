.class public Lcom/samsung/android/app/music/provider/dao/StationDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "StationDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$StationColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/Station;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$StationColumns;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFY_STATION_ONLY_URI:[Landroid/net/Uri;

.field private static final NOTIFY_TRACK_URI:[Landroid/net/Uri;

.field private static final NOTIFY_URI:[Landroid/net/Uri;

.field private static final PROJECTION_PLAYCOUNT_ONLY:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "station"

.field public static final VIEW_NAME:Ljava/lang/String; = "station_view"

.field private static instance:Lcom/samsung/android/app/music/provider/dao/StationDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_URI:[Landroid/net/Uri;

    .line 38
    new-array v0, v3, [Landroid/net/Uri;

    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_STATION_ONLY_URI:[Landroid/net/Uri;

    .line 42
    new-array v0, v3, [Landroid/net/Uri;

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->instance:Lcom/samsung/android/app/music/provider/dao/StationDAO;

    .line 631
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "station_track_play_count"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->PROJECTION_PLAYCOUNT_ONLY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 54
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->instance:Lcom/samsung/android/app/music/provider/dao/StationDAO;

    return-object v0
.end method


# virtual methods
.method public accumulateStayingTime(Ljava/lang/String;I)V
    .locals 6
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "timeSec"    # I

    .prologue
    .line 231
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accumulateStayingTime >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " staying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "station_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Station;

    .line 233
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v2, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v3, "station_staying_time"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStayingTime()I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "station_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v2    # "stationValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accumulateStayingTime >> Error in accumulateStayingTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 729
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Station;->createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Station;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 682
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "station_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string/jumbo v2, "station_track_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string/jumbo v2, "station_prevtrack_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getPrevTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string/jumbo v2, "station_nexttrack_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getNextTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string/jumbo v2, "station_station_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v2, "station_description"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 692
    const-string/jumbo v2, "station_genre_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    const-string/jumbo v2, "station_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationOrdinal()I

    move-result v0

    .line 697
    .local v0, "ordinal":I
    const-string/jumbo v2, "station_ordinal"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string/jumbo v2, "station_is_turned"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getIsTurned()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v2, "station_update_date"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getLastUpdated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string/jumbo v3, "station_tag"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string/jumbo v3, "station_is_hidden"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    const-string/jumbo v3, "station_is_audioAdYn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isAudioAdYn()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v3, "station_is_videoAdYn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isVideoAdYn()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1"

    :goto_3
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string/jumbo v3, "station_is_imageAdYn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isImageAdYn()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "1"

    :goto_4
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-object v1

    .line 700
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 701
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 702
    :cond_3
    const-string v2, "0"

    goto :goto_2

    .line 703
    :cond_4
    const-string v2, "0"

    goto :goto_3

    .line 704
    :cond_5
    const-string v2, "0"

    goto :goto_4
.end method

.method public bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Station;)Landroid/content/ContentValues;

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

    const-string/jumbo v2, "station"

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

    const-string/jumbo v2, "station_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT UNIQUE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_track_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_prevtrack_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_nexttrack_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_station_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_genre_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_ordinal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_is_turned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_update_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_track_play_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_staying_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_is_hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_is_audioAdYn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_is_videoAdYn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_is_imageAdYn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FOREIGN KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_genre_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "milk_genre"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON DELETE CASCADE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void

    .line 62
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 145
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 91
    const-string v0, "CREATE VIEW station_view AS SELECT S._id, S.station_id, S.station_track_id, S.station_prevtrack_id, S.station_nexttrack_id, S.station_station_name, G.genre_name, G.genre_display_name, G.genre_ordinal, G.genre_type, G.genre_last_udate_time, G.genre_is_prefethced, S.station_description, S.station_type, S.station_genre_id, S.station_ordinal, S.station_update_date, S.station_is_turned, S.station_tag, S.station_staying_time, S.station_track_play_count, S.station_is_hidden, S.station_is_audioAdYn, S.station_is_videoAdYn, S.station_is_imageAdYn, G.genre_is_visible, T.track_coverart_url, T.track_artist_id, T.track_artist_name, T.track_album_id, T.track_album_title, T.track_track_title, T.track_type, T.track_sequence_number, T.track_seed_usable, T.track_is_explicit FROM  station AS S LEFT JOIN milk_genre AS G ON S.station_genre_id=G.genre_id LEFT JOIN radio_track AS T ON S.station_track_id=T.track_id AND S.station_id =T.station_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public deleteStation(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "deleteGenre"    # Z

    .prologue
    .line 663
    if-eqz p1, :cond_0

    .line 664
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 665
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->delete(Ljava/lang/Object;)I

    .line 668
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteStation >> id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStationCount(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 671
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteStation >> station count under 0. genre - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->deleteById(Ljava/lang/String;)I

    .line 678
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    :goto_0
    return-void

    .line 675
    .restart local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deleteStation >> station is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doesStationExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "station_id"    # Ljava/lang/String;

    .prologue
    .line 535
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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getCount(Ljava/lang/String;)I

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
    .line 547
    const-string/jumbo v0, "station_station_name"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesStationNameExistInOnlyMyStation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "station_station_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "station_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getCount(Ljava/lang/String;)I

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
    .line 149
    const-string v0, "DROP TRIGGER IF EXISTS tr_delete_station"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 139
    const-string v0, "DROP VIEW station_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Station;)Ljava/lang/String;
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    const-string v1, "generateWhereClauseFromModel >> model null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "station_id=\'"

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

    goto :goto_0
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Station;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllStations(Z)Ljava/util/Collection;
    .locals 2
    .param p1, "showHiddenGenres"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "whereClause":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 482
    const-string/jumbo v0, "station_view.genre_is_visible=\'1\'"

    .line 484
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentTrack(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "station_id"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 342
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastUpdated(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "station_id"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 334
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 337
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getLastUpdated()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 598
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO$1;->$SwitchMap$com$samsung$android$app$music$provider$dao$BaseDAO$OperationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 602
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_URI:[Landroid/net/Uri;

    :goto_0
    return-object v0

    .line 600
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_STATION_ONLY_URI:[Landroid/net/Uri;

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    const-string/jumbo v0, "station_view"

    return-object v0
.end method

.method public getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getStation >> stationId is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    .line 592
    :goto_0
    return-object v0

    :cond_0
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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    goto :goto_0
.end method

.method public getStationCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "genre_id"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "whereClause":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_genre_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getCount(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected getStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "s":Lcom/samsung/android/app/music/common/model/Station;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Station;->createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 583
    :cond_0
    return-object v0
.end method

.method public getStationPlayCount(Ljava/lang/String;)I
    .locals 7
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 639
    const/4 v0, 0x0

    .line 641
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/StationDAO;->PROJECTION_PLAYCOUNT_ONLY:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "station_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 648
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v0, 0x0

    .line 653
    :cond_0
    :goto_0
    return v2

    .line 648
    :cond_1
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v0, 0x0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 649
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v0, 0x0

    :cond_2
    throw v2
.end method

.method public getStations(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "genre_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "whereClause":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_genre_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected getStationsFromCursor(Landroid/database/Cursor;)Ljava/util/Collection;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Station;->createStationsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const-string/jumbo v0, "station"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string/jumbo v0, "station_view"

    return-object v0
.end method

.method public increaseStationPlayCount(Ljava/lang/String;)V
    .locals 8
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/Station;

    .line 617
    .local v7, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v7, :cond_0

    .line 629
    :goto_0
    return-void

    .line 622
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_track_play_count"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStationPlayCount(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 627
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increaseStationPlayCount >> increaseStationPlayCount >> Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initStayingTime(Ljava/lang/String;)V
    .locals 6
    .param p1, "stationId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_staying_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I

    .line 251
    return-void
.end method

.method public insert(Lcom/samsung/android/app/music/common/model/Station;Z)J
    .locals 9
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "notifyChange"    # Z

    .prologue
    const/4 v8, 0x0

    .line 186
    const-string v5, "02"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "03"

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getGenreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/samsung/android/app/music/common/model/Genre;->createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    .line 191
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreLastUpdated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/common/model/Genre;->setLastUpdateTime(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v5

    invoke-virtual {v5, v0, p2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->insert(Lcom/samsung/android/app/music/common/model/Genre;Z)J

    .line 194
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateGenreOrdinal(Ljava/lang/String;Ljava/lang/String;I)I

    .line 195
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updatePrefetched(Ljava/lang/String;I)Z

    .line 198
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v2

    .line 199
    .local v2, "rowId":J
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Track;

    .line 201
    .local v4, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->insert(Lcom/samsung/android/app/music/common/model/Track;Z)J

    goto :goto_0

    .line 204
    .end local v4    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_2
    sget-object v5, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "insert >> tracks null!! or size is zero"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_3
    return-wide v2
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Z)J
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public renameStation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "station_id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 495
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 496
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v3, "station_station_name"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->doesStationExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "station_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    const/4 v2, 0x1

    .line 504
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "renameStation >> Error in renameStation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "resetLevel"    # I

    .prologue
    .line 165
    packed-switch p2, :pswitch_data_0

    .line 172
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 175
    :goto_0
    return-void

    .line 168
    :pswitch_0
    const-string/jumbo v0, "station_type=\'02\'"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    .line 169
    const-string/jumbo v0, "station_is_hidden!= 0"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIsTurned(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "station_id"    # Ljava/lang/String;
    .param p2, "isTurned"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v5, "station_is_turned"

    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "station_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :goto_1
    return v2

    .restart local v1    # "stationValue":Landroid/content/ContentValues;
    :cond_0
    move v4, v3

    .line 263
    goto :goto_0

    .line 266
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIsTurned >> Error in setTrack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 268
    goto :goto_1

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public setNextTrack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "station_id"    # Ljava/lang/String;
    .param p2, "nexttrack_id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 390
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v0, "station_nexttrack_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    const/4 v0, 0x1

    .line 397
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 395
    :catch_0
    move-exception v6

    .line 396
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNextTrack >> Error in setNextTrack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 397
    goto :goto_0

    .line 398
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public setPrevTrack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "station_id"    # Ljava/lang/String;
    .param p2, "prevtrack_id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 411
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v0, "station_prevtrack_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    const/4 v0, 0x1

    .line 418
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 416
    :catch_0
    move-exception v6

    .line 417
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPrevTrack >> Error in setPrevTrack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 418
    goto :goto_0

    .line 419
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public setTrack(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "station_id"    # Ljava/lang/String;
    .param p2, "track_id"    # Ljava/lang/String;
    .param p3, "notifyChange"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 357
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getCurrentTrack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "currentTrack":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTrack >> current track is same!!. notify - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-nez p3, :cond_0

    move v0, v8

    .line 375
    .end local v6    # "currentTrack":Ljava/lang/String;
    :goto_0
    return v0

    .line 365
    .restart local v6    # "currentTrack":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v0, "station_track_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v9

    .line 372
    goto :goto_0

    .line 373
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    .end local v6    # "currentTrack":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 374
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTrack >> Error in setTrack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 375
    goto :goto_0

    .line 376
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public setTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "station_id"    # Ljava/lang/String;
    .param p2, "prevtrack_id"    # Ljava/lang/String;
    .param p3, "nexttrack_id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 432
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v0, "station_prevtrack_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v0, "station_nexttrack_id"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    const/4 v0, 0x1

    .line 440
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 438
    :catch_0
    move-exception v6

    .line 439
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPrevTrack >> Error in setTracks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 440
    goto :goto_0

    .line 441
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public toggleGenreVisibility(Ljava/lang/String;)Z
    .locals 4
    .param p1, "genre_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 516
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getVisible(Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, "currentVisible":I
    const/4 v1, 0x1

    .line 520
    .local v1, "newVisible":I
    if-ne v0, v2, :cond_0

    .line 521
    const/4 v1, 0x0

    .line 526
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->setVisible(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    return v2

    .line 523
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public update(Lcom/samsung/android/app/music/common/model/Station;)I
    .locals 6
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->update(Ljava/lang/Object;)I

    move-result v2

    .line 213
    .local v2, "update":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    .line 215
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->update(Lcom/samsung/android/app/music/common/model/Track;)I

    move-result v1

    .line 216
    .local v1, "trackUpdate":I
    if-gtz v1, :cond_0

    .line 217
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->insert(Lcom/samsung/android/app/music/common/model/Track;Z)J

    goto :goto_0

    .line 221
    .end local v0    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v1    # "trackUpdate":I
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "update >> tracks null!! or size is zero"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_2
    return v2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->update(Lcom/samsung/android/app/music/common/model/Station;)I

    move-result v0

    return v0
.end method

.method public updateMetadata(Lcom/samsung/android/app/music/common/model/Station;)Z
    .locals 6
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    const/4 v2, 0x0

    .line 281
    if-eqz p1, :cond_0

    .line 282
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v3, "station_station_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v3, "station_ordinal"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationOrdinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string/jumbo v3, "station_description"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v3, "station_tag"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v3, "station_update_date"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getLastUpdated()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "station_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    const/4 v2, 0x1

    .line 295
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMetadata >> Error in updateMetadata: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public updateOnlyOrdinalMetadata(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/4 v8, 0x0

    .line 307
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateOnlyOrdinalMetadata >> station is null or size 0"

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 328
    :goto_0
    return v0

    .line 312
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/Station;

    .line 314
    .local v7, "station":Lcom/samsung/android/app/music/common/model/Station;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v1, "stationValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "station_ordinal"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationOrdinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string/jumbo v0, "station_is_audioAdYn"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->isAudioAdYn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 317
    const-string/jumbo v0, "station_is_imageAdYn"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->isImageAdYn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 318
    const-string/jumbo v0, "station_is_videoAdYn"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->isVideoAdYn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "station_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/music/provider/dao/StationDAO;->NOTIFY_TRACK_URI:[Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;[Landroid/net/Uri;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 324
    .end local v1    # "stationValue":Landroid/content/ContentValues;
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :catch_0
    move-exception v6

    .line 325
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOnlyOrdinalMetadata >> Error in updateOnlyOrdinalMetadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    move v0, v8

    goto/16 :goto_0

    .line 322
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    const/4 v0, 0x1

    .line 328
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 154
    add-int/lit8 v0, p2, 0x1

    .local v0, "version":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 155
    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 161
    :cond_0
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method
