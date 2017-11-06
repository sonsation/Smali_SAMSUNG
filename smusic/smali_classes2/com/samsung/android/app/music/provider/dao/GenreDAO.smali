.class public Lcom/samsung/android/app/music/provider/dao/GenreDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "GenreDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/Genre;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreColumns;"
    }
.end annotation


# static fields
.field public static final GENRE_HIDDEN_ID:Ljava/lang/String; = "99999999"

.field public static final GENRE_HIDDEN_NAME:Ljava/lang/String; = "Hidden Genre"

.field public static final GET_GENRE_VISIBILITY_BY_GENREID:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFY_URI:[Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "milk_genre"

.field public static final WHERE_CLAUSE_QUERY_ALL_GENRE_VISIBILITY:Ljava/lang/String; = "genre_type not null AND genre_is_visible = 1"

.field public static final WHERE_CLAUSE_QUERY_GENRE_VISIBILITY:Ljava/lang/String; = "genre_type not null AND genre_type != 2 AND genre_is_visible = 1"

.field public static final WHERE_CLAUSE_QUERY_TYPE_GENERAL_GENRE:Ljava/lang/String; = "genre_type = \'1\'"

.field public static final WHERE_CLAUSE_QUERY_TYPE_GENRE:Ljava/lang/String; = "genre_type not null AND genre_type != 2"

.field private static instance:Lcom/samsung/android/app/music/provider/dao/GenreDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->instance:Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT genre_is_visible from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "genre_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->GET_GENRE_VISIBILITY_BY_GENREID:Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->NOTIFY_URI:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 59
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->instance:Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->instance:Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    .line 55
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->instance:Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    return-object v0
.end method


# virtual methods
.method public clearGenreVisibilty(Z)V
    .locals 3
    .param p1, "setDefault"    # Z

    .prologue
    const/4 v2, 0x0

    .line 347
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 350
    const-string v1, "genre_is_visible"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v1, "genre_type = \'1\'"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 354
    const-string v1, "genre_is_visible"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v1, "genre_type is null OR genre_type = \'2\' OR genre_type = \'3\'"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v1, "genre_is_visible"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v1, "genre_type not null AND genre_type != 2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Genre;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 511
    const-string v2, "genre_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genre_name"

    .line 512
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "genre_type"

    .line 513
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/model/Genre;->createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    .line 514
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    const-string v2, "genre_is_visible"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Genre;->setVisible(I)V

    .line 515
    const-string v2, "genre_last_udate_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Genre;->setLastUpdateTime(Ljava/lang/String;)V

    .line 516
    const-string v2, "genre_is_hidden"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Genre;->setHiddenGenre(Z)V

    .line 518
    return-object v0

    .line 516
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    return-object v0
.end method

.method public convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Genre;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Genre;

    .prologue
    const/4 v3, 0x1

    .line 450
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "genre_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "2"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    const-string v1, "genre_is_visible"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    :goto_0
    const-string v1, "genre_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "genre_display_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "genre_last_udate_time"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "genre_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "genre_is_hidden"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->isHiddenGenre()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 464
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->isHiddenGenre()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string v1, "genre_is_prefethced"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    :cond_0
    return-object v0

    .line 456
    :cond_1
    const-string v1, "genre_is_visible"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getVisible()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/Genre;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 64
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 66
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "milk_genre"

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

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_display_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_ordinal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_is_visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_last_udate_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_is_prefethced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_is_hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNIQUE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT IGNORE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    return-void

    .line 64
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    return-void
.end method

.method public deleteById(Ljava/lang/String;)I
    .locals 3
    .param p1, "genreId"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "whereClause":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->deleteByWhereClause(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteEmptyStationGenre()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "DELETE FROM milk_genre WHERE genre_id NOT IN (SELECT station_genre_id FROM station GROUP BY station_genre_id)"

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->execSQL(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public doesGenreIdExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getCount(Ljava/lang/String;)I

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
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 108
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Genre;)Ljava/lang/String;
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Genre;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    const-string v1, "generateWhereClauseFromModel >> model null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

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
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/Genre;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllGenres()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Genre;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "whereClause":Ljava/lang/String;
    const-string v0, "genre_type not null"

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getModels(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getGenreCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 397
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "milk_genre"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    .line 398
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 399
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public getGenreId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 153
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGenreId >> genre name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v10, 0x0

    .line 155
    .local v10, "genre_id":Ljava/lang/String;
    const/4 v8, 0x0

    .line 157
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "milk_genre"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_id"

    aput-object v4, v2, v3

    const-string v3, "genre_name = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "genre_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 170
    :cond_0
    if-eqz v8, :cond_1

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 174
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v9

    .line 168
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    if-eqz v8, :cond_2

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v11

    .line 174
    goto :goto_0

    .line 170
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "genreID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 122
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGenreId >> genre name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v10, 0x0

    .line 124
    .local v10, "genre_id":Ljava/lang/String;
    const/4 v8, 0x0

    .line 126
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "milk_genre"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_name"

    aput-object v4, v2, v3

    const-string v3, "genre_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 132
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "genre_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 139
    :cond_0
    if-eqz v8, :cond_1

    .line 140
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 143
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v9

    .line 137
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-eqz v8, :cond_2

    .line 140
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v11

    .line 143
    goto :goto_0

    .line 139
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 140
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 440
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->NOTIFY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const-string v0, "milk_genre"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "milk_genre"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisible(Ljava/lang/String;)I
    .locals 4
    .param p1, "genreId"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "visibility":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->GET_GENRE_VISIBILITY_BY_GENREID:Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    .line 214
    :goto_0
    return v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDoneException;->printStackTrace()V

    .line 214
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVisibleGenreIDs()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 247
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v9, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 250
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "milk_genre"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_id"

    aput-object v4, v2, v3

    const-string v3, "genre_type not null AND genre_is_visible = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 253
    if-nez v8, :cond_2

    .line 254
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getVisibleGenreIDs >> cursor is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-eqz v8, :cond_0

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v10

    .line 266
    .end local v9    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v9

    .line 257
    .restart local v9    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 261
    :cond_4
    if-eqz v8, :cond_1

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getVisibleGenres()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 224
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v9, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 227
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/DaoMaster;->getDatabases()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "milk_genre"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_id"

    aput-object v4, v2, v3

    const-string v3, "genre_type not null AND genre_type != 2 AND genre_is_visible = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 230
    if-nez v8, :cond_2

    .line 231
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getVisibleGenres >> cursor is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v8, :cond_0

    .line 239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v10

    .line 243
    .end local v9    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v9

    .line 234
    .restart local v9    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 238
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 238
    :cond_4
    if-eqz v8, :cond_1

    .line 239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public insert(Lcom/samsung/android/app/music/common/model/Genre;Z)J
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/Genre;
    .param p2, "notifyChange"    # Z

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/model/Genre;->setGenreDisplayName(Ljava/lang/String;)V

    .line 201
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->insert(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Z)J
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/common/model/Genre;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->insert(Lcom/samsung/android/app/music/common/model/Genre;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "resetLevel"    # I

    .prologue
    .line 318
    packed-switch p2, :pswitch_data_0

    .line 332
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 335
    :goto_0
    return-void

    .line 320
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->clearGenreVisibilty(Z)V

    .line 321
    const-string v0, "genre_is_hidden!= 0"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->deleteByWhereClause(Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_1
    const-string v0, "genre_is_hidden!= 0"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->deleteByWhereClause(Ljava/lang/String;)I

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGenreVisibility(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 275
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 312
    :cond_0
    return-void

    .line 285
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v1, "hidden":Landroid/content/ContentValues;
    const-string v6, "genre_is_visible"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "genreIdComma":Ljava/lang/StringBuffer;
    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 291
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    :cond_2
    sget-object v6, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setGenreVisibility >> genre - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genre_id NOT IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "genre_type not null AND genre_type != 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "hiddenWhereClause":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v2, v6, v10}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 299
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v4, "visible":Landroid/content/ContentValues;
    const-string v6, "genre_is_visible"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genre_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "visibleWhereClause":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 304
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 305
    :goto_1
    const-string v6, "genre_type not null AND genre_type != 2 AND genre_is_visible = 1"

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getCount(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x9

    if-le v6, v7, :cond_0

    .line 306
    if-ltz v3, :cond_0

    .line 309
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->setVisible(Ljava/lang/String;I)I

    .line 310
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method public setVisible(Ljava/lang/String;I)I
    .locals 3
    .param p1, "genreId"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "genre_is_visible"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateGenreOrdinal(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "genreId"    # Ljava/lang/String;
    .param p2, "genreType"    # Ljava/lang/String;
    .param p3, "ordinal"    # I

    .prologue
    .line 426
    if-eqz p2, :cond_0

    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const p3, 0x7fffffff

    .line 432
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "genre_ordinal"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateGenreOrdinals(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Genre;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "genres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 404
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateGenreOrdinals >> genre null or size 0"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    .line 407
    :cond_1
    const/4 v0, 0x0

    .line 409
    .local v0, "count":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->beginTransaction()V

    .line 410
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 411
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Genre;

    .line 412
    .local v1, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreType()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateGenreOrdinal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 413
    .local v2, "id":I
    if-ltz v2, :cond_2

    .line 414
    add-int/lit8 v0, v0, 0x1

    .line 410
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 417
    .end local v1    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v2    # "id":I
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    goto :goto_0

    .end local v3    # "index":I
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/DaoMaster;->endTransaction()V

    throw v4
.end method

.method public updatePrefetched(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "genreId"    # Ljava/lang/String;
    .param p2, "prefetched"    # I

    .prologue
    .line 504
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 505
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "genre_is_prefethced"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatePrefetchedAll(I)Z
    .locals 3
    .param p1, "prefetched"    # I

    .prologue
    .line 492
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "genre_is_prefethced"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 96
    add-int/lit8 v0, p2, 0x1

    .local v0, "version":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 97
    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    .line 103
    :cond_0
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method
