.class public abstract Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "AbsFavoriteListDAO.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$FavoriteListColumn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
        ">;",
        "Lcom/samsung/android/app/music/provider/StoreProviderColumns$FavoriteListColumn;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsFavoriteListDAO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->createFavoriteObjectFromFavoriteDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .local v0, "mFavoriteListValue":Landroid/content/ContentValues;
    const-string v1, "favorite_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "favorite_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "favorite_subtitle"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "favorite_thumb_img_url"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "favorite_explicit"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    const-string v1, "favorite_latest_update_date"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "favorite_thumbnail_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThunmbnailId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    return-object v0
.end method

.method protected bridge synthetic convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->convertModelToContentValues(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public abstract delete(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "favorite_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->getCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract resetTable()V
.end method

.method public serializeIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 46
    move-object v0, p1

    .line 47
    .local v0, "sId":Ljava/lang/String;
    const-string v1, "@"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method public abstract zeroNotify()V
.end method
