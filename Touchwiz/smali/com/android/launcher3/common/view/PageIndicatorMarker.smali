.class public Lcom/android/launcher3/common/view/PageIndicatorMarker;
.super Landroid/widget/FrameLayout;
.source "PageIndicatorMarker.java"


# static fields
.field private static final MARKER_FADE_DURATION:I = 0xaf

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mActiveMarker:Landroid/widget/ImageView;

.field private mEnableMarkerAnim:Z

.field private mInactiveMarker:Landroid/widget/ImageView;

.field private mIsActive:Z

.field private type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mIsActive:Z

    .line 38
    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    iput-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mEnableMarkerAnim:Z

    .line 53
    return-void
.end method


# virtual methods
.method activate(Z)V
    .locals 6
    .param p1, "immediate"    # Z

    .prologue
    const-wide/16 v4, 0xaf

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mEnableMarkerAnim:Z

    if-nez v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mIsActive:Z

    .line 90
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 119
    return-void
.end method

.method public disableMarkerAnimation()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mEnableMarkerAnim:Z

    .line 123
    return-void
.end method

.method public enableMarkerAnimation()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mEnableMarkerAnim:Z

    .line 127
    return-void
.end method

.method public getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    return-object v0
.end method

.method inactivate(Z)V
    .locals 6
    .param p1, "immediate"    # Z

    .prologue
    const-wide/16 v4, 0xaf

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 93
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mEnableMarkerAnim:Z

    if-nez v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 109
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mIsActive:Z

    .line 110
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mIsActive:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f1100e8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f1100e7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    .line 59
    return-void
.end method

.method setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V
    .locals 1
    .param p1, "activeResId"    # Landroid/graphics/drawable/Drawable;
    .param p2, "inactiveResId"    # Landroid/graphics/drawable/Drawable;
    .param p3, "type"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iput-object p3, p0, Lcom/android/launcher3/common/view/PageIndicatorMarker;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    .line 65
    return-void
.end method
