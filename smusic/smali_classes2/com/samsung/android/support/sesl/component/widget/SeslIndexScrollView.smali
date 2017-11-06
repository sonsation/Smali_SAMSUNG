.class public Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "SeslIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;,
        Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;,
        Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;,
        Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$GravityIndexBar;
    }
.end annotation


# static fields
.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field private static final OUT_OF_BOUNDARY:F = -9999.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:Ljava/lang/String;

.field private mHasOverlayChild:Z

.field private mIndexBarGravity:I

.field mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

.field private mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

.field private mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

.field private final mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

.field private mIsSimpleIndexScroll:Z

.field private mNumberOfLanguages:I

.field private mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

.field private mRegisteredDataSetObserver:Z

.field private mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

.field private mTouchY:F

.field private mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexBarGravity:I

    .line 91
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    .line 96
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 101
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    .line 119
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mTouchY:F

    .line 128
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    .line 129
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexBarGravity:I

    .line 91
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    .line 96
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    .line 119
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mTouchY:F

    .line 141
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    .line 142
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexBarGravity:I

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->init()V

    .line 144
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mTouchY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexBarGravity:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mNumberOfLanguages:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    return-object v0
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    .prologue
    .line 542
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getCurrentLang()I

    move-result v0

    .line 543
    .local v0, "currentLang":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    .line 544
    .local v2, "indexerAlphabetSize":I
    const/4 v1, 0x0

    .line 546
    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_0
    if-ge v1, v2, :cond_1

    .line 553
    .end local v1    # "index":I
    :goto_1
    return v1

    .restart local v1    # "index":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 566
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-nez v4, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v3

    .line 570
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getCurrentLang()I

    move-result v0

    .line 571
    .local v0, "currentLang":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    .line 572
    .local v2, "indexerAlphabetSize":I
    add-int/lit8 v1, v2, -0x1

    .line 574
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 575
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 578
    :cond_2
    if-lez v1, :cond_0

    .line 579
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    goto :goto_0
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getCachingValue(I)I

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 430
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 431
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 436
    .local v3, "x":F
    const/4 v2, -0x1

    .line 437
    .local v2, "position":I
    packed-switch v0, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return v5

    .line 441
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 442
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 445
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_2

    .line 446
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    .line 452
    :goto_1
    if-eq v2, v9, :cond_1

    .line 453
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    .line 532
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->invalidate()V

    .line 533
    const/4 v5, 0x1

    goto :goto_0

    .line 450
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v2

    goto :goto_1

    .line 460
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "calculatedIndexStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_3

    .line 468
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v1

    .line 476
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 477
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    .line 478
    if-eq v2, v9, :cond_1

    .line 479
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    goto :goto_2

    .line 485
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 486
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 487
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_4

    .line 488
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    .line 492
    :goto_3
    if-eq v2, v9, :cond_1

    .line 493
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    goto :goto_2

    .line 490
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v2

    goto :goto_3

    .line 496
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 499
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 500
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 501
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    .line 502
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->drawEffect(F)V

    .line 503
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mTouchY:F

    .line 507
    :cond_6
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v5, :cond_7

    .line 508
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v2

    .line 512
    :goto_4
    if-eq v2, v9, :cond_1

    .line 513
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_2

    .line 510
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v2

    goto :goto_4

    .line 520
    .end local v1    # "calculatedIndexStr":Ljava/lang/String;
    :pswitch_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 521
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 522
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->close()V

    .line 523
    const v5, -0x39e3c400    # -9999.0f

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mTouchY:F

    .line 525
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    if-eqz v5, :cond_1

    .line 526
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v5, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    goto/16 :goto_2

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    .line 161
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexBarGravity:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    .line 162
    return-void
.end method

.method private notifyIndexChange(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;->onIndexChanged(I)V

    .line 606
    :cond_0
    return-void
.end method

.method private setSimpleIndexWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setDimensions(II)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->invalidate()V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 298
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 303
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 305
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 278
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 280
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 285
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 287
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1848
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1858
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 595
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 596
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 397
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEffectBackgroundColor(I)V
    .locals 3
    .param p1, "effectBackgroundColor"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 353
    return-void
.end method

.method public setEffectTextColor(I)V
    .locals 1
    .param p1, "effectTextColor"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    .line 344
    return-void
.end method

.method public setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bgDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 315
    return-void
.end method

.method public setIndexBarGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexBarGravity:I

    .line 361
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setPosition(I)V

    .line 362
    return-void
.end method

.method public setIndexBarPressedTextColor(I)V
    .locals 2
    .param p1, "pressedTextColor"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;I)I

    .line 335
    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$302(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;I)I

    .line 324
    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    .line 387
    :cond_0
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;)V
    .locals 4
    .param p1, "indexer"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    .prologue
    const/4 v2, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeslIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 203
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 206
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 207
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexerObserver:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 211
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->cacheIndexInfo()V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 218
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexer:Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mNumberOfLanguages:I

    .line 221
    :cond_3
    return-void
.end method

.method public setOnIndexBarEventListener(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;)V
    .locals 0
    .param p1, "iOnIndexBarEventListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    .line 614
    return-void
.end method

.method public setSimpleIndexScroll([Ljava/lang/String;I)V
    .locals 3
    .param p1, "indexBarChar"    # [Ljava/lang/String;
    .param p2, "width"    # I

    .prologue
    const/4 v2, -0x1

    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeslIndexView.setSimpleIndexScroll(indexBarChar) "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    .line 242
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_simple_index_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->setSimpleIndexWidth(I)V

    .line 244
    if-eqz p2, :cond_1

    .line 245
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->setSimpleIndexWidth(I)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->mIndexScroll:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 254
    return-void
.end method
