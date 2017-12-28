.class Lcom/android/launcher3/Launcher$8;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 2321
    iput-object p1, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 2324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2326
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    .line 2327
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 2328
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 2360
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 2329
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2330
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    .line 2331
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 2332
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$400(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->onRefreshLiveIcon()V

    goto :goto_0

    .line 2333
    :cond_2
    const-string v5, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2334
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2335
    const-string v5, "zeroapp_package_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2336
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "zeroapp_class_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2337
    .local v1, "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v4

    .line 2338
    .local v4, "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    if-eqz v4, :cond_0

    .line 2339
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/ZeroPageController;->changeZeroPage(Landroid/content/ComponentName;)V

    .line 2340
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", className = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2343
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    :cond_3
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2344
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2345
    .local v2, "extra":Ljava/lang/String;
    const-string v5, "homekey"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2346
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    .line 2347
    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$500(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$500(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2348
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const/16 v6, 0xf

    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    const-string v7, "3"

    invoke-virtual {v5, v6, p1, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 2351
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$600(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$600(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2352
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$600(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->homeKeyPressed()V

    .line 2354
    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$700(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 2355
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$700(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/controller/FolderController;->homeKeyPressed()V

    .line 2357
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->homeKeyPressed()V

    goto/16 :goto_0
.end method
