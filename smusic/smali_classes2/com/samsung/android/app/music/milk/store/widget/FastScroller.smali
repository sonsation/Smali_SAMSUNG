.class Lcom/samsung/android/app/music/milk/store/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/FastScroller$MathUtils;,
        Lcom/samsung/android/app/music/milk/store/widget/FastScroller$IntProperty;,
        Lcom/samsung/android/app/music/milk/store/widget/FastScroller$FastScrollPositionChangedListener;
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

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:J = 0xa7L

.field private static final DURATION_FADE_OUT:I = 0xa7

.field private static final DURATION_RESIZE:I = 0x64

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

.field private static final PREVIEW_IMAGE_ALPHA:I = 0xcc

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

.field private static final TAG:Ljava/lang/String;

.field private static final TAP_TIMEOUT:J

.field private static TOP:Landroid/util/Property; = null
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

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mAdditionalTouchArea:F

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:Ljava/lang/String;

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mInitialTouchY:F

.field private mLastVisibleItemPosition:I

.field private mLayoutFromRight:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScaledTouchSlop:I

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mThumbMarginEnd:I

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAG:Ljava/lang/String;

    .line 76
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAP_TIMEOUT:J

    .line 993
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1005
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$5;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1017
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$6;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1029
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 12
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    .line 95
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mScrollbarPosition:I

    .line 102
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    .line 112
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mAdditionalTouchArea:F

    .line 134
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 136
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 138
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 179
    new-instance v7, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 310
    new-instance v7, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 675
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLastVisibleItemPosition:I

    .line 958
    new-instance v7, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$3;-><init>(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 190
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 192
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-nez v0, :cond_1

    const/4 v7, 0x0

    :goto_0
    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOldItemCount:I

    .line 193
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOldChildCount:I

    .line 194
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mScaledTouchSlop:I

    .line 195
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 196
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0200ff

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 197
    .local v6, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 198
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1010433

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 199
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 200
    .local v4, "primaryColor":I
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 202
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 203
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 207
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mWidth:I

    .line 209
    if-eqz v6, :cond_0

    .line 210
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mWidth:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mWidth:I

    .line 212
    :cond_0
    const v7, 0x7f0d0106

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbMarginEnd:I

    .line 213
    const v7, 0x7f0d0288

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mAdditionalTouchArea:F

    .line 215
    const v7, 0x7f0d0104

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMinWidth:I

    .line 216
    const v7, 0x7f0d0104

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMinHeight:I

    .line 217
    const v7, 0x7f0d04b9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMarginEnd:I

    .line 219
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 220
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 221
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const v8, 0x7f0200fe

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v4, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v8, 0xcc

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 225
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 226
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 228
    const v7, 0x7f1100b3

    const/4 v8, 0x0

    .line 229
    invoke-static {v5, v7, v8}, Landroid/support/v4/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 230
    const v7, 0x7f0d0105

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTextSize:F

    .line 231
    const v7, 0x7f0d0103

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    .line 233
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 234
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTextSize:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 236
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    iget v9, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    iget v10, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    iget v11, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 239
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTextSize:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 240
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 241
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    iget v9, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    iget v10, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    iget v11, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewPadding:I

    .line 242
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 244
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    .line 245
    .local v3, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 246
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 247
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 248
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 250
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setScrollbarPosition(I)V

    .line 251
    return-void

    .line 192
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v4    # "primaryColor":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->onScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 972
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

    .line 1043
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1044
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1045
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1046
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1047
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
    .line 967
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
    .line 568
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 569
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 570
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 855
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAG:Ljava/lang/String;

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    .line 858
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 861
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    .line 862
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 814
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    .line 815
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 254
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 257
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 260
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 261
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 264
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 265
    return-object v1
.end method

.method private getColorStateList(IF)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    .line 293
    .local v1, "states":[[I
    new-array v0, v4, [I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getColorWithAlpha(IF)I

    move-result v2

    aput v2, v0, v3

    .line 294
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getColorWithAlpha(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 304
    .line 305
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 306
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 305
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private getPositionFromItemCount(II)F
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 678
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v2

    .line 682
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findLastCompletelyVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 684
    .local v0, "lastVisibleItem":I
    if-gez v0, :cond_2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLastVisibleItemPosition:I

    if-ltz v3, :cond_2

    .line 685
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLastVisibleItemPosition:I

    .line 687
    :cond_2
    sub-int v3, v0, p1

    add-int/lit8 v1, v3, 0x1

    .line 689
    .local v1, "visibleItemCount":I
    if-ltz v0, :cond_3

    .line 690
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLastVisibleItemPosition:I

    .line 695
    :cond_3
    if-eq v1, p2, :cond_0

    .line 699
    int-to-float v2, p1

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private getPositionFromMotionEvent(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 666
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 669
    .local v0, "range":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 672
    :goto_0
    return v1

    :cond_0
    div-float v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$MathUtils;->constrain(FFF)F

    move-result v1

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
    .line 435
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 436
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 438
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 439
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 440
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 441
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 438
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 447
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

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

    .line 840
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 841
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 841
    goto :goto_0

    .line 843
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mAdditionalTouchArea:F

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
    .line 848
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 849
    .local v1, "offset":F
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 850
    .local v2, "top":F
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 851
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

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 521
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 523
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 524
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 525
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_0

    .line 526
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMarginEnd:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 531
    return-void

    .line 528
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMarginEnd:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private measureThumb(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 512
    .local v0, "margins":Landroid/graphics/Rect;
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 513
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 514
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 515
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbMarginEnd:I

    :cond_0
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 516
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 517
    return-void

    .line 514
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbMarginEnd:I

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 582
    if-nez p3, :cond_0

    const/4 v9, 0x0

    .line 583
    .local v9, "marginTop":I
    :goto_0
    if-nez p3, :cond_1

    const/4 v7, 0x0

    .line 584
    .local v7, "marginLeft":I
    :goto_1
    if-nez p3, :cond_2

    const/4 v8, 0x0

    .line 586
    .local v8, "marginRight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 587
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 589
    .local v4, "containerWidth":I
    if-nez p2, :cond_3

    .line 590
    move v10, v4

    .line 597
    .local v10, "maxWidth":I
    :goto_3
    const/4 v14, 0x0

    sub-int v15, v10, v7

    sub-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 598
    .local v1, "adjMaxWidth":I
    const/high16 v14, -0x80000000

    .line 599
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 600
    .local v13, "widthMeasureSpec":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 601
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 602
    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/view/View;->measure(II)V

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 608
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_6

    .line 609
    if-nez p2, :cond_5

    iget v14, v3, Landroid/graphics/Rect;->right:I

    :goto_4
    sub-int v11, v14, v8

    .line 610
    .local v11, "right":I
    sub-int v6, v11, v12

    .line 617
    .local v6, "left":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v2, v9, v14

    .line 618
    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v9, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 619
    return-void

    .line 582
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerWidth":I
    .end local v5    # "heightMeasureSpec":I
    .end local v6    # "left":I
    .end local v7    # "marginLeft":I
    .end local v8    # "marginRight":I
    .end local v9    # "marginTop":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "width":I
    .end local v13    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 583
    .restart local v9    # "marginTop":I
    :cond_1
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 584
    .restart local v7    # "marginLeft":I
    :cond_2
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 591
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    .restart local v8    # "marginRight":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_4

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_3

    .line 594
    .end local v10    # "maxWidth":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    sub-int v10, v4, v14

    .restart local v10    # "maxWidth":I
    goto :goto_3

    .line 609
    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v12    # "width":I
    .restart local v13    # "widthMeasureSpec":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    goto :goto_4

    .line 612
    :cond_6
    if-nez p2, :cond_7

    iget v14, v3, Landroid/graphics/Rect;->left:I

    :goto_6
    add-int v6, v14, v7

    .line 613
    .restart local v6    # "left":I
    add-int v11, v6, v12

    .restart local v11    # "right":I
    goto :goto_5

    .line 612
    .end local v6    # "left":I
    .end local v11    # "right":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    goto :goto_6
.end method

.method private onScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 339
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-ne v2, v3, :cond_2

    .line 340
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findFirstVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 344
    .local v0, "firstVisibleItem":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-eq v2, v5, :cond_4

    .line 346
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 348
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    .line 347
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getPositionFromItemCount(II)F

    move-result v1

    .line 349
    .local v1, "thumbPosition":F
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setThumbPosition(F)V

    .line 352
    .end local v1    # "thumbPosition":F
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v2, v0, :cond_1

    .line 353
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mFirstVisibleItem:I

    .line 354
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-eq v2, v5, :cond_1

    .line 355
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method private scrollTo(F)I
    .locals 7
    .param p1, "position"    # F

    .prologue
    const/4 v4, 0x0

    .line 866
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 867
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 869
    .local v1, "count":I
    :goto_0
    int-to-float v5, v1

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v1, -0x1

    invoke-static {v5, v4, v6}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$MathUtils;->constrain(III)I

    move-result v3

    .line 871
    .local v3, "targetIndex":I
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 872
    .local v2, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v5, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v5, :cond_2

    .line 873
    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 878
    :cond_0
    :goto_1
    return v3

    .end local v1    # "count":I
    .end local v3    # "targetIndex":I
    :cond_1
    move v1, v4

    .line 867
    goto :goto_0

    .line 874
    .restart local v1    # "count":I
    .restart local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .restart local v3    # "targetIndex":I
    :cond_2
    instance-of v5, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v5, :cond_0

    .line 875
    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 876
    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 319
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 322
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    .line 335
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 324
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->transitionToHidden()V

    goto :goto_1

    .line 327
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 330
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 335
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 662
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setThumbPosition(FIZ)V

    .line 663
    return-void
.end method

.method private setThumbPosition(FIZ)V
    .locals 9
    .param p1, "position"    # F
    .param p2, "targetIndex"    # I
    .param p3, "fromScroller"    # Z

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 626
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v5, v6

    .line 628
    .local v5, "range":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    .line 629
    const/high16 p1, 0x3f800000    # 1.0f

    .line 634
    :cond_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_1

    .line 635
    const/4 v5, 0x0

    .line 637
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    mul-float v7, p1, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 640
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v3, v6

    .line 641
    .local v3, "previewHeight":F
    div-float v6, v3, v8

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 642
    .local v2, "offset":F
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v6

    .line 643
    .local v1, "minPos":F
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float v0, v6, v3

    .line 644
    .local v0, "maxPos":F
    mul-float v6, p1, v5

    sub-float/2addr v6, v2

    invoke-static {v6, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$MathUtils;->constrain(FFF)F

    move-result v4

    .line 646
    .local v4, "previewPos":F
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 647
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 648
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 650
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v6, v6, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$FastScrollPositionChangedListener;

    if-eqz v6, :cond_2

    .line 651
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$FastScrollPositionChangedListener;

    invoke-interface {v6, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller$FastScrollPositionChangedListener;->onScrollPositionChanged(FIZ)V

    .line 653
    :cond_2
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 822
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    .line 823
    return-void
.end method

.method private transitionPreviewLayout(Ljava/lang/String;)Z
    .locals 18
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 891
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 895
    .local v5, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v15, :cond_2

    .line 896
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 897
    .local v11, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 904
    .local v13, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 906
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_0

    .line 909
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->cancel()V

    .line 913
    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x32

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 914
    .local v10, "showTarget":Landroid/animation/Animator;
    const/4 v15, 0x0

    invoke-static {v11, v15}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x32

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    .line 915
    .local v4, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 918
    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->left:I

    .line 919
    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->top:I

    .line 920
    iget v15, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->right:I

    .line 921
    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 922
    invoke-static {v5, v2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v7

    .line 923
    .local v7, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 925
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 927
    .local v3, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 932
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v6, v15, v16

    .line 936
    .local v6, "previewWidth":I
    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 937
    .local v14, "targetWidth":I
    if-le v14, v6, :cond_3

    .line 938
    int-to-float v15, v6

    int-to-float v0, v14

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setScaleX(F)V

    .line 939
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x64

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 940
    .local v9, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 946
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    .line 947
    .local v12, "showingWidth":I
    if-le v12, v14, :cond_1

    .line 948
    int-to-float v15, v14

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 949
    .local v8, "scale":F
    invoke-static {v11, v8}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x64

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 950
    .restart local v9    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 953
    .end local v8    # "scale":F
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 954
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    return v15

    .line 899
    .end local v3    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v4    # "hideShowing":Landroid/animation/Animator;
    .end local v6    # "previewWidth":I
    .end local v7    # "resizePreview":Landroid/animation/Animator;
    .end local v10    # "showTarget":Landroid/animation/Animator;
    .end local v11    # "showing":Landroid/widget/TextView;
    .end local v12    # "showingWidth":I
    .end local v13    # "target":Landroid/widget/TextView;
    .end local v14    # "targetWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 900
    .restart local v11    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .restart local v13    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 942
    .restart local v3    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v4    # "hideShowing":Landroid/animation/Animator;
    .restart local v6    # "previewWidth":I
    .restart local v7    # "resizePreview":Landroid/animation/Animator;
    .restart local v10    # "showTarget":Landroid/animation/Animator;
    .restart local v14    # "targetWidth":I
    :cond_3
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 954
    .restart local v12    # "showingWidth":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa7

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 406
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 410
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 411
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 412
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v6, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 413
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 415
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 416
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 417
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 419
    iput-boolean v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mShowingPreview:Z

    .line 420
    return-void
.end method

.method private transitionToHidden()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xa7

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 384
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 388
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    .line 389
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 390
    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 393
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 394
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v1, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 395
    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 397
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 398
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 399
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 401
    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mShowingPreview:Z

    .line 402
    return-void

    .line 393
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const-wide/16 v10, 0xa7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 363
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 367
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v8, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    .line 368
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 369
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v12

    .line 370
    invoke-static {v3, v9, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 371
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 372
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v3, v9, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 373
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 375
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 376
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v12

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 377
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    iput-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mShowingPreview:Z

    .line 380
    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .prologue
    const/high16 v5, 0x1000000

    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 536
    .local v0, "container":Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 537
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 538
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 539
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 541
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getScrollBarStyle()I

    move-result v1

    .line 542
    .local v1, "scrollbarStyle":I
    if-eq v1, v5, :cond_0

    if-nez v1, :cond_1

    .line 544
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 545
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 546
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 549
    if-ne v1, v5, :cond_1

    .line 550
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mWidth:I

    .line 551
    .local v2, "width":I
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mScrollbarPosition:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 552
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 558
    .end local v2    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 554
    .restart local v2    # "width":I
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method


# virtual methods
.method getWidth()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mWidth:I

    return v0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 758
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mEnabled:Z

    if-nez v2, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v1

    .line 761
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 763
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mInitialTouchY:F

    .line 765
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 769
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 770
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 771
    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->beginDrag()V

    .line 773
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getPositionFromMotionEvent(F)F

    move-result v0

    .line 774
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->scrollTo(F)I

    .line 775
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 780
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 705
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mEnabled:Z

    if-nez v4, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v2

    .line 708
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 709
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 752
    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent() INVALID ACTION.. actionMasked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :pswitch_0
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_UP.. mState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    .line 714
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->beginDrag()V

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getPositionFromMotionEvent(F)F

    move-result v1

    .line 716
    .local v1, "pos":F
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->scrollTo(F)I

    move-result v4

    invoke-direct {p0, v1, v4, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setThumbPosition(FIZ)V

    .line 717
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .end local v1    # "pos":F
    :cond_2
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-ne v4, v7, :cond_0

    .line 722
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 723
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 724
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    .line 725
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->postAutoHide()V

    move v2, v3

    .line 726
    goto/16 :goto_0

    .line 730
    :pswitch_1
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mInitialTouchY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mInitialTouchY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPendingDrag:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_3

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->beginDrag()V

    .line 736
    :cond_3
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-ne v4, v7, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getPositionFromMotionEvent(F)F

    move-result v1

    .line 739
    .restart local v1    # "pos":F
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->scrollTo(F)I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setThumbPosition(FIZ)V

    move v2, v3

    .line 740
    goto/16 :goto_0

    .line 744
    .end local v1    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->cancelPendingDrag()V

    .line 745
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    if-ne v4, v7, :cond_0

    .line 746
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 747
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    .line 748
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->postAutoHide()V

    goto/16 :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 276
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mEnabled:Z

    .line 277
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mEnabled:Z

    if-nez v0, :cond_1

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method setScrollbarPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 451
    if-nez p1, :cond_0

    .line 452
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_2

    move p1, v3

    .line 457
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mScrollbarPosition:I

    if-eq v5, p1, :cond_1

    .line 458
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mScrollbarPosition:I

    .line 459
    if-eq p1, v3, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mLayoutFromRight:Z

    .line 461
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 462
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 464
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 465
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 464
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 466
    .local v2, "textMinWidth":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 467
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 469
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 470
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 469
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 471
    .local v1, "textMinHeight":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 472
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->updateLayout()V

    .line 476
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_1
    return-void

    .line 453
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_3
    move v3, v4

    .line 459
    goto :goto_1
.end method

.method setTintColor(I)V
    .locals 2
    .param p1, "tintColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getColorStateList(IF)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 289
    return-void
.end method

.method updateLayout()V
    .locals 3

    .prologue
    .line 482
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mUpdatingLayout:Z

    .line 486
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->updateContainerRect()V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 490
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->measureThumb(Landroid/graphics/Rect;)V

    .line 491
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 494
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 495
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 496
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 498
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 500
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 501
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 502
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 503
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 504
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 507
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method

.method updateThumbPosition()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 789
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 790
    .local v1, "childCount":I
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 791
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 792
    .local v4, "itemCount":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOldItemCount:I

    if-ne v6, v4, :cond_0

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOldChildCount:I

    if-eq v6, v1, :cond_1

    .line 793
    :cond_0
    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOldItemCount:I

    .line 794
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mOldChildCount:I

    .line 795
    if-lez v4, :cond_4

    .line 796
    sub-int v6, v4, v1

    if-lez v6, :cond_3

    const/4 v3, 0x1

    .line 797
    .local v3, "hasMoreItems":Z
    :goto_1
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 798
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findFirstVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    .line 800
    .local v2, "firstVisibleItem":I
    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->getPositionFromItemCount(II)F

    move-result v5

    .line 799
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setThumbPosition(F)V

    .line 806
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "hasMoreItems":Z
    :cond_1
    :goto_2
    return-void

    .end local v4    # "itemCount":I
    :cond_2
    move v4, v5

    .line 791
    goto :goto_0

    .restart local v4    # "itemCount":I
    :cond_3
    move v3, v5

    .line 796
    goto :goto_1

    .line 803
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setState(I)V

    goto :goto_2
.end method
