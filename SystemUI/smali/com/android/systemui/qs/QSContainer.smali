.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSContainer$1;,
        Lcom/android/systemui/qs/QSContainer$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mDeskMode:Z

.field protected mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mHeightOverride:I

.field private mKeyguardShowing:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSBarController:Lcom/android/systemui/qs/QSBarController;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSPanelOverlappedHeight:F

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsExpanded:Z

.field protected mQsExpansion:F

.field private mQsPanelTopMargin:F

.field private mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSContainer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 429
    new-instance v0, Lcom/android/systemui/qs/QSContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$1;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 428
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 446
    new-instance v0, Lcom/android/systemui/qs/QSContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$2;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 445
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private updateBottom()V
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->calculateContainerHeight()I

    move-result v0

    .line 257
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSDetail;->setBottom(I)V

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetail;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 263
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSDetail;->setClipBounds(Landroid/graphics/Rect;)V

    .line 255
    return-void
.end method

.method private updateQsState()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 288
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 291
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_5

    .line 292
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_6

    :cond_2
    move v1, v3

    .line 291
    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpanded(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-void

    .line 285
    :cond_3
    const/4 v0, 0x1

    .local v0, "expandVisually":Z
    goto :goto_0

    .end local v0    # "expandVisually":Z
    :cond_4
    move v1, v2

    .line 290
    goto :goto_1

    :cond_5
    move v1, v4

    .line 291
    goto :goto_2

    :cond_6
    move v1, v4

    .line 292
    goto :goto_2

    :cond_7
    move v3, v2

    .line 294
    goto :goto_3
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 399
    iput-wide p1, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 393
    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 4

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 414
    const-wide/16 v2, 0x0

    .line 413
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 415
    const-wide/16 v2, 0x168

    .line 413
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 416
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 417
    new-instance v1, Lcom/android/systemui/qs/QSContainer$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainer$4;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 404
    return-void
.end method

.method protected calculateContainerHeight()I
    .locals 5

    .prologue
    .line 268
    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 269
    .local v2, "heightOverride":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 272
    .local v0, "barItemHeight":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getHeight()I

    move-result v3

    :goto_2
    int-to-float v1, v3

    .line 280
    .local v1, "containerHeight":F
    float-to-int v3, v1

    return v3

    .line 268
    .end local v0    # "barItemHeight":I
    .end local v1    # "containerHeight":F
    .end local v2    # "heightOverride":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v2

    .restart local v2    # "heightOverride":I
    goto :goto_0

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v0

    .restart local v0    # "barItemHeight":I
    goto :goto_1

    .line 273
    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v4

    add-int/2addr v4, v0

    sub-int v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 274
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v4

    .line 273
    add-int/2addr v3, v4

    add-int/2addr v3, v0

    goto :goto_2
.end method

.method public getBarController()Lcom/android/systemui/qs/QSBarController;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v0

    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    .line 232
    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    return-object v0
.end method

.method public getOverlappedHeight()I
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarController;->hasBarOnHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanelOverlappedHeight:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public getSecCustomizer()Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object v0
.end method

.method public isCustomizing()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected moveFocus(Landroid/view/View;I)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/high16 v4, 0x40000

    const/high16 v3, 0x60000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 473
    :sswitch_0
    if-nez p2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setDescendantFocusability(I)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setFocusable(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanel;->setFocusable(Z)V

    goto :goto_0

    .line 482
    :sswitch_1
    if-nez p2, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFocusable(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_0

    .line 487
    :cond_1
    if-ne p2, v2, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setDescendantFocusability(I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setFocusable(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFocusable(Z)V

    goto :goto_0

    .line 471
    :sswitch_data_0
    .sparse-switch
        0x7f13012a -> :sswitch_0
        0x7f130310 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyCustomizeChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 244
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    .line 240
    return-void

    :cond_0
    move v0, v2

    .line 244
    goto :goto_0

    :cond_1
    move v1, v2

    .line 245
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const v8, 0x7f0d03bf

    const v7, 0x7f0d01f8

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 100
    const v3, 0x7f130310

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 101
    const v3, 0x7f130311

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSDetail;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 102
    const v3, 0x7f13012a

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 103
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;)V

    .line 105
    const v3, 0x7f130313

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 106
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setQsContainer(Lcom/android/systemui/qs/QSContainer;)V

    .line 113
    const-string/jumbo v3, "desk"

    const v4, 0x7f130054

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSContainer;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    .local v0, "desk":Z
    new-instance v3, Lcom/android/systemui/qs/QSBarController;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/systemui/qs/QSBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;Z)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    .line 116
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSBarController;->hasBarOnHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    .line 118
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 119
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 118
    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanelOverlappedHeight:F

    .line 120
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 122
    if-nez v0, :cond_0

    .line 123
    new-instance v4, Lcom/android/systemui/qs/QSAnimator;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const v5, 0x7f13033c

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/qs/QSContainer;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 124
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSAnimator;->setBarController(Lcom/android/systemui/qs/QSBarController;)V

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "qs_detail_content_primary_text_color"

    .line 128
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    const v6, 0x7f0b012e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 127
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 129
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "qs_detail_content_secondary_text_color"

    .line 130
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0131

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 129
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 137
    new-instance v1, Lcom/android/systemui/qs/QSContainer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainer$3;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 144
    .local v1, "listener":Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSPanel;->setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V

    .line 98
    return-void

    .line 117
    .end local v1    # "listener":Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 198
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 178
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 177
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v1

    .line 180
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v3

    .line 180
    add-int v0, v2, v3

    .line 182
    .local v0, "height":I
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 183
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 182
    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 190
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 189
    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->measure(II)V

    .line 173
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    .line 149
    :cond_0
    return-void
.end method

.method public setDeskMode(Z)V
    .locals 1
    .param p1, "desk"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mDeskMode:Z

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setDeskMode(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setDeskMode(Z)V

    .line 460
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    .line 335
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 329
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setClickable(Z)V

    .line 324
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "heightOverride"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 217
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarController;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 154
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 339
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 354
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    .line 356
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 352
    return-void

    :cond_1
    move v0, v1

    .line 356
    goto :goto_0
.end method

.method public setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    .line 497
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0
    .param p1, "stackScrollerOverscrolling"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 346
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 168
    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 9
    .param p1, "expansion"    # F
    .param p2, "headerTranslation"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 365
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    .line 366
    sub-float v3, p1, v5

    .line 367
    .local v3, "translationScaleY":F
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v4, :cond_1

    .line 368
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float p2, v3, v4

    .end local p2    # "headerTranslation":F
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSContainer;->setTranslationY(F)V

    .line 372
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v4, :cond_5

    :cond_2
    move v4, p1

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpansion(F)V

    .line 374
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    sub-float v1, v4, v7

    .line 375
    .local v1, "overlappedSpace":F
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_6

    move v4, v6

    :goto_1
    int-to-float v0, v4

    .line 376
    .local v0, "barHeight":F
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v1

    mul-float v2, v3, v4

    .line 377
    .local v2, "transY":F
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    .line 378
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v4, :cond_7

    :cond_3
    move v4, p1

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSBarController;->setPosition(F)V

    .line 380
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v4, p1, v5

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 382
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 386
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v7

    iget-boolean v8, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v8, :cond_9

    :goto_4
    sub-int v6, v7, v6

    int-to-float v6, v6

    sub-float/2addr v5, p1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 388
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 389
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 390
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    .line 363
    return-void

    .end local v0    # "barHeight":F
    .end local v1    # "overlappedSpace":F
    .end local v2    # "transY":F
    :cond_5
    move v4, v5

    .line 372
    goto :goto_0

    .line 375
    .restart local v1    # "overlappedSpace":F
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v4

    goto :goto_1

    .restart local v0    # "barHeight":F
    .restart local v2    # "transY":F
    :cond_7
    move v4, v5

    .line 378
    goto :goto_2

    :cond_8
    move v4, v6

    .line 380
    goto :goto_3

    .line 386
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v6

    goto :goto_4
.end method
