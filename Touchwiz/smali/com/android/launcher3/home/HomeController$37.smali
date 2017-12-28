.class Lcom/android/launcher3/home/HomeController$37;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->createFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$folder:Lcom/android/launcher3/folder/view/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 4299
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$37;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4302
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$2600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4303
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setTargetView(Landroid/view/View;)V

    .line 4304
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$2700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Hotseat;->setTargetView(Landroid/view/View;)V

    .line 4305
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$2700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 4306
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 4307
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$37;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4308
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$2800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 4309
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$2900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4310
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$37;->val$folder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge(Z)V

    .line 4313
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    return-void
.end method
