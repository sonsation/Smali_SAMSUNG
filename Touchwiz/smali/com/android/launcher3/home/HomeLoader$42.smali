.class Lcom/android/launcher3/home/HomeLoader$42;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 4429
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 4432
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$10400()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4433
    :try_start_0
    iget v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$index:I

    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeLoader;->access$10500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 4434
    const-string v3, "HomeLoader"

    const-string v7, "removeScreen : remove page should be less than total workspace screen count."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :goto_0
    monitor-exit v6

    .line 4467
    :goto_1
    return-void

    .line 4437
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$10600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v3

    iget v7, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$index:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 4438
    .local v4, "screenId":J
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$10700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    .line 4439
    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$10800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 4440
    .local v1, "isEmptyPage":Z
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4441
    .local v2, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v1, :cond_4

    .line 4442
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4443
    const-string v3, "HomeLoader"

    const-string v7, "removeScreen : it can\'t remove a page with items on HomeOnlyMode"

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    monitor-exit v6

    goto :goto_1

    .line 4466
    .end local v1    # "isEmptyPage":Z
    .end local v2    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v4    # "screenId":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4439
    .restart local v4    # "screenId":J
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 4448
    .restart local v1    # "isEmptyPage":Z
    .restart local v2    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$10900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4449
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$11000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 4452
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$11100(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v3

    iget v7, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$index:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4453
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$11400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$11200()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v8}, Lcom/android/launcher3/home/HomeLoader;->access$11300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4455
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 4456
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v7, Lcom/android/launcher3/home/HomeLoader$42$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/launcher3/home/HomeLoader$42$1;-><init>(Lcom/android/launcher3/home/HomeLoader$42;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v3, v7}, Lcom/android/launcher3/home/HomeLoader;->access$11500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
