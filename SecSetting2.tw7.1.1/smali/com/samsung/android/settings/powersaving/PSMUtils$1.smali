.class final Lcom/samsung/android/settings/powersaving/PSMUtils$1;
.super Ljava/lang/Object;
.source "PSMUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PSMUtils;->showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

.field final synthetic val$fromWhere:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mPowerSavingMode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "val$bsm"    # Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .param p2, "val$mContext"    # Landroid/content/Context;
    .param p3, "val$mPowerSavingMode"    # I
    .param p4, "val$fromWhere"    # Ljava/lang/String;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mPowerSavingMode:I

    iput-object p4, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$fromWhere:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    .line 788
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$bsm:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;IZ)V

    .line 793
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->dismissPerformanceBoostNotification(Landroid/content/Context;)V

    .line 794
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mPowerSavingMode:I

    if-ne v0, v2, :cond_1

    .line 795
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mPowerSavingMode:I

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$fromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mPowerSavingMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    .line 798
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$1;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 787
    return-void
.end method
