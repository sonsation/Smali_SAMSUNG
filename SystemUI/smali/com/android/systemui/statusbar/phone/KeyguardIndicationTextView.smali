.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Lcom/android/keyguard/KeyguardTextView;
.source "KeyguardIndicationTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# static fields
.field private static final mSineInOut33:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mPlayingShortcutAffordance:Z

.field private mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x3e2e147b    # 0.17f

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    .line 73
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    .line 161
    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->setAlpha(F)V

    .line 159
    :cond_0
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 166
    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->setAlpha(F)V

    .line 165
    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .locals 0
    .param p1, "playing"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    .line 170
    return-void
.end method

.method public startHideHelpTextAnimation()V
    .locals 7

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public startShortcutHintAnimation()V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    .line 137
    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 136
    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public startShowHelpTextAnimation()V
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->cancelAnimator()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlphaByAffordance(F)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x96

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isShowAnimation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mHelpTextAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
