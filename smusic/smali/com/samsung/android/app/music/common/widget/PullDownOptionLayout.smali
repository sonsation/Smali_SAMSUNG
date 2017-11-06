.class public Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;
.super Landroid/widget/FrameLayout;
.source "PullDownOptionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;,
        Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISPLAY_OPTION_DURATION:I = 0x7d0

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_OPTION_DISPLAYED:I = 0x2

.field public static final STATE_PULLING_DOWN:I = 0x1

.field public static final STATE_PULLING_UP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullDownOptionView"

.field private static final TAUTNESS:D = 0.3


# instance fields
.field private mOptionViewHeight:I

.field private mPullUpHandler:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;

.field private mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartY:F

.field private mState:I

.field private mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private canPullDown()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "canPullDown":Z
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    .line 231
    .local v2, "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, "firstView":Landroid/view/View;
    const/4 v5, -0x1

    .line 233
    .local v5, "topMargin":I
    const/4 v4, -0x1

    .line 234
    .local v4, "top":I
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 238
    sub-int v8, v4, v5

    if-nez v8, :cond_3

    move v0, v6

    .line 241
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 242
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 243
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    move v0, v6

    .line 251
    :cond_2
    :goto_1
    return v0

    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move v0, v7

    .line 238
    goto :goto_0

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    move v0, v7

    .line 243
    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mTouchSlop:I

    .line 82
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mScroller:Landroid/widget/Scroller;

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;-><init>(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mPullUpHandler:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d073a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mOptionViewHeight:I

    .line 85
    return-void
.end method

.method private pullDown(I)Z
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->getScrollY()I

    move-result v0

    .line 259
    .local v0, "scrollY":I
    iget v2, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mOptionViewHeight:I

    neg-int v2, v2

    if-ne v0, v2, :cond_0

    .line 266
    :goto_0
    return v1

    .line 262
    :cond_0
    add-int v2, v0, p1

    iget v3, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mOptionViewHeight:I

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    .line 263
    iget v2, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mOptionViewHeight:I

    neg-int v2, v2

    sub-int p1, v2, v0

    .line 265
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->scrollBy(II)V

    .line 266
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->scrollTo(II)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->postInvalidate()V

    .line 226
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 90
    const v0, 0x7f120204

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PullToOptionRelativeLayout must have view with R.id.recycler_view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 104
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v4, :cond_1

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->getScrollY()I

    move-result v2

    .line 113
    .local v2, "scrollY":I
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mOptionViewHeight:I

    neg-int v4, v4

    if-ne v2, v4, :cond_2

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 116
    :cond_2
    if-ltz v2, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 148
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 126
    :pswitch_1
    iput v5, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStartY:F

    .line 129
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    if-eqz v3, :cond_3

    .line 130
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;->onStateChanged(I)V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 135
    .local v0, "curY":F
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStartY:F

    sub-float v1, v0, v4

    .line 141
    .local v1, "dY":F
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->canPullDown()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    .line 142
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    .line 153
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v4, :cond_1

    .line 154
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 216
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 216
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 159
    :pswitch_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStartY:F

    .line 162
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    iget v5, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;->onStateChanged(I)V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 171
    .local v0, "curY":F
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStartY:F

    sub-float v1, v0, v4

    .line 179
    .local v1, "dY":F
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->canPullDown()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->getScrollY()I

    move-result v4

    if-gtz v4, :cond_3

    .line 180
    neg-float v4, v1

    float-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->pullDown(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    if-eq v4, v3, :cond_3

    .line 182
    iput v3, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 183
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    if-eqz v4, :cond_3

    .line 184
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    iget v5, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;->onStateChanged(I)V

    .line 196
    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStartY:F

    goto :goto_0

    .line 188
    :cond_4
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    if-eq v4, v8, :cond_3

    .line 189
    iput v8, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    .line 190
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    if-eqz v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    iget v5, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;->onStateChanged(I)V

    goto :goto_1

    .line 199
    .end local v0    # "curY":F
    .end local v1    # "dY":F
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->getScrollY()I

    move-result v2

    .line 206
    .local v2, "scrollY":I
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    if-ne v4, v3, :cond_5

    .line 207
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mPullUpHandler:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->pullUp(J)V

    goto :goto_0

    .line 209
    :cond_5
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mState:I

    if-ne v4, v8, :cond_2

    .line 210
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mPullUpHandler:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->pullUp(J)V

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mStateChangedListener:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$OnStateChangedListener;

    .line 280
    return-void
.end method

.method public showOptionView()V
    .locals 4

    .prologue
    .line 270
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mOptionViewHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->pullDown(I)Z

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->mPullUpHandler:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout$PullUpHandler;->pullUp(J)V

    .line 272
    return-void
.end method
