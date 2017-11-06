.class public Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "MusicCategoryGenreDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreInfoColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreInfoColumns;"
    }
.end annotation


# static fields
.field private static final NOTIRY_URI:[Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "category_genre"

.field private static final TAG:Ljava/lang/String; = "MusicCategoryGenreDAO"

.field public static instance:Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->instance:Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 25
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->instance:Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    return-object v0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->createGenreInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .prologue
    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v0, "mGenreValue":Landroid/content/ContentValues;
    const-string v1, "genre_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "genre_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "genre_category_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "genre_image_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method protected bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 34
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 36
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category_genre"

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

    const-string v2, "genre_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_category_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_image_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void

    .line 34
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 53
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 58
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "category_genre"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "category_genre"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertOrUpdate(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    const/4 v5, 0x0

    .line 129
    .local v5, "updated":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 132
    .local v1, "genreInfo":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "genre_id = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 133
    .local v3, "isExist":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 134
    .local v4, "rowId":I
    if-nez v3, :cond_2

    .line 135
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->insert(Ljava/lang/Object;)J

    move-result-wide v8

    long-to-int v4, v8

    .line 142
    :goto_1
    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_0
    if-lez v4, :cond_1

    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 149
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto :goto_0

    .line 137
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v6, "value":Landroid/content/ContentValues;
    const-string v8, "genre_image_url"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "genre_id = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v4

    goto :goto_1

    .line 151
    .end local v1    # "genreInfo":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .end local v3    # "isExist":Landroid/database/Cursor;
    .end local v4    # "rowId":I
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    .line 157
    .end local v2    # "index":I
    :goto_2
    if-lez v5, :cond_4

    .line 158
    sget-object v7, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->UPDATE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    .line 160
    :cond_4
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v7
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public updateImageUrl(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    const/4 v4, 0x0

    .line 166
    .local v4, "updated":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 169
    .local v1, "genreInfo":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v5, "value":Landroid/content/ContentValues;
    const-string v7, "genre_image_url"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "genre_id = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    .line 172
    .local v3, "rowId":I
    if-lez v3, :cond_0

    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 175
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 176
    goto :goto_0

    .line 177
    .end local v1    # "genreInfo":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .end local v3    # "rowId":I
    .end local v5    # "value":Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    .line 183
    .end local v2    # "index":I
    :goto_1
    if-lez v4, :cond_2

    .line 184
    sget-object v6, Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;->UPDATE:Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->notifyDatabaseUpdate([Landroid/net/Uri;)V

    .line 186
    :cond_2
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
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

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 67
    add-int/lit8 v1, p2, 0x1

    .local v1, "version":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "sql":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 76
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method
