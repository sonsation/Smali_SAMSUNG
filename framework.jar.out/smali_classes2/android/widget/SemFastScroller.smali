.class Landroid/widget/SemFastScroller;
.super Ljava/lang/Object;
.source "SemFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemFastScroller$1;,
        Landroid/widget/SemFastScroller$2;,
        Landroid/widget/SemFastScroller$3;,
        Landroid/widget/SemFastScroller$4;,
        Landroid/widget/SemFastScroller$5;,
        Landroid/widget/SemFastScroller$6;
    }
.end annotation


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

.field private static final TAG:Ljava/lang/String; = "SemFastScroller"

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

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

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
.method static synthetic -get0(Landroid/widget/SemFastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/SemFastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/SemFastScroller;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/SemFastScroller;->TAP_TIMEOUT:J

    .line 1704
    new-instance v0, Landroid/widget/SemFastScroller$3;

    const-string/jumbo v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->LEFT:Landroid/util/Property;

    .line 1720
    new-instance v0, Landroid/widget/SemFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->TOP:Landroid/util/Property;

    .line 1736
    new-instance v0, Landroid/widget/SemFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->RIGHT:Landroid/util/Property;

    .line 1752
    new-instance v0, Landroid/widget/SemFastScroller$6;

    const-string/jumbo v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/SemFastScroller;->BOTTOM:Landroid/util/Property;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 107
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 122
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    .line 176
    iput v7, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    .line 179
    iput v7, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    .line 231
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 239
    iput v7, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    .line 240
    iput v6, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 244
    iput v2, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 248
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 250
    iput v6, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    .line 255
    new-instance v3, Landroid/widget/SemFastScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/SemFastScroller$1;-><init>(Landroid/widget/SemFastScroller;)V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 265
    new-instance v3, Landroid/widget/SemFastScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/SemFastScroller$2;-><init>(Landroid/widget/SemFastScroller;)V

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 273
    iput-object p1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    .line 274
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    iput v3, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    .line 275
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iput v3, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    .line 278
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/SemFastScroller;->mScaledTouchSlop:I

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    .line 281
    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    .line 282
    iput v1, p0, Landroid/widget/SemFastScroller;->mState:I

    .line 284
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 283
    :goto_0
    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mMatchDragPosition:Z

    .line 286
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 287
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 288
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 289
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    .line 291
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 293
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 294
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 295
    invoke-virtual {p0, p2}, Landroid/widget/SemFastScroller;->setStyle(I)V

    .line 297
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 298
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 299
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 301
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 303
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 305
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050288

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    .line 306
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050289

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    .line 307
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050305

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    .line 308
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050306

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    .line 310
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    .line 313
    iget v1, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    iget v2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Landroid/widget/SemFastScroller;->updateLongList(II)V

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 315
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 272
    return-void

    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    move v1, v2

    .line 284
    goto/16 :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1697
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

    .line 1768
    sget-object v4, Landroid/widget/SemFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1769
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/SemFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1770
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/SemFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1771
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/SemFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1772
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
    .line 1690
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
    .line 639
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 640
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 638
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1427
    const-string/jumbo v0, "SemFastScroller"

    const-string/jumbo v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 1430
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 1431
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    .line 1435
    :cond_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1436
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1439
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelFling()V

    .line 1440
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1426
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1404
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1403
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1405
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1406
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1402
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1415
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 1414
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 583
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 586
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 588
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 589
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 590
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 593
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 595
    return-object v1
.end method

.method private getColorWithAlpha(IF)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1776
    const/4 v3, 0x0

    .line 1777
    .local v3, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1778
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1779
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1780
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1781
    .local v1, "b":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1783
    return v3
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1310
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1311
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1312
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->getSectionsFromIndexer()V

    .line 1315
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 1317
    :cond_2
    const/16 v17, 0x0

    return v17

    .line 1320
    :cond_3
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    const/16 v17, 0x1

    :goto_0
    move/from16 v5, v17

    .line 1322
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemFastScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1333
    if-gez p1, :cond_8

    .line 1334
    const/16 v17, 0x0

    return v17

    .line 1321
    .end local v5    # "hasSections":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 1320
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1323
    .restart local v5    # "hasSections":Z
    :cond_6
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1325
    const/16 v17, 0x0

    return v17

    .line 1327
    :cond_7
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, p3, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    return v17

    .line 1336
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1341
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1342
    :cond_9
    const/4 v6, 0x0

    .line 1348
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1349
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1350
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1352
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1354
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1355
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1359
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    .line 1366
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    .line 1367
    const/4 v10, 0x0

    .line 1373
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1378
    .local v12, "result":F
    if-lez p1, :cond_a

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1380
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 1383
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1384
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1385
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1390
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_a

    if-lez v8, :cond_a

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

    .line 1395
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    :cond_a
    return v12

    .line 1344
    .end local v6    # "incrementalPos":F
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

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

    .line 1357
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    .line 1361
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    .line 1369
    :cond_e
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    .line 1370
    int-to-float v0, v11

    move/from16 v18, v0

    .line 1369
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

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

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
    const/4 v2, 0x0

    .line 1293
    iget v0, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 1294
    return v2

    .line 1297
    :cond_0
    iget v0, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v1, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1012
    iput-object v3, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1014
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1015
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1016
    nop

    nop

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    .line 1017
    nop

    nop

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1020
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 1021
    nop

    nop

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 1023
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 1024
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1025
    iput-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1026
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    .line 1011
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    .line 1028
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 1029
    iput-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1030
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1031
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 1033
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1034
    iput-object v3, p0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

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
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v6, 0x0

    .line 1671
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1672
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1674
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1675
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1676
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1677
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1674
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1679
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1683
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1640
    invoke-direct {p0, p1}, Landroid/widget/SemFastScroller;->isPointInsideX(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/SemFastScroller;->isPointInsideY(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPointInsideX(F)Z
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1644
    iget-boolean v2, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_1

    .line 1645
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1647
    :cond_1
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/SemFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isPointInsideY(F)Z
    .locals 5
    .param p1, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1652
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 1653
    .local v1, "offset":F
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v4, v1

    .line 1654
    .local v2, "top":F
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v4, v1

    .line 1656
    .local v0, "bottom":F
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 809
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/SemFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 810
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 807
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 818
    iget-object v10, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 819
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 820
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 821
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 822
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 823
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 824
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 826
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 830
    iget v13, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 831
    iget v13, v1, Landroid/graphics/Rect;->top:I

    iget v14, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    add-int v9, v13, v14

    .line 832
    .local v9, "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    iget v14, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    sub-int v0, v13, v14

    .line 839
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 840
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 841
    .local v3, "left":I
    add-int v6, v3, v11

    .line 842
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 817
    return-void

    .line 834
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 835
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v8

    iget v14, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    add-int v9, v13, v14

    .line 836
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v8

    iget v14, p0, Landroid/widget/SemFastScroller;->mTrackPadding:I

    sub-int v0, v13, v14

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 742
    if-nez p2, :cond_0

    .line 743
    const/4 v10, 0x0

    .line 744
    .local v10, "marginLeft":I
    const/4 v12, 0x0

    .line 745
    .local v12, "marginTop":I
    const/4 v11, 0x0

    .line 752
    .local v11, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 753
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 754
    .local v7, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 755
    .local v2, "adjMaxHeight":I
    sub-int v17, v7, v10

    sub-int v17, v17, v11

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 756
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 758
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    .line 757
    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 759
    .local v8, "heightMeasureSpec":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 762
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 763
    .local v6, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 764
    .local v15, "width":I
    div-int/lit8 v17, v6, 0xa

    add-int v17, v17, v12

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 765
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v4, v14, v17

    .line 766
    .local v4, "bottom":I
    sub-int v17, v7, v15

    div-int/lit8 v17, v17, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v9, v17, v18

    .line 767
    .local v9, "left":I
    add-int v13, v9, v15

    .line 768
    .local v13, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 738
    return-void

    .line 747
    .end local v2    # "adjMaxHeight":I
    .end local v3    # "adjMaxWidth":I
    .end local v4    # "bottom":I
    .end local v5    # "container":Landroid/graphics/Rect;
    .end local v6    # "containerHeight":I
    .end local v7    # "containerWidth":I
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "left":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginRight":I
    .end local v12    # "marginTop":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "width":I
    .end local v16    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 748
    .restart local v10    # "marginLeft":I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    .line 749
    .restart local v12    # "marginTop":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .restart local v11    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 653
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 654
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 655
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 656
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 657
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 659
    iget v1, p0, Landroid/widget/SemFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 660
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 651
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/SemFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_1

    .line 683
    if-nez p2, :cond_0

    .line 684
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    .line 685
    .local v9, "marginRight":I
    const/4 v8, 0x0

    .line 702
    .local v8, "marginLeft":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 703
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 705
    .local v5, "containerWidth":I
    if-nez p2, :cond_3

    .line 706
    move v10, v5

    .line 713
    .local v10, "maxWidth":I
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 714
    .local v1, "adjMaxHeight":I
    sub-int v15, v10, v8

    sub-int/2addr v15, v9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 715
    .local v2, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 717
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    .line 716
    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 718
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 724
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_6

    .line 725
    if-nez p2, :cond_5

    iget v15, v4, Landroid/graphics/Rect;->right:I

    :goto_2
    sub-int v11, v15, v9

    .line 726
    .local v11, "right":I
    sub-int v7, v11, v13

    .line 700
    .local v7, "left":I
    :goto_3
    const/4 v12, 0x0

    .line 734
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/lit8 v3, v15, 0x0

    .line 735
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v12, v11, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 677
    return-void

    .line 687
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    .line 688
    .restart local v9    # "marginRight":I
    const/4 v8, 0x0

    .restart local v8    # "marginLeft":I
    goto :goto_0

    .line 691
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_1
    if-nez p2, :cond_2

    .line 692
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/SemFastScroller;->mThumbMarginEnd:I

    .line 693
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 695
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/SemFastScroller;->mPreviewMarginEnd:I

    .line 696
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 707
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 710
    .end local v10    # "maxWidth":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v5, v15

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 725
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v13    # "width":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_2

    .line 728
    :cond_6
    if-nez p2, :cond_7

    iget v15, v4, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int v7, v15, v8

    .line 729
    .restart local v7    # "left":I
    add-int v11, v7, v13

    .restart local v11    # "right":I
    goto :goto_3

    .line 728
    .end local v7    # "left":I
    .end local v11    # "right":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 488
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 501
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 487
    return-void

    .line 491
    :cond_1
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 492
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    goto :goto_0

    .line 493
    :cond_2
    if-eqz p1, :cond_0

    .line 494
    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 495
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 978
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 979
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 977
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 896
    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 897
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 898
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 895
    return-void

    .line 896
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPressed":Z
    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 25
    .param p1, "position"    # F

    .prologue
    .line 1047
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    .line 1050
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1051
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    const/16 v16, 0x0

    .line 1053
    .local v16, "sectionCount":I
    :goto_0
    if-eqz v18, :cond_b

    if-lez v16, :cond_b

    .line 1055
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    const/16 v24, 0x0

    .line 1054
    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1056
    .local v5, "exactSection":I
    move/from16 v21, v5

    .line 1057
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    .line 1058
    .local v20, "targetIndex":I
    move/from16 v17, v5

    .line 1066
    .local v17, "sectionIndex":I
    move v9, v4

    .line 1067
    .local v9, "nextIndex":I
    move/from16 v13, v20

    .line 1068
    .local v13, "prevIndex":I
    move v15, v5

    .line 1069
    .local v15, "prevSection":I
    add-int/lit8 v12, v5, 0x1

    .line 1072
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v22

    if-ge v5, v0, :cond_0

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v5, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1077
    :cond_0
    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 1079
    :cond_1
    if-lez v21, :cond_2

    .line 1080
    add-int/lit8 v21, v21, -0x1

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 1082
    move/from16 v0, v20

    if-eq v13, v0, :cond_4

    .line 1083
    move/from16 v15, v21

    .line 1084
    move/from16 v17, v21

    .line 1100
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    .line 1101
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v9, :cond_5

    .line 1103
    add-int/lit8 v10, v10, 0x1

    .line 1104
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1051
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .restart local v16    # "sectionCount":I
    goto/16 :goto_0

    .line 1086
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_4
    if-nez v21, :cond_1

    .line 1089
    const/16 v17, 0x0

    .line 1090
    goto :goto_1

    .line 1111
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 1112
    .local v14, "prevPosition":F
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1113
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    .line 1114
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    sub-float v22, p1, v14

    cmpg-float v22, v22, v19

    if-gez v22, :cond_8

    .line 1115
    move/from16 v20, v13

    .line 1122
    :goto_4
    add-int/lit8 v22, v4, -0x1

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1125
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1127
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v20

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    .line 1126
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    .line 1128
    const/16 v23, 0x0

    .line 1126
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 1150
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemFastScroller;->mCurrentSection:I

    .line 1152
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/SemFastScroller;->transitionPreviewLayout(I)Z

    move-result v7

    .line 1153
    .local v7, "hasPreview":Z
    const-string/jumbo v22, "SemFastScroller"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", position = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-eqz v7, :cond_e

    .line 1155
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->transitionToDragging()V

    .line 1046
    :cond_6
    :goto_6
    return-void

    .line 1113
    .end local v7    # "hasPreview":Z
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_7
    int-to-float v0, v4

    move/from16 v22, v0

    const/high16 v23, 0x3e000000    # 0.125f

    div-float v19, v23, v22

    .restart local v19    # "snapThreshold":F
    goto/16 :goto_3

    .line 1117
    :cond_8
    sub-int v22, v9, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, p1, v14

    mul-float v22, v22, v23

    .line 1118
    sub-float v23, v11, v14

    .line 1117
    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v13, v22

    goto/16 :goto_4

    .line 1129
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto/16 :goto_5

    .line 1132
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AdapterView;->setSelection(I)V

    goto/16 :goto_5

    .line 1135
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_b
    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v23, v4, -0x1

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 1137
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 1138
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1140
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v8

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    .line 1139
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    .line 1140
    const/16 v23, 0x0

    .line 1139
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 1147
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v17, -0x1

    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    .line 1141
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1144
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_7

    .line 1156
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    if-nez v7, :cond_6

    .line 1157
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 868
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 870
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 871
    const/4 p1, 0x1

    .line 874
    :cond_0
    iget v0, p0, Landroid/widget/SemFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 875
    return-void

    .line 878
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 890
    :goto_0
    iput p1, p0, Landroid/widget/SemFastScroller;->mState:I

    .line 892
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->refreshDrawablePressedState()V

    .line 867
    return-void

    .line 880
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->transitionToHidden()V

    goto :goto_0

    .line 883
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->transitionToVisible()V

    goto :goto_0

    .line 886
    :pswitch_2
    iget v0, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 21
    .param p1, "position"    # F

    .prologue
    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1260
    .local v2, "container":Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1261
    .local v16, "top":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1263
    .local v1, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 1264
    .local v17, "trackImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1265
    .local v14, "thumbImage":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1266
    .local v5, "min":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    .line 1267
    .local v3, "max":F
    move v7, v5

    .line 1268
    .local v7, "offset":F
    sub-float v13, v3, v5

    .line 1269
    .local v13, "range":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mThumbRange:F

    move/from16 v18, v0

    mul-float v18, v18, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    move/from16 v19, v0

    add-float v15, v18, v19

    .line 1270
    .local v15, "thumbMiddle":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationY(F)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1274
    .local v9, "previewImage":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 1277
    .local v8, "previewHalfHeight":F
    move v11, v15

    .line 1280
    .local v11, "previewPos":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v6, v18, v8

    .line 1281
    .local v6, "minP":F
    int-to-float v0, v1

    move/from16 v18, v0

    sub-float v4, v18, v8

    .line 1282
    .local v4, "maxP":F
    invoke-static {v15, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    .line 1283
    .local v10, "previewMiddle":F
    sub-float v12, v10, v8

    .line 1284
    .local v12, "previewTop":F
    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1258
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/SemFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    .line 1422
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 26
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemFastScroller;->mSections:[Ljava/lang/Object;

    .line 1171
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1172
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1173
    aget-object v12, v13, p1

    .line 1174
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1175
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1178
    .end local v12    # "section":Ljava/lang/Object;
    .end local v19    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1179
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1182
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1183
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1184
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1191
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 1197
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1207
    :cond_2
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/SemFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1208
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/widget/SemFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1209
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1212
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1213
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1214
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1215
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1216
    invoke-static {v7, v4}, Landroid/widget/SemFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1217
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1219
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1221
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1225
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    .line 1226
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    .line 1225
    sub-int v8, v20, v21

    .line 1230
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 1231
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_7

    .line 1232
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1233
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/SemFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1234
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1240
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 1241
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 1242
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1243
    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/SemFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1244
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1246
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/PathInterpolator;

    const v22, 0x3ea8f5c3    # 0.33f

    const/16 v23, 0x0

    const v24, 0x3e99999a    # 0.3f

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v25}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1249
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x0

    :goto_2
    return v20

    .line 1186
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1187
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1198
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemFastScroller;->mState:I

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

    .line 1199
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x0

    :goto_3
    return v20

    :cond_6
    const/16 v20, 0x1

    goto :goto_3

    .line 1236
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

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_1

    .line 1249
    .restart local v16    # "showingWidth":I
    :cond_8
    const/16 v20, 0x1

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 961
    const-string/jumbo v1, "SemFastScroller"

    const-string/jumbo v2, "transitionToDragging()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 967
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 966
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    .line 967
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v3, v2, v6

    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 966
    invoke-static {v1, v7, v2}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 968
    const-wide/16 v2, 0xa7

    .line 966
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 970
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 971
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 972
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 973
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 974
    iput-boolean v6, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    .line 960
    return-void
.end method

.method private transitionToHidden()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 905
    const-string/jumbo v2, "SemFastScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToHidden() mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/SemFastScroller;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget v2, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v2, v9, :cond_0

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 911
    :goto_0
    iput-boolean v6, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    .line 912
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/SemFastScroller;->mCurrentSection:I

    .line 913
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    .line 914
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v9

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v10

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 913
    invoke-static {v2, v8, v3}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 914
    const-wide/16 v4, 0xa7

    .line 913
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 916
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 917
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 925
    :goto_1
    iget-boolean v2, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_2
    int-to-float v1, v2

    .line 927
    .local v1, "offset":F
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 928
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 929
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v8, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 930
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 904
    return-void

    .line 908
    .end local v0    # "fadeOut":Landroid/animation/Animator;
    .end local v1    # "offset":F
    :cond_0
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v7}, Landroid/widget/AbsListView;->semAutoHide(I)V

    goto :goto_0

    .line 920
    .restart local v0    # "fadeOut":Landroid/animation/Animator;
    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    .line 921
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v9

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v10

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 920
    invoke-static {v2, v8, v3}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 921
    const-wide/16 v4, 0x0

    .line 920
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1

    .line 925
    :cond_2
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_2
.end method

.method private transitionToVisible()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 937
    const-string/jumbo v2, "SemFastScroller"

    const-string/jumbo v3, "transitionToVisible()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 939
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 942
    :cond_0
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v7}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 944
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v10, v3}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 945
    const-wide/16 v4, 0xa7

    .line 944
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 947
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 946
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    .line 947
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v4, v3, v8

    .line 946
    invoke-static {v2, v9, v3}, Landroid/widget/SemFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 948
    const-wide/16 v4, 0xa7

    .line 946
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 950
    .local v1, "fadeOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 951
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 952
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, v9, v5, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 953
    iput-boolean v6, p0, Landroid/widget/SemFastScroller;->mShowingPreview:Z

    .line 954
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 936
    return-void
.end method

.method private updateAppearance()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, "width":I
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 322
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 323
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    .line 326
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    :cond_0
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 336
    :cond_1
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 338
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 339
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 344
    :cond_2
    iget v3, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SemFastScroller;->mWidth:I

    .line 346
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 347
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 349
    iget v3, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 351
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 354
    :cond_3
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 355
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 356
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 359
    :cond_4
    iget v3, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 360
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 361
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 364
    :cond_5
    iget v3, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 365
    .local v1, "textMinSize":I
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 366
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 367
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 368
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 369
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 370
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 371
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/widget/SemFastScroller;->mOrientation:I

    .line 373
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->refreshDrawablePressedState()V

    .line 318
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 775
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    .line 776
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 778
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 779
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 780
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 781
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 782
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 784
    iget v2, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    .line 785
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    .line 786
    if-nez v2, :cond_1

    .line 787
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 788
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 789
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 790
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 793
    if-ne v2, v6, :cond_1

    .line 794
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v3

    .line 795
    .local v3, "width":I
    iget v4, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 796
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 774
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 798
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
    const/4 v3, 0x1

    .line 571
    if-lez p1, :cond_2

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    .line 572
    :goto_0
    iget-boolean v1, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    .line 573
    iput-boolean v0, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    .line 575
    invoke-direct {p0, v3}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    .line 569
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x1

    .local v0, "longList":Z
    goto :goto_0

    .end local v0    # "longList":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "longList":Z
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 850
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 851
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 854
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 855
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 856
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 857
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 863
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Landroid/widget/SemFastScroller;->mThumbOffset:F

    .line 864
    sub-float v5, v1, v2

    iput v5, p0, Landroid/widget/SemFastScroller;->mThumbRange:F

    .line 849
    return-void

    .line 859
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 860
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
    .line 543
    iget v0, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/SemFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1494
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1495
    return v3

    .line 1498
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1499
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 1500
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    if-nez v1, :cond_2

    .line 1501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v1

    .line 1499
    if-eqz v1, :cond_2

    .line 1502
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1503
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 1506
    :cond_2
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1444
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1445
    return v6

    .line 1448
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1490
    :cond_1
    :goto_0
    return v6

    .line 1450
    :pswitch_0
    const-string/jumbo v1, "SemFastScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1457
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1460
    const/4 v1, 0x1

    return v1

    .line 1463
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    .line 1464
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1468
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1469
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1470
    :cond_3
    iget-wide v2, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 1471
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1473
    iget v1, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1474
    .local v0, "pos":F
    iput v0, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 1475
    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    .line 1477
    const-string/jumbo v1, "SemFastScroller"

    const-string/jumbo v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-virtual {p0, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1486
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1448
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
    const/4 v1, 0x0

    .line 555
    iget v2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_3

    .line 556
    :cond_0
    iput p2, p0, Landroid/widget/SemFastScroller;->mOldItemCount:I

    .line 557
    iput p1, p0, Landroid/widget/SemFastScroller;->mOldChildCount:I

    .line 559
    sub-int v2, p2, p1

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 560
    .local v1, "hasMoreItems":Z
    :cond_1
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 561
    iget-object v2, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 562
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/SemFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 565
    .end local v0    # "firstVisibleItem":I
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/SemFastScroller;->updateLongList(II)V

    .line 554
    .end local v1    # "hasMoreItems":Z
    :cond_3
    return-void
.end method

.method public onScroll(III)V
    .locals 6
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    .line 983
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-direct {p0, v2}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 985
    return-void

    .line 988
    :cond_0
    sub-int v1, p3, p2

    if-lez v1, :cond_4

    const/4 v0, 0x1

    .line 989
    .local v0, "hasMoreItems":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v1, v5, :cond_2

    .line 990
    iget v1, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    .line 991
    iget v1, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 992
    iput v4, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 998
    :cond_2
    :goto_1
    iput-boolean v3, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    .line 1000
    iget v1, p0, Landroid/widget/SemFastScroller;->mFirstVisibleItem:I

    if-eq v1, p1, :cond_3

    .line 1001
    iput p1, p0, Landroid/widget/SemFastScroller;->mFirstVisibleItem:I

    .line 1004
    iget v1, p0, Landroid/widget/SemFastScroller;->mState:I

    if-eq v1, v5, :cond_3

    .line 1005
    invoke-direct {p0, v3}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1006
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 982
    :cond_3
    return-void

    .line 988
    .end local v0    # "hasMoreItems":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hasMoreItems":Z
    goto :goto_0

    .line 994
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemFastScroller;->getPosFromItemCount(III)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1038
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 550
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1510
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1511
    .local v1, "container":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1512
    .local v5, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1514
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1515
    .local v6, "trackImage":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v3, v7

    .line 1516
    .local v3, "min":F
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v2, v7

    .line 1518
    .local v2, "max":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1520
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1521
    const/4 v7, 0x0

    return v7

    .line 1524
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1626
    :cond_1
    :goto_0
    const/4 v7, 0x0

    return v7

    .line 1526
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/widget/SemFastScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1527
    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1528
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1529
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1530
    const-string/jumbo v7, "SemFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_DOWN.. open() called with posY "

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

    return v7

    .line 1538
    :pswitch_1
    iget-wide v8, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    .line 1540
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1543
    .local v4, "pos":F
    iput v4, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 1544
    invoke-direct {p0, v4}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 1545
    invoke-direct {p0, v4}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    .line 1546
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1547
    const-string/jumbo v7, "SemFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    .end local v4    # "pos":F
    :cond_2
    iget v7, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1556
    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1557
    iget-object v7, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1560
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1561
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->postAutoHide()V

    .line 1562
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1563
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1565
    const/4 v7, 0x1

    return v7

    .line 1571
    :pswitch_2
    const-string/jumbo v7, "SemFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/SemFastScroller;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mInitialTouchY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-wide v8, p0, Landroid/widget/SemFastScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Landroid/widget/SemFastScroller;->mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Landroid/widget/SemFastScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1573
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->beginDrag()V

    .line 1574
    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 1575
    const-string/jumbo v7, "SemFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 1578
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1582
    :cond_3
    :goto_1
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1588
    :cond_4
    iget v7, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1591
    .restart local v4    # "pos":F
    iput v4, p0, Landroid/widget/SemFastScroller;->mOldThumbPosition:F

    .line 1592
    invoke-direct {p0, v4}, Landroid/widget/SemFastScroller;->setThumbPos(F)V

    .line 1595
    iget-boolean v7, p0, Landroid/widget/SemFastScroller;->mScrollCompleted:Z

    if-eqz v7, :cond_5

    .line 1596
    invoke-direct {p0, v4}, Landroid/widget/SemFastScroller;->scrollTo(F)V

    .line 1599
    :cond_5
    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1600
    const-string/jumbo v7, "SemFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 1603
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    .line 1607
    :cond_6
    :goto_2
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1610
    :cond_7
    const/4 v7, 0x1

    return v7

    .line 1579
    .end local v4    # "pos":F
    :cond_8
    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_3

    .line 1580
    iput v2, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto :goto_1

    .line 1604
    .restart local v4    # "pos":F
    :cond_9
    iget v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_6

    .line 1605
    iput v2, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto :goto_2

    .line 1616
    .end local v4    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->cancelPendingDrag()V

    .line 1617
    iget v7, p0, Landroid/widget/SemFastScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 1618
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 1620
    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/SemFastScroller;->mEffectState:I

    .line 1621
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/SemFastScroller;->mScrollY:F

    goto/16 :goto_0

    .line 1524
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
    .line 437
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 436
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 467
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 468
    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mAlwaysShow:Z

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    .line 466
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 448
    const-string/jumbo v0, "SemFastScroller"

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

    .line 449
    iget-boolean v0, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 450
    iput-boolean p1, p0, Landroid/widget/SemFastScroller;->mEnabled:Z

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->onStateDependencyChanged(Z)V

    .line 447
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 505
    iget v0, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 506
    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollBarStyle:I

    .line 508
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 504
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 520
    if-nez p1, :cond_0

    .line 521
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    const/4 p1, 0x1

    .line 525
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_1

    .line 526
    iput p1, p0, Landroid/widget/SemFastScroller;->mScrollbarPosition:I

    .line 527
    if-eq p1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    .line 529
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    iget-boolean v4, p0, Landroid/widget/SemFastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_4

    :goto_2
    aget v0, v1, v2

    .line 530
    .local v0, "previewResId":I
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 532
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemFastScroller;->mColorPrimary:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 534
    invoke-virtual {p0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 519
    .end local v0    # "previewResId":I
    :cond_1
    return-void

    .line 522
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 527
    goto :goto_1

    :cond_4
    move v2, v3

    .line 529
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 377
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mContext:Landroid/content/Context;

    .line 378
    sget-object v5, Lcom/android/internal/R$styleable;->FastScroll:[I

    .line 377
    const/4 v6, 0x0

    .line 378
    const v7, 0x10103f7

    .line 377
    invoke-virtual {v4, v6, v5, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 379
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 380
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 381
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 382
    .local v2, "index":I
    packed-switch v2, :pswitch_data_0

    .line 380
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :pswitch_0
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mOverlayPosition:I

    goto :goto_1

    .line 387
    :pswitch_1
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v8

    goto :goto_1

    .line 390
    :pswitch_2
    iget-object v4, p0, Landroid/widget/SemFastScroller;->mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x1

    aput v5, v4, v6

    goto :goto_1

    .line 393
    :pswitch_3
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 396
    :pswitch_4
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 399
    :pswitch_5
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 402
    :pswitch_6
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 405
    :pswitch_7
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mTextSize:F

    goto :goto_1

    .line 408
    :pswitch_8
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 411
    :pswitch_9
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 414
    :pswitch_a
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 417
    :pswitch_b
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 420
    :pswitch_c
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 423
    :pswitch_d
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/SemFastScroller;->mThumbPosition:I

    goto :goto_1

    .line 428
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateAppearance()V

    .line 376
    return-void

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemFastScroller;->setState(I)V

    .line 515
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 604
    iget-boolean v1, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 605
    return-void

    .line 607
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    .line 609
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateContainerRect()V

    .line 611
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->layoutThumb()V

    .line 612
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->layoutTrack()V

    .line 614
    invoke-direct {p0}, Landroid/widget/SemFastScroller;->updateOffsetAndRange()V

    .line 616
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SemFastScroller;->mUpdatingLayout:Z

    .line 617
    iget-object v0, p0, Landroid/widget/SemFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 618
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 619
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 620
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 621
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 624
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 625
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 626
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 627
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 628
    iget-object v1, p0, Landroid/widget/SemFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/SemFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 601
    return-void
.end method
