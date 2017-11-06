.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "SeslRecyclerViewFastScroller.java"


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

.field public static final EFFECT_STATE_CLOSE:I = 0x0

.field public static final EFFECT_STATE_OPEN:I = 0x1

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

.field private static final TAG:Ljava/lang/String; = "SeslFastdScroller"

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
.field private mAdditionalBottomPadding:I

.field private mAdditionalTouchArea:F

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

.field private mListAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

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

.field private final mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

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

.field private mTrackPadding:I

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    .line 1707
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    .line 1723
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    .line 1739
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    .line 1755
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 8
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 110
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 125
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    .line 178
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 181
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 233
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 239
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 240
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 244
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 248
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 250
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 258
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 268
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 276
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 277
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 278
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    .line 281
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 284
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 285
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 286
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    .line 288
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 289
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 291
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 293
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 295
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 296
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setStyle(I)V

    .line 298
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 299
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 300
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 301
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroll_preview_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 307
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroll_thumb_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 308
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroll_additional_touch_area:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 309
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroller_track_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    .line 310
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_fast_scroller_additional_bottom_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    .line 312
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 316
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    .line 317
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 319
    return-void

    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    move v1, v2

    .line 286
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1700
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
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1771
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    new-array v2, v6, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    aput v3, v2, v5

    .line 1772
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-array v2, v6, [I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    aput v3, v2, v5

    .line 1773
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-array v3, v6, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    .line 1774
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v3, v6, [I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    aput v4, v3, v5

    .line 1775
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1771
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1693
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
    .line 645
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 646
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 647
    return-void

    .line 646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 2

    .prologue
    .line 1427
    const-string v0, "SeslFastdScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 1431
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1439
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->cancelFling()V

    .line 1440
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1441
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1403
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1405
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1406
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1407
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1415
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1416
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 588
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 590
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 591
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 593
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 594
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 595
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 598
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 600
    return-object v1
.end method

.method private getColorWithAlpha(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1779
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1780
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 1779
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1311
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1312
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 1315
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_4

    .line 1317
    :cond_2
    const/4 v12, 0x0

    .line 1395
    :cond_3
    :goto_0
    return v12

    .line 1320
    :cond_4
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    const/4 v5, 0x1

    .line 1321
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1322
    :cond_5
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1324
    const/4 v12, 0x0

    goto :goto_0

    .line 1320
    .end local v5    # "hasSections":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1326
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

    .line 1331
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1332
    if-gez p1, :cond_9

    .line 1333
    const/4 v12, 0x0

    goto :goto_0

    .line 1335
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1340
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1341
    :cond_a
    const/4 v6, 0x0

    .line 1347
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1348
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1349
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1351
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1353
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1354
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1358
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    .line 1365
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    .line 1366
    const/4 v10, 0x0

    .line 1372
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1377
    .local v12, "result":F
    if-lez p1, :cond_3

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1379
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    .line 1383
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1384
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1385
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1390
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_3

    if-lez v8, :cond_3

    .line 1391
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

    .line 1343
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

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

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

    .line 1356
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    .line 1360
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    .line 1368
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

    .line 1387
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1388
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

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

    .line 1293
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 1297
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

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

    .line 1035
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1037
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 1043
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 1044
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 1045
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 1051
    :goto_0
    return-void

    .line 1048
    .restart local v0    # "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 1049
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

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
    .line 1674
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1675
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1677
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1678
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1679
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1680
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1677
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1682
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1686
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1643
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1647
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1648
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1650
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1648
    goto :goto_0

    .line 1650
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1655
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1656
    .local v1, "offset":F
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1657
    .local v2, "top":F
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1659
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

    .line 815
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 816
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 817
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 818
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 825
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 826
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 827
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 828
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 829
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 830
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 831
    .local v12, "widthMeasureSpec":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-static {v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 832
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 836
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 837
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 838
    .local v9, "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v13, v14

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int v0, v13, v14

    .line 845
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 846
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 847
    .local v3, "left":I
    add-int v6, v3, v11

    .line 848
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 849
    return-void

    .line 840
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 841
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 842
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v8

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v13, v14

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int v0, v13, v14

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 748
    if-nez p2, :cond_0

    .line 749
    const/4 v9, 0x0

    .line 750
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 751
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 758
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 759
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 760
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 761
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 762
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 764
    .local v15, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 765
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 768
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 769
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 770
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 771
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 772
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 773
    .local v8, "left":I
    add-int v12, v8, v14

    .line 774
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 775
    return-void

    .line 753
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

    .line 754
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 755
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
    .line 659
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 660
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 661
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 662
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 663
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 665
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 666
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 688
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 689
    if-nez p2, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 691
    .local v9, "marginRight":I
    const/4 v8, 0x0

    .line 706
    .local v8, "marginLeft":I
    :goto_0
    const/4 v10, 0x0

    .line 708
    .local v10, "marginTop":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 709
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 711
    .local v5, "containerWidth":I
    if-nez p2, :cond_3

    .line 712
    move v11, v5

    .line 719
    .local v11, "maxWidth":I
    :goto_1
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 720
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 721
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 723
    .local v15, "widthMeasureSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 724
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 730
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 731
    if-nez p2, :cond_5

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_2
    sub-int v12, v16, v9

    .line 732
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 739
    .local v7, "left":I
    :goto_3
    move v13, v10

    .line 740
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int/lit8 v3, v16, 0x0

    .line 741
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 742
    return-void

    .line 693
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

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 694
    .restart local v9    # "marginRight":I
    const/4 v8, 0x0

    .restart local v8    # "marginLeft":I
    goto :goto_0

    .line 697
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_1
    if-nez p2, :cond_2

    .line 698
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 699
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 701
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 702
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 713
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    .restart local v10    # "marginTop":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto :goto_1

    .line 716
    .end local v11    # "maxWidth":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto :goto_1

    .line 731
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_2

    .line 734
    :cond_6
    if-nez p2, :cond_7

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_4
    add-int v7, v16, v8

    .line 735
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_3

    .line 734
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

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 506
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 507
    return-void

    .line 495
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 496
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    .line 497
    :cond_2
    if-eqz p1, :cond_0

    .line 498
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 983
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 984
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 985
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 902
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 903
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 904
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 905
    return-void

    .line 902
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .param p1, "position"    # F

    .prologue
    .line 1062
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 1065
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1066
    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .line 1069
    .local v14, "sectionCount":I
    :goto_0
    if-eqz v16, :cond_9

    if-lez v14, :cond_9

    .line 1070
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v14, -0x1

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v5

    .line 1072
    .local v5, "exactSection":I
    move/from16 v19, v5

    .line 1073
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 1074
    .local v18, "targetIndex":I
    move/from16 v15, v19

    .line 1082
    .local v15, "sectionIndex":I
    move v7, v4

    .line 1083
    .local v7, "nextIndex":I
    move/from16 v11, v18

    .line 1084
    .local v11, "prevIndex":I
    move/from16 v13, v19

    .line 1085
    .local v13, "prevSection":I
    add-int/lit8 v10, v19, 0x1

    .line 1088
    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1093
    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1095
    :cond_1
    if-lez v19, :cond_2

    .line 1096
    add-int/lit8 v19, v19, -0x1

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1098
    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 1099
    move/from16 v13, v19

    .line 1100
    move/from16 v15, v19

    .line 1116
    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .line 1117
    .local v8, "nextNextSection":I
    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    .line 1118
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    .line 1119
    add-int/lit8 v8, v8, 0x1

    .line 1120
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1066
    .end local v5    # "exactSection":I
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

    .line 1102
    .restart local v5    # "exactSection":I
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

    .line 1105
    const/4 v15, 0x0

    .line 1106
    goto :goto_1

    .line 1127
    .restart local v8    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 1128
    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 1129
    .local v9, "nextPosition":F
    if-nez v4, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 1130
    .local v17, "snapThreshold":F
    :goto_3
    if-ne v13, v5, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    .line 1131
    move/from16 v18, v11

    .line 1138
    :goto_4
    const/16 v20, 0x0

    add-int/lit8 v21, v4, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v18

    .line 1144
    .end local v5    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v19    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    check-cast v20, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1149
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 1151
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 1153
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    move-result v6

    .line 1154
    .local v6, "hasPreview":Z
    const-string v20, "SeslFastdScroller"

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

    .line 1155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    if-eqz v6, :cond_b

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->transitionToDragging()V

    .line 1160
    :cond_6
    :goto_7
    return-void

    .line 1129
    .end local v6    # "hasPreview":Z
    .restart local v5    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v8    # "nextNextSection":I
    .restart local v9    # "nextPosition":F
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v12    # "prevPosition":F
    .restart local v13    # "prevSection":I
    .restart local v19    # "targetSection":I
    :cond_7
    const/high16 v20, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v21, v0

    div-float v17, v20, v21

    goto/16 :goto_3

    .line 1133
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

    .line 1140
    .end local v5    # "exactSection":I
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
    :cond_9
    int-to-float v0, v4

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v4, -0x1

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v18

    .line 1141
    .restart local v18    # "targetIndex":I
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_5

    .line 1147
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    check-cast v20, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_6

    .line 1157
    .restart local v6    # "hasPreview":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez v6, :cond_6

    .line 1158
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    goto :goto_7
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 874
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 876
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 877
    const/4 p1, 0x1

    .line 880
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 899
    :goto_0
    return-void

    .line 884
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 896
    :goto_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 898
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 886
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->transitionToHidden()V

    goto :goto_1

    .line 889
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 892
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_1

    .line 884
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

    .line 1260
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1261
    .local v1, "container":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 1262
    .local v10, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1265
    .local v0, "bottom":I
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, p1, v11

    if-lez v11, :cond_0

    .line 1266
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1268
    :cond_0
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    mul-float/2addr v11, p1

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    add-float v9, v11, v12

    .line 1269
    .local v9, "thumbMiddle":F
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    sub-float v12, v9, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1272
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1274
    .local v5, "previewImage":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v11, v13

    .line 1277
    .local v4, "previewHalfHeight":F
    move v7, v9

    .line 1280
    .local v7, "previewPos":F
    int-to-float v11, v10

    add-float v3, v11, v4

    .line 1281
    .local v3, "minP":F
    int-to-float v11, v0

    sub-float v2, v11, v4

    .line 1282
    .local v2, "maxP":F
    invoke-static {v7, v3, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(FFF)F

    move-result v6

    .line 1283
    .local v6, "previewMiddle":F
    sub-float v8, v6, v4

    .line 1284
    .local v8, "previewTop":F
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1286
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1287
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1288
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1424
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 26
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 1172
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1173
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1174
    aget-object v12, v13, p1

    .line 1175
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1176
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1179
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1180
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1183
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1185
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1192
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1195
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 1198
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1208
    :cond_2
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1209
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1210
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1213
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1214
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1215
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1216
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1217
    invoke-static {v7, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1218
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1220
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1222
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1226
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    .line 1227
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1231
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1232
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_7

    .line 1233
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1234
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1235
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1241
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1242
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 1243
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1244
    .local v10, "scale":F
    invoke-static {v15, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1245
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1247
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/PathInterpolator;

    const v22, 0x3ea8f5c3    # 0.33f

    const/16 v23, 0x0

    const v24, 0x3e99999a    # 0.3f

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v25}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1250
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    const/16 v20, 0x1

    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v16    # "showingWidth":I
    .end local v18    # "targetWidth":I
    :goto_2
    return v20

    .line 1187
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v17    # "target":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1188
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1199
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1200
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    const/16 v20, 0x1

    goto :goto_2

    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 1237
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_7
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto/16 :goto_1

    .line 1250
    .restart local v16    # "showingWidth":I
    :cond_8
    const/16 v20, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 966
    const-string v1, "SeslFastdScroller"

    const-string/jumbo v2, "transitionToDragging()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 971
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-static {v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0xa7

    .line 973
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 975
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 976
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 977
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 978
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 979
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 980
    return-void
.end method

.method private transitionToHidden()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa7

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 911
    const-string v2, "SeslFastdScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToHidden() mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v8

    invoke-static {v2, v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 917
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 918
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 924
    :goto_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v9

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 925
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 926
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 927
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 930
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 932
    .local v1, "offset":F
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 933
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 934
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 935
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 936
    return-void

    .line 921
    .end local v1    # "offset":F
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v8

    invoke-static {v2, v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 930
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_1
.end method

.method private transitionToVisible()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 942
    const-string v2, "SeslFastdScroller"

    const-string/jumbo v3, "transitionToVisible()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 949
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v10, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0xa7

    .line 950
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 951
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v4, v3, v8

    invoke-static {v2, v9, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0xa7

    .line 953
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 955
    .local v1, "fadeOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 956
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 957
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, v9, v5, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 958
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 959
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 960
    return-void
.end method

.method private updateAppearance()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, "width":I
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 325
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 326
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 329
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 341
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 342
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 343
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 347
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mWidth:I

    .line 350
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 351
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 353
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 355
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 359
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 360
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 363
    :cond_4
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 364
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 365
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 368
    :cond_5
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 369
    .local v1, "textMinSize":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 370
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 371
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 372
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 373
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 374
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 376
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOrientation:I

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    .line 379
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v5, 0x0

    .line 781
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 783
    .local v1, "list":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 786
    .local v0, "container":Landroid/graphics/Rect;
    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 787
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 788
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 789
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 791
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 792
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 794
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 795
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 796
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 797
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 800
    if-ne v2, v6, :cond_1

    .line 801
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getWidth()I

    move-result v3

    .line 802
    .local v3, "width":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 803
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 809
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 805
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 576
    if-lez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    .local v0, "longList":Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-eq v2, v0, :cond_1

    .line 578
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 580
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    .line 582
    :cond_1
    return-void

    .end local v0    # "longList":Z
    :cond_2
    move v0, v1

    .line 576
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 856
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 857
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 860
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 861
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 862
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 863
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 869
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    .line 870
    sub-float v5, v1, v2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 871
    return-void

    .line 865
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 866
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 988
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    .line 989
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v6

    .line 993
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    .line 994
    .local v1, "firstPosition":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 995
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 996
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 997
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 998
    .local v4, "lastPosition":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-lt v4, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 1000
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1001
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method getEffectState()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

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

    .line 1493
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return v3

    .line 1497
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1498
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    if-nez v1, :cond_0

    .line 1500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1502
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1444
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return v1

    .line 1448
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1450
    :pswitch_0
    const-string v2, "SeslFastdScroller"

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

    .line 1451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1461
    const/4 v1, 0x1

    goto :goto_0

    .line 1464
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    .line 1465
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1469
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1470
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1471
    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1472
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1474
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1475
    .local v0, "pos":F
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1476
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1477
    const-string v1, "SeslFastdScroller"

    const-string v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 1485
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1448
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
    .line 560
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 561
    :cond_0
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 562
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 564
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 565
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 566
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    .line 567
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 570
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    .line 572
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 564
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

    const/4 v0, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 1006
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1007
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 1012
    .local v0, "hasMoreItems":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v2, v4, :cond_4

    .line 1013
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 1014
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1015
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1021
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 1023
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 1024
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    .line 1027
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v2, v4, :cond_0

    .line 1028
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1029
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    .line 1017
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 1055
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 557
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1510
    .local v1, "container":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1511
    .local v5, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1513
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1514
    .local v6, "trackImage":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v3, v7

    .line 1515
    .local v3, "min":F
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v2, v7

    .line 1517
    .local v2, "max":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1519
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1520
    const/4 v7, 0x0

    .line 1629
    :goto_0
    return v7

    .line 1523
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1629
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1525
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1526
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1528
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1529
    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1530
    const-string v7, "SeslFastdScroller"

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

    .line 1531
    const/4 v7, 0x1

    goto :goto_0

    .line 1538
    :pswitch_1
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    .line 1540
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1543
    .local v4, "pos":F
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1544
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1545
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1547
    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1548
    const-string v7, "SeslFastdScroller"

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

    .line 1552
    .end local v4    # "pos":F
    :cond_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1557
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1561
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1562
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 1563
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1564
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1566
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1572
    :pswitch_2
    const-string v7, "SeslFastdScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1574
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1575
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 1576
    const-string v7, "SeslFastdScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

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

    .line 1578
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 1579
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1584
    :cond_3
    :goto_2
    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1590
    :cond_4
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1593
    .restart local v4    # "pos":F
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1594
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1597
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    if-eqz v7, :cond_5

    .line 1598
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1601
    :cond_5
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1602
    const-string v7, "SeslFastdScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

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

    .line 1604
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 1605
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1610
    :cond_6
    :goto_3
    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1613
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1580
    .end local v4    # "pos":F
    :cond_8
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_3

    .line 1581
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_2

    .line 1606
    .restart local v4    # "pos":F
    :cond_9
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_6

    .line 1607
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_3

    .line 1619
    .end local v4    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    .line 1620
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 1621
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1623
    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1624
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto/16 :goto_1

    .line 1523
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
    .line 439
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 446
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 472
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    .line 476
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 452
    const-string v0, "SeslFastdScroller"

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

    .line 453
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    .line 456
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    .line 458
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 510
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 511
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 515
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 525
    if-nez p1, :cond_0

    .line 526
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_2

    move p1, v1

    .line 530
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq v2, p1, :cond_1

    .line 531
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 532
    if-eq p1, v1, :cond_3

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 534
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_4

    :goto_2
    aget v0, v2, v1

    .line 535
    .local v0, "previewResId":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 536
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 537
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 541
    .end local v0    # "previewResId":I
    :cond_1
    return-void

    .line 526
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 532
    goto :goto_1

    :cond_4
    move v1, v3

    .line 534
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

    .line 382
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 384
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 385
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_e

    .line 386
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 387
    .local v2, "index":I
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslPosition:I

    if-ne v2, v4, :cond_1

    .line 388
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    .line 385
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_1
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslBackgroundLeft:I

    if-ne v2, v4, :cond_2

    .line 391
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v8

    goto :goto_1

    .line 393
    :cond_2
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslBackgroundRight:I

    if-ne v2, v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1

    .line 396
    :cond_3
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbDrawable:I

    if-ne v2, v4, :cond_4

    .line 397
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 398
    :cond_4
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslTrackDrawable:I

    if-ne v2, v4, :cond_5

    .line 399
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 400
    :cond_5
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textAppearance:I

    if-ne v2, v4, :cond_6

    .line 401
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 403
    :cond_6
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textColor:I

    if-ne v2, v4, :cond_7

    .line 404
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 406
    :cond_7
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_textSize:I

    if-ne v2, v4, :cond_8

    .line 407
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    goto :goto_1

    .line 409
    :cond_8
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_minWidth:I

    if-ne v2, v4, :cond_9

    .line 410
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 412
    :cond_9
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_minHeight:I

    if-ne v2, v4, :cond_a

    .line 413
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 415
    :cond_a
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbMinWidth:I

    if-ne v2, v4, :cond_b

    .line 416
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 418
    :cond_b
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbMinHeight:I

    if-ne v2, v4, :cond_c

    .line 419
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    goto/16 :goto_1

    .line 421
    :cond_c
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_android_padding:I

    if-ne v2, v4, :cond_d

    .line 422
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    goto/16 :goto_1

    .line 424
    :cond_d
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslFastScroll_seslThumbPosition:I

    if-ne v2, v4, :cond_0

    .line 425
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    goto/16 :goto_1

    .line 430
    .end local v2    # "index":I
    :cond_e
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateAppearance()V

    .line 433
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 522
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 609
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateContainerRect()V

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->layoutThumb()V

    .line 618
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->layoutTrack()V

    .line 620
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    .line 622
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 623
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 624
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 625
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 626
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 627
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 630
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 631
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 632
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 633
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 634
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
