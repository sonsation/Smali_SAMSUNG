.class public Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;
.super Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
.source "FavoriteTrackListDAO.java"


# static fields
.field private static final NOTIRY_URI:[Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "milkfavorite_track_list"

.field private static final TAG:Ljava/lang/String; = "FavoriteTrackListDAO"

.field public static instance:Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->NOTIRY_URI:[Landroid/net/Uri;

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->instance:Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;-><init>()V

    .line 31
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static getAllFromDB(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v8, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    const/4 v6, 0x0

    .line 45
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->createFavoriteObjectFromFavoriteDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    move-result-object v7

    .line 51
    .local v7, "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    invoke-static {v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;

    move-result-object v9

    .line 53
    .local v9, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 57
    .end local v7    # "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v9    # "request":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    :cond_1
    if-eqz v6, :cond_2

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_2
    :goto_0
    return-object v8

    .line 57
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->instance:Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    return-object v0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 204
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->createFavoriteObjectFromFavoriteTrackDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, "mFavoriteListValue":Landroid/content/ContentValues;
    const-string v1, "favorite_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "favorite_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "favorite_subtitle"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "favorite_thumb_img_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "favorite_explicit"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v1, "favorite_latest_update_date"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "favorite_thumbnail_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThunmbnailId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v1, "favorite_track_ablum_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "favorite_track_album_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v0
.end method

.method protected bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 66
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 69
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "milkfavorite_track_list"

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

    const-string v2, "favorite_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_subtitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_thumb_img_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_explicit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_latest_update_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_thumbnail_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_track_ablum_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_track_album_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_id"

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

    .line 83
    return-void

    .line 66
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 93
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 88
    return-void
.end method

.method public delete(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 159
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 161
    .local v2, "deleted":I
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "data":Ljava/lang/String;
    const-string v5, "milkfavorite_track_list"

    const-string v8, "favorite_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v1, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    .line 166
    .local v6, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[deleteInfoNotInMediaData]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " items are deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-lez v2, :cond_2

    .line 179
    sget-object v5, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->DELETE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    .line 182
    :cond_2
    return v2

    .line 171
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 103
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 98
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Ljava/lang/String;
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "favorite_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

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
    .line 21
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 134
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "milkfavorite_track_list"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "milkfavorite_track_list"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public resetTable()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->deleteTable()I

    .line 150
    return-void
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 107
    add-int/lit8 v1, p2, 0x1

    .local v1, "version":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "sql":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 115
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method

.method public zeroNotify()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->NONE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    .line 154
    return-void
.end method
