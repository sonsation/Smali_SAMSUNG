.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;
.super Ljava/lang/Object;
.source "BoostModeChangeProcessingActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->startFinishAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 270
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 275
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 264
    return-void
.end method