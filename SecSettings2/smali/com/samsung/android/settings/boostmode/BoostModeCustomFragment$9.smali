.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pbm_game_launcher"

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isGameLauncherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setGameLancherEnabled(Landroid/content/Context;Z)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-set1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)Z

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getGameEulaIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 483
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get0(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V

    .line 475
    :goto_0
    return-void

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;)Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    .line 495
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->finish()V

    goto :goto_0
.end method
