.class Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;
.super Ljava/lang/Object;
.source "SeslFluidScroller.java"


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

.field private static final DURATION_CROSS_FADE:I = 0x0

.field private static final DURATION_FADE_IN:I = 0xa7

.field private static final DURATION_FADE_OUT:I = 0xa7

.field private static final DURATION_RESIZE:I = 0x64

.field private static final EFFECT_STATE_CLOSE:I = 0x0

.field private static final EFFECT_STATE_OPEN:I = 0x1

.field private static final FADE_TIMEOUT:J = 0x9c4L

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

.field private static final MIN_PAGES:I = 0x1

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

.field private static final TAG:Ljava/lang/String; = "SeslFluidScroller"

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

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

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

.field private mThumbMarginEnd:I

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
    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->TAP_TIMEOUT:J

    .line 1618
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->LEFT:Landroid/util/Property;

    .line 1634
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->TOP:Landroid/util/Property;

    .line 1650
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->RIGHT:Landroid/util/Property;

    .line 1666
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V
    .locals 8
    .param p1, "listView"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 107
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 108
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 123
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewResId:[I

    .line 176
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mCurrentSection:I

    .line 179
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollbarPosition:I

    .line 231
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    .line 237
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mColorPrimary:I

    .line 238
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    .line 243
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mEffectState:I

    .line 245
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    .line 250
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 260
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 268
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldItemCount:I

    .line 270
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldChildCount:I

    .line 272
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    .line 273
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScaledTouchSlop:I

    .line 274
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollBarStyle:I

    .line 276
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollCompleted:Z

    .line 277
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    .line 278
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mMatchDragPosition:Z

    .line 281
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 282
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 283
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 284
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 285
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    .line 286
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 287
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 288
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 289
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setStyle(I)V

    .line 291
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 292
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 293
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 299
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroll_preview_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMarginEnd:I

    .line 300
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroll_thumb_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMarginEnd:I

    .line 302
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getSectionsFromIndexer()V

    .line 305
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldChildCount:I

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateLongList(I)V

    .line 306
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setScrollbarPosition(I)V

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->postAutoHide()V

    .line 308
    return-void

    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    move v1, v2

    .line 279
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1611
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

    .line 1682
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1683
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1684
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1685
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1686
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
    .line 1604
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
    .line 607
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 608
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 609
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1356
    const-string v0, "SeslFluidScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    .line 1359
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 1361
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 1362
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getSectionsFromIndexer()V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 1368
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->cancelFling()V

    .line 1369
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1332
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1334
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1335
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1336
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1344
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    .line 1345
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/support/sesl/R$layout;->fluid_scroller_preview_text:I

    const/4 v3, 0x0

    .line 558
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 561
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 563
    return-object v0
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1239
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1240
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getSectionsFromIndexer()V

    .line 1243
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_4

    .line 1245
    :cond_2
    const/4 v12, 0x0

    .line 1324
    :cond_3
    :goto_0
    return v12

    .line 1248
    :cond_4
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    const/4 v5, 0x1

    .line 1250
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1251
    :cond_5
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1253
    const/4 v12, 0x0

    goto :goto_0

    .line 1248
    .end local v5    # "hasSections":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1255
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

    .line 1260
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1261
    if-gez p1, :cond_9

    .line 1262
    const/4 v12, 0x0

    goto :goto_0

    .line 1264
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1269
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1270
    :cond_a
    const/4 v6, 0x0

    .line 1276
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1277
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1278
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1280
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1282
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1283
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1287
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    .line 1294
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    .line 1295
    const/4 v10, 0x0

    .line 1301
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1306
    .local v12, "result":F
    if-lez p1, :cond_3

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1308
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v2

    .line 1312
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1313
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1314
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1319
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_3

    if-lez v8, :cond_3

    .line 1320
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

    .line 1272
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

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

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

    .line 1285
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    .line 1289
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    .line 1297
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

    .line 1316
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1317
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

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

    .line 1221
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 1225
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbOffset:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbRange:F

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

    .line 972
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 974
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 975
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 976
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    .line 977
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 980
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 981
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 982
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 983
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

    .line 988
    :goto_0
    return-void

    .line 985
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 986
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

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
    .line 1585
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1586
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1588
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1589
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1590
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1591
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1588
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1597
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1554
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1558
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1559
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1559
    goto :goto_0

    .line 1561
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1566
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1567
    .local v1, "offset":F
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1568
    .local v2, "top":F
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1570
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 777
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 778
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 779
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 786
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 787
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 788
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 789
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 790
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 791
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 793
    .local v12, "widthMeasureSpec":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 792
    invoke-static {v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 794
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 798
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 799
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 800
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 807
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 808
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 809
    .local v3, "left":I
    add-int v6, v3, v11

    .line 810
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 811
    return-void

    .line 802
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 803
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 804
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
    .line 710
    if-nez p2, :cond_0

    .line 711
    const/4 v9, 0x0

    .line 712
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 713
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 720
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 721
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 722
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 723
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 724
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 726
    .local v15, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/16 v17, 0x0

    .line 725
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 727
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 730
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 731
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 732
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 733
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 734
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 735
    .local v8, "left":I
    add-int v12, v8, v14

    .line 736
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 737
    return-void

    .line 715
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

    .line 716
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 717
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
    .line 621
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 622
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 623
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 624
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 625
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 627
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 628
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 651
    if-nez p2, :cond_0

    .line 652
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMarginEnd:I

    .line 653
    .local v9, "marginRight":I
    const/4 v8, 0x0

    .line 668
    .local v8, "marginLeft":I
    :goto_0
    const/4 v10, 0x0

    .line 670
    .local v10, "marginTop":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 671
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 673
    .local v5, "containerWidth":I
    if-nez p2, :cond_3

    .line 674
    move v11, v5

    .line 681
    .local v11, "maxWidth":I
    :goto_1
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 682
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 683
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 685
    .local v15, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/16 v17, 0x0

    .line 684
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 686
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 692
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 693
    if-nez p2, :cond_5

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_2
    sub-int v12, v16, v9

    .line 694
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 701
    .local v7, "left":I
    :goto_3
    move v13, v10

    .line 702
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int/lit8 v3, v16, 0x0

    .line 703
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 704
    return-void

    .line 655
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
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMarginEnd:I

    .line 656
    .restart local v9    # "marginRight":I
    const/4 v8, 0x0

    .restart local v8    # "marginLeft":I
    goto :goto_0

    .line 659
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_1
    if-nez p2, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMarginEnd:I

    .line 661
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 663
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMarginEnd:I

    .line 664
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 675
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    .restart local v10    # "marginTop":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto :goto_1

    .line 678
    .end local v11    # "maxWidth":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto :goto_1

    .line 693
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_2

    .line 696
    :cond_6
    if-nez p2, :cond_7

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_4
    add-int v7, v16, v8

    .line 697
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_3

    .line 696
    .end local v7    # "left":I
    .end local v12    # "right":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 477
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 478
    return-void

    .line 467
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->postAutoHide()V

    goto :goto_0

    .line 469
    :cond_2
    if-eqz p1, :cond_0

    .line 470
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->postAutoHide()V

    goto :goto_0

    .line 474
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 939
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 940
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 941
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 864
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 865
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 866
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 867
    return-void

    .line 864
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .param p1, "position"    # F

    .prologue
    .line 999
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollCompleted:Z

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v3

    .line 1002
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1003
    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .line 1005
    .local v14, "sectionCount":I
    :goto_0
    if-eqz v16, :cond_a

    if-lez v14, :cond_a

    .line 1006
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

    .line 1008
    .local v4, "exactSection":I
    move/from16 v19, v4

    .line 1009
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 1010
    .local v18, "targetIndex":I
    move/from16 v15, v19

    .line 1018
    .local v15, "sectionIndex":I
    move v7, v3

    .line 1019
    .local v7, "nextIndex":I
    move/from16 v11, v18

    .line 1020
    .local v11, "prevIndex":I
    move/from16 v13, v19

    .line 1021
    .local v13, "prevSection":I
    add-int/lit8 v10, v19, 0x1

    .line 1024
    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1029
    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1031
    :cond_1
    if-lez v19, :cond_2

    .line 1032
    add-int/lit8 v19, v19, -0x1

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1034
    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 1035
    move/from16 v13, v19

    .line 1036
    move/from16 v15, v19

    .line 1052
    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .line 1053
    .local v8, "nextNextSection":I
    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    .line 1054
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    .line 1055
    add-int/lit8 v8, v8, 0x1

    .line 1056
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1003
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

    goto :goto_0

    .line 1038
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

    .line 1041
    const/4 v15, 0x0

    .line 1042
    goto :goto_1

    .line 1063
    .restart local v8    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 1064
    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 1065
    .local v9, "nextPosition":F
    if-nez v3, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 1066
    .local v17, "snapThreshold":F
    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    .line 1067
    move/from16 v18, v11

    .line 1074
    :goto_4
    const/16 v20, 0x0

    add-int/lit8 v21, v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v18

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectionFromTop(II)V

    .line 1093
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

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    .line 1094
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mCurrentSection:I

    .line 1096
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->transitionPreviewLayout(I)Z

    move-result v5

    .line 1097
    .local v5, "hasPreview":Z
    const-string v20, "SeslFluidScroller"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", position = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-eqz v5, :cond_c

    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->transitionToDragging()V

    .line 1104
    .end local v5    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1065
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

    goto/16 :goto_3

    .line 1069
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

    goto/16 :goto_4

    .line 1079
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_5

    .line 1082
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

    .line 1084
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectionFromTop(II)V

    .line 1090
    :goto_7
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_5

    .line 1087
    .end local v15    # "sectionIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_7

    .line 1100
    .end local v6    # "index":I
    .restart local v5    # "hasPreview":Z
    .restart local v15    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez v5, :cond_6

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 838
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 839
    const/4 p1, 0x1

    .line 842
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 861
    :goto_0
    return-void

    .line 846
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 858
    :goto_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    .line 860
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 848
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->transitionToHidden()V

    goto :goto_1

    .line 851
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->transitionToVisible()V

    goto :goto_1

    .line 854
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->transitionPreviewLayout(I)Z

    goto :goto_1

    .line 846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 11
    .param p1, "position"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1197
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbRange:F

    mul-float/2addr v8, p1

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbOffset:F

    add-float v7, v8, v9

    .line 1198
    .local v7, "thumbMiddle":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1200
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    .line 1202
    .local v3, "previewImage":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v8, v10

    .line 1205
    .local v2, "previewHalfHeight":F
    move v5, v7

    .line 1208
    .local v5, "previewPos":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v1, v8, v2

    .line 1209
    .local v1, "minP":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float v0, v8, v2

    .line 1210
    .local v0, "maxP":F
    invoke-static {v5, v1, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(FFF)F

    move-result v4

    .line 1211
    .local v4, "previewMiddle":F
    sub-float v6, v4, v2

    .line 1212
    .local v6, "previewTop":F
    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1214
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1215
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1216
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    .line 1353
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 26
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSections:[Ljava/lang/Object;

    .line 1116
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1117
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1118
    aget-object v12, v13, p1

    .line 1119
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1120
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1123
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1124
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    .line 1127
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1129
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1136
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1146
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1147
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1148
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1151
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1152
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1153
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1154
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1155
    invoke-static {v7, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1156
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1158
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1160
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1164
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    .line 1165
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1169
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1170
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1171
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1172
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1173
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1179
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1180
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1181
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1182
    .local v10, "scale":F
    invoke-static {v15, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1183
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1185
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/PathInterpolator;

    const v22, 0x3ea8f5c3    # 0.33f

    const/16 v23, 0x0

    const v24, 0x3e99999a    # 0.3f

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v25}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1187
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v20, 0x1

    :goto_2
    return v20

    .line 1131
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

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1132
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1175
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

    .line 1187
    .restart local v16    # "showingWidth":I
    :cond_5
    const/16 v20, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 921
    const-string v1, "SeslFluidScroller"

    const-string/jumbo v2, "transitionToDragging()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 926
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-static {v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0xa7

    .line 928
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 930
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 931
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 932
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 933
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 934
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPreview:Z

    .line 936
    return-void
.end method

.method private transitionToHidden()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 873
    const-string v1, "SeslFluidScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transitionToHidden() mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 878
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 882
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v3, v2, v4

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v4, v2, v3

    invoke-static {v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0xa7

    .line 883
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 884
    .local v0, "fadeOut":Landroid/animation/Animator;
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPreview:Z

    .line 885
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mCurrentSection:I

    .line 887
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 888
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 889
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 890
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 891
    return-void

    .line 876
    .end local v0    # "fadeOut":Landroid/animation/Animator;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 897
    const-string v2, "SeslFluidScroller"

    const-string/jumbo v3, "transitionToVisible()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 902
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 904
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v10, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0xa7

    .line 905
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 906
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v4, v3, v8

    invoke-static {v2, v9, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0xa7

    .line 908
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 910
    .local v1, "fadeOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 911
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 912
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, v9, v5, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 913
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mShowingPreview:Z

    .line 914
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 915
    return-void
.end method

.method private updateAppearance()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, "width":I
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 314
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 315
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mColorPrimary:I

    .line 318
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mColorPrimary:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 331
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 332
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 336
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mWidth:I

    .line 338
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 339
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 341
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextAppearance:I

    if-eqz v3, :cond_3

    .line 342
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 343
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 346
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 347
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 348
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    :cond_4
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 352
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 356
    :cond_5
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinHeight:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 357
    .local v1, "textMinSize":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 358
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 359
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 360
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 361
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 362
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->refreshDrawablePressedState()V

    .line 365
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v5, 0x0

    .line 743
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 744
    .local v1, "list":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 746
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 747
    .local v0, "container":Landroid/graphics/Rect;
    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 748
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 749
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 750
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 752
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollBarStyle:I

    .line 753
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 755
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 756
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 757
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 758
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 761
    if-ne v2, v6, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getWidth()I

    move-result v3

    .line 763
    .local v3, "width":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 764
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 770
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 766
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(I)V
    .locals 4
    .param p1, "childCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 545
    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    .local v0, "longList":Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLongList:Z

    if-eq v2, v0, :cond_1

    .line 547
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLongList:Z

    .line 549
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onStateDependencyChanged(Z)V

    .line 551
    :cond_1
    return-void

    .end local v0    # "longList":Z
    :cond_2
    move v0, v1

    .line 545
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 818
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 819
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 822
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 823
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 824
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 825
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 831
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbOffset:F

    .line 832
    sub-float v5, v1, v2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbRange:F

    .line 833
    return-void

    .line 827
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 828
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method getEffectState()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mAlwaysShow:Z

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

    .line 1422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return v3

    .line 1426
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1427
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-nez v1, :cond_0

    .line 1429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 1431
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v1

    .line 1376
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1378
    :pswitch_0
    const-string v2, "SeslFluidScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1385
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1388
    const/4 v1, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mInitialTouchY:F

    .line 1392
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->startPendingDrag()V

    goto :goto_0

    .line 1396
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1397
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1398
    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1399
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->beginDrag()V

    .line 1401
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1402
    .local v0, "pos":F
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    .line 1403
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->scrollTo(F)V

    .line 1405
    const-string v1, "SeslFluidScroller"

    const-string v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 1414
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1376
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
    .line 530
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 531
    :cond_0
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldItemCount:I

    .line 532
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldChildCount:I

    .line 534
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 535
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 536
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 537
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setThumbPos(F)V

    .line 540
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateLongList(I)V

    .line 542
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 534
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 5
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 944
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollList(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-eq v0, v4, :cond_3

    .line 950
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 951
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setThumbPos(F)V

    .line 952
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    .line 958
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollCompleted:Z

    .line 960
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mFirstVisibleItem:I

    if-eq v0, p1, :cond_0

    .line 961
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mFirstVisibleItem:I

    .line 964
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    if-eq v0, v4, :cond_0

    .line 965
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 966
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->postAutoHide()V

    goto :goto_0

    .line 954
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setThumbPos(F)V

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 992
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateLayout()V

    .line 527
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1438
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1439
    .local v1, "container":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1440
    .local v5, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1442
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1443
    .local v6, "trackImage":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v3, v7

    .line 1444
    .local v3, "min":F
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v2, v7

    .line 1446
    .local v2, "max":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    .line 1448
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1449
    const/4 v7, 0x0

    .line 1540
    :goto_0
    return v7

    .line 1452
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1540
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1454
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1455
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->beginDrag()V

    .line 1456
    const-string v7, "SeslFluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v7, 0x1

    goto :goto_0

    .line 1463
    :pswitch_1
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    .line 1465
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->beginDrag()V

    .line 1467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1468
    .local v4, "pos":F
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    .line 1469
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setThumbPos(F)V

    .line 1470
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->scrollTo(F)V

    .line 1471
    const-string v7, "SeslFluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    .end local v4    # "pos":F
    :cond_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1479
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1480
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 1482
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 1483
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    .line 1485
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1491
    :pswitch_2
    const-string v7, "SeslFluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mInitialTouchY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 1493
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->beginDrag()V

    .line 1494
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 1495
    const-string v7, "SeslFluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 1498
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    .line 1507
    :cond_3
    :goto_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1510
    .restart local v4    # "pos":F
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOldThumbPosition:F

    .line 1511
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setThumbPos(F)V

    .line 1514
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollCompleted:Z

    if-eqz v7, :cond_4

    .line 1515
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->scrollTo(F)V

    .line 1518
    :cond_4
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 1519
    const-string v7, "SeslFluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1522
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    .line 1528
    :cond_5
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1499
    .end local v4    # "pos":F
    :cond_6
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_3

    .line 1500
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    goto :goto_2

    .line 1523
    .restart local v4    # "pos":F
    :cond_7
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_5

    .line 1524
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    goto :goto_3

    .line 1534
    .end local v4    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->cancelPendingDrag()V

    .line 1535
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollY:F

    goto/16 :goto_1

    .line 1452
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
    .line 413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 418
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 444
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mAlwaysShow:Z

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onStateDependencyChanged(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 424
    const-string v0, "SeslFluidScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 426
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mEnabled:Z

    .line 428
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onStateDependencyChanged(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 481
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 482
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollBarStyle:I

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateLayout()V

    .line 486
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 496
    if-nez p1, :cond_0

    .line 497
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    move p1, v1

    .line 501
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollbarPosition:I

    if-eq v2, p1, :cond_1

    .line 502
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mScrollbarPosition:I

    .line 503
    if-eq p1, v1, :cond_3

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    .line 505
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewResId:[I

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_4

    :goto_2
    aget v0, v2, v1

    .line 506
    .local v0, "previewResId":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateLayout()V

    .line 511
    .end local v0    # "previewResId":I
    :cond_1
    return-void

    .line 497
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 503
    goto :goto_1

    :cond_4
    move v1, v3

    .line 505
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

    .line 368
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 370
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 371
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_e

    .line 372
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 373
    .local v2, "index":I
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslPosition:I

    if-ne v2, v4, :cond_1

    .line 374
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mOverlayPosition:I

    .line 371
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslBackgroundLeft:I

    if-ne v2, v4, :cond_2

    .line 376
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v8

    goto :goto_1

    .line 377
    :cond_2
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslBackgroundRight:I

    if-ne v2, v4, :cond_3

    .line 378
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewResId:[I

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1

    .line 379
    :cond_3
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbDrawable:I

    if-ne v2, v4, :cond_4

    .line 380
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 381
    :cond_4
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslTrackDrawable:I

    if-ne v2, v4, :cond_5

    .line 382
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 383
    :cond_5
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textAppearance:I

    if-ne v2, v4, :cond_6

    .line 384
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextAppearance:I

    goto :goto_1

    .line 385
    :cond_6
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textColor:I

    if-ne v2, v4, :cond_7

    .line 386
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 387
    :cond_7
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textSize:I

    if-ne v2, v4, :cond_8

    .line 388
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTextSize:F

    goto :goto_1

    .line 389
    :cond_8
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_minWidth:I

    if-ne v2, v4, :cond_9

    .line 390
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 391
    :cond_9
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_minHeight:I

    if-ne v2, v4, :cond_a

    .line 392
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 393
    :cond_a
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbMinWidth:I

    if-ne v2, v4, :cond_b

    .line 394
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 395
    :cond_b
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbMinHeight:I

    if-ne v2, v4, :cond_c

    .line 396
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbMinHeight:I

    goto/16 :goto_1

    .line 397
    :cond_c
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_padding:I

    if-ne v2, v4, :cond_d

    .line 398
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewPadding:I

    goto/16 :goto_1

    .line 399
    :cond_d
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbPosition:I

    if-ne v2, v4, :cond_0

    .line 400
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mThumbPosition:I

    goto/16 :goto_1

    .line 404
    .end local v2    # "index":I
    :cond_e
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateAppearance()V

    .line 407
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setState(I)V

    .line 493
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 572
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 575
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mUpdatingLayout:Z

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateContainerRect()V

    .line 579
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->layoutThumb()V

    .line 580
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->layoutTrack()V

    .line 582
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateOffsetAndRange()V

    .line 584
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mUpdatingLayout:Z

    .line 585
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 586
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 587
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 588
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 589
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 593
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 594
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 595
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 596
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
