.class public abstract Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;
.super Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.source "BaseDAOAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/dao/BaseDAO;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Thumbnail;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic convertCursorToModel(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/dao/BaseDAOAdapter;->convertCursorToModel(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected convertModelToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateWhereClauseFromModel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotifyUri(Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;)[Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/provider/dao/BaseDAO$OperationType;

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPossibleModifyTable()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method
