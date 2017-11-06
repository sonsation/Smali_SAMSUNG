.class public Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "LoopViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUTO_SCROLL_DURATION:I = 0x5

.field private static final DEFAULT_BOUNDARY_CASHING:Z = false

.field private static final DEFAULT_BOUNDARY_LOOPING:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "LoopViewPager"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

.field private mAutoScrollDuration:I

.field private mBoundaryCaching:Z

.field private mBoundaryLooping:Z

.field private mHandler:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

.field private mIsAutoScrollEnabled:Z

.field private mNeedScroll:Z

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryCaching:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryLooping:Z

    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->init(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryCaching:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryLooping:Z

    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->init(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$201(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .prologue
    .line 18
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->scrollPage(I)V

    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoopViewPager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setEnableAutoScroll(Z)V

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mHandler:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    .line 140
    return-void
.end method

.method private scrollPage(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getCurrentItem()I

    move-result v1

    add-int v0, v1, p1

    .line 195
    .local v0, "nextPage":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(I)V

    .line 196
    return-void
.end method

.method private sendAutoScrollMessage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mIsAutoScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mHandler:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mHandler:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAutoScrollDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_0
    return-void
.end method

.method private setEnableAutoScroll(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 143
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mIsAutoScrollEnabled:Z

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mIsAutoScrollEnabled:Z

    if-eqz v0, :cond_1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAutoScrollDuration:I

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAutoScrollDuration:I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAutoScrollDuration:I

    goto :goto_0
.end method

.method public static toRealPosition(II)I
    .locals 0
    .param p0, "position"    # I
    .param p1, "count"    # I

    .prologue
    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    if-gez p0, :cond_0

    .line 43
    add-int/2addr p0, p1

    .line 47
    :goto_0
    return p0

    .line 45
    :cond_0
    rem-int/2addr p0, p1

    goto :goto_0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 277
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->stopAutoScroll()V

    .line 283
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 279
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->startAutoScroll()V

    goto :goto_0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toRealPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoScrollEnabled()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mIsAutoScrollEnabled:Z

    return v0
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryCaching:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->setBoundaryCaching(Z)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryLooping:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->setBoundaryLooping(Z)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 77
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 78
    return-void
.end method

.method public setAutoScrollDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAutoScrollDuration:I

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setEnableAutoScroll(Z)V

    .line 156
    return-void
.end method

.method public setBoundaryCaching(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryCaching:Z

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->setBoundaryCaching(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public setBoundaryLooping(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mBoundaryLooping:Z

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->setBoundaryLooping(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 97
    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toInnerPosition(I)I

    move-result v0

    .line 90
    .local v0, "realItem":I
    invoke-super {p0, v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 91
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 101
    return-void
.end method

.method public startAutoScroll()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->startAutoScroll(Z)V

    .line 160
    return-void
.end method

.method startAutoScroll(Z)V
    .locals 3
    .param p1, "bySelf"    # Z

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoScroll, bySelf - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scroll - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->sendAutoScrollMessage()V

    .line 174
    :cond_1
    return-void
.end method

.method public stopAutoScroll()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mHandler:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->removeMessages(I)V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAutoScroll. scroll - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->mNeedScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method
