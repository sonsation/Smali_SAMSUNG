.class Lcom/android/launcher3/allapps/controller/AppsController$21;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->createFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/lang/Runnable;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2219
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2220
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 2221
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2222
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2223
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2224
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$21;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge(Z)V

    .line 2226
    :cond_0
    return-void
.end method
