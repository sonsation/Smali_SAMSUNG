.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 493
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 496
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    new-array v2, v3, [Ljava/lang/Object;

    .line 497
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    const v4, 0x7f0b0cba

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 496
    const v3, 0x7f0b0cad

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 492
    :goto_0
    return-void

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 503
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pbm_game_launcher"

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isRemoveGameLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isGameLauncherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setGameLancherEnabled(Landroid/content/Context;Z)V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-set1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Z)Z

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getGameEulaIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 510
    return-void

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 514
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get12(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;)V

    .line 521
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 516
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    goto :goto_1
.end method
