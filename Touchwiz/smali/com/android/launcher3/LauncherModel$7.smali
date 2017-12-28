.class Lcom/android/launcher3/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$addItems:Ljava/util/ArrayList;

.field final synthetic val$hideItems:Ljava/util/ArrayList;

.field final synthetic val$isGameApp:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$7;->val$hideItems:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherModel$7;->val$isGameApp:Z

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$7;->val$addItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->val$hideItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$7;->val$hideItems:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$7;->val$isGameApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->hideApps(Ljava/util/ArrayList;Z)V

    .line 1421
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$7;->val$hideItems:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$7;->val$isGameApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->hideApps(Ljava/util/ArrayList;Z)V

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->val$addItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1428
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1429
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1430
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$7;->val$addItems:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$7;->val$isGameApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->showApps(Ljava/util/ArrayList;Z)V

    .line 1435
    :cond_2
    :goto_0
    return-void

    .line 1432
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$7;->val$addItems:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$7;->val$isGameApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->showApps(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method
