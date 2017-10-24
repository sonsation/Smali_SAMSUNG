.class public abstract Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;,
        Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;,
        Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachPageHandler:Landroid/os/Handler;

.field private mCurrentOrientation:I

.field private mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mIsAnimating:Z

.field private mIsBigView:Z

.field protected mIsCovered:Z

.field protected mIsMKeyboardConnected:Z

.field protected mIsReservedToTransition:Z

.field private mIsRotationEnabled:Z

.field protected mPageType:I

.field protected mRes:Landroid/content/res/Resources;

.field protected mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    .line 47
    iput v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    .line 48
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    .line 60
    iput v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    .line 74
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 75
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 91
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 103
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$3;-><init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mRes:Landroid/content/res/Resources;

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v7, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    .line 367
    .local v1, "holder":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 368
    sget-object v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attachContentsView() holder is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 372
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isAttachedToWindow()Z

    move-result v3

    .line 372
    if-eqz v3, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isKeyguardShowing()Z

    move-result v2

    .line 375
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attachContentsView() type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", needToTransition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getContentsView(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "childPage":Landroid/view/View;
    if-nez v0, :cond_2

    .line 379
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 380
    return-void

    .line 372
    .end local v0    # "childPage":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    .local v2, "needToTransition":Z
    goto :goto_0

    .line 383
    .end local v2    # "needToTransition":Z
    .restart local v0    # "childPage":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 384
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPageTopPos()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 387
    :cond_4
    if-eqz v2, :cond_6

    .line 388
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-nez v3, :cond_5

    .line 390
    new-instance v3, Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v3, v1, v4, v5}, Lcom/android/keyguard/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewGroup;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Z)V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    .line 392
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {v3, v0, p1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    iput-object v7, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    .line 403
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->initViews(Landroid/view/View;)V

    .line 365
    return-void

    .line 395
    :cond_6
    if-eqz p1, :cond_7

    .line 396
    invoke-interface {p1, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 397
    invoke-interface {p1, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 399
    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 400
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected closeWindow()V
    .locals 3

    .prologue
    .line 425
    sget-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeWindow() mIsBigView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    .line 434
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->disableBlurFlag()V

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    return-void

    .line 433
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableBlurFlag()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->disableBlurFlag(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method protected final dismissServiceBox()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->dismissServiceBox(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 358
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 350
    :pswitch_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    .line 352
    const/4 v0, 0x1

    return v0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getContentsView(I)Landroid/view/View;
.end method

.method protected abstract getHolder()Landroid/view/ViewGroup;
.end method

.method protected final getKeyguardStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    return-object v1
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method protected final getPageTopPos()I
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getPageTopPos(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPosOfHolder()I
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 255
    .local v0, "holder":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 256
    const/4 v2, 0x0

    return v2

    .line 259
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 260
    .local v1, "loc":[I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 262
    const/4 v2, 0x1

    aget v2, v1, v2

    return v2
.end method

.method protected getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1
    .param p1, "isBigView"    # Z

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract initViews(Landroid/view/View;)V
.end method

.method protected final isExpanded()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v0

    return v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->isKeyguardShowing()Z

    move-result v0

    return v0

    .line 334
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public makeTransitionData()V
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 241
    .local v0, "holder":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    new-instance v1, Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/android/keyguard/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewGroup;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Z)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    .line 239
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttachedToWindow() mIsReserved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    .line 456
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-eqz v0, :cond_1

    .line 457
    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 450
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 471
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 472
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    .line 468
    :cond_0
    return-void
.end method

.method public abstract refreshViews()V
.end method

.method public setCoverState(Z)V
    .locals 0
    .param p1, "isCovered"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsCovered:Z

    .line 146
    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsMKeyboardConnected:Z

    .line 153
    return-void
.end method

.method public setPageType(IZ)V
    .locals 3
    .param p1, "pageType"    # I
    .param p2, "isReservedToTransition"    # Z

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageType() pageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",  isReservedToTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eq v0, p1, :cond_0

    .line 210
    iput p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    .line 211
    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    .line 213
    if-nez p2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    :cond_0
    return-void
.end method

.method public final setServiceBoxController(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Z)V
    .locals 4
    .param p1, "controller"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;
    .param p2, "isBigView"    # Z

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 173
    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    .line 175
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 177
    .local v0, "holder":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 178
    sget-object v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setServiceBoxController() holder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .end local v0    # "holder":Landroid/view/ViewGroup;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public showExternalActivity()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method protected final showServiceBox()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->showServiceBox(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method public updateCMAS(Z)V
    .locals 0
    .param p1, "hasCmasNotification"    # Z

    .prologue
    .line 167
    return-void
.end method

.method public abstract updateChildViewsLook()V
.end method
