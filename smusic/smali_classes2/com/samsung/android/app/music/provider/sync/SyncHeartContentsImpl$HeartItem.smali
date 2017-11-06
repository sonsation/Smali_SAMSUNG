.class final Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
.super Ljava/lang/Object;
.source "SyncHeartContentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartItem"
.end annotation


# instance fields
.field action:I

.field albumId:J

.field categoryId:Ljava/lang/String;

.field categoryName:Ljava/lang/String;

.field categoryType:I

.field cpAttrs:I

.field data1:Ljava/lang/String;

.field data2:Ljava/lang/String;

.field id:J

.field subCategoryType:I


# direct methods
.method constructor <init>(JLjava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "categoryName"    # Ljava/lang/String;
    .param p4, "categoryType"    # I
    .param p5, "categoryId"    # Ljava/lang/String;
    .param p6, "albumId"    # J
    .param p8, "cpAttrs"    # I
    .param p9, "data1"    # Ljava/lang/String;
    .param p10, "data2"    # Ljava/lang/String;
    .param p11, "subCategoryType"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-wide p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->id:J

    .line 419
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryName:Ljava/lang/String;

    .line 420
    iput p4, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryType:I

    .line 421
    iput-object p5, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryId:Ljava/lang/String;

    .line 422
    iput-wide p6, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->albumId:J

    .line 423
    iput p8, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->cpAttrs:I

    .line 424
    iput-object p9, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data1:Ljava/lang/String;

    .line 425
    iput-object p10, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data2:Ljava/lang/String;

    .line 426
    iput p11, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->subCategoryType:I

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->action:I

    .line 428
    return-void
.end method


# virtual methods
.method compareTo(ILjava/lang/String;)I
    .locals 2
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 435
    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryType:I

    if-ge v1, p1, :cond_0

    .line 436
    const/4 v0, -0x1

    .line 448
    .local v0, "result":I
    :goto_0
    return v0

    .line 437
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryType:I

    if-le v1, p1, :cond_1

    .line 438
    const/4 v0, 0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 440
    .end local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method needUpdate(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "albumId"    # J
    .param p4, "cpAttrs"    # I
    .param p5, "data1"    # Ljava/lang/String;
    .param p6, "data2"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->albumId:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->cpAttrs:I

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data1:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, p5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data2:Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryName:Ljava/lang/String;

    .line 455
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
