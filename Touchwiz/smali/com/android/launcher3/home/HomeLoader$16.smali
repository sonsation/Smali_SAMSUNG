.class Lcom/android/launcher3/home/HomeLoader$16;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$allowDuplicateShortcut:Z

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;ZLandroid/content/Context;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$workspaceApps:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$allowDuplicateShortcut:Z

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 2048
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2049
    .local v10, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2050
    .local v15, "updatedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .local v4, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7700()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v3

    .line 2056
    .local v3, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7800()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 2057
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2058
    .local v13, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v13, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    .line 2060
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->val$allowDuplicateShortcut:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v2, v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$7900(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2061
    const-string v2, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shortcut exist in workspace : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2110
    .end local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2067
    .restart local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :try_start_1
    instance-of v2, v13, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_1

    instance-of v2, v13, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    instance-of v2, v13, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v2, :cond_6

    .line 2069
    :cond_1
    move-object v14, v13

    .line 2074
    .local v14, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v8, -0x1

    iget-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    cmp-long v2, v8, v22

    if-nez v2, :cond_2

    .line 2075
    const-wide/16 v8, -0x64

    iput-wide v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2078
    :cond_2
    const-wide/16 v8, -0x1

    iget-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    cmp-long v2, v8, v22

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-eq v2, v5, :cond_3

    const/4 v2, -0x1

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ne v2, v5, :cond_4

    .line 2081
    :cond_3
    const/4 v7, 0x1

    .line 2082
    .local v7, "setLastPosition":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget v5, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget-wide v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeLoader;->access$8000(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZJ)Landroid/util/Pair;

    move-result-object v12

    .line 2084
    .local v12, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2085
    .local v16, "screenId":J
    iget-object v11, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [I

    .line 2087
    .local v11, "coordinates":[I
    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2088
    const/4 v2, 0x0

    aget v2, v11, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2089
    const/4 v2, 0x1

    aget v2, v11, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2092
    .end local v7    # "setLastPosition":Z
    .end local v11    # "coordinates":[I
    .end local v12    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v16    # "screenId":J
    :cond_4
    iget-wide v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v22, -0x1

    cmp-long v2, v8, v22

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$8100()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v2

    iget-wide v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 2094
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$8200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 2095
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    :goto_1
    const-string v2, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAndBindAddedWorkspaceItems item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " screenId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cellX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cellY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2071
    .end local v14    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected info type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2098
    .restart local v14    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2099
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "screen"

    iget-wide v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2100
    const-string v2, "cellX"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2101
    const-string v2, "cellY"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$8300(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2103
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2110
    .end local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v14    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_8
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$8400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$16;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2115
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$16$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/home/HomeLoader$16$1;-><init>(Lcom/android/launcher3/home/HomeLoader$16;Ljava/util/ArrayList;)V

    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$8500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 2126
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$16$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/launcher3/home/HomeLoader$16$2;-><init>(Lcom/android/launcher3/home/HomeLoader$16;Ljava/util/ArrayList;)V

    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$8600(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 2136
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2, v10}, Lcom/android/launcher3/home/HomeLoader;->bindItems(Ljava/util/ArrayList;)V

    .line 2137
    return-void
.end method
