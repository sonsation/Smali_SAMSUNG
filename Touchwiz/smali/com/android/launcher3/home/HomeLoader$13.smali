.class Lcom/android/launcher3/home/HomeLoader$13;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->updateSessionDisplayInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$13;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$13;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1918
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1919
    .local v5, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    .line 1920
    .local v6, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$13;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeLoader;->access$6800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1921
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    move-object v1, v2

    .line 1922
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1923
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1924
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$13;->val$packageName:Ljava/lang/String;

    .line 1925
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1926
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1928
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7000()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v8

    iget-object v9, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 1930
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->shouldUseLowResIcon()Z

    move-result v10

    .line 1928
    invoke-virtual {v8, v1, v9, v6, v10}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1937
    :cond_1
    :goto_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1931
    :cond_2
    const/16 v8, 0x24

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1935
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7100()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_1

    .line 1942
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1944
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$13;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    .line 1945
    .local v3, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v4, Lcom/android/launcher3/home/HomeLoader$13$1;

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/android/launcher3/home/HomeLoader$13$1;-><init>(Lcom/android/launcher3/home/HomeLoader$13;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1953
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7200()Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1955
    .end local v3    # "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_4
    return-void
.end method
