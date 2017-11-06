.class public Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "FavoriteDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$FavoriteColumn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$FavoriteColumn;"
    }
.end annotation


# static fields
.field private static final NOTIRY_URI:[Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "milkfavorite"

.field private static final TAG:Ljava/lang/String; = "FavoriteDAO"

.field public static instance:Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->NOTIRY_URI:[Landroid/net/Uri;

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->instance:Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    .line 25
    const-string v0, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteInfos;->getUriPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->registerNotificationUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->instance:Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    return-object v0
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->createFavoriteObjectFromFavoriteDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    .prologue
    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v0, "mFavoriteValue":Landroid/content/ContentValues;
    const-string v1, "favorite_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "favorite_type_update_date"

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    return-object v0
.end method

.method protected bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Landroid/content/ContentValues;

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

    .line 37
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "milkfavorite"

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

    const-string v2, "favorite_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_type_update_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite_type"

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

    .line 44
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
    .line 54
    return-void
.end method

.method public createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 49
    return-void
.end method

.method public dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    return-void
.end method

.method public dropView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 59
    return-void
.end method

.method public generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->generateWhereClauseFromModel(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->NOTIRY_URI:[Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "milkfavorite"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "milkfavorite"

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertOrUpdate(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Z
    .locals 6
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    .prologue
    .line 126
    const/4 v1, 0x1

    .line 128
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "favorite_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 131
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v2, "updateValues":Landroid/content/ContentValues;
    const-string v3, "favorite_type_update_date"

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "favorite_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->updateContentValuesByWhereClause(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 140
    .end local v2    # "updateValues":Landroid/content/ContentValues;
    :goto_0
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 145
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return v1

    .line 137
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->insert(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public bridge synthetic insertOrUpdate(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->insertOrUpdate(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Z

    move-result v0

    return v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    add-int/lit8 v1, p2, 0x1

    .local v1, "version":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "sql":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

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
