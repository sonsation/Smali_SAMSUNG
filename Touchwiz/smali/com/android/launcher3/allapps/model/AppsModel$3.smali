.class Lcom/android/launcher3/allapps/model/AppsModel$3;
.super Ljava/lang/Object;
.source "AppsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsModel;->updateSessionDisplayInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsModel;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsModel$3;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsModel$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 399
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSessionDisplayInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/model/AppsModel$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v4, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    .line 402
    .local v5, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsModel$3;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v3

    .line 403
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 404
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_0

    move-object v1, v2

    .line 405
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 406
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 407
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 408
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 410
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$700()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 412
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->shouldUseLowResIcon()Z

    move-result v9

    .line 410
    invoke-virtual {v7, v1, v8, v5, v9}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 418
    :cond_1
    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_2
    const/16 v7, 0x24

    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 416
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$800()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_1

    .line 422
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsModel$3;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v6, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->access$500(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/ArrayList;)V

    .line 423
    return-void
.end method
