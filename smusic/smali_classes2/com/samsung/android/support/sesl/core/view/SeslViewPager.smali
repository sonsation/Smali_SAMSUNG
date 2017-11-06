.class public Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.super Landroid/view/ViewGroup;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$DecorView;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SimpleOnPageChangeListener;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsMouseWheelEventSupport:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->LAYOUT_ATTRS:[I

    .line 145
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 152
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$2;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 258
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sPositionComparator:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 167
    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    .line 168
    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 169
    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 184
    const v0, -0x800001

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    .line 185
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    .line 194
    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    .line 198
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    .line 213
    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    .line 240
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    .line 241
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mNeedCalculatePageOffsets:Z

    .line 276
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 284
    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->initViewPager()V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 403
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 167
    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    .line 168
    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 169
    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 184
    const v0, -0x800001

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    .line 185
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    .line 194
    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    .line 198
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    .line 213
    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    .line 240
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    .line 241
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mNeedCalculatePageOffsets:Z

    .line 276
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 284
    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->initViewPager()V

    .line 405
    return-void
.end method

.method private calculatePageOffsets(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;ILcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .prologue
    .line 1336
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    .line 1337
    .local v1, "N":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v11

    .line 1338
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1340
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1341
    move-object/from16 v0, p3

    iget v8, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 1343
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1344
    const/4 v5, 0x0

    .line 1345
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1346
    .local v3, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1347
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1348
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1349
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1350
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1351
    add-int/lit8 v5, v5, 0x1

    .line 1352
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    goto :goto_2

    .line 1338
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1354
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1357
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1358
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1360
    :cond_2
    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 1361
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1348
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1363
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1364
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1365
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1366
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 1367
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1368
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1369
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1370
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1371
    add-int/lit8 v5, v5, -0x1

    .line 1372
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    goto :goto_5

    .line 1374
    :cond_4
    :goto_6
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1377
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1378
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1380
    :cond_5
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1381
    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 1368
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1387
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1388
    .local v4, "itemCount":I
    iget v7, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 1389
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1390
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    .line 1391
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    .line 1394
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1395
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1396
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1397
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1390
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1391
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1399
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1400
    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 1401
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    .line 1394
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1403
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1404
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1406
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1407
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1408
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1409
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1411
    :cond_c
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1412
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    .line 1414
    :cond_d
    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 1415
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1406
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1418
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mNeedCalculatePageOffsets:Z

    .line 1419
    return-void
.end method

.method private completeScroll(Z)V
    .locals 11
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2008
    iget v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    move v2, v5

    .line 2009
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2011
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 2012
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2013
    .local v5, "wasScrolling":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 2014
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2015
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v3

    .line 2016
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v4

    .line 2017
    .local v4, "oldY":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 2018
    .local v6, "x":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 2019
    .local v7, "y":I
    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_1

    .line 2020
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 2021
    if-eq v6, v3, :cond_1

    .line 2022
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    .line 2027
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "wasScrolling":Z
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 2028
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 2029
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2030
    .local v1, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget-boolean v9, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    if-eqz v9, :cond_2

    .line 2031
    const/4 v2, 0x1

    .line 2032
    iput-boolean v8, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    .line 2028
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v8

    .line 2008
    goto :goto_0

    .restart local v2    # "needPopulate":Z
    :cond_4
    move v5, v8

    .line 2012
    goto :goto_1

    .line 2035
    .restart local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 2036
    if-eqz p1, :cond_7

    .line 2037
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2042
    :cond_6
    :goto_3
    return-void

    .line 2039
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2443
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2444
    if-lez p3, :cond_1

    move v2, p1

    .line 2450
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2451
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2452
    .local v0, "firstItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2455
    .local v1, "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2458
    .end local v0    # "firstItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2444
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2446
    :cond_2
    iget v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2447
    .local v3, "truncator":F
    :goto_1
    add-float v4, p2, v3

    float-to-int v4, v4

    add-int v2, p1, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2446
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1957
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 1958
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1960
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1962
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 1963
    .local v1, "listener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    if-eqz v1, :cond_1

    .line 1964
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1961
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1968
    .end local v0    # "i":I
    .end local v1    # "listener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 1969
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1971
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1974
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 1975
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1977
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1978
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1979
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 1980
    .local v1, "listener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    if-eqz v1, :cond_1

    .line 1981
    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1978
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1985
    .end local v0    # "i":I
    .end local v1    # "listener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 1986
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1988
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1991
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 1992
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1994
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1995
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1996
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 1997
    .local v1, "listener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    if-eqz v1, :cond_1

    .line 1998
    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1995
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2002
    .end local v0    # "i":I
    .end local v1    # "listener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 2003
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 2005
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v0

    .line 2050
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2051
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformerLayerType:I

    .line 2053
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2050
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2051
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2055
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2696
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    .line 2697
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    .line 2699
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2703
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2889
    if-nez p1, :cond_0

    .line 2890
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2892
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2893
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2911
    :cond_1
    return-object p1

    .line 2896
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2897
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2898
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2899
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2901
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2902
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2903
    check-cast v0, Landroid/view/ViewGroup;

    .line 2904
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2905
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2906
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2907
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2909
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2910
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2400
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v12

    .line 2401
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2402
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2403
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2404
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2405
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2406
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2408
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2409
    .local v3, "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2410
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2412
    .local v2, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2414
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2415
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 2416
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 2417
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget v14, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    .line 2418
    add-int/lit8 v1, v1, -0x1

    .line 2420
    :cond_1
    iget v9, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 2422
    .local v9, "offset":F
    move v7, v9

    .line 2423
    .local v7, "leftBound":F
    iget v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2424
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2425
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2438
    .end local v2    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v3    # "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2401
    goto :goto_0

    .line 2431
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .restart local v3    # "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2432
    iget v5, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 2433
    move v4, v9

    .line 2434
    iget v6, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    .line 2435
    move-object v3, v2

    .line 2409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1532
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1533
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 2045
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2682
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2683
    .local v1, "pointerId":I
    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2686
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2687
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2688
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    .line 2689
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2690
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2693
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2686
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1852
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 1853
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-eqz v8, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return v7

    .line 1858
    :cond_1
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    .line 1859
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onPageScrolled(IFI)V

    .line 1860
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    if-nez v8, :cond_0

    .line 1861
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1866
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v1

    .line 1867
    .local v1, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v5

    .line 1868
    .local v5, "width":I
    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1869
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1870
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 1871
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1873
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1875
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    .line 1876
    invoke-virtual {p0, v0, v4, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onPageScrolled(IFI)V

    .line 1877
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    if-nez v7, :cond_3

    .line 1878
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1881
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2345
    const/4 v7, 0x0

    .line 2347
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2348
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2350
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2351
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2352
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v13

    .line 2354
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 2355
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2356
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2357
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2359
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2360
    .local v3, "firstItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2361
    .local v4, "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2362
    const/4 v5, 0x0

    .line 2363
    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2365
    :cond_0
    iget v14, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2366
    const/4 v10, 0x0

    .line 2367
    iget v14, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2370
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2371
    if-eqz v5, :cond_2

    .line 2372
    sub-float v9, v6, v12

    .line 2374
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2375
    const/4 v7, 0x1

    .line 2377
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2388
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2389
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 2390
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    .line 2392
    return v7

    .line 2378
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2379
    if-eqz v10, :cond_5

    .line 2380
    sub-float v9, v12, v11

    .line 2382
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2383
    const/4 v7, 0x1

    .line 2385
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1689
    if-lez p2, :cond_2

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1690
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1691
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v9

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v6, v8, p3

    .line 1694
    .local v6, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v2, v8, p4

    .line 1696
    .local v2, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v7

    .line 1697
    .local v7, "xpos":I
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v3, v8, v9

    .line 1698
    .local v3, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v3

    float-to-int v1, v8

    .line 1700
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v1, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1703
    .end local v1    # "newOffsetPixels":I
    .end local v2    # "oldWidthWithMargin":I
    .end local v3    # "pageOffset":F
    .end local v6    # "widthWithMargin":I
    .end local v7    # "xpos":I
    :cond_2
    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v0

    .line 1704
    .local v0, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v0, :cond_3

    iget v8, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1706
    .local v4, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1707
    .local v5, "scrollPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v8

    if-eq v5, v8, :cond_0

    .line 1708
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1704
    .end local v4    # "scrollOffset":F
    .end local v5    # "scrollPos":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 560
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 562
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 563
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeViewAt(I)V

    .line 564
    add-int/lit8 v1, v1, -0x1

    .line 559
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2338
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2339
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2340
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2342
    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 3

    .prologue
    .line 2328
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    .line 2329
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->endDrag()V

    .line 2331
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2332
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2333
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    or-int v0, v1, v2

    .line 2334
    .local v0, "needsInvalidate":Z
    return v0
.end method

.method private scrollToItem(IZIZZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z
    .param p5, "fromUser"    # Z

    .prologue
    const/4 v7, 0x0

    .line 693
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v0

    .line 694
    .local v0, "curInfo":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 695
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v2

    .line 697
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    .line 698
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 697
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 700
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_2

    .line 701
    invoke-virtual {p0, v1, v7, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->smoothScrollTo(III)V

    .line 702
    if-eqz p4, :cond_1

    .line 703
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageSelected(I)V

    .line 713
    :cond_1
    :goto_0
    return-void

    .line 706
    :cond_2
    if-eqz p4, :cond_3

    .line 707
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageSelected(I)V

    .line 709
    :cond_3
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    .line 710
    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 711
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2706
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2707
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollingCacheEnabled:Z

    .line 2718
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1320
    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1321
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1326
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    .line 1327
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1328
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1329
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1324
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1331
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sPositionComparator:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1333
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2935
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2936
    .local v2, "focusableCount":I
    if-nez p1, :cond_1

    .line 2973
    :cond_0
    :goto_0
    return-void

    .line 2940
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2942
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_3

    .line 2943
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2944
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2945
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 2946
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 2947
    .local v4, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v4, :cond_2

    iget v5, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2

    .line 2948
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2943
    .end local v4    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2958
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_3
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_4

    .line 2959
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2962
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2965
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 2966
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2969
    :cond_5
    if-eqz p1, :cond_0

    .line 2970
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 1046
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;-><init>()V

    .line 1047
    .local v0, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iput p1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 1048
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1049
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    .line 1050
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1051
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    :goto_0
    return-object v0

    .line 1053
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnAdapterChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 584
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method public addOnPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2983
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2984
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2985
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2986
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v2

    .line 2987
    .local v2, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2988
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2983
    .end local v2    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2992
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1506
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1507
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1509
    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1511
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    .line 1512
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1513
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1514
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1516
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->needsMeasure:Z

    .line 1517
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1529
    :goto_0
    return-void

    .line 1519
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2823
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2824
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2825
    const/4 v1, 0x0

    .line 2849
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2851
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2853
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2854
    if-ne p1, v11, :cond_8

    .line 2857
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2858
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2859
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2860
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageLeft()Z

    move-result v2

    .line 2882
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2883
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->playSoundEffect(I)V

    .line 2885
    :cond_2
    return v2

    .line 2826
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2827
    const/4 v3, 0x0

    .line 2828
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2830
    if-ne v6, p0, :cond_5

    .line 2831
    const/4 v3, 0x1

    .line 2835
    :cond_4
    if-nez v3, :cond_0

    .line 2837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2838
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2841
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2829
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2843
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2844
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2843
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2862
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .line 2864
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2867
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2868
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2869
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2870
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    .line 2872
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .line 2875
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2877
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    .line 2878
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2880
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2565
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2581
    :goto_0
    return v4

    .line 2568
    :cond_0
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    .line 2569
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    .line 2570
    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    .line 2571
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2572
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2576
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2577
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2578
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2579
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2580
    iput-wide v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2581
    goto :goto_0

    .line 2574
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2755
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2756
    check-cast v7, Landroid/view/ViewGroup;

    .line 2757
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2758
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2759
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2761
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2764
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2765
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 2766
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 2767
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 2768
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2767
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2769
    const/4 v0, 0x1

    .line 2774
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2761
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2774
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2728
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v4, :cond_1

    .line 2739
    :cond_0
    :goto_0
    return v3

    .line 2732
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v1

    .line 2733
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v0

    .line 2734
    .local v0, "scrollX":I
    if-gez p1, :cond_3

    .line 2735
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2736
    :cond_3
    if-lez p1, :cond_0

    .line 2737
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3062
    instance-of v0, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 765
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1827
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    .line 1828
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1829
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v0

    .line 1830
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v1

    .line 1831
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1832
    .local v2, "x":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1834
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1835
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 1836
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1837
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1838
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 1843
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    .line 1849
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1848
    :cond_2
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1061
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v0

    .line 1062
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    .line 1063
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 1064
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 1065
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    .line 1067
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 1068
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 1069
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1070
    .local v4, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v13, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 1072
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 1068
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 1064
    goto :goto_0

    .line 1076
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 1077
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1078
    add-int/lit8 v3, v3, -0x1

    .line 1080
    if-nez v5, :cond_3

    .line 1081
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1082
    const/4 v5, 0x1

    .line 1085
    :cond_3
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget v13, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1086
    const/4 v7, 0x1

    .line 1088
    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    iget v13, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 1090
    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1091
    const/4 v7, 0x1

    goto :goto_2

    .line 1096
    :cond_4
    iget v12, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 1097
    iget v12, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 1099
    move v8, v9

    .line 1102
    :cond_5
    iput v9, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 1103
    const/4 v7, 0x1

    goto :goto_2

    .line 1107
    .end local v4    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 1108
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1111
    :cond_7
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1113
    if-eqz v7, :cond_a

    .line 1115
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v2

    .line 1116
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 1117
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1118
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1119
    .local v6, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 1120
    const/4 v12, 0x0

    iput v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    .line 1116
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1124
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 1125
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    .line 1127
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2780
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3030
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 3031
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 3047
    :goto_0
    return v4

    .line 3035
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    .line 3036
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 3037
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3038
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3039
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v3

    .line 3040
    .local v3, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3041
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3042
    const/4 v4, 0x1

    goto :goto_0

    .line 3036
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3047
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 965
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 966
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 967
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2463
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2464
    const/4 v1, 0x0

    .line 2466
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getOverScrollMode()I

    move-result v2

    .line 2467
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    .line 2469
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2470
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2472
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2473
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v4

    .line 2475
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2476
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2477
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2478
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2479
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2481
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2483
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v4

    .line 2484
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2486
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2487
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2488
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2489
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2490
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2497
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2499
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    .line 2501
    :cond_3
    return-void

    .line 2493
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2494
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 953
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 954
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 955
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 958
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 2591
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    if-nez v0, :cond_0

    .line 2592
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2595
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v0, :cond_1

    .line 2596
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2597
    .local v11, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v0, 0x3e8

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v11, v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2598
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    .line 2599
    .local v4, "initialVelocity":I
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 2600
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v12

    .line 2601
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v9

    .line 2602
    .local v9, "scrollX":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v7

    .line 2603
    .local v7, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget v6, v7, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 2604
    .local v6, "currentPage":I
    int-to-float v0, v9

    int-to-float v3, v12

    div-float/2addr v0, v3

    iget v3, v7, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v0, v3

    iget v3, v7, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    div-float v8, v0, v3

    .line 2605
    .local v8, "pageOffset":F
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    sub-float/2addr v0, v3

    float-to-int v10, v0

    .line 2606
    .local v10, "totalDelta":I
    invoke-direct {p0, v6, v8, v4, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->determineTargetPage(IFII)I

    move-result v1

    .local v1, "nextPage":I
    move-object v0, p0

    move v3, v2

    .line 2608
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 2610
    .end local v1    # "nextPage":I
    .end local v4    # "initialVelocity":I
    .end local v6    # "currentPage":I
    .end local v7    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v8    # "pageOffset":F
    .end local v9    # "scrollX":I
    .end local v10    # "totalDelta":I
    .end local v11    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v12    # "width":I
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->endDrag()V

    .line 2612
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    .line 2613
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2792
    const/4 v0, 0x0

    .line 2793
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2794
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2812
    :cond_0
    :goto_0
    return v0

    .line 2796
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2797
    goto :goto_0

    .line 2799
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2800
    goto :goto_0

    .line 2804
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2805
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2806
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2807
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2794
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2623
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2624
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2627
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v2, :cond_1

    .line 2665
    :goto_0
    return-void

    .line 2631
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2633
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2634
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2635
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v17

    .line 2637
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2638
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2640
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2641
    .local v11, "firstItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2642
    .local v12, "lastItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget v2, v11, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_2

    .line 2643
    iget v2, v11, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2645
    :cond_2
    iget v2, v12, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2646
    iget v2, v12, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2649
    :cond_3
    cmpg-float v2, v16, v13

    if-gez v2, :cond_5

    .line 2650
    move/from16 v16, v13

    .line 2655
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2656
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 2657
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    .line 2660
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2661
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2663
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2664
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 2651
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_5
    cmpl-float v2, v16, v15

    if-lez v2, :cond_4

    .line 2652
    move/from16 v16, v15

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3052
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3067
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3057
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 840
    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 841
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 842
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget v1, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->childIndex:I

    .line 843
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 840
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1557
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1558
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1559
    :cond_0
    const/4 v1, 0x0

    .line 1563
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1561
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1563
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1547
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1548
    .local v1, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1552
    .end local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1546
    .restart local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1552
    .end local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1568
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1569
    .local v1, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget v2, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1573
    .end local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1567
    .restart local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1573
    .end local v1    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 408
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setWillNotDraw(Z)V

    .line 409
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setDescendantFocusability(I)V

    .line 410
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setFocusable(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 412
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    .line 413
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 414
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 416
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    .line 417
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMinimumVelocity:I

    .line 418
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMaximumVelocity:I

    .line 419
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 420
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 422
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFlingDistance:I

    .line 423
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCloseEnough:I

    .line 424
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDefaultGutterSize:I

    .line 426
    new-instance v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 429
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setImportantForAccessibility(I)V

    .line 432
    :cond_0
    new-instance v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 479
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2677
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1578
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    .line 1580
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 485
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 488
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 489
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2505
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2508
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v13, :cond_2

    .line 2509
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v10

    .line 2510
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v11

    .line 2512
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2513
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2514
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 2515
    .local v3, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget v8, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    .line 2516
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2517
    .local v4, "itemCount":I
    iget v2, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 2518
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget v6, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    .line 2519
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2520
    :goto_1
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    goto :goto_1

    .line 2525
    :cond_0
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2526
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2527
    .local v1, "drawAt":F
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2534
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    .line 2536
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    .line 2535
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2540
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2545
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2529
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v13, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2530
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2531
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2519
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 3128
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3142
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 3131
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3132
    .local v0, "vscroll":F
    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    .line 3133
    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3135
    :cond_1
    cmpg-float v2, v0, v3

    if-gez v2, :cond_0

    .line 3136
    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3129
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 2068
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    .line 2071
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    .line 2072
    const/4 v0, 0x0

    .line 2195
    :goto_0
    return v0

    .line 2077
    :cond_1
    if-eqz v6, :cond_3

    .line 2078
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    .line 2080
    const/4 v0, 0x1

    goto :goto_0

    .line 2082
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_3

    .line 2084
    const/4 v0, 0x0

    goto :goto_0

    .line 2088
    :cond_3
    sparse-switch v6, :sswitch_data_0

    .line 2186
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 2187
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2189
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2195
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 2099
    :sswitch_0
    iget v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    .line 2100
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    .line 2105
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 2106
    .local v9, "pointerIndex":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2107
    .local v10, "x":F
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 2108
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2109
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2110
    .local v12, "y":F
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 2113
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2114
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2116
    iput v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2117
    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    .line 2118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    .line 2119
    const/4 v0, 0x0

    goto :goto_0

    .line 2121
    :cond_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_9

    .line 2123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    .line 2124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    .line 2126
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2128
    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    .line 2129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 2138
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 2140
    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2141
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 2126
    :cond_8
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 2130
    :cond_9
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_7

    .line 2136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 2152
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    .line 2154
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    .line 2155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    .line 2157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2159
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2160
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_a

    .line 2162
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 2164
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    .line 2165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    .line 2166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 2169
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    .line 2170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 2182
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2088
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v12

    .line 1717
    .local v12, "count":I
    sub-int v27, p4, p2

    .line 1718
    .local v27, "width":I
    sub-int v14, p5, p3

    .line 1719
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v22

    .line 1720
    .local v22, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v24

    .line 1721
    .local v24, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v23

    .line 1722
    .local v23, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v21

    .line 1723
    .local v21, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v25

    .line 1725
    .local v25, "scrollX":I
    const/4 v13, 0x0

    .line 1729
    .local v13, "decorCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v12, :cond_1

    .line 1730
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1731
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1732
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1733
    .local v20, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    const/4 v9, 0x0

    .line 1734
    .local v9, "childLeft":I
    const/4 v10, 0x0

    .line 1735
    .local v10, "childTop":I
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    .line 1736
    move-object/from16 v0, v20

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    and-int/lit8 v16, v2, 0x7

    .line 1737
    .local v16, "hgrav":I
    move-object/from16 v0, v20

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1738
    .local v26, "vgrav":I
    packed-switch v16, :pswitch_data_0

    .line 1740
    :pswitch_0
    move/from16 v9, v22

    .line 1755
    :goto_1
    sparse-switch v26, :sswitch_data_0

    .line 1757
    move/from16 v10, v24

    .line 1772
    :goto_2
    add-int v9, v9, v25

    .line 1774
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v9

    .line 1775
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    .line 1773
    invoke-virtual {v8, v9, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1776
    add-int/lit8 v13, v13, 0x1

    .line 1729
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v16    # "hgrav":I
    .end local v20    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v26    # "vgrav":I
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1743
    .restart local v9    # "childLeft":I
    .restart local v10    # "childTop":I
    .restart local v16    # "hgrav":I
    .restart local v20    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .restart local v26    # "vgrav":I
    :pswitch_1
    move/from16 v9, v22

    .line 1744
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v22, v22, v2

    .line 1745
    goto :goto_1

    .line 1747
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v27, v2

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v22

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1749
    goto :goto_1

    .line 1751
    :pswitch_3
    sub-int v2, v27, v23

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v9, v2, v3

    .line 1752
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v23, v23, v2

    goto :goto_1

    .line 1760
    :sswitch_0
    move/from16 v10, v24

    .line 1761
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v24, v24, v2

    .line 1762
    goto :goto_2

    .line 1764
    :sswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v14, v2

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1766
    goto :goto_2

    .line 1768
    :sswitch_2
    sub-int v2, v14, v21

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v10, v2, v3

    .line 1769
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v21, v21, v2

    goto :goto_2

    .line 1781
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v16    # "hgrav":I
    .end local v20    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v26    # "vgrav":I
    :cond_1
    sub-int v2, v27, v22

    sub-int v11, v2, v23

    .line 1783
    .local v11, "childWidth":I
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v12, :cond_4

    .line 1784
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1785
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 1786
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1788
    .restart local v20    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v18

    .local v18, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v18, :cond_3

    .line 1789
    int-to-float v2, v11

    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v19, v0

    .line 1790
    .local v19, "loff":I
    add-int v9, v22, v19

    .line 1791
    .restart local v9    # "childLeft":I
    move/from16 v10, v24

    .line 1792
    .restart local v10    # "childTop":I
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v2, :cond_2

    .line 1795
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->needsMeasure:Z

    .line 1796
    int-to-float v2, v11

    move-object/from16 v0, v20

    iget v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 1799
    .local v28, "widthSpec":I
    sub-int v2, v14, v24

    sub-int v2, v2, v21

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1802
    .local v15, "heightSpec":I
    move/from16 v0, v28

    invoke-virtual {v8, v0, v15}, Landroid/view/View;->measure(II)V

    .line 1810
    .end local v15    # "heightSpec":I
    .end local v28    # "widthSpec":I
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v9

    .line 1811
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    .line 1809
    invoke-virtual {v8, v9, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1783
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v18    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v19    # "loff":I
    .end local v20    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1815
    .end local v8    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTopPageBounds:I

    .line 1816
    sub-int v2, v14, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mBottomPageBounds:I

    .line 1817
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDecorChildCount:I

    .line 1819
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-eqz v2, :cond_5

    .line 1820
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollToItem(IZIZZ)V

    .line 1822
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    .line 1823
    return-void

    .line 1738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1755
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1589
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    .line 1590
    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1589
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setMeasuredDimension(II)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1593
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1594
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mGutterSize:I

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1598
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1605
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v16

    .line 1606
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1607
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1608
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1609
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1610
    .local v13, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1611
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1612
    .local v11, "hgrav":I
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1613
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1614
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1615
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1616
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1618
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1619
    const/high16 v18, 0x40000000    # 2.0f

    .line 1624
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1625
    .local v19, "widthSize":I
    move v9, v4

    .line 1626
    .local v9, "heightSize":I
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1627
    const/high16 v18, 0x40000000    # 2.0f

    .line 1628
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1629
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1632
    :cond_3
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1633
    const/high16 v8, 0x40000000    # 2.0f

    .line 1634
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1635
    iget v9, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->height:I

    .line 1638
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1639
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1640
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1642
    if-eqz v7, :cond_9

    .line 1643
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1606
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1615
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1616
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1620
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1621
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1644
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1645
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1651
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mChildWidthMeasureSpec:I

    .line 1652
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mChildHeightMeasureSpec:I

    .line 1655
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    .line 1656
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    .line 1657
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v16

    .line 1661
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1662
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1663
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1668
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1669
    .restart local v13    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1670
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1672
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1661
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1676
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1899
    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDecorChildCount:I

    if-lez v12, :cond_2

    .line 1900
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v9

    .line 1901
    .local v9, "scrollX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v7

    .line 1902
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v8

    .line 1903
    .local v8, "paddingRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v11

    .line 1904
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    .line 1905
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 1906
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1907
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1908
    .local v6, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_1

    .line 1905
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1910
    :cond_1
    iget v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v12, 0x7

    .line 1911
    .local v4, "hgrav":I
    const/4 v2, 0x0

    .line 1912
    .local v2, "childLeft":I
    packed-switch v4, :pswitch_data_0

    .line 1914
    :pswitch_0
    move v2, v7

    .line 1929
    :goto_2
    add-int/2addr v2, v9

    .line 1931
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v3, v2, v12

    .line 1932
    .local v3, "childOffset":I
    if-eqz v3, :cond_0

    .line 1933
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1917
    .end local v3    # "childOffset":I
    :pswitch_1
    move v2, v7

    .line 1918
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v7, v12

    .line 1919
    goto :goto_2

    .line 1921
    :pswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1923
    goto :goto_2

    .line 1925
    :pswitch_3
    sub-int v12, v11, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v2, v12, v13

    .line 1926
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v8, v12

    goto :goto_2

    .line 1938
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childLeft":I
    .end local v4    # "hgrav":I
    .end local v5    # "i":I
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    .end local v9    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1940
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    if-eqz v12, :cond_4

    .line 1941
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v9

    .line 1942
    .restart local v9    # "scrollX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    .line 1943
    .restart local v1    # "childCount":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_4

    .line 1944
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1945
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1947
    .restart local v6    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v12, :cond_3

    .line 1943
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1948
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v12, v9

    int-to-float v12, v12

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v12, v13

    .line 1949
    .local v10, "transformPos":F
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    invoke-interface {v12, v0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1953
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v5    # "i":I
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .end local v9    # "scrollX":I
    .end local v10    # "transformPos":F
    :cond_4
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    .line 1954
    return-void

    .line 1912
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3003
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    .line 3004
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 3005
    const/4 v6, 0x0

    .line 3006
    .local v6, "index":I
    const/4 v5, 0x1

    .line 3007
    .local v5, "increment":I
    move v2, v1

    .line 3013
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 3014
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3015
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 3016
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 3017
    .local v4, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 3018
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3019
    const/4 v7, 0x1

    .line 3024
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_2
    return v7

    .line 3009
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 3010
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 3011
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 3013
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 3024
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1486
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1487
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1502
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1491
    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    .line 1492
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1494
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v1, :cond_1

    .line 1495
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1496
    iget v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1498
    :cond_1
    iget v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->position:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    .line 1499
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1500
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1475
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1476
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1477
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;
    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->position:I

    .line 1478
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v2, :cond_0

    .line 1479
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1481
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1680
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1683
    if-eq p1, p3, :cond_0

    .line 1684
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->recomputeScrollPosition(IIII)V

    .line 1686
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2200
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    if-eqz v4, :cond_0

    .line 2204
    const/4 v4, 0x1

    .line 2323
    :goto_0
    return v4

    .line 2207
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2210
    const/4 v4, 0x0

    goto :goto_0

    .line 2213
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 2215
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 2218
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4

    .line 2219
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2221
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 2224
    .local v15, "action":I
    const/16 v21, 0x0

    .line 2226
    .local v21, "needsInvalidate":Z
    and-int/lit16 v4, v15, 0xff

    packed-switch v4, :pswitch_data_0

    .line 2320
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v21, :cond_6

    .line 2321
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    .line 2323
    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    .line 2228
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2229
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    .line 2233
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionY:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    .line 2235
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    goto :goto_1

    .line 2239
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-nez v4, :cond_8

    .line 2240
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 2241
    .local v24, "pointerIndex":I
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_7

    .line 2244
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    move-result v21

    .line 2245
    goto :goto_1

    .line 2247
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2248
    .local v29, "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    sub-float v4, v29, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v30

    .line 2249
    .local v30, "xDiff":F
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v31

    .line 2250
    .local v31, "y":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    sub-float v4, v31, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v32

    .line 2254
    .local v32, "yDiff":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v30, v4

    if-lez v4, :cond_8

    cmpl-float v4, v30, v32

    if-lez v4, :cond_8

    .line 2256
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    .line 2257
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2258
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    sub-float v4, v29, v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    :goto_2
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2260
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    .line 2261
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    .line 2262
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 2265
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .line 2266
    .local v23, "parent":Landroid/view/ViewParent;
    if-eqz v23, :cond_8

    .line 2267
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2272
    .end local v23    # "parent":Landroid/view/ViewParent;
    .end local v24    # "pointerIndex":I
    .end local v29    # "x":F
    .end local v30    # "xDiff":F
    .end local v31    # "y":F
    .end local v32    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_5

    .line 2274
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 2275
    .local v16, "activePointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2276
    .restart local v29    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->performDrag(F)Z

    move-result v4

    or-int v21, v21, v4

    .line 2277
    goto/16 :goto_1

    .line 2258
    .end local v16    # "activePointerIndex":I
    .restart local v24    # "pointerIndex":I
    .restart local v30    # "xDiff":F
    .restart local v31    # "y":F
    .restart local v32    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    goto :goto_2

    .line 2280
    .end local v24    # "pointerIndex":I
    .end local v29    # "x":F
    .end local v30    # "xDiff":F
    .end local v31    # "y":F
    .end local v32    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_5

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    .line 2282
    .local v27, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMaximumVelocity:I

    int-to-float v6, v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2283
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    float-to-int v8, v4

    .line 2284
    .local v8, "initialVelocity":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 2285
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v28

    .line 2286
    .local v28, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v25

    .line 2287
    .local v25, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v18

    .line 2288
    .local v18, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v4, v4

    move/from16 v0, v28

    int-to-float v6, v0

    div-float v20, v4, v6

    .line 2289
    .local v20, "marginOffset":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    .line 2290
    .local v17, "currentPage":I
    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v6, v0

    div-float/2addr v4, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v4, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float v6, v6, v20

    div-float v22, v4, v6

    .line 2292
    .local v22, "pageOffset":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 2293
    .restart local v16    # "activePointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2294
    .restart local v29    # "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    sub-float v4, v29, v4

    float-to-int v0, v4

    move/from16 v26, v0

    .line 2295
    .local v26, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->determineTargetPage(IFII)I

    move-result v5

    .line 2297
    .local v5, "nextPage":I
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 2299
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    move-result v21

    .line 2300
    goto/16 :goto_1

    .line 2303
    .end local v5    # "nextPage":I
    .end local v8    # "initialVelocity":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "currentPage":I
    .end local v18    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v20    # "marginOffset":F
    .end local v22    # "pageOffset":F
    .end local v25    # "scrollX":I
    .end local v26    # "totalDelta":I
    .end local v27    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v28    # "width":I
    .end local v29    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_5

    .line 2304
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollToItem(IZIZZ)V

    .line 2305
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    move-result v21

    goto/16 :goto_1

    .line 2309
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 2310
    .local v19, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    .line 2311
    .restart local v29    # "x":F
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    .line 2312
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2316
    .end local v19    # "index":I
    .end local v29    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2317
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2915
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2916
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    .line 2919
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2923
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2924
    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    .line 2927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate(I)V

    .line 1131
    return-void
.end method

.method populate(I)V
    .locals 29
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 1134
    const/16 v20, 0x0

    .line 1135
    .local v20, "oldCurInfo":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v20

    .line 1137
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    .line 1140
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sortChildDrawingOrder()V

    .line 1317
    :cond_1
    :goto_0
    return-void

    .line 1149
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sortChildDrawingOrder()V

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    move/from16 v21, v0

    .line 1165
    .local v21, "pageLimit":I
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    sub-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1166
    .local v25, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v4

    .line 1167
    .local v4, "N":I
    add-int/lit8 v26, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1169
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v4, v0, :cond_4

    .line 1172
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 1176
    .local v23, "resName":Ljava/lang/String;
    :goto_1
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "The application\'s SeslPagerAdapter changed the adapter\'s contents without calling SeslPagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Pager id: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Pager class: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1180
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Problematic adapter: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v28, v0

    .line 1181
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1173
    .end local v23    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1174
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 1185
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v23    # "resName":Ljava/lang/String;
    :cond_4
    const/4 v8, -0x1

    .line 1186
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 1187
    .local v9, "curItem":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_5

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 1189
    .local v16, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 1190
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v9, v16

    .line 1195
    .end local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_5
    if-nez v9, :cond_6

    if-lez v4, :cond_6

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v9

    .line 1202
    :cond_6
    if-eqz v9, :cond_9

    .line 1203
    const/4 v13, 0x0

    .line 1204
    .local v13, "extraWidthLeft":F
    add-int/lit8 v17, v8, -0x1

    .line 1205
    .local v17, "itemIndex":I
    if-ltz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    .line 1206
    .restart local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v7

    .line 1207
    .local v7, "clientWidth":I
    if-gtz v7, :cond_d

    const/16 v18, 0x0

    .line 1209
    .local v18, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    .local v22, "pos":I
    :goto_5
    if-ltz v22, :cond_7

    .line 1210
    cmpl-float v26, v13, v18

    if-ltz v26, :cond_11

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 1211
    if-nez v16, :cond_e

    .line 1237
    :cond_7
    iget v14, v9, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    .line 1238
    .local v14, "extraWidthRight":F
    add-int/lit8 v17, v8, 0x1

    .line 1239
    const/high16 v26, 0x40000000    # 2.0f

    cmpg-float v26, v14, v26

    if-gez v26, :cond_8

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    .line 1241
    :goto_6
    if-gtz v7, :cond_16

    const/16 v24, 0x0

    .line 1243
    .local v24, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, 0x1

    :goto_8
    move/from16 v0, v22

    if-ge v0, v4, :cond_8

    .line 1244
    cmpl-float v26, v14, v24

    if-ltz v26, :cond_1a

    move/from16 v0, v22

    if-le v0, v12, :cond_1a

    .line 1245
    if-nez v16, :cond_17

    .line 1270
    .end local v24    # "rightWidthNeeded":F
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v8, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->calculatePageOffsets(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;ILcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;)V

    .line 1280
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v17    # "itemIndex":I
    .end local v18    # "leftWidthNeeded":F
    .end local v22    # "pos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v28, v0

    if-eqz v9, :cond_1e

    iget-object v0, v9, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    :goto_9
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v6

    .line 1287
    .local v6, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a
    if-ge v15, v6, :cond_1f

    .line 1288
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1289
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 1290
    .local v19, "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    move-object/from16 v0, v19

    iput v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->childIndex:I

    .line 1291
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_a

    .line 1293
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    .line 1294
    .restart local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    if-eqz v16, :cond_a

    .line 1295
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    .line 1296
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->position:I

    .line 1287
    .end local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 1187
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v19    # "lp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    .restart local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1205
    .end local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v17    # "itemIndex":I
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1207
    .restart local v7    # "clientWidth":I
    .restart local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_d
    const/high16 v26, 0x40000000    # 2.0f

    iget v0, v9, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    add-float v18, v26, v27

    goto/16 :goto_4

    .line 1214
    .restart local v18    # "leftWidthNeeded":F
    .restart local v22    # "pos":I
    :cond_e
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1221
    add-int/lit8 v17, v17, -0x1

    .line 1222
    add-int/lit8 v8, v8, -0x1

    .line 1223
    if-ltz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    .line 1209
    :cond_f
    :goto_b
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_5

    .line 1223
    :cond_10
    const/16 v16, 0x0

    goto :goto_b

    .line 1225
    :cond_11
    if-eqz v16, :cond_13

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 1226
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v13, v13, v26

    .line 1227
    add-int/lit8 v17, v17, -0x1

    .line 1228
    if-ltz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    :goto_c
    goto :goto_b

    :cond_12
    const/16 v16, 0x0

    goto :goto_c

    .line 1230
    :cond_13
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    .line 1231
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v13, v13, v26

    .line 1232
    add-int/lit8 v8, v8, 0x1

    .line 1233
    if-ltz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    :goto_d
    goto :goto_b

    :cond_14
    const/16 v16, 0x0

    goto :goto_d

    .line 1240
    .restart local v14    # "extraWidthRight":F
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1242
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v7

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    add-float v24, v26, v27

    goto/16 :goto_7

    .line 1248
    .restart local v24    # "rightWidthNeeded":F
    :cond_17
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    move/from16 v26, v0

    if-nez v26, :cond_18

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    .line 1243
    :cond_18
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 1255
    :cond_19
    const/16 v16, 0x0

    goto :goto_e

    .line 1257
    :cond_1a
    if-eqz v16, :cond_1c

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1258
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v14, v14, v26

    .line 1259
    add-int/lit8 v17, v17, 0x1

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    :goto_f
    goto :goto_e

    :cond_1b
    const/16 v16, 0x0

    goto :goto_f

    .line 1262
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    .line 1263
    add-int/lit8 v17, v17, 0x1

    .line 1264
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v14, v14, v26

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    :goto_10
    goto :goto_e

    :cond_1d
    const/16 v16, 0x0

    goto :goto_10

    .line 1280
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .end local v17    # "itemIndex":I
    .end local v18    # "leftWidthNeeded":F
    .end local v22    # "pos":I
    .end local v24    # "rightWidthNeeded":F
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 1300
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sortChildDrawingOrder()V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->hasFocus()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1304
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    .line 1305
    .restart local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :goto_11
    if-eqz v16, :cond_20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 1306
    :cond_20
    const/4 v15, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    .line 1307
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1308
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    .line 1309
    if-eqz v16, :cond_21

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    .line 1310
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1306
    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 1304
    .end local v5    # "child":Landroid/view/View;
    .end local v16    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_22
    const/16 v16, 0x0

    goto :goto_11
.end method

.method public removeOnAdapterChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 597
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 600
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 756
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1539
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1543
    :goto_0
    return-void

    .line 1541
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V
    .locals 11
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 510
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v5, :cond_1

    .line 511
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 512
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 514
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    .line 515
    .local v2, "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget v6, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget-object v7, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "ii":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 518
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeNonDecorViews()V

    .line 520
    iput v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    .line 521
    invoke-virtual {p0, v8, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    .line 524
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    .line 525
    .local v3, "oldAdapter":Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    .line 526
    iput v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    .line 528
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v5, :cond_3

    .line 529
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    if-nez v5, :cond_2

    .line 530
    new-instance v5, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    .line 532
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 533
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 534
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    .line 535
    .local v4, "wasFirstLayout":Z
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    .line 536
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    .line 537
    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_4

    .line 538
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 539
    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v8, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 540
    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    .line 541
    iput-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 542
    iput-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 551
    .end local v4    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 552
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 553
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;

    invoke-interface {v5, p0, v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 543
    .end local v0    # "count":I
    .end local v1    # "i":I
    .restart local v4    # "wasFirstLayout":Z
    :cond_4
    if-nez v4, :cond_5

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    goto :goto_1

    .line 546
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    goto :goto_1

    .line 556
    .end local v4    # "wasFirstLayout":Z
    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 823
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 825
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    :goto_1
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 833
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 614
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 615
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 616
    return-void

    :cond_0
    move v0, v1

    .line 615
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 625
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 626
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 627
    return-void
.end method

.method public setCurrentItemFromUser(IZ)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v3, 0x0

    .line 639
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    .line 640
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v4, v3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 641
    return-void

    :cond_0
    move v2, v3

    .line 640
    goto :goto_0
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v4, 0x0

    .line 648
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    .line 649
    return-void
.end method

.method setCurrentItemInternal(IZZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I
    .param p5, "fromUser"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 653
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 689
    :goto_0
    return-void

    .line 656
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 661
    :cond_2
    if-gez p1, :cond_5

    .line 662
    const/4 p1, 0x0

    .line 666
    :cond_3
    :goto_1
    iget v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    .line 667
    .local v7, "pageLimit":I
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/2addr v0, v7

    if-gt p1, v0, :cond_4

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    sub-int/2addr v0, v7

    if-ge p1, v0, :cond_6

    .line 671
    :cond_4
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 672
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    .line 671
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 663
    .end local v6    # "i":I
    .end local v7    # "pageLimit":I
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 664
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 675
    .restart local v7    # "pageLimit":I
    :cond_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-eq v0, p1, :cond_8

    .line 677
    .local v4, "dispatchSelected":Z
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_9

    .line 680
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    .line 681
    if-eqz v4, :cond_7

    .line 682
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageSelected(I)V

    .line 684
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    goto :goto_0

    .end local v4    # "dispatchSelected":Z
    :cond_8
    move v4, v1

    .line 675
    goto :goto_3

    .line 686
    .restart local v4    # "dispatchSelected":Z
    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate(I)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v5, p5

    .line 687
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollToItem(IZIZZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 854
    .local v0, "oldListener":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 855
    return-object v0
.end method

.method public setMouseWheelEventSupport(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 3146
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    .line 3147
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 887
    if-ge p1, v3, :cond_0

    .line 888
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 p1, 0x1

    .line 892
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 893
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    .line 894
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    .line 896
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 726
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    .line 727
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 907
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    .line 908
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    .line 910
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v1

    .line 911
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->recomputeScrollPosition(IIII)V

    .line 913
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    .line 914
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 932
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->refreshDrawableState()V

    .line 933
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setWillNotDraw(Z)V

    .line 934
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->invalidate()V

    .line 935
    return-void

    .line 933
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;)V
    .locals 1
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    .prologue
    .line 787
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setPageTransformer(ZLcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;I)V

    .line 788
    return-void
.end method

.method public setPageTransformer(ZLcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;I)V
    .locals 5
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;
    .param p3, "pageLayerType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 809
    if-eqz p2, :cond_2

    move v0, v2

    .line 810
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 811
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    .line 812
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 813
    if-eqz v0, :cond_5

    .line 814
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    .line 815
    iput p3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformerLayerType:I

    .line 819
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    .line 820
    :cond_1
    return-void

    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_2
    move v0, v3

    .line 809
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 810
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 817
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 492
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 496
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    .line 497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    if-eqz v0, :cond_1

    .line 499
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->enableLayers(Z)V

    .line 501
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnScrollStateChanged(I)V

    goto :goto_0

    .line 499
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->smoothScrollTo(III)V

    .line 978
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 990
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 1043
    :goto_0
    return-void

    .line 995
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v12, 0x1

    .line 996
    .local v12, "wasScrolling":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 1001
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1003
    .local v2, "sx":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1004
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 1008
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v3

    .line 1009
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 1010
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 1011
    .local v5, "dy":I
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 1012
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    .line 1014
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    goto :goto_0

    .line 995
    .end local v2    # "sx":I
    .end local v3    # "sy":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v12    # "wasScrolling":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1001
    .restart local v12    # "wasScrolling":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    goto :goto_2

    .line 1006
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v2

    .restart local v2    # "sx":I
    goto :goto_3

    .line 1018
    .restart local v3    # "sy":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 1019
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v13

    .line 1022
    .local v13, "width":I
    div-int/lit8 v9, v13, 0x2

    .line 1023
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    int-to-float v15, v13

    div-float/2addr v14, v15

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1024
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v14, v9

    .line 1025
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v7, v1, v14

    .line 1028
    .local v7, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1029
    if-lez p3, :cond_5

    .line 1030
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v14, v0

    div-float v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 1036
    .local v6, "duration":I
    :goto_4
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1040
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1032
    .end local v6    # "duration":I
    :cond_5
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v14

    mul-float v11, v1, v14

    .line 1033
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    div-float v10, v1, v14

    .line 1034
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v1, v14

    float-to-int v6, v1

    .restart local v6    # "duration":I
    goto :goto_4
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 948
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
