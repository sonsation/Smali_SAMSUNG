.class Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;
.super Ljava/lang/Object;
.source "SeslFastScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->TAP_TIMEOUT:J

    .line 1569
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->LEFT:Landroid/util/Property;

    .line 1585
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->TOP:Landroid/util/Property;

    .line 1601
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->RIGHT:Landroid/util/Property;

    .line 1617
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V
    .locals 6
    .param p1, "listView"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 119
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewResId:[I

    .line 172
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mCurrentSection:I

    .line 175
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollbarPosition:I

    .line 227
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    .line 236
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 246
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 254
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 255
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldItemCount:I

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldChildCount:I

    .line 258
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 259
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScaledTouchSlop:I

    .line 260
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollBarStyle:I

    .line 262
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollCompleted:Z

    .line 263
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    .line 265
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mMatchDragPosition:Z

    .line 267
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 268
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 270
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 271
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    .line 272
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 274
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 275
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 277
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroller_touch_target_min_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mMinimumTouchTarget:I

    .line 280
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setStyle(I)V

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 283
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 284
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 285
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 286
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 287
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 288
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getSectionsFromIndexer()V

    .line 291
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldChildCount:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateLongList(II)V

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setScrollbarPosition(I)V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->postAutoHide()V

    .line 294
    return-void

    .line 265
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1562
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1633
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1634
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1635
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1636
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1637
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1555
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 591
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 592
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 593
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1336
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    .line 1338
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    if-eqz v0, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getSectionsFromIndexer()V

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1345
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 1347
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->cancelFling()V

    .line 1348
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1312
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1314
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1315
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1316
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1324
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    .line 1325
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 533
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 535
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 536
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 538
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 539
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 543
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 545
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1219
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1220
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getSectionsFromIndexer()V

    .line 1223
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_4

    .line 1225
    :cond_2
    const/4 v12, 0x0

    .line 1304
    :cond_3
    :goto_0
    return v12

    .line 1228
    :cond_4
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    const/4 v5, 0x1

    .line 1230
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1231
    :cond_5
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1233
    const/4 v12, 0x0

    goto :goto_0

    .line 1228
    .end local v5    # "hasSections":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1235
    .restart local v5    # "hasSections":Z
    :cond_7
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, p3, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    goto :goto_0

    .line 1240
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1241
    if-gez p1, :cond_9

    .line 1242
    const/4 v12, 0x0

    goto :goto_0

    .line 1244
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1249
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1250
    :cond_a
    const/4 v6, 0x0

    .line 1256
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1257
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1258
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1260
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1262
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1263
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1267
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    .line 1274
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    .line 1275
    const/4 v10, 0x0

    .line 1281
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1286
    .local v12, "result":F
    if-lez p1, :cond_3

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1288
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v2

    .line 1292
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1293
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1294
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1299
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_3

    if-lez v8, :cond_3

    .line 1300
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v12, v12, v17

    goto/16 :goto_0

    .line 1252
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v6    # "incrementalPos":F
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    .restart local v6    # "incrementalPos":F
    goto/16 :goto_2

    .line 1265
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    .line 1269
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    .line 1277
    :cond_e
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v10, v17, v18

    .restart local v10    # "posWithinSection":F
    goto/16 :goto_5

    .line 1296
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1297
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v17

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .restart local v4    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1202
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 1206
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbOffset:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbRange:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 943
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 944
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 945
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    .line 946
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 949
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 950
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 951
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 952
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    .line 957
    :goto_0
    return-void

    .line 954
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 955
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1536
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1537
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1539
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1540
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1541
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1542
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1539
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1544
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1548
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1493
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isPointInsideY(F)Z

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

.method private isPointInsideX(F)Z
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1497
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    .line 1498
    .local v2, "offset":F
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v1, v7, v2

    .line 1499
    .local v1, "left":F
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float v3, v7, v2

    .line 1502
    .local v3, "right":F
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mMinimumTouchTarget:I

    int-to-float v7, v7

    sub-float v8, v3, v1

    sub-float v4, v7, v8

    .line 1503
    .local v4, "targetSizeDiff":F
    cmpl-float v7, v4, v0

    if-lez v7, :cond_0

    move v0, v4

    .line 1505
    .local v0, "adjust":F
    :cond_0
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    if-eqz v7, :cond_3

    .line 1506
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v0

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_2

    .line 1508
    :cond_1
    :goto_0
    return v5

    :cond_2
    move v5, v6

    .line 1506
    goto :goto_0

    .line 1508
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    cmpg-float v7, p1, v7

    if-lez v7, :cond_1

    move v5, v6

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 7
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1513
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 1514
    .local v2, "offset":F
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v4, v5, v2

    .line 1515
    .local v4, "top":F
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float v1, v5, v2

    .line 1518
    .local v1, "bottom":F
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mMinimumTouchTarget:I

    int-to-float v5, v5

    sub-float v6, v1, v4

    sub-float v3, v5, v6

    .line 1519
    .local v3, "targetSizeDiff":F
    cmpl-float v5, v3, v0

    if-lez v5, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v3, v5

    .line 1521
    .local v0, "adjust":F
    :cond_0
    sub-float v5, v4, v0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 748
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 749
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 750
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 757
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 758
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 759
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 760
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 761
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 762
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 763
    .local v12, "widthMeasureSpec":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-static {v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 764
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 768
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 769
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 770
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 777
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 778
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 779
    .local v3, "left":I
    add-int v6, v3, v11

    .line 780
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 781
    return-void

    .line 772
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 773
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 774
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v13, v8

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 682
    if-nez p2, :cond_0

    .line 683
    const/4 v9, 0x0

    .line 684
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 685
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 692
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 693
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 694
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 695
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 696
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 697
    .local v15, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 698
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 701
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 702
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 703
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 704
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 705
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 706
    .local v8, "left":I
    add-int v12, v8, v14

    .line 707
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 708
    return-void

    .line 687
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerHeight":I
    .end local v6    # "containerWidth":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginRight":I
    .end local v11    # "marginTop":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 688
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 689
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .restart local v10    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 606
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 607
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 608
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 609
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 611
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 612
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 633
    if-nez p3, :cond_0

    .line 634
    const/4 v8, 0x0

    .line 635
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 636
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 643
    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 644
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 646
    .local v5, "containerWidth":I
    if-nez p2, :cond_1

    .line 647
    move v11, v5

    .line 654
    .local v11, "maxWidth":I
    :goto_1
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 655
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 656
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 657
    .local v15, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 658
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 664
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 665
    if-nez p2, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_2
    sub-int v12, v16, v9

    .line 666
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 673
    .local v7, "left":I
    :goto_3
    move v13, v10

    .line 674
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 675
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 676
    return-void

    .line 638
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "maxWidth":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 639
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 640
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 648
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto :goto_1

    .line 651
    .end local v11    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto :goto_1

    .line 665
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_2

    .line 668
    :cond_4
    if-nez p2, :cond_5

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_4
    add-int v7, v16, v8

    .line 669
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_3

    .line 668
    .end local v7    # "left":I
    .end local v12    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 450
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 451
    return-void

    .line 440
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->postAutoHide()V

    goto :goto_0

    .line 442
    :cond_2
    if-eqz p1, :cond_0

    .line 443
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 444
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->postAutoHide()V

    goto :goto_0

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 912
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 913
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 914
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 838
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 839
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 840
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 841
    return-void

    .line 838
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .param p1, "position"    # F

    .prologue
    .line 968
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollCompleted:Z

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v3

    .line 971
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 972
    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .line 974
    .local v14, "sectionCount":I
    :goto_0
    if-eqz v16, :cond_a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_a

    .line 975
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v14, -0x1

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v4

    .line 977
    .local v4, "exactSection":I
    move/from16 v19, v4

    .line 978
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 979
    .local v18, "targetIndex":I
    move/from16 v15, v19

    .line 987
    .local v15, "sectionIndex":I
    move v7, v3

    .line 988
    .local v7, "nextIndex":I
    move/from16 v11, v18

    .line 989
    .local v11, "prevIndex":I
    move/from16 v13, v19

    .line 990
    .local v13, "prevSection":I
    add-int/lit8 v10, v19, 0x1

    .line 993
    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 998
    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1000
    :cond_1
    if-lez v19, :cond_2

    .line 1001
    add-int/lit8 v19, v19, -0x1

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1003
    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 1004
    move/from16 v13, v19

    .line 1005
    move/from16 v15, v19

    .line 1021
    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .line 1022
    .local v8, "nextNextSection":I
    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    .line 1023
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    .line 1024
    add-int/lit8 v8, v8, 0x1

    .line 1025
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 972
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "sectionCount":I
    .end local v15    # "sectionIndex":I
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_3
    move-object/from16 v0, v16

    array-length v14, v0

    goto/16 :goto_0

    .line 1007
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v13    # "prevSection":I
    .restart local v14    # "sectionCount":I
    .restart local v15    # "sectionIndex":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_4
    if-nez v19, :cond_1

    .line 1010
    const/4 v15, 0x0

    .line 1011
    goto :goto_1

    .line 1032
    .restart local v8    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 1033
    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 1034
    .local v9, "nextPosition":F
    if-nez v3, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 1035
    .local v17, "snapThreshold":F
    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    .line 1036
    move/from16 v18, v11

    .line 1043
    :goto_4
    const/16 v20, 0x0

    add-int/lit8 v21, v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v18

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectionFromTop(II)V

    .line 1062
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    .line 1063
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mCurrentSection:I

    .line 1065
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    .line 1066
    .local v5, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-eqz v5, :cond_c

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionToDragging()V

    .line 1072
    .end local v5    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1034
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v8    # "nextNextSection":I
    .restart local v9    # "nextPosition":F
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v12    # "prevPosition":F
    .restart local v13    # "prevSection":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_7
    const/high16 v20, 0x3e000000    # 0.125f

    int-to-float v0, v3

    move/from16 v21, v0

    div-float v17, v20, v21

    goto :goto_3

    .line 1038
    .restart local v17    # "snapThreshold":F
    :cond_8
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    sub-float v21, v9, v12

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_4

    .line 1048
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_5

    .line 1051
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v15    # "sectionIndex":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_a
    int-to-float v0, v3

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v6

    .line 1053
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectionFromTop(II)V

    .line 1059
    :goto_7
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_5

    .line 1056
    .end local v15    # "sectionIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_7

    .line 1068
    .end local v6    # "index":I
    .restart local v5    # "hasPreview":Z
    .restart local v15    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez v5, :cond_6

    .line 1069
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 808
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 809
    const/4 p1, 0x1

    .line 812
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 835
    :goto_0
    return-void

    .line 816
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 832
    :goto_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    .line 834
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 818
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionToHidden()V

    goto :goto_1

    .line 821
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 824
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionToDragging()V

    goto :goto_1

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 14
    .param p1, "position"    # F

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 1166
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbRange:F

    mul-float/2addr v11, p1

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbOffset:F

    add-float v9, v11, v12

    .line 1167
    .local v9, "thumbMiddle":F
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    sub-float v12, v9, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1169
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1170
    .local v5, "previewImage":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v11, v13

    .line 1172
    .local v4, "previewHalfHeight":F
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlayPosition:I

    packed-switch v11, :pswitch_data_0

    .line 1181
    const/4 v7, 0x0

    .line 1186
    .local v7, "previewPos":F
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1187
    .local v1, "container":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 1188
    .local v10, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1189
    .local v0, "bottom":I
    int-to-float v11, v10

    add-float v3, v11, v4

    .line 1190
    .local v3, "minP":F
    int-to-float v11, v0

    sub-float v2, v11, v4

    .line 1191
    .local v2, "maxP":F
    invoke-static {v7, v3, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(FFF)F

    move-result v6

    .line 1192
    .local v6, "previewMiddle":F
    sub-float v8, v6, v4

    .line 1193
    .local v8, "previewTop":F
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1195
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1196
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1197
    return-void

    .line 1174
    .end local v0    # "bottom":I
    .end local v1    # "container":Landroid/graphics/Rect;
    .end local v2    # "maxP":F
    .end local v3    # "minP":F
    .end local v6    # "previewMiddle":F
    .end local v7    # "previewPos":F
    .end local v8    # "previewTop":F
    .end local v10    # "top":I
    :pswitch_0
    move v7, v9

    .line 1175
    .restart local v7    # "previewPos":F
    goto :goto_0

    .line 1177
    .end local v7    # "previewPos":F
    :pswitch_1
    sub-float v7, v9, v4

    .line 1178
    .restart local v7    # "previewPos":F
    goto :goto_0

    .line 1172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    .line 1333
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1083
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSections:[Ljava/lang/Object;

    .line 1084
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1085
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1086
    aget-object v12, v13, p1

    .line 1087
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1088
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1092
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1093
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1096
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1097
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1098
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1105
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1107
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1114
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1115
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1116
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1119
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1120
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1121
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1122
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1123
    invoke-static {v7, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1124
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1126
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1128
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1132
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    .line 1133
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1137
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1138
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1139
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1140
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1141
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1147
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1148
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1149
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1150
    .local v10, "scale":F
    invoke-static {v15, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1151
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1154
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1156
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v20, 0x1

    :goto_2
    return v20

    .line 1100
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1101
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1143
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1156
    .restart local v16    # "showingWidth":I
    :cond_5
    const/16 v20, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 894
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 898
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 900
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 901
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 902
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 904
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 905
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 906
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 908
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPreview:Z

    .line 909
    return-void
.end method

.method private transitionToHidden()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 847
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 851
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 852
    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 855
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 856
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 858
    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 860
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 861
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 862
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 864
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPreview:Z

    .line 865
    return-void

    .line 855
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 871
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 872
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 875
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    .line 876
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 877
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 879
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 880
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    .line 881
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 883
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 884
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 885
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 887
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mShowingPreview:Z

    .line 888
    return-void
.end method

.method private updateAppearance()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 297
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 301
    .local v2, "width":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 307
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 309
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 310
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 315
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mWidth:I

    .line 317
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 319
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 323
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 327
    :cond_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 328
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 329
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    :cond_4
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewPadding:I

    .line 333
    .local v1, "padding":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 335
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 336
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->refreshDrawablePressedState()V

    .line 339
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v5, 0x0

    .line 714
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 715
    .local v1, "list":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 717
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 718
    .local v0, "container":Landroid/graphics/Rect;
    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 719
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 720
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 721
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 723
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollBarStyle:I

    .line 724
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 726
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 727
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 728
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 729
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 732
    if-ne v2, v6, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getWidth()I

    move-result v3

    .line 734
    .local v3, "width":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 735
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 741
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 737
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 521
    if-lez p1, :cond_1

    div-int v2, p2, p1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 522
    .local v0, "longList":Z
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLongList:Z

    if-eq v2, v0, :cond_0

    .line 523
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLongList:Z

    .line 525
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onStateDependencyChanged(Z)V

    .line 527
    :cond_0
    return-void

    .end local v0    # "longList":Z
    :cond_1
    move v0, v1

    .line 521
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 788
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 789
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 792
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 793
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 794
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 795
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 801
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbOffset:F

    .line 802
    sub-float v5, v1, v2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbRange:F

    .line 803
    return-void

    .line 797
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 798
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1398
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return v3

    .line 1402
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1403
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-nez v1, :cond_0

    .line 1405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 1407
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1351
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v1

    .line 1355
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1357
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1367
    const/4 v1, 0x1

    goto :goto_0

    .line 1370
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mInitialTouchY:F

    .line 1371
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1375
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1376
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1377
    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->beginDrag()V

    .line 1380
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1381
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->scrollTo(F)V

    .line 1385
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1390
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 506
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 507
    :cond_0
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldItemCount:I

    .line 508
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOldChildCount:I

    .line 510
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 511
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 512
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 513
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setThumbPos(F)V

    .line 516
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateLongList(II)V

    .line 518
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 510
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 917
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 918
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 923
    .local v0, "hasMoreItems":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 924
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setThumbPos(F)V

    .line 927
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollCompleted:Z

    .line 929
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 930
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mFirstVisibleItem:I

    .line 933
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-eq v2, v3, :cond_0

    .line 934
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 935
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 961
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateLayout()V

    .line 503
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1414
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return v1

    .line 1418
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1420
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isPointInside(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInScrollingContainer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1422
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->beginDrag()V

    move v1, v2

    .line 1423
    goto :goto_0

    .line 1429
    :pswitch_1
    iget-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_2

    .line 1431
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->beginDrag()V

    .line 1433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1434
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setThumbPos(F)V

    .line 1435
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->scrollTo(F)V

    .line 1440
    .end local v0    # "pos":F
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-ne v3, v6, :cond_0

    .line 1444
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1445
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 1447
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 1448
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->postAutoHide()V

    move v1, v2

    .line 1450
    goto :goto_0

    .line 1455
    :pswitch_2
    iget-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 1456
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->beginDrag()V

    .line 1460
    :cond_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mState:I

    if-ne v3, v6, :cond_0

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1463
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setThumbPos(F)V

    .line 1466
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_4

    .line 1467
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->scrollTo(F)V

    :cond_4
    move v1, v2

    .line 1470
    goto/16 :goto_0

    .line 1475
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 392
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 417
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mAlwaysShow:Z

    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onStateDependencyChanged(Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 399
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mEnabled:Z

    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onStateDependencyChanged(Z)V

    .line 403
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 454
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 455
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollBarStyle:I

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateLayout()V

    .line 459
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 469
    if-nez p1, :cond_0

    .line 470
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    move p1, v3

    .line 474
    :cond_0
    :goto_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_1

    .line 475
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mScrollbarPosition:I

    .line 476
    if-eq p1, v3, :cond_3

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    .line 478
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_4

    :goto_2
    aget v0, v4, v3

    .line 479
    .local v0, "previewResId":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 482
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewMinWidth:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    .line 483
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 482
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 484
    .local v2, "textMinWidth":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 485
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 487
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewMinHeight:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    .line 488
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 487
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 489
    .local v1, "textMinHeight":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 490
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateLayout()V

    .line 495
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_1
    return-void

    .line 470
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move v4, v5

    .line 476
    goto :goto_1

    :cond_4
    move v3, v5

    .line 478
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 342
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 343
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v1, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 345
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 346
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_e

    .line 347
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 348
    .local v3, "index":I
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslPosition:I

    if-ne v3, v5, :cond_1

    .line 349
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mOverlayPosition:I

    .line 346
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslBackgroundLeft:I

    if-ne v3, v5, :cond_2

    .line 351
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1

    .line 352
    :cond_2
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslBackgroundRight:I

    if-ne v3, v5, :cond_3

    .line 353
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewResId:[I

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 354
    :cond_3
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbDrawable:I

    if-ne v3, v5, :cond_4

    .line 355
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 356
    :cond_4
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslTrackDrawable:I

    if-ne v3, v5, :cond_5

    .line 357
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 358
    :cond_5
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textAppearance:I

    if-ne v3, v5, :cond_6

    .line 359
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 360
    :cond_6
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textColor:I

    if-ne v3, v5, :cond_7

    .line 361
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 362
    :cond_7
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textSize:I

    if-ne v3, v5, :cond_8

    .line 363
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTextSize:F

    goto :goto_1

    .line 364
    :cond_8
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_minWidth:I

    if-ne v3, v5, :cond_9

    .line 365
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 366
    :cond_9
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_minHeight:I

    if-ne v3, v5, :cond_a

    .line 367
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 368
    :cond_a
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbMinWidth:I

    if-ne v3, v5, :cond_b

    .line 369
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 370
    :cond_b
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbMinHeight:I

    if-ne v3, v5, :cond_c

    .line 371
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbMinHeight:I

    goto/16 :goto_1

    .line 372
    :cond_c
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_padding:I

    if-ne v3, v5, :cond_d

    .line 373
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewPadding:I

    goto/16 :goto_1

    .line 374
    :cond_d
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbPosition:I

    if-ne v3, v5, :cond_0

    .line 375
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mThumbPosition:I

    goto/16 :goto_1

    .line 378
    .end local v3    # "index":I
    :cond_e
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateAppearance()V

    .line 381
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setState(I)V

    .line 466
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 554
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mUpdatingLayout:Z

    .line 560
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateContainerRect()V

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->layoutThumb()V

    .line 563
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->layoutTrack()V

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateOffsetAndRange()V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 568
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 569
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 570
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 571
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 574
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 575
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 576
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 577
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 578
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 580
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method
