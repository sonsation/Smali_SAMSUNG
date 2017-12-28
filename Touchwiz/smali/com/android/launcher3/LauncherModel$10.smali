.class Lcom/android/launcher3/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->reloadBadges(Lcom/android/launcher3/LauncherAppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$10;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1554
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$10;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$2600(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/BadgeCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeCache;->updateBadgeCounts()Ljava/util/Map;

    move-result-object v1

    .line 1555
    .local v1, "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1556
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadBadges, badges count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-static {v1}, Lcom/android/launcher3/common/model/DataLoader;->updateBadgeCounts(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1560
    .local v0, "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1561
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$10;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/LauncherModel$10$1;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/LauncherModel$10$1;-><init>(Lcom/android/launcher3/LauncherModel$10;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1570
    .end local v0    # "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    return-void
.end method
