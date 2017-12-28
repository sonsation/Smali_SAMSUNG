.class Lcom/android/launcher3/home/HomeLoader$15;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2008
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2010
    const/4 v0, 0x1

    .line 2011
    .local v0, "isExist":Z
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7300()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2012
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7400()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2013
    const-string v2, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindItemAfterChangePosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v0, 0x0

    .line 2016
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2017
    if-eqz v0, :cond_1

    .line 2018
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$7500(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2019
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v6, -0x1

    iput v6, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    int-to-long v4, v6

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 2020
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7600()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 2024
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    return-void

    .line 2016
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
