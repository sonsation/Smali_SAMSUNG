.class Lcom/android/launcher3/home/HomeLoader$44;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeItem(Landroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$isWidget:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 4530
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$44;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$44;->val$cn:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$44;->val$isWidget:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4533
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$12200()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4534
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$44;->val$cn:Landroid/content/ComponentName;

    .line 4535
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeLoader$44;->val$isWidget:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v6, v7, v4}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 4537
    .local v2, "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4538
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4539
    .local v1, "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$44;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6, v1}, Lcom/android/launcher3/home/HomeLoader;->access$12300(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4540
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4541
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$44;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v6}, Lcom/android/launcher3/home/HomeLoader;->access$12400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 4556
    .end local v1    # "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4535
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4545
    .restart local v2    # "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4546
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$44;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 4547
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$44;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v6, Lcom/android/launcher3/home/HomeLoader$44$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/launcher3/home/HomeLoader$44$1;-><init>(Lcom/android/launcher3/home/HomeLoader$44;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v4, v6}, Lcom/android/launcher3/home/HomeLoader;->access$12500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 4556
    .end local v0    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4557
    return-void
.end method
