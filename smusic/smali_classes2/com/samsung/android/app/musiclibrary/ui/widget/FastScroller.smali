.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;
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

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:Ljava/lang/String;

.field private mCurrentSectionIndex:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mScaledTouchSlop:I

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

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
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAG:Ljava/lang/String;

    .line 76
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1084
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1096
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$5;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1108
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$6;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1120
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 14
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v7, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    .line 92
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mScrollbarPosition:I

    .line 99
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    .line 109
    iput v13, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mAdditionalTouchArea:F

    .line 115
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSectionIndex:I

    .line 134
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 136
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 138
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 171
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    .line 306
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 1049
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 182
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 183
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 184
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-nez v0, :cond_1

    move v7, v8

    :goto_0
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOldItemCount:I

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOldChildCount:I

    .line 186
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mScaledTouchSlop:I

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 188
    .local v5, "res":Landroid/content/res/Resources;
    sget v7, Lcom/samsung/android/app/musiclibrary/R$drawable;->fast_scroll_thumb:I

    invoke-virtual {v5, v7, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 189
    .local v6, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 190
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v9, 0x1010433

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 191
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5, v7, v12}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 192
    .local v4, "primaryColor":I
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 194
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 195
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 197
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 199
    iput v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mWidth:I

    .line 201
    if-eqz v6, :cond_0

    .line 202
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mWidth:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mWidth:I

    .line 204
    :cond_0
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_thumb_margin_end:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbMarginEnd:I

    .line 205
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->tw_fluid_scroller_additional_touch_area:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mAdditionalTouchArea:F

    .line 207
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_min_size:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMinWidth:I

    .line 208
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_min_size:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMinHeight:I

    .line 209
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_margin_end:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMarginEnd:I

    .line 211
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 212
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 213
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/android/app/musiclibrary/R$drawable;->fast_scroll_preview:I

    invoke-virtual {v5, v9, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v4, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 215
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v9, 0xcc

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 217
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 218
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 220
    sget v7, Lcom/samsung/android/app/musiclibrary/R$color;->fast_scroll_preview_text_color:I

    .line 221
    invoke-static {v5, v7, v12}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 222
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_preview_text:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTextSize:F

    .line 223
    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->fast_scroll_padding:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    .line 225
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 226
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTextSize:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 228
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    iget v11, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    iget v12, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 230
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 231
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTextSize:F

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 233
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    iget v11, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewPadding:I

    .line 234
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    .line 237
    .local v3, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 238
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 239
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 240
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 242
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setScrollbarPosition(I)V

    .line 243
    return-void

    .line 184
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v4    # "primaryColor":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v7

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->onScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1063
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

    .line 1134
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1135
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1136
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1137
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1138
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
    .line 1058
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
    .line 602
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 603
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 604
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 849
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAG:Ljava/lang/String;

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    .line 852
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onScrollStateChanged(I)V

    .line 855
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    .line 856
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 808
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    .line 809
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 246
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 249
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 252
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 253
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 256
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 257
    return-object v1
.end method

.method private getColorStateList(IF)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    .line 289
    .local v1, "states":[[I
    new-array v0, v4, [I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getColorWithAlpha(IF)I

    move-result v2

    aput v2, v0, v3

    .line 290
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
    .line 300
    .line 301
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

    .line 302
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 301
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 468
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v3, :cond_1

    .line 469
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 470
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v3, :cond_2

    .line 471
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 472
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_2
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    new-array v2, v3, [I

    .line 474
    .local v2, "positions":[I
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 475
    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 476
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 477
    if-gez v1, :cond_0

    .line 478
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPositionFromItemCount(III)F
    .locals 2
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 453
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    if-eq p2, p3, :cond_0

    .line 461
    int-to-float v0, p1

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getPositionFromMotionEvent(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 690
    .local v0, "range":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 693
    :goto_0
    return v1

    :cond_0
    div-float v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->constrain(FFF)F

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
    .line 436
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 437
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 439
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 440
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 441
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 442
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 439
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 448
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

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

    .line 834
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 835
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 835
    goto :goto_0

    .line 837
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mAdditionalTouchArea:F

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
    .line 842
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 843
    .local v1, "offset":F
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 844
    .local v2, "top":F
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 845
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
    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 555
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 556
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 557
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 558
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 559
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_0

    .line 560
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMarginEnd:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 565
    return-void

    .line 562
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMarginEnd:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private measureThumb(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 546
    .local v0, "margins":Landroid/graphics/Rect;
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 547
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 548
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 549
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbMarginEnd:I

    :cond_0
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 550
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 551
    return-void

    .line 548
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbMarginEnd:I

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 616
    if-nez p3, :cond_0

    const/4 v9, 0x0

    .line 617
    .local v9, "marginTop":I
    :goto_0
    if-nez p3, :cond_1

    const/4 v7, 0x0

    .line 618
    .local v7, "marginLeft":I
    :goto_1
    if-nez p3, :cond_2

    const/4 v8, 0x0

    .line 620
    .local v8, "marginRight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 621
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 623
    .local v4, "containerWidth":I
    if-nez p2, :cond_3

    .line 624
    move v10, v4

    .line 631
    .local v10, "maxWidth":I
    :goto_3
    const/4 v14, 0x0

    sub-int v15, v10, v7

    sub-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 632
    .local v1, "adjMaxWidth":I
    const/high16 v14, -0x80000000

    .line 633
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 634
    .local v13, "widthMeasureSpec":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 635
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 636
    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/view/View;->measure(II)V

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 642
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_6

    .line 643
    if-nez p2, :cond_5

    iget v14, v3, Landroid/graphics/Rect;->right:I

    :goto_4
    sub-int v11, v14, v8

    .line 644
    .local v11, "right":I
    sub-int v6, v11, v12

    .line 651
    .local v6, "left":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v2, v9, v14

    .line 652
    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v9, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 653
    return-void

    .line 616
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

    .line 617
    .restart local v9    # "marginTop":I
    :cond_1
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 618
    .restart local v7    # "marginLeft":I
    :cond_2
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 625
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    .restart local v8    # "marginRight":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_4

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_3

    .line 628
    .end local v10    # "maxWidth":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    sub-int v10, v4, v14

    .restart local v10    # "maxWidth":I
    goto :goto_3

    .line 643
    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v12    # "width":I
    .restart local v13    # "widthMeasureSpec":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    goto :goto_4

    .line 646
    :cond_6
    if-nez p2, :cond_7

    iget v14, v3, Landroid/graphics/Rect;->left:I

    :goto_6
    add-int v6, v14, v7

    .line 647
    .restart local v6    # "left":I
    add-int v11, v6, v12

    .restart local v11    # "right":I
    goto :goto_5

    .line 646
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

    .line 340
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-ne v2, v3, :cond_2

    .line 341
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v0

    .line 345
    .local v0, "firstVisibleItem":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-eq v2, v5, :cond_4

    .line 347
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 348
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 349
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    .line 348
    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getPositionFromItemCount(III)F

    move-result v1

    .line 350
    .local v1, "thumbPosition":F
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setThumbPosition(F)V

    .line 353
    .end local v1    # "thumbPosition":F
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v2, v0, :cond_1

    .line 354
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mFirstVisibleItem:I

    .line 355
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-eq v2, v5, :cond_1

    .line 356
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void
.end method

.method private scrollTo(F)V
    .locals 24
    .param p1, "position"    # F

    .prologue
    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v3

    .line 861
    .local v3, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 862
    .local v4, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getSectionCount()I

    move-result v15

    .line 866
    .local v15, "sectionCount":I
    :goto_1
    if-lez v15, :cond_d

    .line 867
    int-to-float v0, v15

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v15, -0x1

    .line 868
    invoke-static/range {v21 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->constrain(III)I

    move-result v5

    .line 869
    .local v5, "exactSection":I
    move/from16 v19, v5

    .line 870
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 871
    .local v18, "targetIndex":I
    move/from16 v16, v19

    .line 879
    .local v16, "sectionIndex":I
    move v8, v4

    .line 880
    .local v8, "nextIndex":I
    move/from16 v12, v18

    .line 881
    .local v12, "prevIndex":I
    move/from16 v14, v19

    .line 882
    .local v14, "prevSection":I
    add-int/lit8 v11, v19, 0x1

    .line 885
    .local v11, "nextSection":I
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v19, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 890
    :cond_0
    move/from16 v0, v18

    if-ne v8, v0, :cond_2

    .line 892
    :cond_1
    if-lez v19, :cond_2

    .line 893
    add-int/lit8 v19, v19, -0x1

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 895
    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 896
    move/from16 v14, v19

    .line 897
    move/from16 v16, v19

    .line 913
    :cond_2
    :goto_2
    add-int/lit8 v9, v11, 0x1

    .line 914
    .local v9, "nextNextSection":I
    :goto_3
    if-ge v9, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    .line 915
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v8, :cond_6

    .line 916
    add-int/lit8 v9, v9, 0x1

    .line 917
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 861
    .end local v4    # "count":I
    .end local v5    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v14    # "prevSection":I
    .end local v15    # "sectionCount":I
    .end local v16    # "sectionIndex":I
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 862
    .restart local v4    # "count":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 899
    .restart local v5    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v14    # "prevSection":I
    .restart local v15    # "sectionCount":I
    .restart local v16    # "sectionIndex":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_5
    if-nez v19, :cond_1

    .line 902
    const/16 v16, 0x0

    .line 903
    goto :goto_2

    .line 924
    .restart local v9    # "nextNextSection":I
    :cond_6
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v13, v21, v22

    .line 925
    .local v13, "prevPosition":F
    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 926
    .local v10, "nextPosition":F
    if-nez v4, :cond_b

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 927
    .local v17, "snapThreshold":F
    :goto_4
    if-ne v14, v5, :cond_c

    sub-float v21, p1, v13

    cmpg-float v21, v21, v17

    if-gez v21, :cond_c

    .line 928
    move/from16 v18, v12

    .line 936
    :goto_5
    const/16 v21, 0x0

    add-int/lit8 v22, v4, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->constrain(III)I

    move-result v18

    .line 942
    .end local v5    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v19    # "targetSection":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v7

    .line 943
    .local v7, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v0, v7, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 944
    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v7    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 952
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSectionIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_a

    .line 953
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSectionIndex:I

    .line 955
    const/16 v20, 0x0

    .line 956
    .local v20, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    if-ltz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    .line 957
    invoke-interface/range {v21 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getSectionCount()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getSection(I)Ljava/lang/String;

    move-result-object v20

    .line 960
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSection:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSection:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 961
    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSection:Ljava/lang/String;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSection:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionPreviewLayout(Ljava/lang/String;)Z

    move-result v6

    .line 963
    .local v6, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPreview:Z

    move/from16 v21, v0

    if-nez v21, :cond_10

    if-eqz v6, :cond_10

    .line 964
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionToDragging()V

    .line 970
    .end local v6    # "hasPreview":Z
    .end local v20    # "text":Ljava/lang/String;
    :cond_a
    :goto_8
    return-void

    .line 926
    .restart local v5    # "exactSection":I
    .restart local v8    # "nextIndex":I
    .restart local v9    # "nextNextSection":I
    .restart local v10    # "nextPosition":F
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v13    # "prevPosition":F
    .restart local v14    # "prevSection":I
    .restart local v19    # "targetSection":I
    :cond_b
    const/high16 v21, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v22, v0

    div-float v17, v21, v22

    goto/16 :goto_4

    .line 930
    .restart local v17    # "snapThreshold":F
    :cond_c
    sub-int v21, v8, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, p1, v13

    mul-float v21, v21, v22

    sub-float v22, v10, v13

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v18, v12, v21

    goto/16 :goto_5

    .line 938
    .end local v5    # "exactSection":I
    .end local v8    # "nextIndex":I
    .end local v9    # "nextNextSection":I
    .end local v10    # "nextPosition":F
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevPosition":F
    .end local v14    # "prevSection":I
    .end local v16    # "sectionIndex":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_d
    int-to-float v0, v4

    move/from16 v21, v0

    mul-float v21, v21, p1

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v4, -0x1

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->constrain(III)I

    move-result v18

    .line 939
    .restart local v18    # "targetIndex":I
    const/16 v16, -0x1

    .restart local v16    # "sectionIndex":I
    goto/16 :goto_6

    .line 945
    .restart local v7    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_e
    instance-of v0, v7, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 946
    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v7    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_7

    .line 947
    .restart local v7    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_f
    instance-of v0, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 948
    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .end local v7    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    const/16 v21, 0x0

    .line 949
    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_7

    .line 965
    .restart local v6    # "hasPreview":Z
    .restart local v20    # "text":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPreview:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    if-nez v6, :cond_a

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionToVisible()V

    goto :goto_8
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 315
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 318
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    .line 336
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionToHidden()V

    goto :goto_1

    .line 323
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mCurrentSectionIndex:I

    .line 327
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;->getSection(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionPreviewLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionToDragging()V

    goto :goto_1

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 336
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 9
    .param p1, "position"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 666
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v5, v6

    .line 669
    .local v5, "range":F
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_0

    .line 670
    const/4 v5, 0x0

    .line 672
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    mul-float v7, p1, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 675
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v3, v6

    .line 676
    .local v3, "previewHeight":F
    div-float v6, v3, v8

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 677
    .local v2, "offset":F
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v6

    .line 678
    .local v1, "minPos":F
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float v0, v6, v3

    .line 679
    .local v0, "maxPos":F
    mul-float v6, p1, v5

    sub-float/2addr v6, v2

    invoke-static {v6, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$MathUtils;->constrain(FFF)F

    move-result v4

    .line 681
    .local v4, "previewPos":F
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 682
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 683
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 684
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    .line 817
    return-void
.end method

.method private transitionPreviewLayout(Ljava/lang/String;)Z
    .locals 18
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 982
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 986
    .local v5, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v15, :cond_2

    .line 987
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 988
    .local v11, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 995
    .local v13, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 997
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_0

    .line 1000
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1004
    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x32

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 1005
    .local v10, "showTarget":Landroid/animation/Animator;
    const/4 v15, 0x0

    invoke-static {v11, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x32

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    .line 1006
    .local v4, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1009
    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->left:I

    .line 1010
    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->top:I

    .line 1011
    iget v15, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->right:I

    .line 1012
    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 1013
    invoke-static {v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v7

    .line 1014
    .local v7, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1016
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1017
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 1018
    .local v3, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1023
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v6, v15, v16

    .line 1027
    .local v6, "previewWidth":I
    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 1028
    .local v14, "targetWidth":I
    if-le v14, v6, :cond_3

    .line 1029
    int-to-float v15, v6

    int-to-float v0, v14

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1030
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x64

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1031
    .local v9, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1037
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    .line 1038
    .local v12, "showingWidth":I
    if-le v12, v14, :cond_1

    .line 1039
    int-to-float v15, v14

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 1040
    .local v8, "scale":F
    invoke-static {v11, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    const-wide/16 v16, 0x64

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1041
    .restart local v9    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1044
    .end local v8    # "scale":F
    .end local v9    # "scaleAnim":Landroid/animation/Animator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 1045
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    return v15

    .line 990
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

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 991
    .restart local v11    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .restart local v13    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1033
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

    .line 1045
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

    .line 407
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 411
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 412
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 413
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v6, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 414
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 416
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 417
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 418
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 420
    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPreview:Z

    .line 421
    return-void
.end method

.method private transitionToHidden()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xa7

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 385
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 389
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    .line 390
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 391
    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 394
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 395
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 398
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 399
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 400
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 402
    iput-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPreview:Z

    .line 403
    return-void

    .line 394
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

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

    .line 364
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 368
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v8, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    .line 369
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 370
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v12

    .line 371
    invoke-static {v3, v9, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 372
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 373
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v3, v9, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 374
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 376
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 377
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v12

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 378
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 380
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mShowingPreview:Z

    .line 381
    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .prologue
    const/high16 v5, 0x1000000

    const/4 v3, 0x0

    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 570
    .local v0, "container":Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 571
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 572
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 573
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 575
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollBarStyle()I

    move-result v1

    .line 576
    .local v1, "scrollbarStyle":I
    if-eq v1, v5, :cond_0

    if-nez v1, :cond_1

    .line 578
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 579
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 580
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 583
    if-ne v1, v5, :cond_1

    .line 584
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mWidth:I

    .line 585
    .local v2, "width":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mScrollbarPosition:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 586
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 592
    .end local v2    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 588
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
    .line 656
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mWidth:I

    return v0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mEnabled:Z

    if-nez v2, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v1

    .line 755
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 757
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mInitialTouchY:F

    .line 759
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 763
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 765
    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->beginDrag()V

    .line 767
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getPositionFromMotionEvent(F)F

    move-result v0

    .line 768
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->scrollTo(F)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 774
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 755
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 697
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mEnabled:Z

    if-nez v4, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v2

    .line 700
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 701
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 746
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAG:Ljava/lang/String;

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

    .line 703
    :pswitch_0
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_UP.. mState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->beginDrag()V

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getPositionFromMotionEvent(F)F

    move-result v1

    .line 708
    .local v1, "pos":F
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setThumbPosition(F)V

    .line 709
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->scrollTo(F)V

    .line 710
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 710
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v1    # "pos":F
    :cond_2
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-ne v4, v7, :cond_0

    .line 715
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 716
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onScrollStateChanged(I)V

    .line 717
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    .line 718
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->postAutoHide()V

    move v2, v3

    .line 719
    goto/16 :goto_0

    .line 723
    :pswitch_1
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mInitialTouchY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mInitialTouchY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPendingDrag:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_3

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 727
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->beginDrag()V

    .line 729
    :cond_3
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-ne v4, v7, :cond_0

    .line 731
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getPositionFromMotionEvent(F)F

    move-result v1

    .line 732
    .restart local v1    # "pos":F
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setThumbPosition(F)V

    .line 733
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->scrollTo(F)V

    move v2, v3

    .line 734
    goto/16 :goto_0

    .line 738
    .end local v1    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->cancelPendingDrag()V

    .line 739
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    if-ne v4, v7, :cond_0

    .line 740
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 741
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    .line 742
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->postAutoHide()V

    goto/16 :goto_0

    .line 701
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
    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 268
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mEnabled:Z

    .line 269
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mEnabled:Z

    if-nez v0, :cond_1

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method setScrollbarPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 485
    if-nez p1, :cond_0

    .line 486
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 487
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_2

    move p1, v3

    .line 491
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mScrollbarPosition:I

    if-eq v5, p1, :cond_1

    .line 492
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mScrollbarPosition:I

    .line 493
    if-eq p1, v3, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mLayoutFromRight:Z

    .line 495
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 496
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 498
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 499
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 498
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 500
    .local v2, "textMinWidth":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 501
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 503
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 504
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 503
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 505
    .local v1, "textMinHeight":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 506
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->updateLayout()V

    .line 510
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_1
    return-void

    .line 487
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_3
    move v3, v4

    .line 493
    goto :goto_1
.end method

.method setSectionIndexer(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;)V
    .locals 0
    .param p1, "indexer"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSectionIndexer:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;

    .line 280
    return-void
.end method

.method setTintColor(I)V
    .locals 2
    .param p1, "tintColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getColorStateList(IF)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    return-void
.end method

.method updateLayout()V
    .locals 3

    .prologue
    .line 516
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 519
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mUpdatingLayout:Z

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->updateContainerRect()V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 524
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->measureThumb(Landroid/graphics/Rect;)V

    .line 525
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 527
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 528
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 529
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 532
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 534
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 535
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 536
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 537
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 538
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 541
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method

.method updateThumbPosition()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 783
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v1

    .line 784
    .local v1, "childCount":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 785
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 786
    .local v4, "itemCount":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOldItemCount:I

    if-ne v6, v4, :cond_0

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOldChildCount:I

    if-eq v6, v1, :cond_1

    .line 787
    :cond_0
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOldItemCount:I

    .line 788
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mOldChildCount:I

    .line 789
    if-lez v4, :cond_4

    .line 790
    sub-int v6, v4, v1

    if-lez v6, :cond_3

    const/4 v3, 0x1

    .line 791
    .local v3, "hasMoreItems":Z
    :goto_1
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 792
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    .line 794
    .local v2, "firstVisibleItem":I
    invoke-direct {p0, v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getPositionFromItemCount(III)F

    move-result v5

    .line 793
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setThumbPosition(F)V

    .line 800
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "hasMoreItems":Z
    :cond_1
    :goto_2
    return-void

    .end local v4    # "itemCount":I
    :cond_2
    move v4, v5

    .line 785
    goto :goto_0

    .restart local v4    # "itemCount":I
    :cond_3
    move v3, v5

    .line 790
    goto :goto_1

    .line 797
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setState(I)V

    goto :goto_2
.end method
