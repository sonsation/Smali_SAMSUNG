.class Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.source "SeslHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;,
        Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;,
        Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;,
        Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final BITS_PER_LONG:I = 0x20

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeslHorizontalListView"

.field private static final XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com.samsung.android"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private final mFixedSizeItems:Z

.field private mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 204
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$SeslLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 111
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$SeslLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 125
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    .line 127
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    .line 129
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsDeviceDefaultTheme:Z

    .line 132
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 135
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsFolderTypeFeature:Z

    .line 139
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$1;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    .line 264
    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_entries:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 269
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 270
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    :cond_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_divider:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 275
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_1
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_overScrollHeader:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 282
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_2
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_overScrollFooter:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 288
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 289
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_3
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_dividerHeight:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 295
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 296
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setDividerHeight(I)V

    .line 299
    :cond_4
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_headerDividersEnabled:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderDividersEnabled:Z

    .line 300
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_footerDividersEnabled:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterDividersEnabled:Z

    .line 302
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 304
    if-eqz p2, :cond_5

    .line 305
    const-string v6, "http://schemas.android.samsung.com.samsung.android"

    const-string v7, "fixed_size_items"

    invoke-interface {p2, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFixedSizeItems:Z

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_5
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFixedSizeItems:Z

    goto :goto_0
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3850
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 3851
    add-int/lit8 v2, p2, 0x1

    .line 3853
    .local v2, "abovePosition":I
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3854
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3856
    .local v3, "edgeOfNewChild":I
    if-eqz v1, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3860
    :cond_0
    return-object v1

    .line 3852
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "abovePosition":I
    .end local v3    # "edgeOfNewChild":I
    :cond_1
    add-int/lit8 v2, p2, -0x1

    .restart local v2    # "abovePosition":I
    goto :goto_0
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3864
    add-int/lit8 v2, p2, 0x1

    .line 3865
    .local v2, "belowPosition":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3866
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 3867
    .local v3, "edgeOfNewChild":I
    if-eqz p1, :cond_0

    .line 3868
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3870
    :cond_0
    if-eqz v1, :cond_1

    .line 3871
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3874
    :cond_1
    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v1

    .line 328
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 331
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_6

    .line 334
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 341
    .local v2, "delta":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 344
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_4

    .line 345
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 349
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_5

    .line 350
    if-lez v2, :cond_1

    .line 351
    const/4 v2, 0x0

    .line 387
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 389
    neg-int v3, v2

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 392
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 339
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .restart local v2    # "delta":I
    goto :goto_0

    .line 347
    :cond_4
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_1

    .line 353
    :cond_5
    if-gez v2, :cond_1

    .line 356
    const/4 v2, 0x0

    goto :goto_2

    .line 361
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .restart local v0    # "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_8

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 366
    .restart local v2    # "delta":I
    :goto_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_7

    .line 369
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_9

    .line 370
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 375
    :cond_7
    :goto_4
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_a

    .line 376
    if-gez v2, :cond_1

    .line 377
    const/4 v2, 0x0

    goto :goto_2

    .line 365
    .end local v2    # "delta":I
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .restart local v2    # "delta":I
    goto :goto_3

    .line 372
    :cond_9
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_4

    .line 379
    :cond_a
    if-lez v2, :cond_1

    .line 382
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 3347
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    .line 3348
    .local v5, "listRight":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 3350
    .local v4, "listLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    .line 3352
    .local v7, "numChildren":I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_b

    .line 3353
    add-int/lit8 v3, v7, -0x1

    .line 3354
    .local v3, "indexToMakeVisible":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_0

    .line 3355
    const/4 v3, 0x0

    .line 3357
    :cond_0
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1

    .line 3358
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3360
    :cond_1
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_2

    .line 3361
    :goto_0
    if-gez v3, :cond_3

    .line 3363
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3364
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 3365
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_0

    .line 3368
    :cond_2
    :goto_1
    if-gt v7, v3, :cond_3

    .line 3370
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3371
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3374
    :cond_3
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3375
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3377
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 3378
    .local v2, "goalRight":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_5

    if-lez v8, :cond_4

    .line 3379
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v2, v10

    .line 3382
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_6

    .line 3384
    const/4 v10, 0x0

    .line 3447
    .end local v2    # "goalRight":I
    :goto_3
    return v10

    .line 3378
    .restart local v2    # "goalRight":I
    :cond_5
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_4

    goto :goto_2

    .line 3387
    :cond_6
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 3388
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_7

    .line 3390
    const/4 v10, 0x0

    goto :goto_3

    .line 3393
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    .line 3395
    .local v0, "amountToScroll":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_8

    .line 3397
    :goto_4
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    .line 3398
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3401
    .end local v6    # "max":I
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3

    .line 3395
    :cond_9
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_8

    goto :goto_4

    .line 3397
    :cond_a
    add-int/lit8 v10, v7, -0x1

    goto :goto_5

    .line 3403
    .end local v0    # "amountToScroll":I
    .end local v2    # "goalRight":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    .line 3404
    .restart local v3    # "indexToMakeVisible":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_c

    .line 3405
    add-int/lit8 v3, v7, -0x1

    .line 3407
    :cond_c
    const/4 v10, -0x1

    if-eq p2, v10, :cond_d

    .line 3408
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 3410
    :cond_d
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_e

    .line 3411
    :goto_6
    if-gt v7, v3, :cond_f

    .line 3413
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3414
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3417
    :cond_e
    :goto_7
    if-gez v3, :cond_f

    .line 3419
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3420
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 3421
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_7

    .line 3424
    :cond_f
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 3425
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3426
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 3427
    .local v1, "goalLeft":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_11

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_10

    .line 3428
    :goto_8
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v1, v10

    .line 3430
    :cond_10
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_12

    .line 3432
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 3427
    :cond_11
    if-lez v8, :cond_10

    goto :goto_8

    .line 3435
    :cond_12
    const/4 v10, -0x1

    if-eq p2, v10, :cond_13

    .line 3436
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_13

    .line 3438
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 3441
    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    .line 3442
    .restart local v0    # "amountToScroll":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_15

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_14

    .line 3444
    :goto_9
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_16

    add-int/lit8 v10, v7, -0x1

    :goto_a
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    .line 3445
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3447
    .end local v6    # "max":I
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    .line 3442
    :cond_15
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_14

    goto :goto_9

    .line 3444
    :cond_16
    const/4 v10, 0x0

    goto :goto_a
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3656
    const/4 v0, 0x0

    .line 3657
    .local v0, "amountToScroll":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3658
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3659
    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    .line 3660
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 3661
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3662
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3663
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3675
    :cond_0
    :goto_1
    return v0

    .line 3662
    :cond_1
    if-lez p3, :cond_0

    goto :goto_0

    .line 3667
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3668
    .local v1, "listRight":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    .line 3669
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 3670
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    if-lez p3, :cond_0

    .line 3671
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 3670
    :cond_3
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    goto :goto_2
.end method

.method private arrowScrollFocused(I)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 3554
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 3556
    .local v12, "selectedView":Landroid/view/View;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3557
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3558
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3583
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3584
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3588
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3589
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    .line 3590
    .local v11, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v11, v9, :cond_1

    :cond_0
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v11, v9, :cond_a

    .line 3593
    :cond_1
    const/4 v14, 0x0

    .line 3615
    .end local v9    # "positionOfNewFocus":I
    .end local v11    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 3560
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 3561
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v3, 0x1

    .line 3562
    .local v3, "leftFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_4

    .line 3563
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v4, v15, v14

    .line 3564
    .local v4, "listLeft":I
    if-eqz v12, :cond_5

    .line 3565
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_5

    .line 3566
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 3568
    .local v13, "xSearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3580
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 3561
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "xSearchPoint":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 3563
    .restart local v3    # "leftFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v4    # "listLeft":I
    :cond_5
    move v13, v4

    .line 3566
    goto :goto_4

    .line 3570
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 3571
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v10, 0x1

    .line 3572
    .local v10, "rightFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_8

    .line 3573
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v5, v15, v14

    .line 3574
    .local v5, "listRight":I
    if-eqz v12, :cond_9

    .line 3575
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_9

    .line 3576
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3578
    .restart local v13    # "xSearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 3571
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 3573
    .restart local v10    # "rightFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v5    # "listRight":I
    :cond_9
    move v13, v5

    .line 3576
    goto :goto_8

    .line 3597
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .line 3599
    .local v2, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getMaxScrollAmount()I

    move-result v6

    .line 3600
    .local v6, "maxScrollAmount":I
    if-ge v2, v6, :cond_b

    .line 3602
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 3604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3605
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3610
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 3612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3615
    .end local v2    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 3130
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return v9

    .line 3134
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 3135
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    .line 3137
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 3138
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->amountToScroll(II)I

    move-result v0

    .line 3141
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->arrowScrollFocused(I)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 3142
    .local v1, "focusResult":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 3143
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 3144
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 3147
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 3148
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 3149
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3150
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 3151
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 3152
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 3153
    move v5, v4

    .line 3154
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 3157
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3158
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3159
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3162
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 3163
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->checkSelectionChanged()V

    .line 3166
    :cond_4
    if-lez v0, :cond_5

    .line 3167
    const/16 v7, 0x11

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->scrollListItemsBy(I)V

    .line 3168
    const/4 v3, 0x1

    .line 3173
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    .line 3174
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3175
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3176
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 3177
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3182
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    .line 3183
    invoke-direct {p0, v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 3184
    const/4 v6, 0x0

    .line 3185
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 3186
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->hideSelector()V

    .line 3190
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mResurrectToPosition:I

    .line 3193
    :cond_8
    if-eqz v3, :cond_0

    .line 3194
    if-eqz v6, :cond_9

    .line 3195
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3196
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedLeft:I

    .line 3198
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3199
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 3201
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 3202
    goto/16 :goto_0

    .line 3141
    .end local v1    # "focusResult":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 3147
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_d
    move v7, v9

    .line 3149
    goto/16 :goto_3

    .line 3167
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 675
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 677
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 678
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v0, v4, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 679
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 680
    .local v3, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 681
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 677
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2763
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2914
    :cond_1
    :goto_0
    return v4

    .line 2767
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2768
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->layoutChildren()V

    .line 2771
    :cond_3
    const/4 v2, 0x0

    .line 2772
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2774
    .local v0, "action":I
    if-eq v0, v4, :cond_4

    .line 2775
    sparse-switch p1, :sswitch_data_0

    .line 2895
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2899
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2903
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2914
    goto :goto_0

    .line 2777
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2778
    :cond_5
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCurrentFocusPosition:I

    .line 2779
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2780
    if-nez v2, :cond_4

    move v1, p2

    .line 2781
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2782
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2783
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2789
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_6
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2790
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_3

    .line 2795
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2796
    :cond_9
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCurrentFocusPosition:I

    .line 2797
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2798
    if-nez v2, :cond_4

    move v1, p2

    .line 2799
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2800
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2801
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2807
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_a
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2808
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_5

    .line 2813
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2814
    :cond_d
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCurrentFocusPosition:I

    .line 2815
    const/16 v5, 0x21

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2820
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2821
    :cond_e
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCurrentFocusPosition:I

    .line 2822
    const/16 v5, 0x82

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2828
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2829
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2830
    if-nez v2, :cond_4

    .line 2831
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2832
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->keyPressed()V

    .line 2833
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2839
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2840
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2841
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move v2, v4

    .line 2845
    :cond_11
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_12
    move v2, v3

    .line 2841
    goto :goto_6

    .line 2842
    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2843
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_15
    move v2, v3

    goto :goto_7

    .line 2850
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2851
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_17
    move v2, v3

    goto :goto_8

    .line 2852
    :cond_18
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2853
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_1a
    move v2, v3

    goto :goto_9

    .line 2858
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2859
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_1c
    move v2, v3

    goto :goto_a

    .line 2860
    :cond_1d
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2861
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_b

    .line 2866
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2867
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_20
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_21
    move v2, v3

    goto :goto_c

    .line 2872
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2873
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_23
    move v2, v3

    goto :goto_d

    .line 2905
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2908
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2911
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2775
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2903
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
    .line 1715
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .line 1716
    .local v4, "lastPosition":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    .line 1719
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1722
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1725
    .local v5, "lastRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .line 1729
    .local v0, "end":I
    sub-int v6, v0, v5

    .line 1730
    .local v6, "rightOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1731
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1735
    .local v2, "firstLeft":I
    if-lez v6, :cond_2

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    .line 1736
    :cond_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1738
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1742
    :cond_1
    invoke-static {p0, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 1744
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1747
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1749
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1754
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_2
    return-void
.end method

.method private correctTooHighRTL(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1760
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1761
    .local v5, "lastPosition":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    if-lez p1, :cond_2

    .line 1763
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1766
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1768
    .local v4, "lastLeft":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1771
    .local v7, "start":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1775
    .local v0, "end":I
    sub-int v6, v4, v7

    .line 1777
    .local v6, "leftOffset":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1779
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1783
    .local v2, "firstRight":I
    if-lez v6, :cond_2

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-gtz v8, :cond_0

    if-le v2, v0, :cond_2

    .line 1784
    :cond_0
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_1

    .line 1786
    sub-int v8, v2, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1790
    :cond_1
    neg-int v8, v6

    invoke-static {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 1792
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lez v8, :cond_2

    .line 1794
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1796
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1801
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstRight":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastLeft":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1813
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1815
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1818
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1821
    .local v2, "firstLeft":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1824
    .local v7, "start":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1828
    .local v0, "end":I
    sub-int v6, v2, v7

    .line 1829
    .local v6, "leftOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1830
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1831
    .local v5, "lastRight":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    .line 1835
    .local v4, "lastPosition":I
    if-lez v6, :cond_2

    .line 1836
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    .line 1837
    :cond_0
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    .line 1839
    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1843
    :cond_1
    neg-int v8, v6

    invoke-static {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 1845
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    .line 1848
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1850
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1857
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 1852
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstLeft":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastPosition":I
    .restart local v5    # "lastRight":I
    .restart local v6    # "leftOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    .line 1853
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private correctTooLowRTL(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1862
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1865
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1868
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1871
    .local v2, "firstRight":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 1874
    .local v7, "start":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1878
    .local v0, "end":I
    sub-int v6, v0, v2

    .line 1879
    .local v6, "rightOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1880
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1881
    .local v4, "lastLeft":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1885
    .local v5, "lastPosition":I
    if-lez v6, :cond_2

    .line 1887
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v4, v8, :cond_3

    .line 1889
    :cond_0
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1891
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1895
    :cond_1
    invoke-static {p0, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 1897
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1899
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1901
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1908
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstRight":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastLeft":I
    .end local v5    # "lastPosition":I
    .end local v6    # "rightOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 1903
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstRight":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastLeft":I
    .restart local v5    # "lastPosition":I
    .restart local v6    # "rightOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1904
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3686
    const/4 v0, 0x0

    .line 3687
    .local v0, "distance":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3688
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3689
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3690
    .local v1, "listRight":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 3691
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 3695
    :cond_0
    :goto_0
    return v0

    .line 3692
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 3693
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 2
    .param p1, "nextLeft"    # I

    .prologue
    .line 998
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 999
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1000
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1001
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1003
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    const/4 v3, 0x1

    .line 1027
    sub-int v8, p2, p1

    .line 1028
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1029
    .local v1, "position":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1030
    .local v6, "sel":Landroid/view/View;
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1032
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1033
    .local v7, "selWidth":I
    if-gt v7, v8, :cond_0

    .line 1034
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1037
    :cond_0
    invoke-direct {p0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1039
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1040
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHighRTL(I)V

    .line 1047
    :goto_0
    return-object v6

    .line 1041
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHigh(I)V

    goto :goto_0

    .line 1043
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_0

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromRight(I)Landroid/view/View;
    .locals 2
    .param p1, "nextRight"    # I

    .prologue
    .line 1007
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1008
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1009
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1010
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1013
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v7

    .line 1094
    .local v7, "fadingEdgeLength":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    .line 1096
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 1098
    .local v8, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    .line 1100
    .local v10, "rightSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 1103
    .local v11, "sel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    .line 1106
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    .line 1110
    .local v12, "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    .line 1111
    .local v13, "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1114
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1130
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1132
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_3

    .line 1133
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_2

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLowRTL(I)V

    .line 1147
    :goto_1
    return-object v11

    .line 1115
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    .line 1118
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    .line 1122
    .restart local v12    # "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    .line 1123
    .restart local v13    # "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1126
    .restart local v9    # "offset":I
    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 1136
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHigh(I)V

    goto :goto_1

    .line 1140
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    .line 1141
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_1

    .line 1143
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 932
    const/4 v8, 0x0

    .line 934
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 936
    .local v7, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 940
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 942
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 943
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 945
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 946
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 947
    if-eqz v5, :cond_1

    .line 948
    move-object v8, v6

    .line 951
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 952
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 942
    goto :goto_1

    .line 954
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 956
    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1058
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 1059
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    .line 1060
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 1061
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1062
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1063
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1080
    :goto_0
    return-void

    .line 1065
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1066
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1067
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    goto :goto_0

    .line 1070
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1071
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1072
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1073
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    .line 1075
    :cond_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1076
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1077
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillLeftRTL(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 960
    const/4 v8, 0x0

    .line 962
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 964
    .local v7, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 968
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 970
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 972
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 974
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 975
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 977
    if-eqz v5, :cond_1

    .line 978
    move-object v8, v6

    .line 981
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 982
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 970
    goto :goto_1

    .line 986
    :cond_3
    return-object v8
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    const/4 v3, 0x1

    .line 862
    const/4 v8, 0x0

    .line 864
    .local v8, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v1

    sub-int v7, v0, v1

    .line 866
    .local v7, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 870
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 872
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 873
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 875
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 876
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 877
    if-eqz v5, :cond_1

    .line 878
    move-object v8, v6

    .line 881
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 882
    goto :goto_0

    .line 872
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 885
    :cond_3
    return-object v8
.end method

.method private fillRightRTL(II)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    const/4 v3, 0x1

    .line 889
    const/4 v9, 0x0

    .line 891
    .local v9, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v1

    sub-int v7, v0, v1

    .line 893
    .local v7, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 897
    :cond_0
    const/4 v8, 0x0

    .line 898
    .local v8, "isin":Z
    :goto_0
    if-ge p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 901
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 902
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 905
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 906
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 907
    if-eqz v5, :cond_1

    .line 908
    move-object v9, v6

    .line 911
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 912
    const/4 v8, 0x1

    .line 913
    goto :goto_0

    .line 901
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 915
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 918
    return-object v9
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    const/4 v3, 0x1

    .line 1614
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1615
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1617
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1622
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 1623
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1624
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1626
    .local v8, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1627
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1628
    .local v9, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    .line 1629
    .local v6, "childCount":I
    if-lez v6, :cond_0

    .line 1630
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHigh(I)V

    .line 1643
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1648
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1614
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1633
    .restart local v5    # "tempIsSelected":Z
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1635
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1636
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1637
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    .line 1638
    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    .line 1639
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 1645
    :cond_3
    if-eqz v8, :cond_4

    move-object v10, v8

    .line 1646
    goto :goto_2

    :cond_4
    move-object v10, v9

    .line 1648
    goto :goto_2
.end method

.method private fillSpecificRTL(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "right"    # I

    .prologue
    const/4 v3, 0x0

    .line 1653
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 1656
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1659
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 1663
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 1665
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1667
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v9

    .line 1668
    .local v9, "rightSide":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1669
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v8

    .line 1674
    .local v8, "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    .line 1675
    .local v6, "childCount":I
    if-lez v6, :cond_0

    .line 1676
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHighRTL(I)V

    .line 1692
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1697
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    :cond_1
    move v5, v3

    .line 1653
    goto :goto_0

    .line 1680
    .restart local v5    # "tempIsSelected":Z
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v8

    .line 1683
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1684
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v9

    .line 1686
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    .line 1687
    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    .line 1688
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_1

    .line 1694
    :cond_3
    if-eqz v8, :cond_4

    move-object v10, v8

    .line 1695
    goto :goto_2

    :cond_4
    move-object v10, v9

    .line 1697
    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 3331
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # [B
    .param p3, "visibility"    # I

    .prologue
    const-wide/16 v8, 0x1

    const/4 v10, 0x0

    .line 4824
    const-wide/16 v0, 0x0

    .line 4826
    .local v0, "count":J
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 4850
    .end local v0    # "count":J
    .local v2, "count":J
    :goto_0
    return-wide v2

    .line 4830
    .end local v2    # "count":J
    .restart local v0    # "count":J
    :cond_0
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    .line 4831
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, p3, :cond_1

    .line 4832
    aget-byte v7, p2, v10

    shl-long/2addr v8, v7

    or-long/2addr v0, v8

    .line 4834
    :cond_1
    aget-byte v7, p2, v10

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p2, v10

    move-wide v2, v0

    .line 4836
    .end local v0    # "count":J
    .restart local v2    # "count":J
    goto :goto_0

    .end local v2    # "count":J
    .restart local v0    # "count":J
    :cond_2
    move-object v6, p1

    .line 4839
    check-cast v6, Landroid/view/ViewGroup;

    .line 4840
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-ne v7, p3, :cond_3

    .line 4841
    aget-byte v7, p2, v10

    shl-long/2addr v8, v7

    or-long/2addr v0, v8

    .line 4843
    :cond_3
    aget-byte v7, p2, v10

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p2, v10

    .line 4845
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 4846
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4847
    .local v5, "v":Landroid/view/View;
    invoke-direct {p0, v5, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v8

    or-long/2addr v0, v8

    .line 4845
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v5    # "v":Landroid/view/View;
    :cond_4
    move-wide v2, v0

    .line 4850
    .end local v0    # "count":J
    .restart local v2    # "count":J
    goto :goto_0
.end method

.method private getChildHeightSpec(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4854
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4856
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 4857
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4861
    .restart local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private getChildWidthSpec(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 4865
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4867
    .local v2, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 4868
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4873
    .restart local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4875
    .local v1, "lpWidth":I
    if-lez v1, :cond_1

    .line 4876
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4881
    .local v0, "childWidthSpec":I
    :goto_0
    return v0

    .line 4878
    .end local v0    # "childWidthSpec":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childWidthSpec":I
    goto :goto_0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 2
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1177
    move v0, p1

    .line 1178
    .local v0, "leftSelectionPixel":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1179
    :goto_0
    add-int/2addr v0, p2

    .line 1181
    :cond_0
    return v0

    .line 1178
    :cond_1
    if-lez p3, :cond_0

    goto :goto_0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 1160
    move v0, p1

    .line 1161
    .local v0, "rightSelectionPixel":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_0

    .line 1162
    :goto_0
    sub-int/2addr v0, p2

    .line 1164
    :cond_0
    return v0

    .line 1161
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 3223
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 3224
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3234
    :cond_0
    const/4 v0, 0x0

    .line 3235
    .local v0, "leftSelected":Z
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    sub-int v7, v8, v9

    .line 3236
    .local v7, "selectedIndex":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    sub-int v3, p3, v8

    .line 3237
    .local v3, "nextSelectedIndex":I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_3

    .line 3238
    move v2, v3

    .line 3239
    .local v2, "leftViewIndex":I
    move v6, v7

    .line 3240
    .local v6, "rightViewIndex":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3241
    .local v1, "leftView":Landroid/view/View;
    move-object v5, p1

    .line 3242
    .local v5, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    .line 3250
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v4

    .line 3253
    .local v4, "numChildren":I
    if-eqz v1, :cond_1

    .line 3254
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3255
    invoke-direct {p0, v1, v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3259
    :cond_1
    if-eqz v5, :cond_2

    .line 3260
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3261
    invoke-direct {p0, v5, v6, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3263
    :cond_2
    return-void

    .line 3244
    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftViewIndex":I
    .end local v4    # "numChildren":I
    .end local v5    # "rightView":Landroid/view/View;
    .end local v6    # "rightViewIndex":I
    :cond_3
    move v2, v7

    .line 3245
    .restart local v2    # "leftViewIndex":I
    move v6, v3

    .line 3246
    .restart local v6    # "rightViewIndex":I
    move-object v1, p1

    .line 3247
    .restart local v1    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rightView":Landroid/view/View;
    goto :goto_0

    .line 3254
    .restart local v4    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 3260
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 3016
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 3017
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3021
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v3

    .line 3022
    .local v3, "numChildren":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_3

    if-lez v3, :cond_3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 3023
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3024
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 3027
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3028
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3030
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 3032
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3033
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3034
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3035
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3036
    if-eq v0, v2, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_1

    .line 3037
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 3039
    :cond_1
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->playSoundEffect(I)V

    .line 3040
    const/4 v5, 0x1

    .line 3054
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .line 3047
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    .line 3048
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 3047
    invoke-virtual {v7, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3049
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 3050
    invoke-direct {p0, v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_3
    move v5, v6

    .line 3054
    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2320
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2321
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2322
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2323
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 2336
    :goto_1
    return v5

    .line 2322
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2328
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2329
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2330
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 2331
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 2332
    goto :goto_1

    .line 2330
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2336
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3638
    if-ne p1, p2, :cond_1

    .line 3643
    :cond_0
    :goto_0
    return v1

    .line 3642
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3643
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 3484
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 3485
    .local v1, "firstPosition":I
    const/16 v7, 0x42

    if-ne p1, v7, :cond_7

    .line 3486
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 3489
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 3541
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 3486
    goto :goto_0

    .line 3492
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 3493
    move v5, v1

    .line 3496
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3497
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3498
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_5

    .line 3499
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-lt v4, v1, :cond_f

    .line 3500
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3499
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3506
    .end local v4    # "pos":I
    :cond_5
    move v4, v5

    .restart local v4    # "pos":I
    :goto_3
    if-gt v4, v3, :cond_f

    .line 3507
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3506
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3513
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 3514
    .local v2, "last":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3515
    .restart local v3    # "lastVisiblePos":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_9

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 3518
    .restart local v5    # "startPos":I
    :goto_4
    if-ltz v5, :cond_8

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_a

    :cond_8
    move v4, v6

    .line 3519
    goto :goto_1

    .line 3517
    .end local v5    # "startPos":I
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_4

    .line 3521
    .restart local v5    # "startPos":I
    :cond_a
    if-le v5, v2, :cond_b

    .line 3522
    move v5, v2

    .line 3525
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3526
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_d

    .line 3527
    move v4, v5

    .restart local v4    # "pos":I
    :goto_5
    if-gt v4, v3, :cond_f

    .line 3528
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3527
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3534
    .end local v4    # "pos":I
    :cond_d
    move v4, v5

    .restart local v4    # "pos":I
    :goto_6
    if-lt v4, v1, :cond_f

    .line 3535
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3534
    :cond_e
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .end local v2    # "last":I
    :cond_f
    move v4, v6

    .line 3541
    goto/16 :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 2355
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2358
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2361
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2376
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .line 2368
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2372
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2374
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v8, v1

    .line 2376
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 3273
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3274
    .local v1, "oldWidth":I
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->measureItem(Landroid/view/View;)V

    .line 3275
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 3277
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3280
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 3281
    .local v2, "widthDelta":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 3282
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3285
    .end local v0    # "i":I
    .end local v2    # "widthDelta":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3294
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 3295
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3300
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3302
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3304
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 3305
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3309
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3310
    return-void

    .line 3307
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1439
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 1440
    .local v3, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 1442
    .restart local v3    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 1445
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->forceAdd:Z

    .line 1447
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1449
    .local v0, "childHeightSpec":I
    iget v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->width:I

    .line 1451
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 1452
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1456
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1457
    return-void

    .line 1454
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .prologue
    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v10

    .line 1204
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 1208
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    .line 1210
    .local v12, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    .line 1213
    .local v15, "rightSelectionPixel":I
    if-lez p3, :cond_2

    .line 1235
    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1238
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 1241
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1245
    .local v16, "sel":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    .line 1248
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    .line 1251
    .local v18, "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    .line 1254
    .local v19, "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1255
    .local v11, "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1256
    .local v14, "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1259
    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1261
    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1265
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1266
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1267
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1268
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1348
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v16

    .line 1270
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1271
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1272
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    .line 1274
    .end local v9    # "dividerHeight":I
    .end local v16    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1295
    if-eqz p2, :cond_4

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1307
    .restart local v16    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    .line 1309
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    .line 1312
    .restart local v18    # "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    .line 1315
    .restart local v19    # "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1316
    .restart local v11    # "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1317
    .restart local v14    # "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1320
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1324
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .line 1302
    .end local v16    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1326
    .end local v16    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1331
    .local v5, "oldLeft":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1334
    .restart local v16    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    .line 1337
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1338
    .local v13, "newRight":I
    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    .line 1340
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1345
    .end local v13    # "newRight":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "updateChildSelected"    # Z
    .param p3, "recycled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4727
    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    .line 4728
    .local v0, "needToMeasure":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4796
    :goto_1
    return v1

    .line 4727
    .end local v0    # "needToMeasure":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4730
    .restart local v0    # "needToMeasure":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    .line 4732
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFixedSizeItems:Z

    if-eqz v1, :cond_3

    :goto_2
    move v1, v0

    .line 4796
    goto :goto_1

    .line 4791
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 4792
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x42

    const/4 v4, -0x1

    .line 3090
    if-ne p3, v7, :cond_4

    .line 3091
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 3092
    .local v2, "listRight":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_0

    .line 3093
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 3094
    .local v0, "lastPos":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    .line 3095
    if-eq p2, v4, :cond_1

    if-gt p2, v0, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 3116
    .end local v2    # "listRight":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_8

    .line 3119
    .end local v0    # "lastPos":I
    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .restart local v0    # "lastPos":I
    .restart local v2    # "listRight":I
    :cond_1
    move v3, v0

    .line 3095
    goto :goto_0

    .line 3097
    :cond_2
    if-eq p2, v4, :cond_3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_3

    add-int/lit8 v3, p2, 0x1

    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    goto :goto_2

    .line 3103
    .end local v0    # "lastPos":I
    .end local v2    # "listRight":I
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 3104
    .local v1, "listLeft":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_0

    .line 3105
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 3106
    .restart local v0    # "lastPos":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_6

    .line 3107
    if-eq p2, v4, :cond_5

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_5

    add-int/lit8 v3, p2, 0x1

    .restart local v3    # "nextSelected":I
    :goto_3
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_5
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    goto :goto_3

    .line 3110
    :cond_6
    if-eq p2, v4, :cond_7

    if-gt p2, v0, :cond_7

    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "nextSelected":I
    :goto_4
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_7
    move v3, v0

    goto :goto_4

    .line 3119
    .end local v1    # "listLeft":I
    .restart local v3    # "nextSelected":I
    :cond_8
    if-ne p3, v7, :cond_9

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3623
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v2

    .line 3624
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3625
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3626
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3627
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3630
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3318
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3319
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3320
    .local v4, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3321
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 3322
    .local v2, "childRight":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 3323
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 3324
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3325
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 479
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 480
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    .line 481
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 482
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :cond_0
    return-void

    .line 479
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3707
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 3709
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    .line 3710
    .local v6, "listRight":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 3711
    .local v5, "listLeft":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    .line 3713
    .local v8, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
    if-gez p1, :cond_a

    .line 3717
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    .line 3719
    .local v7, "numChildren":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_3

    .line 3720
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3721
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_4

    .line 3723
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_0

    .line 3724
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v1, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3726
    :cond_0
    if-nez v1, :cond_2

    .line 3846
    .end local v1    # "last":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 3728
    .restart local v1    # "last":Landroid/view/View;
    :cond_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    goto :goto_0

    .line 3733
    .end local v1    # "last":Landroid/view/View;
    :cond_3
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3734
    .restart local v1    # "last":Landroid/view/View;
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_4

    .line 3735
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3736
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_4

    .line 3737
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3738
    add-int/lit8 v7, v7, 0x1

    .line 3742
    goto :goto_2

    .line 3748
    .end local v3    # "lastVisiblePosition":I
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_5

    .line 3750
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-static {p0, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 3754
    :cond_5
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3755
    .local v0, "first":Landroid/view/View;
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_6

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3757
    :cond_6
    if-eqz v0, :cond_1

    .line 3760
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_8

    .line 3761
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3762
    .local v2, "lastIndex":I
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3763
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 3764
    .local v4, "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3765
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3767
    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3768
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3769
    goto :goto_3

    .line 3771
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_8
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3772
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 3773
    .restart local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3774
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3776
    :cond_9
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3777
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3778
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    goto :goto_4

    .line 3783
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    .line 3784
    .restart local v7    # "numChildren":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_b

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3785
    .restart local v0    # "first":Landroid/view/View;
    :goto_5
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_d

    .line 3786
    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_e

    .line 3787
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3788
    .restart local v3    # "lastVisiblePosition":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_e

    .line 3789
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3790
    if-eqz v0, :cond_1

    .line 3793
    add-int/lit8 v7, v7, 0x1

    .line 3797
    goto :goto_6

    .line 3784
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "lastVisiblePosition":I
    :cond_b
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 3808
    .restart local v0    # "first":Landroid/view/View;
    :cond_c
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 3800
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_e

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_e

    .line 3801
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3805
    if-nez v0, :cond_c

    goto/16 :goto_1

    .line 3814
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_f

    .line 3816
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-static {p0, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 3819
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3820
    .restart local v2    # "lastIndex":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3821
    .restart local v1    # "last":Landroid/view/View;
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_11

    .line 3822
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3823
    :goto_7
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_1

    .line 3824
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 3825
    .restart local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3826
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v1, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3828
    :cond_10
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3829
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3830
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    goto :goto_7

    .line 3836
    .end local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_11
    :goto_8
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_1

    .line 3837
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 3838
    .restart local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 3839
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3841
    :cond_12
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3842
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3843
    goto :goto_8
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 2397
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v11, 0x1

    .line 2398
    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    const/16 v17, 0x1

    .line 2399
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTouchMode:I

    .line 2400
    .local v13, "mode":I
    if-lez v13, :cond_a

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 2402
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_b

    const/16 v16, 0x1

    .line 2403
    .local v16, "updateChildPressed":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    .line 2407
    .local v14, "needToMeasure":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 2408
    .local v15, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-nez v15, :cond_0

    .line 2409
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 2411
    .restart local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 2413
    if-eqz p7, :cond_1

    iget-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    :cond_1
    iget-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 2415
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 2416
    if-nez p4, :cond_c

    const/16 v19, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2432
    :goto_5
    if-eqz v17, :cond_3

    .line 2433
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2434
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsFolderTypeFeature:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2435
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2438
    :cond_3
    if-eqz v16, :cond_4

    .line 2439
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2442
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2443
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v19, p1

    .line 2444
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2451
    :cond_5
    :goto_6
    if-eqz v14, :cond_16

    .line 2452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2454
    .local v5, "childHeightSpec":I
    iget v12, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->width:I

    .line 2456
    .local v12, "lpWidth":I
    if-lez v12, :cond_15

    .line 2457
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2461
    .local v8, "childWidthSpec":I
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2466
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2467
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2470
    .local v9, "h":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 2471
    if-eqz p4, :cond_17

    add-int v7, p3, v18

    .line 2472
    .local v7, "childRight":I
    :goto_9
    if-eqz p4, :cond_18

    move/from16 v6, p3

    .line 2474
    .local v6, "childLeft":I
    :goto_a
    if-eqz v14, :cond_19

    .line 2475
    add-int v4, p5, v9

    .line 2476
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 2494
    .end local v4    # "childBottom":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2495
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2497
    :cond_6
    if-eqz p7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 2498
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2502
    :cond_7
    return-void

    .line 2397
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2398
    .restart local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2400
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2402
    .restart local v10    # "isPressed":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 2416
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .restart local v16    # "updateChildPressed":Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 2418
    :cond_d
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_e
    const/16 v19, 0x0

    goto :goto_c

    .line 2421
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->forceAdd:Z

    .line 2422
    iget v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2423
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2425
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 2426
    if-nez p4, :cond_11

    const/16 v19, -0x1

    :goto_d
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_11
    const/16 v19, 0x0

    goto :goto_d

    .line 2428
    :cond_12
    if-eqz p4, :cond_13

    const/16 v19, -0x1

    :goto_e
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_13
    const/16 v19, 0x0

    goto :goto_e

    .line 2445
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 2459
    .restart local v5    # "childHeightSpec":I
    .restart local v12    # "lpWidth":I
    :cond_15
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childWidthSpec":I
    goto/16 :goto_7

    .line 2463
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_17
    move/from16 v7, p3

    .line 2471
    goto/16 :goto_9

    .line 2472
    .restart local v7    # "childRight":I
    :cond_18
    sub-int v6, p3, v18

    goto/16 :goto_a

    .line 2478
    .restart local v6    # "childLeft":I
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2479
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b

    .line 2482
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    :cond_1a
    if-eqz p4, :cond_1b

    move/from16 v6, p3

    .line 2483
    .restart local v6    # "childLeft":I
    :goto_f
    add-int v7, v6, v18

    .line 2485
    .restart local v7    # "childRight":I
    if-eqz v14, :cond_1c

    .line 2486
    add-int v4, p5, v9

    .line 2487
    .restart local v4    # "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    .line 2482
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    :cond_1b
    sub-int v6, p3, v18

    goto :goto_f

    .line 2489
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2490
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private shouldAdjustWidthForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 4637
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 4638
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 4639
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 4640
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_5

    const/4 v6, 0x1

    .line 4641
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_6

    const/4 v5, 0x1

    .line 4642
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    const/4 v4, 0x1

    .line 4644
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_13

    .line 4645
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isOpaque()Z

    move-result v22

    if-nez v22, :cond_8

    const/4 v7, 0x1

    .line 4646
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move/from16 v16, v0

    .line 4647
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4648
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 4649
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_9

    const/4 v14, 0x1

    .line 4650
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_a

    const/4 v13, 0x1

    .line 4651
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4652
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterDividersEnabled:Z

    .line 4653
    .local v8, "footerDividers":Z
    if-nez v11, :cond_0

    if-nez v14, :cond_13

    :cond_0
    if-nez v8, :cond_1

    if-nez v13, :cond_13

    .line 4654
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4655
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 4656
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    .line 4657
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_2

    if-nez v15, :cond_13

    .line 4658
    :cond_2
    add-int/lit8 v17, p1, 0x1

    .line 4662
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v11, :cond_3

    if-nez v14, :cond_c

    move/from16 v0, v17

    if-lt v0, v10, :cond_c

    :cond_3
    if-nez v15, :cond_4

    .line 4664
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v8, :cond_4

    if-nez v13, :cond_c

    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 4666
    :cond_4
    const/16 v22, 0x1

    .line 4692
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v15    # "isLastItem":Z
    .end local v16    # "itemCount":I
    .end local v17    # "nextIndex":I
    :goto_7
    return v22

    .line 4640
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 4641
    .restart local v6    # "drawOverscrollHeader":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 4642
    .restart local v5    # "drawOverscrollFooter":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4645
    .restart local v4    # "drawDividers":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 4649
    .restart local v7    # "fillForMissingDividers":Z
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 4650
    .restart local v14    # "isHeader":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 4656
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    .restart local v13    # "isFooter":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 4667
    .restart local v15    # "isLastItem":Z
    .restart local v17    # "nextIndex":I
    :cond_c
    if-eqz v7, :cond_13

    .line 4668
    const/16 v22, 0x1

    goto :goto_7

    .line 4672
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    if-eqz v6, :cond_10

    const/16 v21, 0x1

    .line 4673
    .local v21, "start":I
    :goto_8
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 4674
    .local v12, "isFirstItem":Z
    :goto_9
    if-nez v12, :cond_13

    .line 4675
    add-int/lit8 v20, p1, -0x1

    .line 4679
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v11, :cond_e

    if-nez v14, :cond_12

    move/from16 v0, v20

    if-lt v0, v10, :cond_12

    :cond_e
    if-nez v12, :cond_f

    .line 4681
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v8, :cond_f

    if-nez v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v9, :cond_12

    .line 4683
    :cond_f
    const/16 v22, 0x1

    goto :goto_7

    .line 4672
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_10
    const/16 v21, 0x0

    goto :goto_8

    .line 4673
    .restart local v21    # "start":I
    :cond_11
    const/4 v12, 0x0

    goto :goto_9

    .line 4684
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_12
    if-eqz v7, :cond_13

    .line 4685
    const/16 v22, 0x1

    goto :goto_7

    .line 4692
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v12    # "isFirstItem":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_13
    const/16 v22, 0x0

    goto :goto_7
.end method

.method private showingLeftFadingEdge()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v2, v6, v7

    .line 692
    .local v2, "listLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    .line 693
    .local v0, "childCount":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 694
    .local v3, "rightOfRightChild":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x1

    .line 695
    .local v1, "lastVisiblePosition":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    .line 696
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    move v4, v5

    .line 698
    :cond_1
    :goto_0
    return v4

    :cond_2
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-gtz v6, :cond_3

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v2, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private showingRightFadingEdge()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    .line 707
    .local v0, "childCount":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    .line 708
    .local v3, "rightOfRightChild":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x1

    .line 710
    .local v1, "lastVisiblePosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, v6, v7

    .line 712
    .local v2, "listRight":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    .line 713
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-gtz v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v2, :cond_1

    :cond_0
    move v4, v5

    .line 715
    :cond_1
    :goto_0
    return v4

    :cond_2
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_3

    if-ge v3, v2, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 542
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 505
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;)V

    .line 506
    .local v0, "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 507
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 508
    iput-boolean p3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 509
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    .line 513
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 515
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 524
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 447
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 448
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 411
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;)V

    .line 412
    .local v0, "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 413
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 414
    iput-boolean p3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 415
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    .line 419
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 421
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 430
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 4288
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 4265
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 3066
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mInLayout:Z

    .line 3067
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 3068
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 3069
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3073
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mInLayout:Z

    .line 3071
    return v0

    .line 3073
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2506
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3979
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 3980
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCachingActive:Z

    .line 3984
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 3985
    .local v9, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3986
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3987
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_b

    const/4 v12, 0x1

    .line 3988
    .local v12, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_c

    const/4 v11, 0x1

    .line 3989
    .local v11, "drawOverscrollFooter":Z
    :goto_1
    if-lez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    const/4 v10, 0x1

    .line 3991
    .local v10, "drawDividers":Z
    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_15

    .line 3993
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3994
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingTop()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3995
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getBottom()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getTop()I

    move-result v40

    sub-int v39, v39, v40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingBottom()I

    move-result v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3997
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v8

    .line 3998
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3999
    .local v19, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move/from16 v26, v0

    .line 4000
    .local v26, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v39, v26, v39

    add-int/lit8 v18, v39, -0x1

    .line 4001
    .local v18, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 4002
    .local v20, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 4003
    .local v17, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 4004
    .local v16, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    .line 4005
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4010
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_e

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_e

    const/4 v15, 0x1

    .line 4012
    .local v15, "fillForMissingDividers":Z
    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    .line 4013
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 4016
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 4018
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 4019
    .local v13, "effectivePaddingLeft":I
    const/4 v14, 0x0

    .line 4021
    .local v14, "effectivePaddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v39

    if-eqz v39, :cond_3

    .line 4022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 4023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 4026
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v40

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v40

    add-int v29, v39, v40

    .line 4027
    .local v29, "listRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_16

    .line 4028
    const/16 v36, 0x0

    .line 4031
    .local v36, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v37

    .line 4032
    .local v37, "scrollX":I
    if-lez v8, :cond_4

    if-gez v37, :cond_4

    .line 4033
    if-eqz v12, :cond_f

    .line 4034
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4035
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4044
    :cond_4
    :goto_4
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_14

    .line 4045
    add-int v27, v16, v21

    .line 4046
    .local v27, "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    const/16 v24, 0x1

    .line 4047
    .local v24, "isHeader":Z
    :goto_6
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_11

    const/16 v23, 0x1

    .line 4048
    .local v23, "isFooter":Z
    :goto_7
    if-nez v20, :cond_5

    if-nez v24, :cond_a

    :cond_5
    if-nez v17, :cond_6

    if-nez v23, :cond_a

    .line 4049
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4050
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    .line 4051
    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    const/16 v25, 0x1

    .line 4053
    .local v25, "isLastItem":Z
    :goto_8
    if-eqz v10, :cond_a

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    if-eqz v11, :cond_7

    if-nez v25, :cond_a

    .line 4055
    :cond_7
    add-int/lit8 v30, v27, 0x1

    .line 4059
    .local v30, "nextIndex":I
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v20, :cond_8

    if-nez v24, :cond_13

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    :cond_8
    if-nez v25, :cond_9

    .line 4061
    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v17, :cond_9

    if-nez v23, :cond_13

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    .line 4063
    :cond_9
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4064
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4065
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4044
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_a
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3987
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v10    # "drawDividers":Z
    .end local v11    # "drawOverscrollFooter":Z
    .end local v12    # "drawOverscrollHeader":Z
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v26    # "itemCount":I
    .end local v27    # "itemIndex":I
    .end local v29    # "listRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3988
    .restart local v12    # "drawOverscrollHeader":Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3989
    .restart local v11    # "drawOverscrollFooter":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4010
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v10    # "drawDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 4037
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "right":I
    .restart local v37    # "scrollX":I
    :cond_f
    if-eqz v10, :cond_4

    .line 4038
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4039
    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4040
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 4046
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 4047
    .restart local v24    # "isHeader":Z
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 4051
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    :cond_12
    const/16 v25, 0x0

    goto :goto_8

    .line 4066
    .restart local v25    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_13
    if-eqz v15, :cond_a

    .line 4067
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4068
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4069
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 4075
    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isLastItem":Z
    .end local v27    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v40

    add-int v31, v39, v40

    .line 4076
    .local v31, "overFooterRight":I
    if-eqz v11, :cond_15

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_15

    .line 4078
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4079
    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4080
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4149
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v26    # "itemCount":I
    .end local v29    # "listRight":I
    .end local v31    # "overFooterRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_15
    :goto_a
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4156
    return-void

    .line 4085
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v37

    .line 4087
    .restart local v37    # "scrollX":I
    if-lez v8, :cond_17

    if-eqz v12, :cond_17

    .line 4088
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4089
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4090
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4093
    :cond_17
    if-eqz v12, :cond_1d

    const/16 v38, 0x1

    .line 4094
    .local v38, "start":I
    :goto_b
    move/from16 v21, v38

    .restart local v21    # "i":I
    :goto_c
    move/from16 v0, v21

    if-ge v0, v8, :cond_22

    .line 4095
    add-int v27, v16, v21

    .line 4096
    .restart local v27    # "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e

    const/16 v24, 0x1

    .line 4097
    .restart local v24    # "isHeader":Z
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_1f

    const/16 v23, 0x1

    .line 4098
    .restart local v23    # "isFooter":Z
    :goto_e
    if-nez v20, :cond_18

    if-nez v24, :cond_1c

    :cond_18
    if-nez v17, :cond_19

    if-nez v23, :cond_1c

    .line 4099
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4100
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 4101
    .local v28, "left":I
    if-eqz v10, :cond_1c

    move/from16 v0, v28

    if-le v0, v13, :cond_1c

    .line 4102
    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_20

    const/16 v22, 0x1

    .line 4103
    .local v22, "isFirstItem":Z
    :goto_f
    add-int/lit8 v35, v27, -0x1

    .line 4107
    .local v35, "previousIndex":I
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_21

    if-nez v20, :cond_1a

    if-nez v24, :cond_21

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_21

    :cond_1a
    if-nez v22, :cond_1b

    .line 4109
    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_21

    if-nez v17, :cond_1b

    if-nez v23, :cond_21

    move/from16 v0, v35

    move/from16 v1, v18

    if-ge v0, v1, :cond_21

    .line 4111
    :cond_1b
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4112
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4117
    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4094
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_1c
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 4093
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v38    # "start":I
    :cond_1d
    const/16 v38, 0x0

    goto :goto_b

    .line 4096
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_1e
    const/16 v24, 0x0

    goto :goto_d

    .line 4097
    .restart local v24    # "isHeader":Z
    :cond_1f
    const/16 v23, 0x0

    goto :goto_e

    .line 4102
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    .restart local v28    # "left":I
    :cond_20
    const/16 v22, 0x0

    goto :goto_f

    .line 4118
    .restart local v22    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_21
    if-eqz v15, :cond_1c

    .line 4119
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4120
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4121
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_10

    .line 4127
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_22
    if-lez v8, :cond_15

    if-lez v37, :cond_15

    .line 4128
    if-eqz v11, :cond_23

    .line 4129
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v3

    .line 4130
    .local v3, "absListRight":I
    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 4131
    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 4133
    .end local v3    # "absListRight":I
    :cond_23
    if-eqz v10, :cond_15

    .line 4134
    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4135
    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4136
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2734
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2735
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2737
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2738
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2741
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2744
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 4166
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 4179
    .local v0, "more":Z
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4195
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4196
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4197
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3961
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3963
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3964
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3966
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3967
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 3968
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 3971
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3972
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3974
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3975
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3944
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3946
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3947
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3949
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3950
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 3951
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 3954
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3955
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3957
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3958
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "rightSide"    # Z

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    .line 803
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 804
    const/4 v1, 0x0

    .line 806
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getListPaddingLeft()I

    move-result v1

    .line 809
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 811
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 812
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHigh(I)V

    .line 824
    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    .line 809
    goto :goto_0

    .line 814
    .end local v1    # "paddingLeft":I
    :cond_2
    const/4 v2, 0x0

    .line 816
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 819
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 821
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 822
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 820
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method fillGapRTL(Z)V
    .locals 6
    .param p1, "rightSide"    # Z

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    .line 828
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 829
    const/4 v1, 0x0

    .line 831
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getListPaddingLeft()I

    move-result v1

    .line 834
    :cond_0
    if-lez v0, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 835
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 836
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooLowRTL(I)V

    .line 848
    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    .line 834
    goto :goto_0

    .line 838
    .end local v1    # "paddingLeft":I
    :cond_2
    const/4 v2, 0x0

    .line 840
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFlagClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 841
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 843
    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 845
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 846
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_1

    .line 843
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    .line 1563
    .local v0, "childCount":I
    if-lez v0, :cond_7

    .line 1564
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    .line 1565
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 1567
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1568
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 1569
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1599
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1566
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1573
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_7

    .line 1574
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1575
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 1576
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1573
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1582
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_5

    .line 1583
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 1584
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1585
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_4

    .line 1586
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1583
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1590
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_5
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_4
    if-ltz v1, :cond_7

    .line 1591
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1592
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_6

    .line 1593
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1590
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1599
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_7
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4456
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_0

    .line 4457
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4460
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4461
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4460
    .local v2, "v":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4474
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4507
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_0

    .line 4508
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4511
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4512
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4511
    .local v2, "v":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4525
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2975
    const/4 v1, 0x0

    .line 2976
    .local v1, "moved":Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 2977
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2978
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2979
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2980
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2981
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectionInt(I)V

    .line 2982
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V

    .line 2984
    :cond_0
    const/4 v1, 0x1

    .line 3000
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3001
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->awakenScrollBars()Z

    .line 3002
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 3005
    :cond_2
    return v1

    .line 2986
    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1

    .line 2987
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2988
    .local v0, "lastItem":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2989
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2991
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2992
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2993
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectionInt(I)V

    .line 2994
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V

    .line 2996
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4594
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4595
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 4624
    :cond_0
    :goto_0
    return-object v5

    .line 4600
    :cond_1
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4601
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4602
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4603
    .local v3, "count":I
    new-array v5, v3, [J

    .line 4604
    .local v5, "ids":[J
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4606
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4607
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 4608
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4609
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4607
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 4615
    :cond_2
    if-eq v2, v3, :cond_0

    .line 4618
    new-array v6, v2, [J

    .line 4619
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 4621
    goto :goto_0

    .line 4624
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

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
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4205
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 4230
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3895
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 317
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4308
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getWidthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4629
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidthForPosition(I)I

    move-result v0

    .line 4630
    .local v0, "width":I
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4631
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 4633
    .end local v0    # "width":I
    :cond_0
    return v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 3900
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mCachingActive:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerIsOpaque:Z

    if-nez v6, :cond_1

    .line 3901
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3902
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3904
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3905
    .local v0, "first":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3906
    .local v1, "last":Landroid/view/View;
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_9

    .line 3907
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int v3, v7, v6

    .line 3908
    .local v3, "listRight":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v3, :cond_6

    :cond_2
    move v4, v5

    .line 3927
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v5

    .line 3901
    goto :goto_0

    .line 3907
    .restart local v0    # "first":Landroid/view/View;
    .restart local v1    # "last":Landroid/view/View;
    .restart local v4    # "retValue":Z
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingRight()I

    move-result v6

    goto :goto_1

    .line 3911
    .restart local v3    # "listRight":I
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 3913
    .local v2, "listLeft":I
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v2, :cond_3

    :cond_7
    move v4, v5

    .line 3914
    goto :goto_2

    .line 3911
    .end local v2    # "listLeft":I
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingLeft()I

    move-result v2

    goto :goto_3

    .line 3917
    .end local v3    # "listRight":I
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 3918
    .restart local v2    # "listLeft":I
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v2, :cond_c

    :cond_a
    move v4, v5

    .line 3919
    goto :goto_2

    .line 3917
    .end local v2    # "listLeft":I
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingLeft()I

    move-result v2

    goto :goto_4

    .line 3921
    .restart local v2    # "listLeft":I
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    :goto_5
    sub-int v3, v7, v6

    .line 3922
    .restart local v3    # "listRight":I
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v3, :cond_3

    :cond_d
    move v4, v5

    .line 3923
    goto :goto_2

    .line 3921
    .end local v3    # "listRight":I
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingRight()I

    move-result v6

    goto :goto_5
.end method

.method protected layoutChildren()V
    .locals 31

    .prologue
    .line 1932
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mBlockLayoutRequests:Z

    .line 1933
    .local v11, "blockLayoutRequests":Z
    if-eqz v11, :cond_1

    .line 2313
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    .line 1937
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mBlockLayoutRequests:Z

    .line 1940
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 1945
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resetList()V

    .line 1946
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    if-nez v11, :cond_0

    .line 2310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1950
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1951
    .local v6, "childrenLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getLeft()I

    move-result v29

    sub-int v2, v2, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v7, v2, v29

    .line 1952
    .local v7, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v13

    .line 1954
    .local v13, "childCount":I
    const/16 v23, 0x0

    .line 1955
    .local v23, "index":I
    const/4 v5, 0x0

    .line 1958
    .local v5, "delta":I
    const/4 v3, 0x0

    .line 1959
    .local v3, "oldSel":Landroid/view/View;
    const/16 v25, 0x0

    .line 1960
    .local v25, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .line 1963
    .local v4, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1978
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v23, v2, v29

    .line 1979
    if-ltz v23, :cond_3

    move/from16 v0, v23

    if-ge v0, v13, :cond_3

    .line 1980
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1984
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_4

    .line 1987
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    move/from16 v29, v0

    sub-int v5, v2, v29

    .line 1991
    :cond_4
    add-int v2, v23, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1994
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataChanged:Z

    .line 1995
    .local v14, "dataChanged":Z
    if-eqz v14, :cond_6

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->handleDataChanged()V

    .line 2001
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-nez v2, :cond_7

    .line 2002
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resetList()V

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2309
    if-nez v11, :cond_0

    .line 2310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1965
    .end local v14    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v23, v2, v29

    .line 1966
    if-ltz v23, :cond_5

    move/from16 v0, v23

    if-ge v0, v13, :cond_5

    .line 1967
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 2005
    .restart local v14    # "dataChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v29

    if-eq v2, v0, :cond_9

    .line 2006
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "The content of the adapter has changed but SeslHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in SeslHorizontalListView("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ") with Adapter("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v30, v0

    .line 2011
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2309
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenLeft":I
    .end local v7    # "childrenRight":I
    .end local v13    # "childCount":I
    .end local v14    # "dataChanged":Z
    .end local v23    # "index":I
    .end local v25    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v11, :cond_8

    .line 2310
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mBlockLayoutRequests:Z

    :cond_8
    throw v2

    .line 2014
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenLeft":I
    .restart local v7    # "childrenRight":I
    .restart local v13    # "childCount":I
    .restart local v14    # "dataChanged":Z
    .restart local v23    # "index":I
    .restart local v25    # "oldFirst":Landroid/view/View;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 2016
    const/4 v8, 0x0

    .line 2017
    .local v8, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v9, 0x0

    .line 2018
    .local v9, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v10, -0x1

    .line 2019
    .local v10, "accessibilityFocusPosition":I
    const/16 v24, 0x0

    .line 2050
    .local v24, "mInsideViewAccFocused":Z
    const/16 v16, 0x0

    .line 2051
    .local v16, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v17, 0x0

    .line 2056
    .local v17, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v20

    .line 2057
    .local v20, "focusedChild":Landroid/view/View;
    if-eqz v20, :cond_c

    .line 2063
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2064
    :cond_a
    move-object/from16 v16, v20

    .line 2066
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v17

    .line 2067
    if-eqz v17, :cond_b

    .line 2069
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2072
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->requestFocus()Z

    .line 2077
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 2078
    .local v15, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v27, v0

    .line 2079
    .local v27, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
    if-eqz v14, :cond_d

    .line 2080
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v13, :cond_e

    .line 2081
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v29, v15, v21

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2080
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 2084
    .end local v21    # "i":I
    :cond_d
    move-object/from16 v0, v27

    invoke-virtual {v0, v13, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->fillActiveViews(II)V

    .line 2088
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->detachAllViewsFromParent()V

    .line 2089
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 2091
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 2135
    if-nez v13, :cond_1e

    .line 2136
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_1c

    .line 2137
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_1b

    .line 2138
    const/4 v2, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2139
    .local v26, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 2140
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v28

    .line 2183
    .end local v6    # "childrenLeft":I
    .end local v7    # "childrenRight":I
    .end local v26    # "position":I
    .local v28, "sel":Landroid/view/View;
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->scrapActiveViews()V

    .line 2185
    if-eqz v28, :cond_2b

    .line 2188
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2189
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_f

    if-eqz v17, :cond_f

    .line 2191
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_10
    const/16 v18, 0x1

    .line 2192
    .local v18, "focusWasTaken":Z
    :goto_4
    if-nez v18, :cond_29

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 2197
    .local v19, "focused":Landroid/view/View;
    if-eqz v19, :cond_11

    .line 2198
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->clearFocus()V

    .line 2200
    :cond_11
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2208
    .end local v18    # "focusWasTaken":Z
    .end local v19    # "focused":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedLeft:I

    .line 2287
    :cond_12
    :goto_6
    if-eqz v17, :cond_13

    .line 2288
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 2289
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2292
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataChanged:Z

    .line 2294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_14

    .line 2295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2298
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNeedSync:Z

    .line 2299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->updateScrollIndicators()V

    .line 2303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-lez v2, :cond_15

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->checkSelectionChanged()V

    .line 2307
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2309
    if-nez v11, :cond_0

    .line 2310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2093
    .end local v28    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    .restart local v7    # "childrenRight":I
    :pswitch_2
    if-eqz v4, :cond_16

    .line 2094
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2096
    .end local v28    # "sel":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    .line 2098
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2100
    .end local v28    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_17

    .line 2101
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2103
    .end local v28    # "sel":Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .line 2105
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2107
    .end local v28    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_18

    .line 2108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v28

    .line 2112
    .restart local v28    # "sel":Landroid/view/View;
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_3

    .line 2110
    .end local v28    # "sel":Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto :goto_7

    .line 2115
    .end local v28    # "sel":Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_19

    .line 2116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 2117
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v28

    .line 2122
    .restart local v28    # "sel":Landroid/view/View;
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_3

    .line 2119
    .end local v28    # "sel":Landroid/view/View;
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 2120
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto :goto_8

    .line 2125
    .end local v28    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_1a

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2128
    .end local v28    # "sel":Landroid/view/View;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .line 2130
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v28    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 2132
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    .line 2133
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2142
    .end local v28    # "sel":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2143
    .restart local v26    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 2144
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v28

    .line 2145
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2147
    .end local v26    # "position":I
    .end local v28    # "sel":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_1d

    .line 2148
    const/4 v2, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2149
    .restart local v26    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 2150
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v28

    .line 2151
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2152
    .end local v26    # "position":I
    .end local v28    # "sel":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2153
    .restart local v26    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 2154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v28

    .line 2155
    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2159
    .end local v26    # "position":I
    .end local v28    # "sel":Landroid/view/View;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_23

    .line 2160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v2, v0, :cond_20

    .line 2161
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-nez v3, :cond_1f

    .end local v7    # "childrenRight":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v28    # "sel":Landroid/view/View;
    .restart local v7    # "childrenRight":I
    :cond_1f
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_9

    .line 2162
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v2, v0, :cond_22

    .line 2163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v25, :cond_21

    .end local v7    # "childrenRight":I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v28    # "sel":Landroid/view/View;
    .restart local v7    # "childrenRight":I
    :cond_21
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_a

    .line 2165
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2169
    .end local v28    # "sel":Landroid/view/View;
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-ltz v2, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v2, v0, :cond_25

    .line 2170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-nez v3, :cond_24

    .end local v6    # "childrenLeft":I
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v28    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_24
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_b

    .line 2171
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v2, v0, :cond_27

    .line 2173
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    if-nez v25, :cond_26

    .end local v6    # "childrenLeft":I
    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v28    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_26
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_c

    .line 2175
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 2191
    .end local v6    # "childrenLeft":I
    .end local v7    # "childrenRight":I
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 2202
    .restart local v18    # "focusWasTaken":Z
    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 2206
    .end local v18    # "focusWasTaken":Z
    :cond_2a
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 2210
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTouchMode:I

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v2, v0, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTouchMode:I

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v2, v0, :cond_2e

    :cond_2c
    const/16 v22, 0x1

    .line 2212
    .local v22, "inTouchMode":Z
    :goto_d
    if-eqz v22, :cond_2f

    .line 2214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v2, v2, v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2215
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_2d

    .line 2216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2234
    .end local v12    # "child":Landroid/view/View;
    :cond_2d
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v17, :cond_12

    .line 2235
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 2210
    .end local v22    # "inTouchMode":Z
    :cond_2e
    const/16 v22, 0x0

    goto :goto_d

    .line 2218
    .restart local v22    # "inTouchMode":Z
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectorPosition:I

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v2, v0, :cond_30

    .line 2222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v2, v2, v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2223
    .restart local v12    # "child":Landroid/view/View;
    if-eqz v12, :cond_2d

    .line 2224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_e

    .line 2228
    .end local v12    # "child":Landroid/view/View;
    :cond_30
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedLeft:I

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_e

    .line 1963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2091
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
    .locals 5
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 2602
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2603
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2640
    :cond_0
    :goto_0
    return v2

    .line 2607
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2608
    .local v1, "count":I
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_5

    .line 2609
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    .line 2610
    if-eqz p2, :cond_2

    .line 2611
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2612
    :goto_1
    if-ltz p1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2613
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2616
    :cond_2
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2617
    :goto_2
    if-ge p1, v1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2618
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2623
    :cond_3
    if-eqz p2, :cond_4

    .line 2624
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2625
    :goto_3
    if-ge p1, v1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2626
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2629
    :cond_4
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2630
    :goto_4
    if-ltz p1, :cond_5

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2631
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 2636
    :cond_5
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2640
    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 2656
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2657
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 2708
    :cond_1
    :goto_0
    return v1

    .line 2662
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2663
    .local v1, "after":I
    if-ne v1, v3, :cond_1

    .line 2668
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2669
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result p1

    .line 2670
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_6

    .line 2671
    if-eqz p3, :cond_4

    .line 2672
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2673
    :goto_1
    if-ge p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2674
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2676
    :cond_3
    if-lt p2, p1, :cond_a

    move v1, v3

    .line 2677
    goto :goto_0

    .line 2680
    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2681
    :goto_2
    if-le p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2682
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2684
    :cond_5
    if-gt p2, p1, :cond_a

    move v1, v3

    .line 2685
    goto :goto_0

    .line 2690
    :cond_6
    if-eqz p3, :cond_8

    .line 2691
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2692
    :goto_3
    if-le p2, p1, :cond_7

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2693
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2695
    :cond_7
    if-gt p2, p1, :cond_a

    move v1, v3

    .line 2696
    goto :goto_0

    .line 2699
    :cond_8
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2700
    :goto_4
    if-ge p2, p1, :cond_9

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2701
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 2703
    :cond_9
    if-lt p2, p1, :cond_a

    move v1, v3

    .line 2704
    goto :goto_0

    :cond_a
    move v1, p2

    .line 2708
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1497
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1498
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1499
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 1557
    :cond_0
    :goto_0
    return v6

    .line 1503
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    .line 1504
    .local v9, "returnedWidth":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 1507
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1512
    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1513
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    .line 1514
    .local v7, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->recycleOnMeasure()Z

    move-result v8

    .line 1515
    .local v8, "recyle":Z
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    .line 1517
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_a

    .line 1518
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1520
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1522
    if-lez v4, :cond_3

    .line 1524
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_7

    .line 1525
    sub-int/2addr v9, v3

    .line 1532
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 1533
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    iget v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 1532
    invoke-virtual {v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1534
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1537
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 1539
    move/from16 v0, p4

    if-lt v9, v0, :cond_8

    .line 1542
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1504
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevWidthWithoutPartialChild":I
    .end local v7    # "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1527
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevWidthWithoutPartialChild":I
    .restart local v7    # "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    add-int/2addr v9, v3

    goto :goto_3

    .line 1550
    :cond_8
    if-ltz p5, :cond_9

    move/from16 v0, p5

    if-lt v4, v0, :cond_9

    .line 1551
    move v6, v9

    .line 1517
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_a
    move v6, v9

    .line 1557
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 4415
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onFinishInflate()V

    .line 4417
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v0

    .line 4418
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4419
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4420
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 4419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4422
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->removeAllViews()V

    .line 4424
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
    .line 4332
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4334
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4335
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 4336
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 4337
    .local v4, "closestChildLeft":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 4338
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollY()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 4342
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v13

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 4343
    const/4 v12, 0x0

    iput v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 4344
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->layoutChildren()V

    .line 4349
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4350
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 4351
    .local v9, "minDistance":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v3

    .line 4352
    .local v3, "childCount":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    .line 4354
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 4356
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4354
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4360
    :cond_2
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4361
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4362
    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4363
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 4365
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 4366
    move v9, v6

    .line 4367
    move v5, v8

    .line 4368
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .line 4373
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 4374
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectionFromTop(II)V

    .line 4389
    :goto_2
    return-void

    .line 4376
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4697
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4698
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4699
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4703
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4704
    const-class v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4706
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getCount()I

    move-result v1

    .line 4707
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 4708
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4709
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4710
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4715
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4717
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 4718
    .local v7, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v2, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    move v4, v1

    .line 4719
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isItemChecked(I)Z

    move-result v5

    .local v5, "isSelected":Z
    move v2, p2

    move v3, v1

    .line 4720
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 4722
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4723
    return-void

    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v4, v0

    .line 4718
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2749
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2754
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2759
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

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

    .line 1389
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onMeasure(II)V

    .line 1391
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1392
    .local v12, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1393
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1394
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1396
    .local v11, "heightSize":I
    const/4 v9, 0x0

    .line 1397
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1398
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1400
    .local v8, "childState":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    .line 1401
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1405
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1407
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1408
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1409
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1411
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    .line 1412
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 1411
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1417
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v10, :cond_5

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 1419
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    .line 1424
    :goto_1
    if-nez v12, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    .line 1426
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1429
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1431
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    .line 1434
    :cond_3
    invoke-virtual {p0, v4, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setMeasuredDimension(II)V

    .line 1435
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeightMeasureSpec:I

    .line 1436
    return-void

    .line 1400
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1421
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1370
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1371
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    .line 1372
    .local v0, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1373
    .local v1, "childRight":I
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingLeft()I

    move-result v6

    sub-int v6, p1, v6

    sub-int v6, v1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1375
    .local v4, "offset":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1377
    .local v3, "left":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1378
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$1;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;

    .line 1380
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;->setup(II)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1383
    .end local v0    # "childPosition":I
    .end local v1    # "childRight":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "offset":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onSizeChanged(IIII)V

    .line 1384
    return-void

    .line 1376
    .restart local v0    # "childPosition":I
    .restart local v1    # "childRight":I
    .restart local v2    # "focusedChild":Landroid/view/View;
    .restart local v4    # "offset":I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    .restart local v3    # "left":I
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 4393
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onWindowFocusChanged(Z)V

    .line 4405
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2928
    const/16 v5, 0x11

    if-ne p1, v5, :cond_4

    .line 2929
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2930
    .local v0, "nextPage":I
    const/4 v2, 0x0

    .line 2938
    .local v2, "rightSide":Z
    :goto_0
    if-ltz v0, :cond_3

    .line 2939
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2940
    .local v1, "position":I
    if-ltz v1, :cond_3

    .line 2941
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2942
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    .line 2944
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_0

    .line 2945
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2948
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2949
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2952
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectionInt(I)V

    .line 2953
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invokeOnItemScrollListener()V

    .line 2954
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2955
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    :cond_2
    move v3, v4

    .line 2962
    .end local v0    # "nextPage":I
    .end local v1    # "position":I
    .end local v2    # "rightSide":Z
    :cond_3
    return v3

    .line 2931
    :cond_4
    const/16 v5, 0x42

    if-ne p1, v5, :cond_3

    .line 2932
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2933
    .restart local v0    # "nextPage":I
    const/4 v2, 0x1

    .restart local v2    # "rightSide":Z
    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1466
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 557
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 563
    :cond_0
    const/4 v0, 0x1

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 568
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 469
    :cond_0
    const/4 v0, 0x1

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 474
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 722
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 725
    .local v8, "rectLeftWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v12

    .line 729
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v6

    .line 730
    .local v6, "listUnfadedLeft":I
    add-int v7, v6, v12

    .line 731
    .local v7, "listUnfadedRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 733
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 735
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    .line 736
    :cond_0
    add-int/2addr v6, v4

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildCount()I

    move-result v1

    .line 741
    .local v1, "childCount":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    .line 743
    .local v9, "rightOfRightChild":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 745
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    .line 747
    :cond_2
    sub-int/2addr v7, v4

    .line 751
    :cond_3
    const/4 v11, 0x0

    .line 752
    .local v11, "scrollXDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    .line 759
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    .line 766
    :goto_0
    sub-int v3, v9, v7

    .line 767
    .local v3, "distanceToRight":I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 787
    .end local v3    # "distanceToRight":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 788
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 789
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->scrollListItemsBy(I)V

    .line 790
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedLeft:I

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 794
    :cond_5
    return v10

    .line 762
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 768
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    .line 775
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 782
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 783
    .local v5, "left":I
    sub-int v2, v5, v6

    .line 784
    .local v2, "deltaToLeft":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 778
    .end local v2    # "deltaToLeft":I
    .end local v5    # "left":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 787
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 666
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 668
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetList()V

    .line 670
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 671
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 600
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->resetList()V

    .line 605
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clear()V

    .line 607
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 608
    :cond_1
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 613
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOldSelectedPosition:I

    .line 614
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOldSelectedRowId:J

    .line 617
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    .line 620
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    .line 621
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOldItemCount:I

    .line 622
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->checkFocus()V

    .line 625
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    .line 626
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 628
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->setViewTypeCount(I)V

    .line 631
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 632
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    .line 633
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 641
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectedPositionInt(I)V

    .line 642
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 644
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 646
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->checkSelectionChanged()V

    .line 655
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->requestLayout()V

    .line 656
    return-void

    .line 610
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 635
    :cond_4
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 637
    .end local v0    # "position":I
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_6

    .line 638
    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 639
    .end local v0    # "position":I
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 649
    .end local v0    # "position":I
    :cond_7
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAreAllItemsSelectable:Z

    .line 650
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->checkFocus()V

    .line 652
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3932
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3933
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsCacheColorOpaque:Z

    .line 3934
    if-eqz v0, :cond_1

    .line 3935
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3936
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3938
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3940
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setCacheColorHint(I)V

    .line 3941
    return-void

    .line 3932
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 4215
    if-eqz p1, :cond_2

    .line 4216
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 4220
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerIsOpaque:Z

    .line 4222
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->requestLayout()V

    .line 4223
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 4224
    return-void

    .line 4218
    :cond_2
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 4240
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 4241
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->requestLayout()V

    .line 4242
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 4243
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 4278
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mFooterDividersEnabled:Z

    .line 4279
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 4280
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 4255
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4256
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 4257
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3884
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mItemsCanFocus:Z

    .line 3885
    if-nez p1, :cond_0

    .line 3886
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setDescendantFocusability(I)V

    .line 3888
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4319
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4320
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 4321
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4298
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4299
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_0

    .line 4300
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->invalidate()V

    .line 4302
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelectionFromTop(II)V

    .line 2519
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2716
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2717
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2718
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNextSelectedPosition:I

    .line 2729
    :goto_0
    return-void

    .line 2722
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2723
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 2725
    :cond_1
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNextSelectedPosition:I

    .line 2726
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2559
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2536
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2537
    if-ltz p1, :cond_2

    .line 2538
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2544
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2545
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mLayoutMode:I

    .line 2546
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    .line 2549
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2550
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSyncPosition:I

    .line 2551
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSyncRowId:J

    .line 2554
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 2555
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 2557
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->requestLayout()V

    goto :goto_0

    .line 2541
    :cond_5
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mResurrectToPosition:I

    goto :goto_1

    .line 2547
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSpecificTop:I

    goto :goto_2
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2568
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2569
    const/4 v0, 0x0

    .line 2571
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mSelectedPosition:I

    .line 2573
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2574
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2575
    const/4 v0, 0x1

    .line 2581
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2582
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 2585
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->layoutChildren()V

    .line 2587
    if-eqz v0, :cond_2

    .line 2588
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->awakenScrollBars()Z

    .line 2590
    :cond_2
    return-void

    .line 2576
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2577
    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldCorrectTooHigh()Z
    .locals 1

    .prologue
    .line 1702
    const/4 v0, 0x1

    return v0
.end method
