.class Lcom/android/launcher3/allapps/model/AppsLoader$20;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->updateHideItems(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$isGameApp:Z

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$items:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$isGameApp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1434
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v6, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v5, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v4, "itemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v3, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1440
    .local v8, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v10, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$isGameApp:Z

    if-eqz v10, :cond_0

    const/4 v7, 0x4

    .line 1441
    .local v7, "hiddenFlag":I
    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    move-result v10

    iput v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 1443
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1444
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "hidden"

    iget v11, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 1447
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2700()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1448
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2800()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v11

    iget-wide v12, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    const-wide/16 v10, -0x66

    iput-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1452
    const-string v10, "container"

    iget-wide v12, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1456
    :goto_2
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1440
    .end local v7    # "hiddenFlag":I
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v7, 0x2

    goto :goto_1

    .line 1449
    .restart local v7    # "hiddenFlag":I
    .restart local v9    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1454
    :cond_1
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1458
    .end local v7    # "hiddenFlag":I
    .end local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3000(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2900()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v6, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1460
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2300(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1461
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_3

    .line 1462
    const-string v1, "AppsLoader"

    const-string v10, "bindItemsSync running with no AppsCallbacks"

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :goto_3
    return-void

    .line 1465
    :cond_3
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader$20;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1475
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v1, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2500(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V

    goto :goto_3
.end method
