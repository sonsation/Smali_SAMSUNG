.class public Lcom/android/systemui/qs/QSQuickConnectView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSQuickConnectView$H;,
        Lcom/android/systemui/qs/QSQuickConnectView$State;
    }
.end annotation


# static fields
.field private static mState:Lcom/android/systemui/qs/QSQuickConnectView$State;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesk:Z

.field private mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

.field private mHeight:I

.field private mIsFullyExpanded:Z

.field private mRemoteViewsContainer:Landroid/view/ViewGroup;

.field private mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mStatusBarState:I

.field private mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

.field private mViewUpdateDelyed:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSQuickConnectView;Lcom/android/systemui/qs/QSQuickConnectView$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSQuickConnectView;->refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSQuickConnectView$State;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSQuickConnectView$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    const v1, 0x7f040149

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QSQuickConnectView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->QSBarItemView:Landroid/view/View;

    const v0, 0x7f1303fe

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;Lcom/android/systemui/qs/QSQuickConnectView$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iput-boolean p3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mDesk:Z

    return-void
.end method

.method private animateViews(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x1a0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSQuickConnectView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/QSQuickConnectView$1;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private clearView(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-object v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-object v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-virtual {p1, v4, v6}, Lcom/android/systemui/qs/QSQuickConnectView$State;->copyTo(Lcom/android/systemui/qs/QSQuickConnectView$State;Z)Z

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/qs/QSQuickConnectView;->updateView(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    if-eqz v4, :cond_2

    iget-object v2, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    :goto_1
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/qs/QSQuickConnectView$State;->copyTo(Lcom/android/systemui/qs/QSQuickConnectView$State;Z)Z

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/qs/QSQuickConnectView;->updateView(Landroid/view/View;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "QSQuickConnectView"

    const-string/jumbo v5, "refresh exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSQuickConnectView;->clearView(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "QSQuickConnectView"

    const-string/jumbo v5, "refresh InflateException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSQuickConnectView;->clearView(Z)V

    goto :goto_0
.end method

.method private startSizeChangeAnimation(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mStatusBarState:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/QSQuickConnectView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSQuickConnectView$2;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/QSQuickConnectView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSQuickConnectView$3;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method private updateContainerHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mDesk:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/QSQuickConnectView;->startSizeChangeAnimation(II)V

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    return-void
.end method

.method private updateView(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mDesk:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSQuickConnectView;->updateContainerHeight(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_0
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/qs/QSQuickConnectView;->animateViews(Landroid/view/View;Landroid/view/View;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSQuickConnectView;->updateContainerHeight(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public collapseIfNeeded()V
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    sget-object v2, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QSQuickConnectView state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCollapsed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-object v0, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-object v0, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mIsExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 2

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getBarVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSizeChangeAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    sget-object v2, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEmergencyModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->clearView(Z)V

    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public receiveRemoteView(Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "PKG_REPLACED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSQuickConnectView;->clearView(Z)V

    return-void

    :cond_1
    const-string/jumbo v3, "COLLAPSED"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    const-string/jumbo v3, "EXPANDED"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    const-string/jumbo v3, "QSQuickConnectView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "broadcast collapsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",  expanded ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-object v1, v3, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-object v2, v3, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    if-eqz v2, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v6, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mDesk:Z

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSQuickConnectView$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v5, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v6, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-nez v3, :cond_5

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSQuickConnectView;->clearView(Z)V

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    const-string/jumbo v3, "QSQuickConnectView"

    const-string/jumbo v4, "update while expansion"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mStatusBarState:I

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    return-void
.end method

.method public setPosition(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
