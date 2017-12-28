.class Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;
.super Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
.source "HomeLoader.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeLoaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeLoader;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;-><init>(Lcom/android/launcher3/common/model/DataLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeLoader$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    return v0
.end method

.method private finalCheckForDuplicateInfo()V
    .locals 11

    .prologue
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, "duplicateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v3

    .line 250
    .local v3, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v7, "tmpItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 253
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v9, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v1, v9, v10}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 254
    .local v1, "compKey":Lcom/android/launcher3/util/ComponentKey;
    const/4 v5, 0x0

    .line 255
    .local v5, "isExist":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/ComponentKey;

    .line 256
    .local v6, "key":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 257
    const/4 v5, 0x1

    .line 261
    .end local v6    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_1
    if-eqz v5, :cond_2

    .line 262
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    .end local v1    # "compKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "isExist":Z
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 269
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v8}, Lcom/android/launcher3/home/HomeLoader;->access$1000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 270
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v8}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 271
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;

    invoke-direct {v9, p0, v0, v2}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;-><init>(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v8, v9}, Lcom/android/launcher3/home/HomeLoader;->access$1200(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 280
    .end local v0    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_4
    return-void
.end method

.method private finishBind()V
    .locals 9

    .prologue
    .line 425
    const-string v6, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishBind, task : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    if-eqz v6, :cond_0

    .line 427
    const-string v6, "HomeLoader"

    const-string v7, "finishBind pageLoaderTask is stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->loadExtraAppsAfterChangeGrid()V

    .line 433
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->loadHiddenApps()V

    .line 436
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->loadRemainApps()V

    .line 437
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->finalCheckForDuplicateInfo()V

    .line 441
    :cond_1
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$3000()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 442
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$3100()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x1

    .line 443
    .local v2, "mapIsNotEmpty":Z
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeLoader;->access$3200(Lcom/android/launcher3/home/HomeLoader;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 445
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeLoader;->access$3300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 446
    .local v0, "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/home/HomeLoader;->checkAppWidgetSingleInstanceList(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto :goto_2

    .line 442
    .end local v0    # "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v2    # "mapIsNotEmpty":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 443
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 451
    .restart local v2    # "mapIsNotEmpty":Z
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 452
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6, p0}, Lcom/android/launcher3/home/HomeLoader;->access$3400(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 456
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeLoader;->access$3500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    .line 457
    .local v1, "key":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$3600()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MutableInt;

    .line 458
    .local v3, "numTimesPinned":Landroid/util/MutableInt;
    if-eqz v3, :cond_6

    iget v7, v3, Landroid/util/MutableInt;->value:I

    if-nez v7, :cond_5

    .line 460
    :cond_6
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeLoader;->access$3700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    goto :goto_3

    .line 464
    .end local v1    # "key":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .end local v3    # "numTimesPinned":Landroid/util/MutableInt;
    :cond_7
    new-instance v6, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$2;-><init>(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;)V

    invoke-static {v6}, Lcom/android/launcher3/home/HomeLoader;->access$5000(Ljava/lang/Runnable;)V

    .line 487
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 488
    .local v4, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v4, :cond_8

    .line 489
    const-string v6, "HomeLoader"

    const-string v7, "finishBind running with no launcher"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    :cond_8
    move-object v5, p0

    .line 493
    .local v5, "task":Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v7, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;-><init>(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    invoke-static {v6, v7}, Lcom/android/launcher3/home/HomeLoader;->access$5500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private loadExtraAppsAfterChangeGrid()V
    .locals 18

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v13}, Lcom/android/launcher3/home/HomeLoader;->access$2500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const-string v13, "HomeLoader"

    const-string v14, "loadExtraAppsAfterChangeGrid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v13}, Lcom/android/launcher3/home/HomeLoader;->access$2500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 379
    .local v10, "screenId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v13}, Lcom/android/launcher3/home/HomeLoader;->access$2500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 380
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 381
    :cond_2
    const-string v13, "HomeLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadExtraAppsAfterChangeGrid - screen : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " items is empty"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v13}, Lcom/android/launcher3/home/HomeLoader;->access$2700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    .line 386
    invoke-static {v13}, Lcom/android/launcher3/home/HomeLoader;->access$2600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;

    iget-wide v0, v13, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;->originalScreenId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    .line 387
    invoke-static {v13}, Lcom/android/launcher3/home/HomeLoader;->access$2600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;

    iget v13, v13, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;->plusIndex:I

    add-int v3, v15, v13

    .line 388
    .local v3, "insertScreenIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$2800()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v13, v15, v3, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    .line 390
    const-string v13, "HomeLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadExtraAppsAfterChangeGrid add screen id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " index : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " item size  : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 391
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 390
    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v8, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 395
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 396
    .local v6, "itemId":J
    invoke-static {v6, v7}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v9

    .line 397
    .local v9, "uri":Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v12, "values":Landroid/content/ContentValues;
    const-string v15, "screen"

    iget-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    const-string v15, "cellX"

    iget v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v15, "cellY"

    iget v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v15, "spanX"

    iget v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v15, "spanY"

    iget v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 407
    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "itemId":J
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$2900()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "com.sec.android.app.launcher.settings"

    invoke-virtual {v13, v15, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 417
    .restart local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v15, v4}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_4

    .line 408
    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/os/RemoteException;
    const-string v13, "HomeLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "occurred RemoteException during loadExtraAppsAfterChangeGrid - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 410
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 409
    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 411
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 412
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v13, "HomeLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "occurred OperationApplicationException during loadExtraAppsAfterChangeGrid - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 413
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 412
    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 420
    .end local v2    # "e":Landroid/content/OperationApplicationException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v5, v15, v0}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    goto/16 :goto_1
.end method

.method private loadHiddenApps()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 324
    const-string v0, "HomeLoader"

    const-string v4, "loadHiddenApps start"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v11, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v9, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v10, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v10}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 335
    .local v10, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$2100()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 336
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$2200()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    filled-new-array {v0, v12}, [I

    move-result-object v0

    const-class v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v12, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 335
    invoke-virtual {v10, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 338
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 340
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v3, "container=-100 AND itemType=0 AND screen=-1 AND (hidden!=0)"

    .line 345
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$2300()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 370
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HiddenApps count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v7, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v7, v6}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 355
    .local v7, "cursorIconInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, v6, v7, v9, v10}, Lcom/android/launcher3/home/HomeLoader;->createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 358
    :catch_0
    move-exception v8

    .line 359
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HomeLoader"

    const-string v2, "hidden items loading interrupted"

    const/4 v4, 0x1

    invoke-static {v0, v2, v8, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 363
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 363
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0, v9, v11}, Lcom/android/launcher3/home/HomeLoader;->access$2400(Lcom/android/launcher3/home/HomeLoader;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private loadRemainApps()V
    .locals 14

    .prologue
    .line 284
    const-string v10, "HomeLoader"

    const-string v11, "loadRemainApps start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v1, "allAppsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$1300()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v9

    .line 288
    .local v9, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    .line 289
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 290
    .local v7, "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$1400()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    .line 291
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 292
    :cond_1
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There is no getActivityList apps for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 298
    .local v5, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    new-instance v12, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v1, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 301
    .end local v5    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$1500()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v4

    .line 302
    .local v4, "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {v4, v2}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processUserApps(Ljava/util/List;)V

    goto :goto_0

    .line 306
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v4    # "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    .end local v7    # "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_4
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$1600()Landroid/content/Context;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 308
    iget-object v10, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v10}, Lcom/android/launcher3/home/HomeLoader;->access$1700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 309
    .local v6, "iteminfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 310
    .local v3, "cn":Landroid/content/ComponentName;
    new-instance v11, Lcom/android/launcher3/util/ComponentKey;

    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v11, v3, v12}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 313
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v6    # "iteminfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    const-string v10, "HomeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemainApps count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 315
    .restart local v5    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RemainApps add : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$1800()Landroid/content/Context;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 319
    .end local v5    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v10, v0}, Lcom/android/launcher3/home/HomeLoader;->access$1900(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V

    .line 320
    iget-object v10, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$2000()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 321
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .prologue
    const/4 v3, 0x0

    .line 216
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    aget-object v3, p1, v3

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeLoader;->access$502(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 221
    .local v1, "needNextPageLoad":Z
    iget-boolean v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    if-nez v2, :cond_2

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$600(Lcom/android/launcher3/home/HomeLoader;)[Z

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$700(Lcom/android/launcher3/home/HomeLoader;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v3, v0, p0}, Lcom/android/launcher3/home/HomeLoader;->loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 225
    const/4 v1, 0x1

    .line 229
    :cond_1
    if-nez v1, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->finishBind()V

    .line 233
    .end local v0    # "i":I
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 222
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    check-cast p1, [Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->doInBackground([Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "loadNextPage"    # Ljava/lang/Boolean;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute, loadNextPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStopped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-direct {v1, v2}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$802(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
