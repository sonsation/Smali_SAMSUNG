.class public Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;
.super Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
.source "BoostBrightnessSolutionManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prevMode"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;-><init>(Landroid/content/Context;I)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getPreviousMaxBrightnessValue(Landroid/content/Context;I)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prevMode"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "pbm_maximum_brightness"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
