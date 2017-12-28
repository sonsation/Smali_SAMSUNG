.class Lcom/android/launcher3/allapps/model/AppsLoader$18;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$isGameApp:Z

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$setHidden:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$items:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$isGameApp:Z

    iput-boolean p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$setHidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x66

    .line 1359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v0, "addedAppsScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v2, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1363
    .local v4, "iconInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v8, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$isGameApp:Z

    if-eqz v8, :cond_0

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1364
    :cond_0
    iput-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1365
    const-wide/16 v8, -0x1

    iput-wide v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1366
    const/4 v8, -0x1

    iput v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1369
    :cond_1
    iget-boolean v8, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$isGameApp:Z

    if-eqz v8, :cond_3

    const/4 v3, 0x4

    .line 1370
    .local v3, "hiddenFlag":I
    :goto_1
    iget-boolean v8, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$setHidden:Z

    if-eqz v8, :cond_2

    .line 1371
    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    move-result v8

    iput v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 1374
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 1369
    .end local v3    # "hiddenFlag":I
    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    .line 1377
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1378
    .restart local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1379
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v8, "container"

    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1380
    const-string v8, "rank"

    iget v9, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    const-string v8, "screen"

    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1382
    iget-boolean v8, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$setHidden:Z

    if-eqz v8, :cond_5

    const-string v8, "hidden"

    iget v9, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1386
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v7}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2200(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2100()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v2, v9}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1388
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v7}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2300(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v5

    .line 1389
    .local v5, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v5, :cond_7

    .line 1390
    const-string v7, "AppsLoader"

    const-string v8, "addViewAndUpdateItemInfoToDb running with no AppsCallbacks"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_3
    return-void

    .line 1393
    :cond_7
    new-instance v6, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;

    invoke-direct {v6, p0, v5, v0}, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader$18;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;)V

    .line 1401
    .local v6, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v7, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2500(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V

    goto :goto_3
.end method
