.class Lcom/android/launcher3/allapps/controller/AppsAdapter$8;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;->addItemToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

.field final synthetic val$folder:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 320
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v10, v10, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v11, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-interface {v10, v12, v13}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v10, :cond_4

    .line 321
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 322
    .local v3, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v11, v11, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 323
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v11, v11, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v11, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 329
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v9, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v4, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 333
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :try_start_0
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 334
    .local v6, "oldParentId":J
    const-wide/16 v12, -0x66

    cmp-long v10, v6, v12

    if-eqz v10, :cond_2

    .line 335
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v10, v10, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v10, v6, v7}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v5

    .line 336
    .local v5, "oldParent":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_2

    .line 337
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v10, v0

    invoke-virtual {v10, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 338
    const-string v10, "AppsAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove from oldParent : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v5    # "oldParent":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "oldParentId":J
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v10, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v12, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 346
    const-wide/16 v12, -0x1

    iput-wide v12, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 347
    iput v14, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 348
    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 350
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v8, "update":Landroid/content/ContentValues;
    const-string v10, "container"

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v12, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    const-string v10, "screen"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v10, "rank"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 341
    .end local v8    # "update":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "AppsAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error while removing item from oldParent : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v11, v11, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10, v11, v9, v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 359
    .end local v4    # "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v9    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4
    const-string v10, "addItemToFolder item : "

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$items:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 360
    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 361
    return-void
.end method
