.class Lcom/android/launcher3/home/HomeLoader$43;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeItemsByPosition(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;IIIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 4473
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$43;->val$screen:I

    iput p3, p0, Lcom/android/launcher3/home/HomeLoader$43;->val$cellX:I

    iput p4, p0, Lcom/android/launcher3/home/HomeLoader$43;->val$cellY:I

    iput p5, p0, Lcom/android/launcher3/home/HomeLoader$43;->val$spanX:I

    iput p6, p0, Lcom/android/launcher3/home/HomeLoader$43;->val$spanY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 4476
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$11600()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 4477
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v12}, Lcom/android/launcher3/home/HomeLoader;->access$11700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4478
    .local v9, "screenCount":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$screen:I

    if-lt v12, v9, :cond_0

    .line 4479
    const-string v12, "HomeLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeItemsByPosition : currentPageCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " removeIndex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$screen:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    monitor-exit v13

    .line 4525
    :goto_0
    return-void

    .line 4484
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v12}, Lcom/android/launcher3/home/HomeLoader;->access$11800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$screen:I

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 4485
    .local v10, "screenId":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4486
    .local v7, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4488
    .local v4, "moveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$cellX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$cellY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$cellX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$spanX:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$cellY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$43;->val$spanY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v8, v12, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4489
    .local v8, "removeRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 4490
    .local v5, "occupiedInfoRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v12}, Lcom/android/launcher3/home/HomeLoader;->access$11900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4491
    .local v6, "pageItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v6, :cond_4

    .line 4492
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4493
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v15, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v17, v0

    add-int v16, v16, v17

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v14, v15, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4495
    invoke-static {v8, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 4496
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v14, :cond_2

    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 4499
    :cond_2
    const/4 v14, -0x1

    iput v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4500
    iget-wide v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    .line 4501
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4524
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "moveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v5    # "occupiedInfoRect":Landroid/graphics/Rect;
    .end local v6    # "pageItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v7    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v8    # "removeRect":Landroid/graphics/Rect;
    .end local v9    # "screenCount":I
    .end local v10    # "screenId":J
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 4503
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v4    # "moveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v5    # "occupiedInfoRect":Landroid/graphics/Rect;
    .restart local v6    # "pageItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v7    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v8    # "removeRect":Landroid/graphics/Rect;
    .restart local v9    # "screenCount":I
    .restart local v10    # "screenId":J
    :cond_3
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4509
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 4510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v12}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 4511
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v14, Lcom/android/launcher3/home/HomeLoader$43$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$43$1;-><init>(Lcom/android/launcher3/home/HomeLoader$43;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v12, v14}, Lcom/android/launcher3/home/HomeLoader;->access$12000(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 4521
    .end local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 4522
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeLoader$43;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$12100()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v4, v15, v0}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 4524
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
