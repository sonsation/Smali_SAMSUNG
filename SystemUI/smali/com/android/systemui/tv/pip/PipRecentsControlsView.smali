.class public Lcom/android/systemui/tv/pip/PipRecentsControlsView;
.super Landroid/widget/FrameLayout;
.source "PipRecentsControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;
    }
.end annotation


# instance fields
.field private mFocusGainAnimator:Landroid/animation/Animator;

.field private mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 71
    return-void
.end method

.method private static cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 149
    :cond_0
    return-void
.end method

.method private loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animatorResId"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 97
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 98
    return-object v0
.end method

.method private static startAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "previousAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 144
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    check-cast v0, Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;->onBackPressed()V

    .line 170
    :cond_0
    return v2

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 172
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->getPipRecentsOverlayManager()Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->clearFocus()V

    .line 176
    :cond_2
    return v2

    .line 179
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    const v1, 0x7f13043c

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tv/pip/PipControlsView;

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    .line 80
    const v1, 0x7f130035

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    .line 83
    const v2, 0x7f0500d3

    .line 82
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    .line 85
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 87
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    .line 88
    const v4, 0x7f0500d4

    .line 87
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v2, v5

    .line 89
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    const v4, 0x7f0500d5

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->loadAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 86
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->getRecentsFocusedPipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    .local v0, "pipBounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v1, v5, v5}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->setPadding(IIII)V

    .line 76
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->setTranslationY(F)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipControlsView;->setScaleX(F)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipControlsView;->setScaleY(F)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlsView;->reset()V

    .line 130
    return-void
.end method

.method public setListener(Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/tv/pip/PipControlsView;->setListener(Lcom/android/systemui/tv/pip/PipControlsView$Listener;)V

    .line 158
    return-void
.end method

.method public startFocusGainAnimation()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mScrim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipControlsView;->getFocusedButton()Lcom/android/systemui/tv/pip/PipControlButtonView;

    move-result-object v0

    .line 110
    .local v0, "focus":Lcom/android/systemui/tv/pip/PipControlButtonView;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->startFocusGainAnimation()V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v1, v2}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 104
    return-void
.end method

.method public startFocusLossAnimation()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mPipControlsView:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipControlsView;->getFocusedButton()Lcom/android/systemui/tv/pip/PipControlButtonView;

    move-result-object v0

    .line 121
    .local v0, "focus":Lcom/android/systemui/tv/pip/PipControlButtonView;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->startFocusLossAnimation()V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->mFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v1, v2}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 119
    return-void
.end method
