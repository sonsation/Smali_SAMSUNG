.class Lcom/android/launcher3/home/HomeLoader$45;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->enableAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 4567
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$45;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$45;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$45;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 4570
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$12600()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4571
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$45;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4572
    .local v1, "index":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    .line 4573
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v3

    .line 4574
    .local v3, "maxHotseatCount":I
    if-ne v1, v3, :cond_1

    .line 4575
    add-int/lit8 v1, v1, -0x1

    .line 4576
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$45;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4577
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 4578
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$45;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeLoader;->access$12800(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4579
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4580
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 4581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4582
    .local v0, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4583
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$45;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$45;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v0, v7, v8}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 4584
    const-string v4, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable apps button replacedItem is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    .end local v0    # "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$45;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader$45;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v4, v6, v1}, Lcom/android/launcher3/home/HomeLoader;->access$12900(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    .line 4590
    monitor-exit v5

    .line 4591
    return-void

    .line 4590
    .end local v1    # "index":I
    .end local v3    # "maxHotseatCount":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
