.class Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;
.super Ljava/lang/Object;
.source "SecIntervalSeekbarPreference.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 379
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get5(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get1(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get1(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 388
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 373
    return-void
.end method
