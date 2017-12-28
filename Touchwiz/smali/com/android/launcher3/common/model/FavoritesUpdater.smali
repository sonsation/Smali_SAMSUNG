.class public Lcom/android/launcher3/common/model/FavoritesUpdater;
.super Lcom/android/launcher3/common/model/DataUpdater;
.source "FavoritesUpdater.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataUpdater$UpdaterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoritesUpdater"


# instance fields
.field private final mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private final mLoader:Lcom/android/launcher3/common/model/DataLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p4, "loaderInterface"    # Lcom/android/launcher3/common/model/DataLoader;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataUpdater;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    .line 52
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 53
    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    .line 54
    return-void
.end method

.method static synthetic access$000(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "x2"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->isValidContainer(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemArrays(Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method public static checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 5
    .param p0, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 398
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 399
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 400
    .local v0, "itemId":J
    new-instance v2, Lcom/android/launcher3/common/model/FavoritesUpdater$8;

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater$8;-><init>(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 407
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method private static checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 12
    .param p0, "itemId"    # J
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const-wide/16 v10, -0x66

    .line 231
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, p0, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 232
    .local v5, "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_0

    if-eq p2, v5, :cond_0

    .line 233
    instance-of v7, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_1

    instance-of v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_1

    move-object v4, v5

    .line 234
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .local v4, "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v3, p2

    .line 235
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 236
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    invoke-static {v4, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemsConsistent(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 274
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    instance-of v7, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_2

    instance-of v7, p2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_2

    move-object v4, v5

    .line 241
    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .local v4, "modelInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object v3, p2

    .line 242
    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 243
    .local v3, "info":Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v4, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemsConsistent(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 249
    .end local v3    # "info":Lcom/android/launcher3/folder/FolderInfo;
    .end local v4    # "modelInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    instance-of v7, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_5

    instance-of v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_5

    move-object v4, v5

    .line 250
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .local v4, "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v3, p2

    .line 251
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 252
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 253
    .local v0, "container":J
    cmp-long v7, v0, v10

    if-eqz v7, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_5

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 255
    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 256
    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v7, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 258
    :cond_3
    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    if-eq v7, v8, :cond_5

    .line 260
    :cond_4
    const-string v7, "FavoritesUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Position changed apps item, but not problem : item="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " modelItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v0    # "container":J
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "modelItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_6

    .line 270
    invoke-virtual {v2, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 272
    :cond_6
    throw v2
.end method

.method private static checkItemsConsistent(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 6
    .param p0, "item1"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p1, "item2"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private createAppOrderModifyByItem(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v3, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v0, "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, v0

    .line 437
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 438
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 441
    :cond_0
    new-instance v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;-><init>()V

    .line 442
    .local v2, "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    const/4 v5, 0x3

    iput v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->action:I

    .line 443
    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iput-object v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    .line 444
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iput-wide v6, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    .line 445
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v6, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    .line 446
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    .line 447
    iget v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    .line 448
    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iput-object v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    .line 449
    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 450
    const/4 v5, 0x0

    iput v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    .line 452
    iget v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v5, v2, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    .line 453
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    .end local v0    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :cond_1
    return-object v3
.end method

.method private isValidContainer(J)Z
    .locals 3
    .param p1, "container"    # J

    .prologue
    .line 484
    const-wide/16 v0, -0x64

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x66

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const-wide/16 v10, -0x66

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 460
    const/4 v8, 0x0

    .line 461
    .local v8, "homeFolderCount":I
    const/4 v0, 0x0

    .line 462
    .local v0, "appsFolderCount":I
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 464
    .local v7, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v4, v7, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 470
    .end local v7    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    if-eqz p1, :cond_3

    .line 472
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    .line 473
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFO"

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 481
    :goto_1
    return-void

    .line 470
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 475
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSFO"

    int-to-long v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 478
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFO"

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 479
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSFO"

    int-to-long v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method private updateItemArrays(Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemId"    # J
    .param p4, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 178
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 179
    :try_start_0
    invoke-static {p2, p3, p1, p4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 181
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->isValidContainer(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "FavoritesUpdater"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, p2, p3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 193
    .local v0, "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->isValidContainer(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    monitor-exit v3

    .line 212
    return-void

    .line 199
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 211
    .end local v0    # "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 202
    .restart local v0    # "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 58
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 60
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 62
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 65
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v2, Lcom/android/launcher3/common/model/FavoritesUpdater$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater$1;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 87
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    return-wide v2
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;Z)V

    .line 412
    return-void
.end method

.method public addItems(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2, "addToMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->createAppOrderModifyByItem(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 416
    .local v2, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;>;"
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 417
    .local v5, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$9;

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/model/FavoritesUpdater$9;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/List;ZLjava/util/ArrayList;[Ljava/lang/StackTraceElement;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 370
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$7;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/folder/FolderInfo;)V

    .line 394
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 115
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$3;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$5;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public deletePackageFromDatabase(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 277
    invoke-static {p1, p2}, Lcom/android/launcher3/common/model/DataLoader;->getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 278
    return-void
.end method

.method public updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 92
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$2;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 153
    .local v5, "cr":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 154
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/model/FavoritesUpdater$4;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    .line 174
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    .local v5, "screensCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 321
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 324
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 327
    .local v2, "id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_0

    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 332
    .end local v2    # "id":J
    :cond_1
    new-instance v4, Lcom/android/launcher3/common/model/FavoritesUpdater$6;

    invoke-direct {v4, p0, v6, v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater$6;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 366
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method
