.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;
.super Ljava/lang/Object;
.source "ScreenOffMusicExtraController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;
    }
.end annotation


# instance fields
.field private mClose:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->close_button_view_stub:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21
    .local v0, "stub":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 22
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "stub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 23
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->close_button:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    .line 24
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$1;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public onScreenOffAnimationEnd(Z)V
    .locals 0
    .param p1, "isTimeOut"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    const/16 v3, 0x12c

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 59
    invoke-static {v2, v6, v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 60
    .local v1, "closeScaleAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    const/16 v3, 0xc8

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 61
    invoke-static {v2, v6, v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 63
    .local v0, "closeAlphaAnimator":Landroid/animation/Animator;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v7

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 65
    .end local v0    # "closeAlphaAnimator":Landroid/animation/Animator;
    .end local v1    # "closeScaleAnimator":Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 36
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    const/16 v3, 0x12c

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 38
    invoke-static {v2, v5, v6, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 39
    .local v1, "closeScaleAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->mClose:Landroid/view/View;

    const/16 v3, 0xc8

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 40
    invoke-static {v2, v5, v6, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 42
    .local v0, "closeAlphaAnimator":Landroid/animation/Animator;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 44
    .end local v0    # "closeAlphaAnimator":Landroid/animation/Animator;
    .end local v1    # "closeScaleAnimator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method
