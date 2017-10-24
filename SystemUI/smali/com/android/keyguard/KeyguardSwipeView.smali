.class public Lcom/android/keyguard/KeyguardSwipeView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSwipeView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mIndicationTextView:Landroid/widget/TextView;

.field private mSwipeDoorsillDetector:Lcom/android/keyguard/swipe/SwipeDoorsillDetector;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/keyguard/swipe/SwipeDoorsillDetector;

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSwipeView;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSwipeView;->setFocusableInTouchMode(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSwipeView;->requestFocus()Z

    .line 53
    const-string/jumbo v0, "accessibility"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    new-instance v0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeView;->mContext:Landroid/content/Context;

    .line 55
    new-instance v2, Lcom/android/keyguard/KeyguardSwipeView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSwipeView$1;-><init>(Lcom/android/keyguard/KeyguardSwipeView;)V

    .line 54
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;-><init>(Landroid/content/Context;Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/keyguard/swipe/SwipeDoorsillDetector;

    .line 46
    return-void
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 86
    sget v0, Lcom/android/keyguard/R$id;->keyguard_indication_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSwipeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mIndicationTextView:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mIndicationTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->kg_swipe_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mIndicationTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->kg_voice_assistant_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mIndicationTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->kg_swipe_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "KeyguardSwipeView"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 107
    const-string/jumbo v0, "KeyguardSwipeView"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/keyguard/swipe/SwipeDoorsillDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->setIntercept(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/keyguard/swipe/SwipeDoorsillDetector;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeDoorsillDetector:Lcom/android/keyguard/swipe/SwipeDoorsillDetector;

    invoke-virtual {v0}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->reset()V

    .line 96
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 76
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 81
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 125
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 121
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSwipeView;->setAlpha(F)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSwipeView;->setTranslationY(F)V

    .line 136
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSwipeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 133
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSwipeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
