.class Lcom/android/launcher3/allapps/model/AppsLoader$23;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->removeUnRestoredItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$23;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1661
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$23;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$23;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3400(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1663
    .local v2, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1664
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1665
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This item is not restored. remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$23;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3500(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 1669
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$23;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2300(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v1

    .line 1670
    .local v1, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v1, :cond_1

    .line 1671
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$23;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$23$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader$23$1;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader$23;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3700(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V

    .line 1682
    .end local v1    # "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    :cond_1
    return-void
.end method
