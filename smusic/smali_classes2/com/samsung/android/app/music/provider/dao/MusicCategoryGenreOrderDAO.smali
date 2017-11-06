.class public Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "MusicCategoryGenreOrderDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreInfoColumns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreInfoColumns;"
    }
.end annotation


# static fields
.field private static final NOTIRY_URI:[Landroid/net/Uri;

.field static final ORDER_MAX:I = 0x2710

.field public static final TABLE_NAME:Ljava/lang/String; = "category_genre_order"

.field private static final TAG:Ljava/lang/String; = "MusicCategoryGenreOrderDAO"

.field public static final VIEW_NAME:Ljava/lang/String; = "category_genre_infos"

.field public static instance:Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenreOrder;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->NOTIRY_URI:[Landroid/net/Uri;

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->instance:Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 29
    const-string v0, "com.sec.android.app.music"

    .line 30
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenreOrder;->getUriPath()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->instance:Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;

    return-object v0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 130
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->createGenreInforWithOrderFromDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    .prologue
    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "genre_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getGenreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "genre_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "genre_category_name"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "genre_image_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "genre_order"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->getOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    return-object v0
.end method

.method protected bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ifNotExists"    # Z

    .prologue
    .line 39
    if-eqz p2, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 41
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category_genre_order"

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

    const-string v2, " TEXT UNIQUE on conflict ignore, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "genre_order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void

    .line 39
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 69
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    const-string v0, "CREATE VIEW category_genre_infos AS SELECT O._id, O.genre_id, O.genre_order, G.genre_name, G.genre_category_name, G.genre_image_url FROM category_genre_order AS O LEFT JOIN category_genre AS G ON O.genre_id =G.genre_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 79
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 74
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "category_genre_infos"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "category_genre_order"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "category_genre_infos"

    return-object v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 83
    add-int/lit8 v1, p2, 0x1

    .local v1, "version":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "sql":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 83
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreOrderDAO;->createView(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 93
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void

    .line 86
    :pswitch_data_0
    .packed-switch 0x4ee8
        :pswitch_0
    .end packed-switch
.end method
