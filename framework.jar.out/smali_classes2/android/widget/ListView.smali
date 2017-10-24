.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;
    }
.end annotation


# static fields
.field private static final BITS_PER_LONG:I = 0x40

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListView"

.field private static final XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com.samsung.android"


# instance fields
.field private mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private final mFixedSizeItems:Z

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mIsDeviceDefaultTheme:Z

.field mIsFolderTypeFeature:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/widget/ListView;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 150
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 152
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 154
    iput-boolean v8, p0, Landroid/widget/ListView;->mIsDeviceDefaultTheme:Z

    .line 157
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 160
    iput-boolean v8, p0, Landroid/widget/ListView;->mIsFolderTypeFeature:Z

    .line 164
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 214
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    .line 213
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 216
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 217
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 218
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 229
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 230
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 234
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 235
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 240
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 242
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 243
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 247
    .end local v2    # "dividerHeight":I
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 248
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    invoke-static {p1}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mIsDeviceDefaultTheme:Z

    .line 254
    if-eqz p2, :cond_5

    .line 255
    const-string/jumbo v6, "http://schemas.android.samsung.com.samsung.android"

    .line 256
    const-string/jumbo v7, "fixed_size_items"

    .line 255
    invoke-interface {p2, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFixedSizeItems:Z

    .line 210
    :goto_0
    return-void

    .line 258
    :cond_5
    iput-boolean v8, p0, Landroid/widget/ListView;->mFixedSizeItems:Z

    goto :goto_0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3447
    add-int/lit8 v2, p2, -0x1

    .line 3448
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3449
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3450
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 3451
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    .line 3450
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3452
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3456
    add-int/lit8 v2, p2, 0x1

    .line 3457
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3458
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3459
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 3460
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    .line 3459
    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3461
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 276
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 279
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 282
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 285
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 287
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 290
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 292
    :cond_0
    if-gez v2, :cond_1

    .line 294
    const/4 v2, 0x0

    .line 312
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 313
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 275
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 298
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 301
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 304
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 307
    :cond_4
    if-lez v2, :cond_1

    .line 308
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 3052
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 3053
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 3055
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3057
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_6

    .line 3058
    add-int/lit8 v3, v7, -0x1

    .line 3059
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 3060
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3062
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 3064
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 3065
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3067
    :cond_1
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3068
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3070
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 3071
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 3072
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int v1, v4, v10

    .line 3075
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3

    .line 3077
    const/4 v10, 0x0

    return v10

    .line 3080
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    .line 3081
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 3083
    const/4 v10, 0x0

    return v10

    .line 3086
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 3088
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 3090
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 3091
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3094
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10

    .line 3096
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 3097
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 3098
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3100
    :cond_7
    :goto_1
    if-gez v3, :cond_8

    .line 3102
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 3103
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3104
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_1

    .line 3106
    :cond_8
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3107
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3108
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 3109
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    .line 3110
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int v2, v5, v10

    .line 3112
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_a

    .line 3114
    const/4 v10, 0x0

    return v10

    .line 3117
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    .line 3118
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 3120
    const/4 v10, 0x0

    return v10

    .line 3123
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 3124
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 3126
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 3127
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3129
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3321
    const/4 v0, 0x0

    .line 3322
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3323
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3324
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3325
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3326
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3327
    if-lez p3, :cond_0

    .line 3328
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3340
    :cond_0
    :goto_0
    return v0

    .line 3332
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3333
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3334
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3335
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3336
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 3219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 3221
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3222
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3223
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3248
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3249
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3253
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3254
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3255
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    .line 3256
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    if-ge v10, v9, :cond_9

    .line 3258
    :cond_0
    const/4 v14, 0x0

    return-object v14

    .line 3225
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :cond_1
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 3226
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_2

    const/4 v12, 0x1

    .line 3227
    .local v12, "topFadingEdgeShowing":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 3228
    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    .line 3227
    :goto_2
    add-int v5, v15, v14

    .line 3230
    .local v5, "listTop":I
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_4

    .line 3231
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3233
    .local v13, "ySearchPoint":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3245
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 3226
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "topFadingEdgeShowing":Z
    goto :goto_1

    .line 3228
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 3232
    .restart local v5    # "listTop":I
    :cond_4
    move v13, v5

    .restart local v13    # "ySearchPoint":I
    goto :goto_3

    .line 3236
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    .end local v13    # "ySearchPoint":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_6

    const/4 v2, 0x1

    .line 3237
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    .line 3238
    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    .line 3237
    :goto_6
    sub-int v4, v15, v14

    .line 3240
    .local v4, "listBottom":I
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_8

    .line 3241
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3243
    .restart local v13    # "ySearchPoint":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 3236
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "bottomFadingEdgeShowing":Z
    goto :goto_5

    .line 3238
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 3242
    .restart local v4    # "listBottom":I
    :cond_8
    move v13, v4

    .restart local v13    # "ySearchPoint":I
    goto :goto_7

    .line 3257
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    .restart local v10    # "selectablePosition":I
    :cond_9
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-gt v10, v9, :cond_0

    .line 3262
    .end local v10    # "selectablePosition":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3264
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 3265
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    .line 3267
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3268
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3269
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v14

    .line 3270
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3275
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3276
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3277
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v14

    .line 3280
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    return-object v14
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 2827
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 2828
    return v9

    .line 2831
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2832
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2834
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2835
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2838
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2839
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_1
    if-eqz v1, :cond_2

    .line 2840
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2841
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2844
    :cond_2
    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 2845
    .local v3, "needToRedraw":Z
    :goto_0
    if-eq v4, v10, :cond_4

    .line 2846
    if-eqz v1, :cond_d

    move v7, v8

    :goto_1
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2847
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2848
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2849
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2850
    move v5, v4

    .line 2851
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2854
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2855
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2856
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2859
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2860
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2863
    :cond_4
    if-lez v0, :cond_6

    .line 2865
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2866
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2868
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2869
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_2
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2870
    const/4 v3, 0x1

    .line 2875
    :cond_6
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_8

    if-nez v1, :cond_8

    .line 2876
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    .line 2875
    if-eqz v7, :cond_8

    .line 2877
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2878
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 2879
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_8

    .line 2880
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2886
    .end local v2    # "focused":Landroid/view/View;
    :cond_8
    if-ne v4, v10, :cond_9

    if-eqz v6, :cond_9

    .line 2887
    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2897
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_9
    :goto_3
    if-eqz v3, :cond_10

    .line 2898
    if-eqz v6, :cond_a

    .line 2899
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2900
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2902
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_b

    .line 2903
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2905
    :cond_b
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2906
    return v8

    .line 2844
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    .restart local v6    # "selectedView":Landroid/view/View;
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "needToRedraw":Z
    goto/16 :goto_0

    :cond_d
    move v7, v9

    .line 2846
    goto/16 :goto_1

    .line 2869
    :cond_e
    neg-int v0, v0

    goto :goto_2

    .line 2888
    .end local v0    # "amountToScroll":I
    :cond_f
    const/4 v6, 0x0

    .line 2889
    .local v6, "selectedView":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 2890
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2894
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_3

    .line 2909
    .end local v6    # "selectedView":Landroid/view/View;
    :cond_10
    return v9
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 606
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 607
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 608
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 609
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 610
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 606
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x82

    const/16 v7, 0x21

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2461
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2465
    iget-boolean v3, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v3, :cond_0

    .line 2466
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2469
    :cond_0
    const/4 v2, 0x0

    .line 2470
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2471
    .local v0, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2472
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    .line 2471
    if-eqz v3, :cond_1

    .line 2472
    if-eq v0, v5, :cond_1

    .line 2473
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2474
    .local v2, "handled":Z
    if-nez v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 2475
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2476
    const/4 v2, 0x1

    .line 2480
    .end local v2    # "handled":Z
    :cond_1
    iget-boolean v3, p0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-eqz v3, :cond_2

    .line 2481
    iput-boolean v6, p0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    .line 2482
    const-string/jumbo v3, "ListView"

    const-string/jumbo v4, "mIsHoveredByMouse false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_2
    if-nez v2, :cond_3

    if-eq v0, v5, :cond_3

    .line 2486
    sparse-switch p1, :sswitch_data_0

    .line 2581
    :cond_3
    :goto_0
    if-eqz v2, :cond_18

    .line 2582
    return v5

    .line 2462
    .end local v0    # "action":I
    :cond_4
    return v6

    .line 2488
    .restart local v0    # "action":I
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2489
    :cond_5
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2490
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2491
    .restart local v2    # "handled":Z
    if-nez v2, :cond_3

    .end local v2    # "handled":Z
    :goto_1
    move v1, p2

    .line 2492
    .end local p2    # "count":I
    .local v1, "count":I
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_3

    .line 2493
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2494
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_1

    .line 2500
    .end local v2    # "handled":Z
    :cond_6
    invoke-virtual {p3, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2501
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .end local v2    # "handled":Z
    :cond_7
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_0

    .line 2506
    .end local v2    # "handled":Z
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2507
    :cond_8
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2508
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2509
    .local v2, "handled":Z
    if-nez v2, :cond_3

    .end local v2    # "handled":Z
    :goto_2
    move v1, p2

    .line 2510
    .end local p2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_3

    .line 2511
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2512
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_2

    .line 2518
    .end local v2    # "handled":Z
    :cond_9
    invoke-virtual {p3, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2519
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_0

    .end local v2    # "handled":Z
    :cond_a
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_0

    .line 2524
    .end local v2    # "handled":Z
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2525
    :cond_b
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2526
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .line 2527
    .local v2, "handled":Z
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    goto/16 :goto_0

    .line 2532
    .end local v2    # "handled":Z
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2533
    :cond_c
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2534
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .line 2535
    .restart local v2    # "handled":Z
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    goto/16 :goto_0

    .line 2540
    .end local v2    # "handled":Z
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2541
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    .restart local v2    # "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_d
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2542
    .end local v2    # "handled":Z
    :cond_e
    invoke-virtual {p3, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2543
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_f
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2548
    .end local v2    # "handled":Z
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2549
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_10
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2550
    .end local v2    # "handled":Z
    :cond_11
    invoke-virtual {p3, v9}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2551
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_12
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2556
    .end local v2    # "handled":Z
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2557
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_13
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2562
    .end local v2    # "handled":Z
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2563
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_14
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2572
    .end local v2    # "handled":Z
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2573
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_15
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2574
    .end local v2    # "handled":Z
    :cond_16
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2575
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_0

    .end local v2    # "handled":Z
    :cond_17
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto/16 :goto_0

    .line 2585
    .end local v2    # "handled":Z
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2586
    return v5

    .line 2589
    :cond_19
    packed-switch v0, :pswitch_data_0

    .line 2600
    return v6

    .line 2591
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 2594
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 2597
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 2486
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_8
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch

    .line 2589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1517
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1518
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1521
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1524
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1527
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1531
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1532
    .local v0, "bottomOffset":I
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1533
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1537
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1538
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1540
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1543
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1544
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1547
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1549
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1514
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 1566
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1569
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1572
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1575
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1578
    .local v6, "start":I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1582
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1583
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1584
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1585
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1589
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    .line 1590
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1591
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1593
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1596
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1597
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1600
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1602
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1563
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    .line 1604
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1605
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3351
    const/4 v0, 0x0

    .line 3352
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3353
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3354
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3355
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3356
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3360
    :cond_0
    :goto_0
    return v0

    .line 3357
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3358
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 880
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 881
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 882
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 883
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 884
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 879
    :goto_0
    return-void

    .line 886
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 887
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 888
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 757
    const/4 v8, 0x0

    .line 759
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 760
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 761
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 764
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 766
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 767
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 769
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 770
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 771
    if-eqz v5, :cond_1

    .line 772
    move-object v8, v6

    .line 775
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 766
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 778
    .end local v5    # "selected":Z
    :cond_3
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 779
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 848
    sub-int v6, p2, p1

    .line 850
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 853
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    .line 852
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 854
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 856
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 857
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    .line 858
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 861
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 863
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 864
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 869
    :goto_0
    return-object v7

    .line 866
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 905
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 909
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 911
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 914
    .local v7, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 918
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 921
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 925
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 926
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 929
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 945
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 947
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 948
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 953
    :goto_1
    return-object v10

    .line 930
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 933
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 937
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 938
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 941
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 950
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 828
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 829
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 830
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 831
    iput v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 833
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1469
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 1470
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1472
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1477
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1478
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1479
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1481
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1482
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1483
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1484
    .local v8, "childCount":I
    if-lez v8, :cond_0

    .line 1485
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1498
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1499
    return-object v10

    .line 1469
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    .end local v10    # "temp":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "tempIsSelected":Z
    goto :goto_0

    .line 1488
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1490
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1491
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1492
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1493
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    .line 1494
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1500
    :cond_3
    if-eqz v6, :cond_4

    .line 1501
    return-object v6

    .line 1503
    :cond_4
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 793
    const/4 v8, 0x0

    .line 795
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 796
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 797
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 800
    .end local v8    # "selectedView":Landroid/view/View;
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 802
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 803
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 805
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 806
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 807
    if-eqz v5, :cond_1

    .line 808
    move-object v8, v6

    .line 811
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 802
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "selected":Z
    goto :goto_1

    .line 814
    .end local v5    # "selected":Z
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 815
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 816
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 3036
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 966
    move v0, p1

    .line 967
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 968
    sub-int v0, p1, p2

    .line 970
    :cond_0
    return v0
.end method

.method private getSubHeaderCnt(Landroid/widget/ListAdapter;I)I
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "itemCount"    # I

    .prologue
    .line 3554
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_0

    .line 3555
    check-cast p1, Landroid/preference/PreferenceGroupAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p1}, Landroid/preference/PreferenceGroupAdapter;->getPreferenceCategoryCnt()I

    move-result v0

    return v0

    .line 3557
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 983
    move v0, p1

    .line 984
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 985
    add-int v0, p1, p2

    .line 987
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x0

    .line 2708
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2709
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2713
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2714
    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_4

    if-lez v3, :cond_4

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 2715
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2716
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2717
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 2716
    if-eqz v5, :cond_4

    .line 2719
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2720
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    .line 2721
    check-cast v4, Landroid/view/ViewGroup;

    .line 2720
    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2722
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2725
    if-eqz v0, :cond_1

    .line 2726
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2727
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2728
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2731
    :cond_1
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2732
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_2

    .line 2733
    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 2735
    :cond_2
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->playSoundEffect(I)V

    .line 2736
    const/4 v5, 0x1

    return v5

    .line 2743
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    .line 2744
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2743
    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2745
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2746
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 2750
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_4
    return v7
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2927
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2928
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2938
    :cond_0
    const/4 v5, 0x0

    .line 2939
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v10

    .line 2940
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2941
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_4

    .line 2942
    move v7, v2

    .line 2943
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2944
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2945
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2946
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2954
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2957
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    .line 2958
    if-nez p4, :cond_5

    move v8, v5

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2959
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2963
    :cond_1
    if-eqz v0, :cond_3

    .line 2964
    if-nez p4, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    :goto_2
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2965
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2926
    :cond_3
    return-void

    .line 2948
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_4
    move v7, v4

    .line 2949
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2950
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2951
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .restart local v3    # "numChildren":I
    :cond_5
    move v8, v9

    .line 2958
    goto :goto_1

    .line 2964
    :cond_6
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2099
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2100
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2101
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 2103
    return v6

    .line 2101
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2107
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2108
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2109
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 2110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    .line 2111
    return v6

    .line 2109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2115
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 3303
    if-ne p1, p2, :cond_0

    .line 3304
    const/4 v1, 0x1

    return v1

    .line 3307
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3308
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logActivity()V
    .locals 1

    .prologue
    .line 4369
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 4368
    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    .line 4304
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4307
    return-void

    .line 4310
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 4311
    check-cast v2, Landroid/view/ViewGroup;

    .line 4312
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4313
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4314
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 4313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4318
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    .line 4320
    const-string/jumbo v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "CHECKED"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    :cond_2
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_3

    .line 4326
    const-string/jumbo v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "CHECKED"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    :cond_3
    if-eqz p2, :cond_4

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    move-object v3, p1

    .line 4332
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 4333
    const-string/jumbo v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    :cond_4
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_5

    .line 4339
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/ListView$3;

    invoke-direct {v4, p0, p1}, Landroid/widget/ListView$3;-><init>(Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4301
    :cond_5
    return-void

    .line 4320
    :cond_6
    const-string/jumbo v3, "UNCHECKED"

    goto/16 :goto_1

    .line 4326
    :cond_7
    const-string/jumbo v3, "UNCHECKED"

    goto :goto_2
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, -0x1

    .line 3166
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3167
    .local v1, "firstPosition":I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 3168
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    .line 3169
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v6, 0x1

    .line 3171
    .local v5, "startPos":I
    :goto_0
    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 3172
    return v7

    .line 3170
    .end local v5    # "startPos":I
    :cond_0
    move v5, v1

    .restart local v5    # "startPos":I
    goto :goto_0

    .line 3174
    :cond_1
    if-ge v5, v1, :cond_2

    .line 3175
    move v5, v1

    .line 3178
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3179
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3180
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_1
    if-gt v4, v3, :cond_a

    .line 3181
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3182
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 3183
    return v4

    .line 3180
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3187
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, -0x1

    .line 3188
    .local v2, "last":I
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_6

    .line 3189
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v6, -0x1

    .line 3191
    .restart local v5    # "startPos":I
    :goto_2
    if-ltz v5, :cond_5

    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_7

    .line 3192
    :cond_5
    return v7

    .line 3190
    .end local v5    # "startPos":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v5, v6, -0x1

    goto :goto_2

    .line 3194
    .restart local v5    # "startPos":I
    :cond_7
    if-le v5, v2, :cond_8

    .line 3195
    move v5, v2

    .line 3198
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3199
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_3
    if-lt v4, v1, :cond_a

    .line 3200
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3201
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 3202
    return v4

    .line 3199
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 3206
    .end local v2    # "last":I
    :cond_a
    return v7
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 2134
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2136
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2137
    .local v1, "activeView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2140
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2141
    return-object v1

    .line 2147
    .end local v1    # "activeView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 2151
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2152
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v9, v0, v2

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2154
    :cond_1
    return-object v3
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2977
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2978
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2979
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2981
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2984
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2985
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2986
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2985
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2976
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2997
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2998
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2999
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 3000
    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 3001
    const/4 v5, -0x2

    .line 2999
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3004
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 3005
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3004
    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3006
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3008
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 3009
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3014
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2996
    return-void

    .line 3011
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .prologue
    const/4 v6, 0x0

    .line 1312
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1313
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1314
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1315
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1318
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1319
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1322
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1321
    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1323
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1325
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1326
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1330
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1334
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1311
    return-void

    .line 1328
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {p4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1030
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1034
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1036
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1039
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1061
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1061
    const/4 v5, 0x1

    .line 1062
    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 1061
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1064
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1067
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1067
    const/4 v5, 0x1

    .line 1068
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    .line 1067
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1071
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1074
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1077
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1080
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1081
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1082
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1085
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1087
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1091
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1092
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1093
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1094
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1175
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    .line 1096
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1097
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1098
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1100
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1121
    if-eqz p2, :cond_4

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    .line 1124
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    .line 1123
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1133
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1135
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1138
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1141
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1142
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1143
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1146
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1150
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1128
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    .line 1129
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    .line 1128
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1153
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1158
    .local v4, "oldTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1161
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1164
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1165
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1167
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1172
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v8, 0x82

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 2792
    if-ne p3, v8, :cond_3

    .line 2793
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2794
    .local v1, "listBottom":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_2

    .line 2795
    if-eq p2, v7, :cond_1

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    .line 2796
    add-int/lit8 v3, p2, 0x1

    .line 2813
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 2814
    :cond_0
    return v7

    .line 2797
    .end local v3    # "nextSelected":I
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 2799
    .end local v3    # "nextSelected":I
    :cond_2
    return v7

    .line 2802
    .end local v1    # "listBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2803
    .local v2, "listTop":I
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_5

    .line 2804
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2805
    .local v0, "lastPos":I
    if-eq p2, v7, :cond_4

    if-gt p2, v0, :cond_4

    .line 2806
    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 2807
    .end local v3    # "nextSelected":I
    :cond_4
    move v3, v0

    .restart local v3    # "nextSelected":I
    goto :goto_0

    .line 2809
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_5
    return v7

    .line 2816
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_6
    if-ne p3, v8, :cond_7

    const/4 v4, 0x1

    :cond_7
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v4

    return v4
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3288
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3289
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3290
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3291
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3292
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3295
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3023
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3024
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3025
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 3026
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 3027
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3028
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 3029
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3022
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 403
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 404
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 405
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 406
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 403
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v5, 0x0

    .line 2079
    if-nez p1, :cond_0

    .line 2080
    return-void

    .line 2082
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2083
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    .line 2084
    .local v0, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2085
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 2086
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v4, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_1

    .line 2087
    invoke-virtual {p0, v3, v5}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2088
    iput-boolean v5, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2082
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2078
    .end local v0    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3371
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3373
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3374
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3375
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3377
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3381
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3382
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3383
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3384
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3385
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3386
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3387
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3396
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3397
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3401
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3402
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3403
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3404
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3405
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3407
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3408
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3409
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 3413
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3416
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3417
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3418
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3423
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3424
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3427
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3428
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3431
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3432
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3433
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3434
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3436
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3437
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 3441
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    invoke-virtual {v8}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3442
    iget-object v9, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3443
    iget-object v9, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3370
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    .prologue
    .line 2176
    const-string/jumbo v19, "setupListItem"

    const-wide/16 v20, 0x8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2178
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v11

    .line 2179
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    const/16 v17, 0x1

    .line 2180
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 2181
    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    .line 2182
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 2183
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 2184
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_d

    if-nez v17, :cond_d

    .line 2185
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    .line 2189
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 2190
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_0

    .line 2191
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 2193
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2199
    if-eqz v17, :cond_1

    .line 2200
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2203
    :cond_1
    if-eqz v16, :cond_2

    .line 2204
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2207
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2208
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, p1

    .line 2209
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2216
    :cond_3
    :goto_5
    if-eqz p7, :cond_4

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    :cond_4
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 2217
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2218
    :cond_5
    if-eqz p4, :cond_f

    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2222
    if-eqz p7, :cond_6

    .line 2223
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 2225
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2237
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 2238
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    .line 2238
    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2240
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2242
    .local v12, "lpHeight":I
    if-lez v12, :cond_13

    .line 2243
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2248
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2253
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2254
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2255
    .local v9, "h":I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2257
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_16

    .line 2258
    add-int v6, p5, v18

    .line 2259
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 2260
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2266
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 2270
    :cond_7
    :goto_c
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 2175
    return-void

    .line 2178
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v13    # "mode":I
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_8
    const/4 v11, 0x0

    .local v11, "isSelected":Z
    goto/16 :goto_0

    .line 2179
    .end local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "updateChildSelected":Z
    goto/16 :goto_1

    .line 2182
    .restart local v13    # "mode":I
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    .line 2181
    .end local v10    # "isPressed":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "isPressed":Z
    goto/16 :goto_2

    .line 2183
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "updateChildPressed":Z
    goto/16 :goto_3

    .line 2184
    :cond_d
    const/4 v14, 0x1

    .local v14, "needToMeasure":Z
    goto/16 :goto_4

    .line 2210
    .end local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    .line 2211
    const/16 v20, 0xb

    .line 2210
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_5

    .line 2218
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 2228
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2229
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 2230
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2232
    :cond_11
    if-eqz p4, :cond_12

    const/16 v19, -0x1

    :goto_d
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2234
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    goto/16 :goto_7

    .line 2232
    :cond_12
    const/16 v19, 0x0

    goto :goto_d

    .line 2245
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v19

    .line 2246
    const/16 v20, 0x0

    .line 2245
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    .line 2250
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2255
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v7, p3, v9

    .restart local v7    # "childTop":I
    goto/16 :goto_a

    .line 2262
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b

    .line 2267
    :cond_17
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_c
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 4198
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4199
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 4200
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 4201
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_2

    const/4 v6, 0x1

    .line 4202
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_3

    const/4 v5, 0x1

    .line 4203
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v4, 0x1

    .line 4205
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_1

    .line 4206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_0
    const/4 v7, 0x0

    .line 4207
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v16, v0

    .line 4208
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4209
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 4210
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_6

    const/4 v14, 0x1

    .line 4211
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_7

    const/4 v13, 0x1

    .line 4212
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4213
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4214
    .local v8, "footerDividers":Z
    if-nez v11, :cond_8

    if-eqz v14, :cond_8

    .line 4253
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    :cond_1
    const/16 v22, 0x0

    return v22

    .line 4201
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "drawOverscrollHeader":Z
    goto :goto_0

    .line 4202
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "drawOverscrollFooter":Z
    goto :goto_1

    .line 4203
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 4206
    .restart local v4    # "drawDividers":Z
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "fillForMissingDividers":Z
    goto :goto_3

    .line 4210
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "isHeader":Z
    goto :goto_4

    .line 4211
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "isFooter":Z
    goto :goto_5

    .line 4214
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    :cond_8
    if-nez v8, :cond_9

    if-nez v13, :cond_1

    .line 4215
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4216
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 4217
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 4218
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_a

    if-nez v15, :cond_1

    .line 4219
    :cond_a
    add-int/lit8 v17, p1, 0x1

    .line 4223
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_e

    if-nez v11, :cond_b

    if-nez v14, :cond_e

    .line 4224
    move/from16 v0, v17

    if-lt v0, v10, :cond_e

    :cond_b
    if-nez v15, :cond_c

    .line 4225
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_e

    if-nez v8, :cond_c

    if-nez v13, :cond_e

    .line 4226
    move/from16 v0, v17

    if-ge v0, v9, :cond_e

    .line 4227
    :cond_c
    const/16 v22, 0x1

    return v22

    .line 4217
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    const/4 v15, 0x0

    .restart local v15    # "isLastItem":Z
    goto :goto_6

    .line 4228
    .restart local v17    # "nextIndex":I
    :cond_e
    if-eqz v7, :cond_1

    .line 4229
    const/16 v22, 0x1

    return v22

    .line 4233
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_f
    if-eqz v6, :cond_12

    const/16 v21, 0x1

    .line 4234
    .local v21, "start":I
    :goto_7
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/4 v12, 0x1

    .line 4235
    .local v12, "isFirstItem":Z
    :goto_8
    if-nez v12, :cond_1

    .line 4236
    add-int/lit8 v20, p1, -0x1

    .line 4240
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v11, :cond_10

    if-nez v14, :cond_14

    .line 4241
    move/from16 v0, v20

    if-lt v0, v10, :cond_14

    :cond_10
    if-nez v12, :cond_11

    .line 4242
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v8, :cond_11

    if-nez v13, :cond_14

    .line 4243
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 4244
    :cond_11
    const/16 v22, 0x1

    return v22

    .line 4233
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_12
    const/16 v21, 0x0

    goto :goto_7

    .line 4234
    .restart local v21    # "start":I
    :cond_13
    const/4 v12, 0x0

    goto :goto_8

    .line 4245
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_14
    if-eqz v7, :cond_1

    .line 4246
    const/16 v22, 0x1

    return v22
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 628
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 629
    .local v1, "childCount":I
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 630
    .local v0, "bottomOfBottomChild":I
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v2, v5, -0x1

    .line 632
    .local v2, "lastVisiblePosition":I
    iget v5, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v5, v6

    .line 634
    .local v3, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_0

    .line 635
    if-ge v0, v3, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v4

    .line 635
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 620
    iget v3, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v0, v3, v4

    .line 621
    .local v0, "listTop":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 465
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 464
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 429
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 430
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 431
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 432
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 433
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 437
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 444
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 428
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 370
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 335
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 336
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 337
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 338
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 339
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 343
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 350
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 334
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 3884
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3861
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2762
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2763
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2767
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2768
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2769
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 2770
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2774
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2772
    return v0

    .line 2773
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    .line 2774
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2773
    throw v1
.end method

.method protected canAnimate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2275
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 42
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 3563
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    .line 3567
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3568
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    .line 3569
    .local v34, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3570
    .local v33, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v34, :cond_7

    const/4 v13, 0x1

    .line 3571
    .local v13, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v33, :cond_8

    const/4 v12, 0x1

    .line 3572
    .local v12, "drawOverscrollFooter":Z
    :goto_1
    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_9

    const/4 v11, 0x1

    .line 3574
    .local v11, "drawDividers":Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_1b

    .line 3576
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3577
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3580
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    .line 3581
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3582
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v27, v0

    .line 3583
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    sub-int v19, v27, v40

    .line 3584
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3585
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3586
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3587
    .local v17, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3588
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3593
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v40

    if-eqz v40, :cond_a

    :cond_2
    const/16 v16, 0x0

    .line 3594
    .local v16, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->getSubHeaderCnt(Landroid/widget/ListAdapter;I)I

    move-result v30

    .line 3596
    .local v30, "mCntSubHeader":I
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v40, v0

    if-nez v40, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v40, v0

    if-eqz v40, :cond_3

    .line 3597
    new-instance v40, Landroid/graphics/Paint;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/graphics/Paint;->setColor(I)V

    .line 3600
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    .line 3602
    .local v35, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3603
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    .line 3604
    .local v14, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x22

    const/16 v41, 0x22

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_4

    .line 3605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3609
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    sub-int v40, v40, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v41, v0

    add-int v29, v40, v41

    .line 3610
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v40, v0

    if-nez v40, :cond_1f

    .line 3611
    const/4 v6, 0x0

    .line 3614
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v37, v0

    .line 3615
    .local v37, "scrollY":I
    if-lez v9, :cond_5

    if-gez v37, :cond_5

    .line 3616
    if-eqz v13, :cond_b

    .line 3617
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3618
    move/from16 v0, v37

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3619
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3627
    :cond_5
    :goto_4
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_1a

    .line 3628
    add-int v28, v17, v22

    .line 3629
    .local v28, "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    const/16 v25, 0x1

    .line 3630
    .local v25, "isHeader":Z
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    const/16 v24, 0x1

    .line 3631
    .local v24, "isFooter":Z
    :goto_7
    if-nez v21, :cond_e

    if-eqz v25, :cond_e

    .line 3627
    :cond_6
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 3570
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v11    # "drawDividers":Z
    .end local v12    # "drawOverscrollFooter":Z
    .end local v13    # "drawOverscrollHeader":Z
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v27    # "itemCount":I
    .end local v28    # "itemIndex":I
    .end local v29    # "listBottom":I
    .end local v30    # "mCntSubHeader":I
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v37    # "scrollY":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "drawOverscrollHeader":Z
    goto/16 :goto_0

    .line 3571
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "drawOverscrollFooter":Z
    goto/16 :goto_1

    .line 3572
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3593
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v11    # "drawDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    :cond_a
    const/16 v16, 0x1

    .restart local v16    # "fillForMissingDividers":Z
    goto/16 :goto_3

    .line 3620
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v29    # "listBottom":I
    .restart local v30    # "mCntSubHeader":I
    .restart local v35    # "paint":Landroid/graphics/Paint;
    .restart local v37    # "scrollY":I
    :cond_b
    if-eqz v11, :cond_5

    .line 3621
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3622
    neg-int v0, v10

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3623
    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 3629
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_c
    const/16 v25, 0x0

    .restart local v25    # "isHeader":Z
    goto :goto_6

    .line 3630
    :cond_d
    const/16 v24, 0x0

    .restart local v24    # "isFooter":Z
    goto :goto_7

    .line 3631
    :cond_e
    if-nez v18, :cond_f

    if-nez v24, :cond_6

    .line 3632
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3633
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3634
    add-int/lit8 v40, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v40

    if-ne v0, v1, :cond_14

    const/16 v26, 0x1

    .line 3636
    .local v26, "isLastItem":Z
    :goto_9
    if-eqz v11, :cond_6

    move/from16 v0, v29

    if-ge v6, v0, :cond_6

    .line 3637
    if-eqz v12, :cond_10

    if-nez v26, :cond_6

    .line 3638
    :cond_10
    add-int/lit8 v31, v28, 0x1

    .line 3642
    .local v31, "nextIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_16

    if-nez v21, :cond_11

    if-nez v25, :cond_16

    .line 3643
    move/from16 v0, v31

    move/from16 v1, v20

    if-lt v0, v1, :cond_16

    :cond_11
    if-nez v26, :cond_12

    .line 3644
    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_16

    if-nez v18, :cond_12

    if-nez v24, :cond_16

    .line 3645
    move/from16 v0, v31

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    .line 3646
    :cond_12
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3647
    add-int v40, v6, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3649
    sget-boolean v40, Landroid/widget/ListView;->TW_SCAFE_MOCHA:Z

    if-nez v40, :cond_13

    sget-boolean v40, Landroid/widget/ListView;->TW_SCAFE_AMERICANO:Z

    if-eqz v40, :cond_15

    :cond_13
    if-eqz v30, :cond_15

    .line 3650
    const/16 v40, 0x1

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    if-eqz v26, :cond_6

    .line 3651
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_8

    .line 3634
    .end local v26    # "isLastItem":Z
    .end local v31    # "nextIndex":I
    :cond_14
    const/16 v26, 0x0

    .restart local v26    # "isLastItem":Z
    goto :goto_9

    .line 3654
    .restart local v31    # "nextIndex":I
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_8

    .line 3656
    :cond_16
    if-eqz v30, :cond_17

    if-eqz v26, :cond_18

    .line 3663
    :cond_17
    if-eqz v16, :cond_6

    .line 3664
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3665
    add-int v40, v6, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3666
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 3656
    :cond_18
    instance-of v0, v4, Landroid/preference/PreferenceGroupAdapter;

    move/from16 v40, v0

    if-eqz v40, :cond_17

    move-object/from16 v40, v4

    check-cast v40, Landroid/preference/PreferenceGroupAdapter;

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isPreferenceCategory(I)Z

    move-result v40

    if-eqz v40, :cond_17

    .line 3657
    sget-boolean v40, Landroid/view/View;->TW_SCAFE_AMERICANO:Z

    if-nez v40, :cond_19

    sget-boolean v40, Landroid/view/View;->TW_SCAFE_MOCHA:Z

    if-eqz v40, :cond_6

    .line 3658
    :cond_19
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3659
    add-int v40, v6, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_8

    .line 3672
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v31    # "nextIndex":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v41, v0

    add-int v32, v40, v41

    .line 3673
    .local v32, "overFooterBottom":I
    if-eqz v12, :cond_1b

    add-int v40, v17, v9

    move/from16 v0, v40

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 3674
    move/from16 v0, v32

    if-le v0, v6, :cond_1b

    .line 3675
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3676
    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3739
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v27    # "itemCount":I
    .end local v29    # "listBottom":I
    .end local v30    # "mCntSubHeader":I
    .end local v32    # "overFooterBottom":I
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v37    # "scrollY":I
    :cond_1b
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1c

    .line 3740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 3744
    :cond_1c
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1d

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3750
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1e

    .line 3751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 3561
    :cond_1e
    return-void

    .line 3682
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v29    # "listBottom":I
    .restart local v30    # "mCntSubHeader":I
    .restart local v35    # "paint":Landroid/graphics/Paint;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v37, v0

    .line 3684
    .restart local v37    # "scrollY":I
    if-lez v9, :cond_20

    if-eqz v13, :cond_20

    .line 3685
    move/from16 v0, v37

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3686
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v40

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3687
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3690
    :cond_20
    if-eqz v13, :cond_22

    const/16 v38, 0x1

    .line 3691
    .local v38, "start":I
    :goto_b
    move/from16 v22, v38

    .restart local v22    # "i":I
    :goto_c
    move/from16 v0, v22

    if-ge v0, v9, :cond_2b

    .line 3692
    add-int v28, v17, v22

    .line 3693
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_23

    const/16 v25, 0x1

    .line 3694
    .restart local v25    # "isHeader":Z
    :goto_d
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_24

    const/16 v24, 0x1

    .line 3695
    .restart local v24    # "isFooter":Z
    :goto_e
    if-nez v21, :cond_25

    if-eqz v25, :cond_25

    .line 3691
    :cond_21
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 3690
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v38    # "start":I
    :cond_22
    const/16 v38, 0x0

    goto :goto_b

    .line 3693
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_23
    const/16 v25, 0x0

    .restart local v25    # "isHeader":Z
    goto :goto_d

    .line 3694
    :cond_24
    const/16 v24, 0x0

    .restart local v24    # "isFooter":Z
    goto :goto_e

    .line 3695
    :cond_25
    if-nez v18, :cond_26

    if-nez v24, :cond_21

    .line 3696
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3697
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v39

    .line 3698
    .local v39, "top":I
    if-eqz v11, :cond_21

    move/from16 v0, v39

    if-le v0, v15, :cond_21

    .line 3699
    move/from16 v0, v22

    move/from16 v1, v38

    if-ne v0, v1, :cond_29

    const/16 v23, 0x1

    .line 3700
    .local v23, "isFirstItem":Z
    :goto_10
    add-int/lit8 v36, v28, -0x1

    .line 3704
    .local v36, "previousIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_2a

    if-nez v21, :cond_27

    if-nez v25, :cond_2a

    .line 3705
    move/from16 v0, v36

    move/from16 v1, v20

    if-lt v0, v1, :cond_2a

    :cond_27
    if-nez v23, :cond_28

    .line 3706
    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_2a

    if-nez v18, :cond_28

    if-nez v24, :cond_2a

    .line 3707
    move/from16 v0, v36

    move/from16 v1, v19

    if-ge v0, v1, :cond_2a

    .line 3708
    :cond_28
    sub-int v40, v39, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3709
    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3714
    add-int/lit8 v40, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_f

    .line 3699
    .end local v23    # "isFirstItem":Z
    .end local v36    # "previousIndex":I
    :cond_29
    const/16 v23, 0x0

    .restart local v23    # "isFirstItem":Z
    goto :goto_10

    .line 3715
    .restart local v36    # "previousIndex":I
    :cond_2a
    if-eqz v16, :cond_21

    .line 3716
    sub-int v40, v39, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3717
    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3718
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_f

    .line 3724
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v36    # "previousIndex":I
    .end local v39    # "top":I
    :cond_2b
    if-lez v9, :cond_1b

    if-lez v37, :cond_1b

    .line 3725
    if-eqz v12, :cond_2c

    .line 3726
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3727
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3728
    add-int v40, v3, v37

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3729
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 3730
    .end local v3    # "absListBottom":I
    :cond_2c
    if-eqz v11, :cond_1b

    .line 3731
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3732
    add-int v40, v29, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3733
    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2432
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2433
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2435
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2436
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2439
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2442
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 3757
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_0

    .line 3758
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 3761
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3762
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_1

    .line 3763
    iput-boolean v2, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3766
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_2

    .line 3767
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 3770
    :cond_2
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3784
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3786
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3787
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3782
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3537
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3539
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3540
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3542
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3543
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3544
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3547
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3548
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3550
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3536
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3520
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3522
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3523
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3525
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3526
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3527
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3530
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3531
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3519
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 4400
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4402
    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4399
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .param p1, "down"    # Z

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 723
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 724
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 725
    const/4 v2, 0x0

    .line 726
    .local v2, "paddingTop":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 729
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 731
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 732
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 722
    .end local v2    # "paddingTop":I
    :goto_1
    return-void

    .line 730
    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_1
    move v3, v2

    .restart local v3    # "startOffset":I
    goto :goto_0

    .line 734
    .end local v2    # "paddingTop":I
    .end local v3    # "startOffset":I
    :cond_2
    const/4 v1, 0x0

    .line 735
    .local v1, "paddingBottom":I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v6, :cond_3

    .line 736
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 738
    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 740
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 741
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 739
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    .restart local v3    # "startOffset":I
    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1436
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1437
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1438
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1440
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1441
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1442
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1439
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1446
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1447
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1448
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1449
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1446
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1454
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    return v3
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 4124
    if-eqz p1, :cond_2

    .line 4125
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4128
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4131
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4132
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4134
    if-eqz v2, :cond_0

    .line 4135
    return-object v2

    .line 4140
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v4
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4102
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4103
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4104
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4105
    if-eqz v0, :cond_0

    .line 4106
    return-object v0

    .line 4109
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4110
    if-eqz v0, :cond_1

    .line 4111
    return-object v0

    .line 4114
    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 5
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    .line 4029
    if-eqz p1, :cond_1

    .line 4030
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4033
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4034
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4036
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4037
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4039
    if-eqz v2, :cond_0

    .line 4040
    return-object v2

    .line 4033
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4045
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 4010
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4011
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4012
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4013
    if-eqz v0, :cond_0

    .line 4014
    return-object v0

    .line 4016
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4017
    if-eqz v0, :cond_1

    .line 4018
    return-object v0

    .line 4021
    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    const/4 v4, 0x0

    .line 4075
    if-eqz p1, :cond_1

    .line 4076
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4079
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4080
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4082
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4083
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4085
    if-eqz v2, :cond_0

    .line 4086
    return-object v2

    .line 4079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4091
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4055
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4056
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4057
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4058
    if-eqz v0, :cond_0

    .line 4059
    return-object v0

    .line 4062
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4063
    if-eqz v0, :cond_1

    .line 4064
    return-object v0

    .line 4067
    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2666
    const/4 v1, 0x0

    .line 2667
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    .line 2668
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2669
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2670
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2671
    iput v5, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2672
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2673
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2675
    :cond_0
    const/4 v1, 0x1

    .line 2691
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2697
    :cond_2
    :goto_1
    return v1

    .line 2677
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 2678
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2679
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2681
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2680
    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2682
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2683
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2684
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2685
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2687
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 2692
    .end local v0    # "lastItem":I
    .end local v2    # "position":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2693
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2694
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4258
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4155
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4156
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    return-object v8

    .line 4161
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4162
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4163
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4164
    .local v3, "count":I
    new-array v5, v3, [J

    .line 4165
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4167
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4168
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 4169
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4170
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4168
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_0

    .line 4176
    :cond_1
    if-ne v2, v3, :cond_2

    .line 4177
    return-object v5

    .line 4179
    :cond_2
    new-array v6, v2, [J

    .line 4180
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 4182
    return-object v6

    .line 4185
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    return-object v8

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1665
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 1666
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3798
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3826
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4190
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4191
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4192
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4194
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3482
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3923
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3904
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3487
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    .line 3488
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    .line 3487
    if-nez v5, :cond_2

    .line 3488
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v4

    .line 3489
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_7

    .line 3491
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3492
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3493
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_4

    .line 3494
    :cond_1
    return v7

    .line 3487
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 3491
    .restart local v4    # "retValue":Z
    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .restart local v3    # "listTop":I
    goto :goto_1

    .line 3496
    .restart local v0    # "first":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 3497
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 3496
    :goto_2
    sub-int v2, v6, v5

    .line 3498
    .local v2, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3499
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_7

    .line 3500
    :cond_5
    return v7

    .line 3497
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_6
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    goto :goto_2

    .line 3503
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    :cond_7
    return v4
.end method

.method protected layoutChildren()V
    .locals 44

    .prologue
    .line 1672
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1673
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_0

    .line 1674
    return-void

    .line 1677
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1680
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1684
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_3

    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v4, :cond_1

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v4}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2056
    :cond_1
    if-nez v13, :cond_2

    .line 2057
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1687
    :cond_2
    return-void

    .line 1690
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1691
    .local v8, "childrenTop":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v41, v0

    sub-int v4, v4, v41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    sub-int v9, v4, v41

    .line 1692
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    .line 1694
    .local v15, "childCount":I
    const/16 v29, 0x0

    .line 1695
    .local v29, "index":I
    const/4 v7, 0x0

    .line 1698
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 1699
    .local v5, "oldSel":Landroid/view/View;
    const/16 v32, 0x0

    .line 1700
    .local v32, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 1703
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 1718
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v41, v0

    sub-int v29, v4, v41

    .line 1719
    if-ltz v29, :cond_4

    move/from16 v0, v29

    if-ge v0, v15, :cond_4

    .line 1720
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1724
    .end local v5    # "oldSel":Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 1726
    .local v32, "oldFirst":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v4, :cond_5

    .line 1727
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v41, v0

    sub-int v7, v4, v41

    .line 1731
    :cond_5
    add-int v4, v29, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1735
    .end local v6    # "newSel":Landroid/view/View;
    .end local v32    # "oldFirst":Landroid/view/View;
    :cond_6
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 1736
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_7

    .line 1737
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1742
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    if-nez v4, :cond_a

    .line 1743
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1744
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v4, :cond_8

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v4}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2056
    :cond_8
    if-nez v13, :cond_9

    .line 2057
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1745
    :cond_9
    return-void

    .line 1705
    .end local v16    # "dataChanged":Z
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .local v32, "oldFirst":Landroid/view/View;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v41, v0

    sub-int v29, v4, v41

    .line 1706
    if-ltz v29, :cond_6

    move/from16 v0, v29

    if-ge v0, v15, :cond_6

    .line 1707
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "newSel":Landroid/view/View;
    goto :goto_0

    .line 1746
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v32    # "oldFirst":Landroid/view/View;
    .restart local v16    # "dataChanged":Z
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Landroid/widget/ListAdapter;->getCount()I

    move-result v41

    move/from16 v0, v41

    if-eq v4, v0, :cond_d

    .line 1747
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1751
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v42

    .line 1747
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1751
    const-string/jumbo v42, ", "

    .line 1747
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1751
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getClass()Ljava/lang/Class;

    move-result-object v42

    .line 1747
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1752
    const-string/jumbo v42, ") with Adapter("

    .line 1747
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    .line 1747
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 1752
    const-string/jumbo v42, ")]"

    .line 1747
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2052
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v29    # "index":I
    :catchall_0
    move-exception v4

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    move-object/from16 v41, v0

    if-eqz v41, :cond_b

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2056
    :cond_b
    if-nez v13, :cond_c

    .line 2057
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2052
    :cond_c
    throw v4

    .line 1755
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v29    # "index":I
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1757
    const/4 v10, 0x0

    .line 1758
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 1759
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 1760
    .local v12, "accessibilityFocusPosition":I
    const/16 v30, 0x0

    .line 1765
    .local v30, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v39

    .line 1766
    .local v39, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v39, :cond_11

    .line 1767
    invoke-virtual/range {v39 .. v39}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v20

    .line 1768
    .local v20, "focusHost":Landroid/view/View;
    if-eqz v20, :cond_11

    .line 1769
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1770
    .local v18, "focusChild":Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 1771
    const/16 v30, 0x1

    .line 1773
    :cond_e
    if-eqz v18, :cond_11

    .line 1774
    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1775
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 1774
    if-nez v4, :cond_f

    .line 1775
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    .line 1774
    if-eqz v4, :cond_10

    .line 1778
    :cond_f
    move-object/from16 v11, v20

    .line 1779
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {v39 .. v39}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1785
    .end local v10    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1790
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v20    # "focusHost":Landroid/view/View;
    :cond_11
    const/16 v21, 0x0

    .line 1791
    .local v21, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v22, 0x0

    .line 1794
    .local v22, "focusLayoutRestoreView":Landroid/view/View;
    const/16 v19, 0x0

    .line 1800
    .local v19, "focusFirstItemTemporarily":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v26

    .line 1801
    .local v26, "focusedChild":Landroid/view/View;
    if-eqz v26, :cond_14

    .line 1807
    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1808
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 1807
    if-nez v4, :cond_12

    .line 1808
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    .line 1807
    if-eqz v4, :cond_13

    .line 1809
    :cond_12
    move-object/from16 v21, v26

    .line 1811
    .local v21, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v22

    .line 1812
    .local v22, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v22, :cond_13

    .line 1814
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1816
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v4, :cond_13

    .line 1817
    const/16 v19, 0x1

    .line 1822
    .end local v21    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v22    # "focusLayoutRestoreView":Landroid/view/View;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1827
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 1828
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v35, v0

    .line 1829
    .local v35, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v16, :cond_15

    .line 1830
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    if-ge v0, v15, :cond_16

    .line 1831
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v41, v17, v27

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1830
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1834
    .end local v27    # "i":I
    :cond_15
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1838
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mChnagedAdapter:Z

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mInitAbsListView:Z

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mWindowFocusChanged:Z

    if-eqz v4, :cond_17

    if-eqz v16, :cond_23

    .line 1841
    :cond_17
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mWindowFocusChanged:Z

    .line 1842
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mChnagedAdapter:Z

    .line 1843
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mInitAbsListView:Z

    .line 1846
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1847
    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1849
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    .line 1896
    if-nez v15, :cond_27

    .line 1897
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v4, :cond_26

    .line 1898
    const/4 v4, 0x0

    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v33

    .line 1899
    .local v33, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1900
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v37

    .line 1921
    .end local v8    # "childrenTop":I
    .end local v33    # "position":I
    .local v37, "sel":Landroid/view/View;
    :cond_18
    :goto_3
    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1924
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1927
    if-eqz v37, :cond_2f

    .line 1932
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v19, :cond_2e

    .line 1934
    :cond_19
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 1935
    if-eqz v22, :cond_1a

    .line 1936
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 1934
    if-nez v4, :cond_2c

    .line 1936
    :cond_1a
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->requestFocus()Z

    move-result v24

    .line 1937
    .local v24, "focusWasTaken":Z
    :goto_4
    if-nez v24, :cond_2d

    .line 1941
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v25

    .line 1942
    .local v25, "focused":Landroid/view/View;
    if-eqz v25, :cond_1b

    .line 1943
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->clearFocus()V

    .line 1945
    :cond_1b
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1953
    .end local v24    # "focusWasTaken":Z
    .end local v25    # "focused":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1985
    :cond_1c
    :goto_6
    if-eqz v39, :cond_1d

    .line 1986
    invoke-virtual/range {v39 .. v39}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v31

    .line 1987
    .local v31, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v31, :cond_37

    .line 1988
    if-eqz v11, :cond_36

    .line 1989
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    .line 1988
    if-eqz v4, :cond_36

    .line 1991
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v34

    .line 1992
    .local v34, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_35

    if-eqz v34, :cond_35

    .line 1994
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v42

    .line 1993
    invoke-static/range {v42 .. v43}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v40

    .line 1996
    .local v40, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v41, 0x0

    .line 1995
    move-object/from16 v0, v34

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2030
    .end local v31    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v34    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v40    # "virtualViewId":I
    :cond_1d
    :goto_7
    if-eqz v22, :cond_1e

    .line 2031
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 2032
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2035
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2036
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 2037
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mJumpAtFirst:Z

    .line 2038
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_1f

    .line 2039
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2040
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2042
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mNeedSync:Z

    .line 2043
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2045
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 2047
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    if-lez v4, :cond_20

    .line 2048
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2051
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v4, :cond_21

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v4}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2056
    :cond_21
    if-nez v13, :cond_22

    .line 2057
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1671
    :cond_22
    return-void

    .line 1839
    .end local v37    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_23
    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mJumpAtFirst:Z

    goto/16 :goto_2

    .line 1851
    :pswitch_2
    if-eqz v6, :cond_24

    .line 1852
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1854
    .end local v37    # "sel":Landroid/view/View;
    :cond_24
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1858
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mSemScrollingByScrollbar:Z

    if-eqz v4, :cond_25

    .line 1859
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSpecificTop:I

    .line 1860
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1862
    .end local v37    # "sel":Landroid/view/View;
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1867
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v37

    .line 1868
    .restart local v37    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1871
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1872
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v37

    .line 1873
    .restart local v37    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1876
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v38

    .line 1877
    .local v38, "selectedPosition":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSpecificTop:I

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1, v4}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .line 1884
    .restart local v37    # "sel":Landroid/view/View;
    if-nez v37, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v4, :cond_18

    .line 1885
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v23

    .line 1887
    .local v23, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v23, :cond_18

    .line 1888
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .end local v23    # "focusRunnable":Ljava/lang/Runnable;
    .end local v37    # "sel":Landroid/view/View;
    .end local v38    # "selectedPosition":I
    :pswitch_7
    move-object/from16 v4, p0

    .line 1893
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1902
    .end local v37    # "sel":Landroid/view/View;
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v33

    .line 1903
    .restart local v33    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1904
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1907
    .end local v33    # "position":I
    .end local v37    # "sel":Landroid/view/View;
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v4, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v4, v0, :cond_29

    .line 1908
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1909
    if-nez v5, :cond_28

    .line 1908
    .end local v8    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1909
    .end local v37    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_28
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_8

    .line 1910
    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v4, v0, :cond_2b

    .line 1911
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1912
    if-nez v32, :cond_2a

    .line 1911
    .end local v8    # "childrenTop":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1912
    .end local v37    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_2a
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_9

    .line 1914
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1934
    .end local v8    # "childrenTop":I
    :cond_2c
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 1947
    .restart local v24    # "focusWasTaken":Z
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1951
    .end local v24    # "focusWasTaken":Z
    :cond_2e
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1955
    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v41, 0x1

    move/from16 v0, v41

    if-eq v4, v0, :cond_31

    .line 1956
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v4, v0, :cond_32

    const/16 v28, 0x1

    .line 1957
    .local v28, "inTouchMode":Z
    :goto_a
    if-eqz v28, :cond_33

    .line 1959
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v41, v0

    sub-int v4, v4, v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1960
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_30

    .line 1961
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1979
    .end local v14    # "child":Landroid/view/View;
    :cond_30
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-eqz v22, :cond_1c

    .line 1980
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1955
    .end local v28    # "inTouchMode":Z
    :cond_31
    const/16 v28, 0x1

    goto :goto_a

    .line 1956
    :cond_32
    const/16 v28, 0x0

    goto :goto_a

    .line 1963
    .restart local v28    # "inTouchMode":Z
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v4, v0, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v4, v0, :cond_34

    .line 1967
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v41, v0

    sub-int v4, v4, v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1968
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_30

    .line 1969
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    .line 1973
    .end local v14    # "child":Landroid/view/View;
    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1974
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    .line 1998
    .end local v28    # "inTouchMode":Z
    .restart local v31    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v34    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_35
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_7

    .line 2000
    .end local v34    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_36
    const/4 v4, -0x1

    if-eq v12, v4, :cond_1d

    .line 2003
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v12, v4

    .line 2004
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    .line 2003
    const/16 v42, 0x0

    .line 2002
    move/from16 v0, v42

    move/from16 v1, v41

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v33

    .line 2005
    .restart local v33    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 2006
    .local v36, "restoreView":Landroid/view/View;
    if-eqz v36, :cond_1d

    .line 2007
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_7

    .line 2010
    .end local v33    # "position":I
    .end local v36    # "restoreView":Landroid/view/View;
    :cond_37
    const/4 v4, -0x1

    if-eq v12, v4, :cond_1d

    .line 2012
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v12, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    const/16 v42, 0x0

    .line 2011
    move/from16 v0, v42

    move/from16 v1, v41

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v33

    .line 2014
    .restart local v33    # "position":I
    if-eqz v30, :cond_38

    .line 2015
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getId()I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    .line 2019
    .restart local v36    # "restoreView":Landroid/view/View;
    :goto_c
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_1d

    .line 2020
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2021
    if-eqz v36, :cond_1d

    .line 2022
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_7

    .line 2017
    .end local v36    # "restoreView":Landroid/view/View;
    :cond_38
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v36

    .restart local v36    # "restoreView":Landroid/view/View;
    goto :goto_c

    .line 1703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1849
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2331
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2332
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2333
    :cond_0
    return v5

    .line 2336
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2337
    .local v1, "count":I
    if-nez p1, :cond_3

    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne v2, v5, :cond_3

    :cond_2
    iget-boolean v2, p0, Landroid/widget/ListView;->mIsFolderTypeFeature:Z

    if-eqz v2, :cond_3

    if-lez v1, :cond_3

    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2338
    return v3

    .line 2340
    :cond_3
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_4

    .line 2341
    if-eqz p2, :cond_7

    .line 2342
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2343
    :goto_0
    if-ge p1, v1, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2354
    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v1, :cond_8

    .line 2355
    :cond_5
    return v5

    .line 2344
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2347
    :cond_7
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2348
    :goto_1
    if-ltz p1, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2349
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2358
    :cond_8
    return p1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2374
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2375
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2376
    :cond_0
    return v5

    .line 2380
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2381
    .local v1, "after":I
    if-eq v1, v5, :cond_2

    .line 2382
    return v1

    .line 2386
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2387
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v5, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2388
    if-eqz p3, :cond_5

    .line 2389
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2390
    :goto_0
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2393
    :cond_3
    if-gt p2, p1, :cond_8

    .line 2394
    return v5

    .line 2391
    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2397
    :cond_5
    add-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2398
    :goto_1
    if-ge p2, p1, :cond_6

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2401
    :cond_6
    if-lt p2, p1, :cond_8

    .line 2402
    return v5

    .line 2399
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2406
    :cond_8
    return p2
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1375
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1376
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 1377
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    return v10

    .line 1381
    :cond_0
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1382
    .local v9, "returnedHeight":I
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1385
    .local v3, "dividerHeight":I
    const/4 v6, 0x0

    .line 1390
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1391
    :cond_1
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1392
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1393
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1395
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_0
    if-gt v4, p3, :cond_7

    .line 1396
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1398
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    invoke-direct {p0, v2, v4, p1, v0}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1400
    if-lez v4, :cond_2

    .line 1402
    add-int/2addr v9, v3

    .line 1406
    :cond_2
    if-eqz v8, :cond_3

    .line 1407
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1406
    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1408
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1411
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1413
    move/from16 v0, p4

    if-lt v9, v0, :cond_5

    .line 1416
    if-ltz p5, :cond_4

    .line 1417
    move/from16 v0, p5

    if-le v4, v0, :cond_4

    .line 1418
    if-lez v6, :cond_4

    .line 1419
    move/from16 v0, p4

    if-eq v9, v0, :cond_4

    .line 1416
    .end local v6    # "prevHeightWithoutPartialChild":I
    :goto_1
    return v6

    .restart local v6    # "prevHeightWithoutPartialChild":I
    :cond_4
    move/from16 v6, p4

    .line 1421
    goto :goto_1

    .line 1424
    :cond_5
    if-ltz p5, :cond_6

    move/from16 v0, p5

    if-lt v4, v0, :cond_6

    .line 1425
    move v6, v9

    .line 1395
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1431
    .end local v2    # "child":Landroid/view/View;
    :cond_7
    return v9
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1229
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1231
    iput-object v1, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1233
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1228
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3992
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3994
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3995
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3996
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3997
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3996
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3999
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3991
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3928
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3930
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3931
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3932
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3933
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3934
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3938
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3939
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3940
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3945
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3946
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3947
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3948
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3950
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3952
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3950
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3956
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3957
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3958
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3959
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3961
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3962
    move v9, v6

    .line 3963
    move v5, v8

    .line 3964
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3969
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_5

    .line 3970
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3974
    :goto_2
    if-eqz p1, :cond_4

    iget-object v12, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v12, :cond_4

    .line 3975
    new-instance v12, Landroid/widget/ListView$2;

    invoke-direct {v12, p0}, Landroid/widget/ListView$2;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p0, v12}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 3927
    :cond_4
    return-void

    .line 3972
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 4387
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 4390
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    const/4 v4, 0x1

    .line 4391
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    .line 4393
    .local v5, "isSelected":Z
    const/4 v2, 0x0

    move v0, p2

    move v3, v1

    .line 4392
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 4394
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4386
    return-void

    .line 4390
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isHeading":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    .line 4264
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4266
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 4267
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 4269
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    .line 4268
    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4270
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4272
    if-lez v1, :cond_0

    .line 4273
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4263
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1628
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1629
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1629
    if-eqz v0, :cond_1

    .line 1630
    return v1

    .line 1631
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2447
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2452
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2457
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1257
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1259
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1260
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1261
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1262
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1264
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1265
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1266
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1268
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1269
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    .line 1270
    if-nez v10, :cond_1

    .line 1271
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1273
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 1276
    invoke-direct {p0, v6, v2, p1, v4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1278
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1279
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1280
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1282
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1283
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1282
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1284
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1289
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1290
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    .line 1291
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    .line 1290
    add-int v12, v0, v1

    .line 1296
    :goto_1
    if-nez v10, :cond_2

    .line 1297
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 1298
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 1297
    add-int v4, v0, v1

    .line 1301
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1303
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1306
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1308
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1255
    return-void

    .line 1268
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1293
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1238
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1239
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1240
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1241
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1242
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1243
    .local v0, "childBottom":I
    iget v5, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v5, p2, v5

    sub-int v5, v0, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1244
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1245
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1246
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    invoke-direct {v5, p0, v7}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1248
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1251
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1237
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1645
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1646
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1646
    if-eqz v0, :cond_1

    .line 1647
    return v1

    .line 1648
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 4377
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 4378
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4379
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 4376
    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2612
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2613
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2619
    :cond_0
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    .line 2620
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2621
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2629
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_6

    .line 2630
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2631
    .local v2, "position":I
    if-ltz v2, :cond_6

    .line 2632
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2633
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2635
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2636
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2639
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2640
    iput v7, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2643
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2644
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2645
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2646
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2647
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2650
    :cond_3
    return v7

    .line 2622
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_5

    .line 2623
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2624
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_0

    .line 2626
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    :cond_5
    return v6

    .line 2654
    .restart local v0    # "down":Z
    .restart local v1    # "nextPage":I
    :cond_6
    return v6
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4280
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4281
    return v5

    .line 4284
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4297
    :cond_1
    return v4

    .line 4286
    :pswitch_0
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4287
    .local v1, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4288
    .local v0, "position":I
    if-ltz v1, :cond_1

    .line 4291
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4292
    return v5

    .line 4284
    nop

    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 4408
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4409
    const/4 v0, 0x0

    return v0

    .line 4412
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1344
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 487
    :cond_0
    const/4 v0, 0x1

    .line 489
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 490
    return v0

    .line 492
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 393
    :cond_0
    const/4 v0, 0x1

    .line 395
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 396
    return v0

    .line 398
    .end local v0    # "result":Z
    :cond_2
    return v2
.end method

.method public removePendingCallbacks()V
    .locals 0

    .prologue
    .line 4418
    invoke-super {p0}, Landroid/widget/AbsListView;->removePendingCallbacks()V

    .line 4417
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 642
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 645
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 648
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 649
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 650
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 651
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 653
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 655
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 656
    :cond_0
    add-int/2addr v8, v5

    .line 660
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 661
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 663
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 665
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    .line 666
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 667
    :cond_2
    sub-int/2addr v7, v5

    .line 671
    :cond_3
    const/4 v11, 0x0

    .line 673
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 680
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/lit8 v11, v13, 0x0

    .line 687
    :goto_0
    sub-int v4, v1, v7

    .line 688
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 708
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 709
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 710
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 711
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 713
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 715
    :cond_5
    return v10

    .line 683
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/lit8 v11, v13, 0x0

    goto :goto_0

    .line 689
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 696
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    rsub-int/lit8 v11, v13, 0x0

    .line 703
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 704
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 705
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 699
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    rsub-int/lit8 v11, v13, 0x0

    goto :goto_3

    .line 708
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 595
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 597
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 591
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 539
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 541
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 542
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 547
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 548
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 551
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 554
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 555
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 556
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 557
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 559
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 560
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 562
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 565
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 566
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 570
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 571
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 573
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 575
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 584
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 533
    return-void

    .line 544
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 578
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 579
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 581
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .prologue
    .line 175
    iput-object p1, p0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 174
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3508
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3509
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3510
    if-eqz v0, :cond_1

    .line 3511
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3512
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3514
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3516
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3507
    return-void

    .line 3508
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3811
    if-eqz p1, :cond_1

    .line 3812
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3816
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3817
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3818
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3819
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3810
    return-void

    .line 3814
    :cond_1
    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3817
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3836
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3837
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3838
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3835
    return-void
.end method

.method public setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .prologue
    .line 180
    iput-object p1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 182
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    new-instance v1, Landroid/widget/ListView$1;

    invoke-direct {v1, p0}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 179
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3874
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3875
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3873
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3851
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3852
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3850
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3471
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3472
    if-nez p1, :cond_0

    .line 3473
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3470
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3915
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3916
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3914
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3894
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3895
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3896
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3893
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 516
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2286
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2414
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2415
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2416
    iput v2, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2417
    return-void

    .line 2420
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2421
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 2413
    :goto_0
    return-void

    .line 2423
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2424
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2297
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2298
    const/4 v0, 0x0

    .line 2300
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2302
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2303
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2304
    const/4 v0, 0x1

    .line 2310
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2311
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2314
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2316
    if-eqz v0, :cond_2

    .line 2317
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2296
    :cond_2
    return-void

    .line 2305
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2306
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1007
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1006
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 997
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 996
    return-void
.end method

.method trackMotionScroll(II)Z
    .locals 2
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 2065
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 2066
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2067
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2068
    return v0
.end method
