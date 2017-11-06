.class public Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "StationTrackDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$StationTrackColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/Track;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$StationTrackColumns;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "radio_track"

.field private static instance:Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->LOG_TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->instance:Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 39
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->instance:Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    return-object v0
.end method

.method private updateTrackField(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "station_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "track_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p3, v2, v3, v1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    if-lt v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 385
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/Track;->createTrackObjFromStationTrackDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v0

    return-object v0
.end method

.method public convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Track;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v0, "stationTrackValue":Landroid/content/ContentValues;
    const-string/jumbo v1, "station_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v1, "track_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v1, "track_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v1, "track_provider_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getProviderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v1, "track_track_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v1, "track_album_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v1, "track_artist_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v1, "track_artists"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v1, "track_coverart_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v1, "track_album_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v1, "track_artist_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, "track_audio_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v1, "track_audio_url_exp"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v1, "track_duration"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string/jumbo v1, "track_bitrate"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getBitrate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string/jumbo v1, "track_encoding"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v1, "track_sequence_number"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackSequence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v1, "track_is_skipable"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIsSkippable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v1, "track_is_purchasable"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v1, "track_lyrics_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v1, "track_synclyrics_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v1, "track_seed_usable"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSeedUsable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v1, "track_is_explicit"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->isExplicit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 355
    const-string/jumbo v1, "track_preminum_only_yn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getPremiumOnlyYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v1, "track_individual_only_yn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIndividualOnly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v1, "track_is_celeb_track"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 359
    return-object v0
.end method

.method public bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Track;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected createAdditionalColumns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, ""

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 45
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 47
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getTableName()Ljava/lang/String;

    move-result-object v2

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

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_provider_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_track_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_album_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_artist_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_artists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_coverart_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_album_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_artist_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_lyrics_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_synclyrics_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_seed_usable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'0\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_is_explicit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_preminum_only_yn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'0\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_individual_only_yn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'0\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'0\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_audio_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_audio_url_exp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_is_celeb_track"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'0\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_sequence_number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_is_skipable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT default \'1\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_is_purchasable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT default \'0\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_bitrate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_settle_ext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->createAdditionalColumns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNIQUE ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "track_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getRecordConflictResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FOREIGN KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "station_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getReferenceTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getReferenceTableUniqueKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON DELETE CASCADE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    return-void

    .line 45
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 106
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 100
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getQueryTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Track;)Ljava/lang/String;
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

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
    .line 22
    check-cast p1, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Track;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllTracks()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrack(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 3
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 220
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    .line 223
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_0
    return-object v1
.end method

.method public getNextTrack(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 3
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 234
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getNextTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    .line 237
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_0
    return-object v1
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevTrack(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 3
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 206
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getPrevTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    .line 209
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_0
    return-object v1
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, "radio_track"

    return-object v0
.end method

.method protected getRecordConflictResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "IGNORE"

    return-object v0
.end method

.method protected getReferenceTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string/jumbo v0, "station"

    return-object v0
.end method

.method protected getReferenceTableUniqueKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string/jumbo v0, "station_id"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, "radio_track"

    return-object v0
.end method

.method public getTrack(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    goto :goto_0
.end method

.method public getTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrack >> track or station is null. track - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", station - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    goto :goto_0
.end method

.method public getTrack(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/common/model/Track;
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "bitrate"    # I

    .prologue
    .line 166
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 167
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrack >> track or station is null. track - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", station - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "track_bitrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    goto :goto_0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWhereClauseExpressionCount()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Lcom/samsung/android/app/music/common/model/Track;Z)J
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "notifyChange"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Z)J
    .locals 2

    .prologue
    .line 22
    check-cast p1, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->insert(Lcom/samsung/android/app/music/common/model/Track;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/samsung/android/app/music/common/model/Track;)I
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->update(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->update(Lcom/samsung/android/app/music/common/model/Track;)I

    move-result v0

    return v0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 114
    add-int/lit8 v0, p2, 0x1

    .local v0, "version":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 115
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 121
    :cond_0
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method

.method public updateTrackDuration(Lcom/samsung/android/app/music/common/model/Track;)Z
    .locals 4
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "track_duration"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->updateTrackField(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public updateTrackInfo(Lcom/samsung/android/app/music/common/model/Track;)Z
    .locals 4
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 277
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "track_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v1, "track_track_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "track_provider_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getProviderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v1, "track_coverart_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v1, "track_is_explicit"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string/jumbo v1, "track_album_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v1, "track_album_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "track_artist_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "track_artist_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v1, "track_artists"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v1, "track_lyrics_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v1, "track_synclyrics_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v1, "track_preminum_only_yn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getPremiumOnlyYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v1, "track_duration"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    const-string/jumbo v1, "track_audio_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v1, "track_audio_url_exp"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v1, "track_is_celeb_track"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    const-string/jumbo v1, "track_settle_ext"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "track_seed_usable"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSeedUsable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "track_individual_only_yn"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIndividualOnly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v1, "track_sequence_number"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackSequence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "track_is_skipable"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIsSkippable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "track_is_purchasable"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "track_bitrate"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getBitrate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    const-string/jumbo v1, "track_encoding"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->updateTrackField(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public updateTrackIsSkippable(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "isSkippable"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "track_is_skipable"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->updateTrackField(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method
