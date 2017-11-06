.class Lcom/samsung/android/support/sesl/component/widget/SeslListView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.source "SeslListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslListView$SeslLists;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

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
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 160
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

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 115
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$SeslLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 116
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$SeslLists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 130
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    .line 132
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    .line 135
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    .line 140
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView$1;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    .line 148
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsFolderTypeFeature:Z

    .line 165
    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 168
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_entries:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 169
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 170
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    :cond_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_divider:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 174
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :cond_1
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_overScrollHeader:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 181
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 182
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_2
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_overScrollFooter:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 186
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 187
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v6, v7, :cond_5

    .line 192
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_dividerHeight:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 193
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_dividerHeight:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 195
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 196
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setDividerHeight(I)V

    .line 209
    .end local v2    # "dividerHeight":I
    :cond_4
    :goto_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_headerDividersEnabled:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderDividersEnabled:Z

    .line 210
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_footerDividersEnabled:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterDividersEnabled:Z

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    return-void

    .line 200
    :cond_5
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_dividerHeight:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslListView_android_dividerHeight:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 203
    .restart local v2    # "dividerHeight":I
    if-eqz v2, :cond_4

    .line 204
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setDividerHeight(I)V

    goto :goto_0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3290
    add-int/lit8 v2, p2, -0x1

    .line 3291
    .local v2, "abovePosition":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3292
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3293
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3295
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3299
    add-int/lit8 v2, p2, 0x1

    .line 3300
    .local v2, "belowPosition":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3301
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3302
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3304
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v1

    .line 231
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 234
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 237
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 239
    .local v2, "delta":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 242
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 244
    :cond_0
    if-gez v2, :cond_1

    .line 246
    const/4 v2, 0x0

    .line 264
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 265
    neg-int v3, v2

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 268
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 250
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 253
    .restart local v2    # "delta":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 256
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 259
    :cond_4
    if-lez v2, :cond_1

    .line 260
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2896
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2897
    .local v4, "listBottom":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2899
    .local v5, "listTop":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v7

    .line 2901
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_6

    .line 2902
    add-int/lit8 v3, v7, -0x1

    .line 2903
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2904
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2906
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 2908
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2909
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2911
    :cond_1
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2912
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2914
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2915
    .local v1, "goalBottom":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 2916
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2919
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3

    .line 2921
    const/4 v10, 0x0

    .line 2973
    .end local v1    # "goalBottom":I
    :goto_1
    return v10

    .line 2924
    .restart local v1    # "goalBottom":I
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    .line 2925
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 2927
    const/4 v10, 0x0

    goto :goto_1

    .line 2930
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2932
    .local v0, "amountToScroll":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 2934
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2935
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2938
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .line 2940
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 2941
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 2942
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2944
    :cond_7
    :goto_2
    if-gez v3, :cond_8

    .line 2946
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2947
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 2948
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    .line 2950
    :cond_8
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2951
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2952
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2953
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    .line 2954
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2956
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_a

    .line 2958
    const/4 v10, 0x0

    goto :goto_1

    .line 2961
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    .line 2962
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 2964
    const/4 v10, 0x0

    goto :goto_1

    .line 2967
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2968
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 2970
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2971
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2973
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3165
    const/4 v0, 0x0

    .line 3166
    .local v0, "amountToScroll":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3167
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3168
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3169
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3170
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3171
    if-lez p3, :cond_0

    .line 3172
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3184
    :cond_0
    :goto_0
    return v0

    .line 3176
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3177
    .local v1, "listBottom":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3178
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3179
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3180
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 3063
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 3065
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3066
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3067
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3092
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3093
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3097
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3098
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3099
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 3102
    :cond_1
    const/4 v14, 0x0

    .line 3124
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 3069
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 3070
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 3071
    .local v12, "topFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    .line 3072
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 3073
    .local v5, "listTop":I
    if-eqz v11, :cond_5

    .line 3074
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    .line 3075
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3077
    .local v13, "ySearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3089
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 3070
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 3072
    .restart local v12    # "topFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5    # "listTop":I
    :cond_5
    move v13, v5

    .line 3075
    goto :goto_4

    .line 3079
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 3080
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 3081
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    .line 3082
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 3083
    .local v4, "listBottom":I
    if-eqz v11, :cond_9

    .line 3084
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    .line 3085
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3087
    .restart local v13    # "ySearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 3080
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 3082
    .restart local v2    # "bottomFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4    # "listBottom":I
    :cond_9
    move v13, v4

    .line 3085
    goto :goto_8

    .line 3106
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3108
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMaxScrollAmount()I

    move-result v6

    .line 3109
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    .line 3111
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->populate(II)V

    .line 3113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3114
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3119
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->populate(II)V

    .line 3121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mArrowScrollFocusResult:Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3124
    .end local v3    # "focusScroll":I
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

    .line 2676
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2753
    :cond_0
    :goto_0
    return v9

    .line 2680
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2681
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    .line 2683
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2684
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->amountToScroll(II)I

    move-result v0

    .line 2687
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->arrowScrollFocused(I)Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2688
    .local v1, "focusResult":Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2689
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2690
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2693
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2694
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2695
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2696
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectedPositionInt(I)V

    .line 2697
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setNextSelectedPositionInt(I)V

    .line 2698
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2699
    move v5, v4

    .line 2700
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2703
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2704
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2705
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2708
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2709
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->checkSelectionChanged()V

    .line 2712
    :cond_4
    if-lez v0, :cond_5

    .line 2713
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->scrollListItemsBy(I)V

    .line 2714
    const/4 v3, 0x1

    .line 2719
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    .line 2720
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2721
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2722
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_7

    .line 2723
    invoke-direct {p0, v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2724
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2730
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    .line 2731
    invoke-direct {p0, v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2732
    const/4 v6, 0x0

    .line 2733
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 2734
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->hideSelector()V

    .line 2738
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mResurrectToPosition:I

    .line 2741
    :cond_8
    if-eqz v3, :cond_0

    .line 2742
    if-eqz v6, :cond_9

    .line 2743
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2744
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedTop:I

    .line 2746
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2747
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 2749
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2750
    goto/16 :goto_0

    .line 2687
    .end local v1    # "focusResult":Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2693
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_d
    move v7, v9

    .line 2695
    goto/16 :goto_3

    .line 2713
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 548
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 549
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v0, v4, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    .line 550
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 551
    .local v3, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 552
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 548
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
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

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2311
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2461
    :cond_1
    :goto_0
    return v4

    .line 2315
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2316
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->layoutChildren()V

    .line 2319
    :cond_3
    const/4 v2, 0x0

    .line 2320
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2321
    .local v0, "action":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isConfirmKey(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2322
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 2323
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2324
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2325
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->keyPressed()V

    .line 2326
    const/4 v2, 0x1

    .line 2331
    :cond_4
    if-nez v2, :cond_5

    if-eq v0, v4, :cond_5

    .line 2332
    sparse-switch p1, :sswitch_data_0

    .line 2442
    :cond_5
    :goto_1
    if-nez v2, :cond_1

    .line 2446
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2450
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2461
    goto :goto_0

    .line 2334
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2335
    :cond_6
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCurrentFocusPosition:I

    .line 2336
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2337
    if-nez v2, :cond_5

    move v1, p2

    .line 2338
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_5

    .line 2339
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2340
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2346
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_7
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2347
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_3

    .line 2352
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2353
    :cond_a
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCurrentFocusPosition:I

    .line 2354
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2355
    if-nez v2, :cond_5

    move v1, p2

    .line 2356
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_5

    .line 2357
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2358
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2364
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_b
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2365
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_d
    move v2, v3

    goto :goto_5

    .line 2370
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2371
    :cond_e
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCurrentFocusPosition:I

    .line 2372
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .line 2373
    if-nez v2, :cond_5

    .line 2374
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    goto/16 :goto_1

    .line 2380
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2381
    :cond_f
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCurrentFocusPosition:I

    .line 2382
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .line 2383
    if-nez v2, :cond_5

    .line 2384
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    goto/16 :goto_1

    .line 2391
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2392
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2393
    if-nez v2, :cond_5

    .line 2394
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 2395
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->keyPressed()V

    .line 2396
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2402
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2403
    :cond_10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2404
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_11
    move v2, v4

    .line 2408
    :cond_12
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_13
    move v2, v3

    .line 2404
    goto :goto_6

    .line 2405
    :cond_14
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2406
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_16
    move v2, v3

    goto :goto_7

    .line 2413
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2414
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_8

    .line 2415
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2416
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_9

    .line 2421
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_a

    .line 2423
    :cond_1e
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2424
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_20
    move v2, v3

    goto :goto_b

    .line 2429
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2430
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_21
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_22
    move v2, v3

    goto :goto_c

    .line 2435
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2436
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_23
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_24
    move v2, v3

    goto :goto_d

    .line 2452
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2455
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2458
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2332
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2450
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
    .line 1437
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1438
    .local v6, "lastPosition":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1441
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1444
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1447
    .local v4, "lastBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1451
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1452
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1453
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1457
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1458
    :cond_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1460
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1463
    :cond_1
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 1464
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1467
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    .line 1469
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 1474
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
    .line 1486
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1489
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1492
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1495
    .local v2, "firstTop":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1498
    .local v6, "start":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1502
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1503
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1504
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1505
    .local v3, "lastBottom":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1509
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    .line 1510
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1511
    :cond_0
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1513
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1516
    :cond_1
    neg-int v8, v7

    invoke-static {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 1517
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1520
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    .line 1522
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 1529
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

    .line 1524
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1525
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3195
    const/4 v0, 0x0

    .line 3196
    .local v0, "distance":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3197
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3198
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3199
    .local v1, "listBottom":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3200
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3204
    :cond_0
    :goto_0
    return v0

    .line 3201
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3202
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 820
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 821
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 822
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    .line 823
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 824
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    .line 830
    :goto_0
    return-void

    .line 826
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    .line 827
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 828
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v3, 0x1

    .line 699
    const/4 v8, 0x0

    .line 701
    .local v8, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

    move-result v1

    sub-int v7, v0, v1

    .line 702
    .local v7, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 706
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 708
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 709
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 711
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 712
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 713
    if-eqz v5, :cond_1

    .line 714
    move-object v8, v6

    .line 717
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 718
    goto :goto_0

    .line 708
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 720
    :cond_3
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 788
    sub-int v6, p2, p1

    .line 790
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->reconcileSelectedPosition()I

    move-result v1

    .line 792
    .local v1, "position":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 794
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 796
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 797
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    .line 798
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 801
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 803
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooHigh(I)V

    .line 809
    :goto_0
    return-object v7

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 845
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    .line 849
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 851
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 854
    .local v7, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 858
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 861
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 865
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 866
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 869
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 885
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 887
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooHigh(I)V

    .line 893
    :goto_1
    return-object v10

    .line 870
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 873
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 877
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 878
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 881
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 890
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .param p1, "nextTop"    # I

    .prologue
    .line 768
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 769
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 770
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 773
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v3, 0x1

    .line 1389
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1390
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1392
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 1397
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 1398
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1399
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1401
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 1402
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1403
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v8

    .line 1404
    .local v8, "childCount":I
    if-lez v8, :cond_0

    .line 1405
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooHigh(I)V

    .line 1418
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1423
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1389
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1408
    .restart local v5    # "tempIsSelected":Z
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1410
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 1411
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1412
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v8

    .line 1413
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    .line 1414
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooLow(I)V

    goto :goto_1

    .line 1420
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1421
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1423
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 734
    const/4 v8, 0x0

    .line 736
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 737
    .local v7, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 741
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 743
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 744
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 746
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 747
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 748
    if-eqz v5, :cond_1

    .line 749
    move-object v8, v6

    .line 752
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 753
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 743
    goto :goto_1

    .line 755
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 756
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2880
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 906
    move v0, p1

    .line 907
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 908
    sub-int/2addr v0, p2

    .line 910
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 923
    move v0, p1

    .line 924
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 925
    add-int/2addr v0, p2

    .line 927
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 2562
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2563
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2567
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v3

    .line 2568
    .local v3, "numChildren":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_4

    if-lez v3, :cond_4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    .line 2569
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2570
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 2573
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2574
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2576
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2579
    if-eqz v0, :cond_1

    .line 2580
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2581
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2582
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2585
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2586
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_2

    .line 2587
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2589
    :cond_2
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->playSoundEffect(I)V

    .line 2590
    const/4 v5, 0x1

    .line 2604
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .line 2597
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    .line 2598
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2597
    invoke-virtual {v7, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2599
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2600
    invoke-direct {p0, v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_4
    move v5, v6

    .line 2604
    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2771
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2772
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2782
    :cond_0
    const/4 v5, 0x0

    .line 2783
    .local v5, "topSelected":Z
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2784
    .local v4, "selectedIndex":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2785
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2786
    move v7, v2

    .line 2787
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2788
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2789
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2790
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2798
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v3

    .line 2801
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    .line 2802
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2803
    invoke-direct {p0, v6, v7, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2807
    :cond_1
    if-eqz v0, :cond_2

    .line 2808
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2809
    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2811
    :cond_2
    return-void

    .line 2792
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_3
    move v7, v4

    .line 2793
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2794
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2795
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 2802
    .restart local v3    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2808
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1957
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1958
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1959
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1960
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1973
    :goto_1
    return v5

    .line 1959
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1965
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1966
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1967
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1968
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1969
    goto :goto_1

    .line 1967
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1973
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

    .line 3147
    if-ne p1, p2, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return v1

    .line 3151
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3152
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

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

    .line 3010
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 3011
    .local v1, "firstPosition":I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 3012
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 3015
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 3050
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 3012
    goto :goto_0

    .line 3018
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 3019
    move v5, v1

    .line 3022
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getLastVisiblePosition()I

    move-result v3

    .line 3023
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3024
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 3025
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    .line 3026
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3024
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3031
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 3032
    .local v2, "last":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 3035
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 3036
    goto :goto_1

    .line 3034
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 3038
    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    .line 3039
    move v5, v2

    .line 3042
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3043
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 3044
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    .line 3045
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3043
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    .line 3050
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1992
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1995
    .local v1, "activeView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1998
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2011
    .end local v1    # "activeView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 2008
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2009
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v9, v0, v2

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v1, v3

    .line 2011
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2821
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2822
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->measureItem(Landroid/view/View;)V

    .line 2823
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2825
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2828
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2829
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2830
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2833
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2842
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2843
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2848
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2850
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2852
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 2853
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2858
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2859
    return-void

    .line 2856
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 2855
    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .prologue
    .line 1232
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1233
    .local v3, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1235
    .restart local v3    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 1238
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 1239
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->forceAdd:Z

    .line 1241
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1243
    .local v1, "childWidthSpec":I
    iget v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->height:I

    .line 1245
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1246
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1250
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1255
    return-void

    .line 1248
    .end local v0    # "childHeightSpec":I
    :cond_1
    const/4 v4, 0x0

    invoke-static {p4, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

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
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 950
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    .line 954
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 956
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 959
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 981
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 984
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 987
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 991
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 994
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 997
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1000
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1001
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1002
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1005
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1007
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1011
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1012
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    .line 1013
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 1014
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    .line 1095
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    .line 1016
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    .line 1018
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1020
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1041
    if-eqz p2, :cond_4

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1053
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1055
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1058
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1061
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1062
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1063
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1066
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1070
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1048
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1073
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1078
    .local v4, "oldTop":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1081
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1084
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1085
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1087
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1092
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x82

    const/4 v4, -0x1

    .line 2641
    if-ne p3, v7, :cond_2

    .line 2642
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2643
    .local v1, "listBottom":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_0

    .line 2644
    if-eq p2, v4, :cond_1

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 2662
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 2665
    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .line 2644
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    goto :goto_0

    .line 2651
    .end local v1    # "listBottom":I
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2652
    .local v2, "listTop":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 2653
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2654
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_3

    if-gt p2, v0, :cond_3

    add-int/lit8 v3, p2, -0x1

    .line 2657
    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_3
    move v3, v0

    .line 2654
    goto :goto_2

    .line 2665
    .end local v0    # "lastPos":I
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_4
    if-ne p3, v7, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3132
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v2

    .line 3133
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3134
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3135
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3136
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3139
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
    .line 2867
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2868
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2869
    .local v4, "h":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2870
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2871
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2872
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2873
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2874
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 355
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 356
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    .line 357
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 358
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 362
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :cond_0
    return-void

    .line 355
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    const/4 v5, 0x0

    .line 1937
    if-nez p1, :cond_1

    .line 1950
    :cond_0
    return-void

    .line 1940
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1941
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    .line 1942
    .local v0, "fixedViewInfo":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    .line 1943
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1944
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_2

    .line 1945
    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 1946
    iput-boolean v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1940
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3215
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 3217
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3218
    .local v5, "listBottom":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3219
    .local v6, "listTop":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    .line 3221
    .local v8, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v7

    .line 3226
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3227
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3228
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3229
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3230
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3231
    add-int/lit8 v7, v7, 0x1

    .line 3235
    goto :goto_0

    .line 3240
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3241
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-static {p0, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 3245
    :cond_1
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3246
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3247
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 3248
    .local v4, "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    iget v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3249
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3251
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3252
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3253
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    goto :goto_1

    .line 3257
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3260
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3261
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3262
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    goto :goto_2

    .line 3267
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3268
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-static {p0, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 3271
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3272
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3275
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3276
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 3277
    .restart local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    iget v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3278
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3280
    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3281
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3282
    goto :goto_3

    .line 3284
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_7
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3285
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3286
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3287
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
    .param p7, "recycled"    # Z

    .prologue
    .line 2031
    if-eqz p6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_b

    const/4 v11, 0x1

    .line 2032
    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_c

    const/16 v17, 0x1

    .line 2033
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTouchMode:I

    .line 2034
    .local v13, "mode":I
    if-lez v13, :cond_d

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 2036
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_e

    const/16 v16, 0x1

    .line 2037
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_0
    const/4 v14, 0x1

    .line 2041
    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 2042
    .local v15, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 2043
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 2045
    .restart local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 2048
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    iget v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 2050
    :cond_3
    if-eqz p4, :cond_10

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2062
    :goto_6
    if-eqz v17, :cond_4

    .line 2063
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2064
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsFolderTypeFeature:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 2065
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2069
    :cond_4
    if-eqz v16, :cond_5

    .line 2070
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2073
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2074
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v19, p1

    .line 2075
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2082
    :cond_6
    :goto_7
    if-eqz v14, :cond_16

    .line 2083
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2085
    .local v8, "childWidthSpec":I
    iget v12, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->height:I

    .line 2087
    .local v12, "lpHeight":I
    if-lez v12, :cond_15

    .line 2088
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2093
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2098
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2099
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2100
    .local v9, "h":I
    if-eqz p4, :cond_17

    move/from16 v7, p3

    .line 2102
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_18

    .line 2103
    add-int v6, p5, v18

    .line 2104
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 2105
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2111
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 2112
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2115
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mJumpAtFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 2117
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2119
    :cond_a
    return-void

    .line 2031
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2032
    .restart local v11    # "isSelected":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2034
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2036
    .restart local v10    # "isPressed":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 2037
    .restart local v16    # "updateChildPressed":Z
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 2050
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 2052
    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->forceAdd:Z

    .line 2053
    iget v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 2054
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2056
    :cond_12
    if-eqz p4, :cond_13

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_13
    const/16 v19, 0x0

    goto :goto_c

    .line 2076
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 2091
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getMeasuredHeight()I

    move-result v19

    const/16 v20, 0x0

    .line 2090
    invoke-static/range {v19 .. v20}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    .line 2095
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2100
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_17
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 2107
    .restart local v7    # "childTop":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2108
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 3850
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 3851
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 3852
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 3853
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_5

    const/4 v6, 0x1

    .line 3854
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_6

    const/4 v5, 0x1

    .line 3855
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    const/4 v4, 0x1

    .line 3857
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_13

    .line 3858
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isOpaque()Z

    move-result v22

    if-nez v22, :cond_8

    const/4 v7, 0x1

    .line 3859
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    move/from16 v16, v0

    .line 3860
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3861
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 3862
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_9

    const/4 v14, 0x1

    .line 3863
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_a

    const/4 v13, 0x1

    .line 3864
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderDividersEnabled:Z

    .line 3865
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterDividersEnabled:Z

    .line 3866
    .local v8, "footerDividers":Z
    if-nez v11, :cond_0

    if-nez v14, :cond_13

    :cond_0
    if-nez v8, :cond_1

    if-nez v13, :cond_13

    .line 3867
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3868
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 3869
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    .line 3870
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_2

    if-nez v15, :cond_13

    .line 3871
    :cond_2
    add-int/lit8 v17, p1, 0x1

    .line 3875
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

    .line 3877
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v8, :cond_4

    if-nez v13, :cond_c

    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 3879
    :cond_4
    const/16 v22, 0x1

    .line 3905
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

    .line 3853
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3854
    .restart local v6    # "drawOverscrollHeader":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3855
    .restart local v5    # "drawOverscrollFooter":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3858
    .restart local v4    # "drawDividers":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 3862
    .restart local v7    # "fillForMissingDividers":Z
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 3863
    .restart local v14    # "isHeader":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 3869
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    .restart local v13    # "isFooter":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 3880
    .restart local v15    # "isLastItem":Z
    .restart local v17    # "nextIndex":I
    :cond_c
    if-eqz v7, :cond_13

    .line 3881
    const/16 v22, 0x1

    goto :goto_7

    .line 3885
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    if-eqz v6, :cond_10

    const/16 v21, 0x1

    .line 3886
    .local v21, "start":I
    :goto_8
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 3887
    .local v12, "isFirstItem":Z
    :goto_9
    if-nez v12, :cond_13

    .line 3888
    add-int/lit8 v20, p1, -0x1

    .line 3892
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

    .line 3894
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v8, :cond_f

    if-nez v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v9, :cond_12

    .line 3896
    :cond_f
    const/16 v22, 0x1

    goto :goto_7

    .line 3885
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_10
    const/16 v21, 0x0

    goto :goto_8

    .line 3886
    .restart local v21    # "start":I
    :cond_11
    const/4 v12, 0x0

    goto :goto_9

    .line 3897
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_12
    if-eqz v7, :cond_13

    .line 3898
    const/16 v22, 0x1

    goto :goto_7

    .line 3905
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

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v1

    .line 571
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 572
    .local v0, "bottomOfBottomChild":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 574
    .local v2, "lastVisiblePosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 576
    .local v3, "listBottom":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 563
    .local v0, "listTop":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 418
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 381
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;)V

    .line 382
    .local v0, "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    .line 383
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 384
    iput-boolean p3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->isSelectable:Z

    .line 385
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    .line 389
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 400
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 324
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 287
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;)V

    .line 288
    .local v0, "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    .line 289
    iput-object p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 290
    iput-boolean p3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->isSelectable:Z

    .line 291
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    .line 295
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 306
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 3683
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3660
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2616
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mInLayout:Z

    .line 2617
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2618
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2619
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mInLayout:Z

    .line 2621
    return v0

    .line 2623
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2123
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

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
    .line 3397
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 3398
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCachingActive:Z

    .line 3402
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 3403
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3404
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3405
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_b

    const/4 v13, 0x1

    .line 3406
    .local v13, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_c

    const/4 v12, 0x1

    .line 3407
    .local v12, "drawOverscrollFooter":Z
    :goto_1
    if-lez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    const/4 v11, 0x1

    .line 3409
    .local v11, "drawDividers":Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_15

    .line 3411
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    .line 3412
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPaddingLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3413
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getRight()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getLeft()I

    move-result v40

    sub-int v39, v39, v40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPaddingRight()I

    move-result v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3415
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v9

    .line 3416
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3417
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    move/from16 v27, v0

    .line 3418
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v19, v27, v39

    .line 3419
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3420
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3421
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3422
    .local v17, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    .line 3423
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3428
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_e

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_e

    const/16 v16, 0x1

    .line 3430
    .local v16, "fillForMissingDividers":Z
    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    .line 3431
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 3434
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 3436
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3437
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    .line 3438
    .local v14, "effectivePaddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFlagClipToPadding()Z

    move-result v39

    if-eqz v39, :cond_3

    .line 3439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3443
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

    move-result v40

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v40

    add-int v29, v39, v40

    .line 3444
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_16

    .line 3445
    const/4 v6, 0x0

    .line 3448
    .local v6, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v36

    .line 3449
    .local v36, "scrollY":I
    if-lez v9, :cond_4

    if-gez v36, :cond_4

    .line 3450
    if-eqz v13, :cond_f

    .line 3451
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3452
    move/from16 v0, v36

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3453
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3461
    :cond_4
    :goto_4
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_14

    .line 3462
    add-int v28, v17, v22

    .line 3463
    .local v28, "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    const/16 v25, 0x1

    .line 3464
    .local v25, "isHeader":Z
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    const/16 v24, 0x1

    .line 3465
    .local v24, "isFooter":Z
    :goto_7
    if-nez v21, :cond_5

    if-nez v25, :cond_a

    :cond_5
    if-nez v18, :cond_6

    if-nez v24, :cond_a

    .line 3466
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3467
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3468
    add-int/lit8 v39, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    const/16 v26, 0x1

    .line 3470
    .local v26, "isLastItem":Z
    :goto_8
    if-eqz v11, :cond_a

    move/from16 v0, v29

    if-ge v6, v0, :cond_a

    if-eqz v12, :cond_7

    if-nez v26, :cond_a

    .line 3472
    :cond_7
    add-int/lit8 v30, v28, 0x1

    .line 3476
    .local v30, "nextIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v21, :cond_8

    if-nez v25, :cond_13

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    :cond_8
    if-nez v26, :cond_9

    .line 3478
    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v18, :cond_9

    if-nez v24, :cond_13

    move/from16 v0, v30

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 3480
    :cond_9
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3481
    add-int v39, v6, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3461
    .end local v8    # "child":Landroid/view/View;
    .end local v26    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_a
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 3405
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
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3406
    .restart local v13    # "drawOverscrollHeader":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3407
    .restart local v12    # "drawOverscrollFooter":Z
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3428
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
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3454
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "scrollY":I
    :cond_f
    if-eqz v11, :cond_4

    .line 3455
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3456
    neg-int v0, v10

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3457
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3463
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 3464
    .restart local v25    # "isHeader":Z
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 3468
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    :cond_12
    const/16 v26, 0x0

    goto :goto_8

    .line 3483
    .restart local v26    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_13
    if-eqz v16, :cond_a

    .line 3484
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3485
    add-int v39, v6, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3486
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 3492
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v40

    add-int v31, v39, v40

    .line 3493
    .local v31, "overFooterBottom":I
    if-eqz v12, :cond_15

    add-int v39, v17, v9

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    move/from16 v0, v31

    if-le v0, v6, :cond_15

    .line 3495
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3496
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3560
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
    .end local v31    # "overFooterBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_15
    :goto_a
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3561
    return-void

    .line 3502
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
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v36

    .line 3504
    .restart local v36    # "scrollY":I
    if-lez v9, :cond_17

    if-eqz v13, :cond_17

    .line 3505
    move/from16 v0, v36

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3506
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v39

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3510
    :cond_17
    if-eqz v13, :cond_1d

    const/16 v37, 0x1

    .line 3511
    .local v37, "start":I
    :goto_b
    move/from16 v22, v37

    .restart local v22    # "i":I
    :goto_c
    move/from16 v0, v22

    if-ge v0, v9, :cond_22

    .line 3512
    add-int v28, v17, v22

    .line 3513
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e

    const/16 v25, 0x1

    .line 3514
    .restart local v25    # "isHeader":Z
    :goto_d
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    const/16 v24, 0x1

    .line 3515
    .restart local v24    # "isFooter":Z
    :goto_e
    if-nez v21, :cond_18

    if-nez v25, :cond_1c

    :cond_18
    if-nez v18, :cond_19

    if-nez v24, :cond_1c

    .line 3516
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3517
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v38

    .line 3518
    .local v38, "top":I
    if-eqz v11, :cond_1c

    move/from16 v0, v38

    if-le v0, v15, :cond_1c

    .line 3519
    move/from16 v0, v22

    move/from16 v1, v37

    if-ne v0, v1, :cond_20

    const/16 v23, 0x1

    .line 3520
    .local v23, "isFirstItem":Z
    :goto_f
    add-int/lit8 v35, v28, -0x1

    .line 3524
    .local v35, "previousIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_21

    if-nez v21, :cond_1a

    if-nez v25, :cond_21

    move/from16 v0, v35

    move/from16 v1, v20

    if-lt v0, v1, :cond_21

    :cond_1a
    if-nez v23, :cond_1b

    .line 3526
    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_21

    if-nez v18, :cond_1b

    if-nez v24, :cond_21

    move/from16 v0, v35

    move/from16 v1, v19

    if-ge v0, v1, :cond_21

    .line 3528
    :cond_1b
    sub-int v39, v38, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3529
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3534
    add-int/lit8 v39, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3511
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v35    # "previousIndex":I
    .end local v38    # "top":I
    :cond_1c
    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 3510
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v37    # "start":I
    :cond_1d
    const/16 v37, 0x0

    goto :goto_b

    .line 3513
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    .restart local v37    # "start":I
    :cond_1e
    const/16 v25, 0x0

    goto :goto_d

    .line 3514
    .restart local v25    # "isHeader":Z
    :cond_1f
    const/16 v24, 0x0

    goto :goto_e

    .line 3519
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    .restart local v38    # "top":I
    :cond_20
    const/16 v23, 0x0

    goto :goto_f

    .line 3535
    .restart local v23    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_21
    if-eqz v16, :cond_1c

    .line 3536
    sub-int v39, v38, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3537
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3538
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_10

    .line 3544
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v35    # "previousIndex":I
    .end local v38    # "top":I
    :cond_22
    if-lez v9, :cond_15

    if-lez v36, :cond_15

    .line 3545
    if-eqz v12, :cond_23

    .line 3546
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v3

    .line 3547
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3548
    add-int v39, v3, v36

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 3550
    .end local v3    # "absListBottom":I
    :cond_23
    if-eqz v11, :cond_15

    .line 3551
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3552
    add-int v39, v29, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3553
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2282
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2283
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2285
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2286
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2289
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2292
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
    .line 3565
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3566
    .local v0, "more":Z
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    .line 3567
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCachingActive:Z

    .line 3569
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3585
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3586
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3587
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3379
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3381
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3382
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3384
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3385
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3386
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3389
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3390
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3393
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3362
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3364
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3365
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3367
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3368
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3369
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3372
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3373
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3376
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "down"    # Z

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v0

    .line 666
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFlagClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getListPaddingTop()I

    move-result v2

    .line 671
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 673
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillDown(II)Landroid/view/View;

    .line 674
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooHigh(I)V

    .line 685
    .end local v2    # "paddingTop":I
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_1
    move v3, v2

    .line 671
    goto :goto_0

    .line 676
    .end local v2    # "paddingTop":I
    :cond_2
    const/4 v1, 0x0

    .line 677
    .local v1, "paddingBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFlagClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getListPaddingBottom()I

    move-result v1

    .line 680
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 682
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    .line 683
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->correctTooLow(I)V

    goto :goto_1

    .line 681
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v0

    .line 1357
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1358
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1360
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1361
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1362
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1374
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1359
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1366
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 1367
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1368
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1369
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1366
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1374
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2521
    const/4 v1, 0x0

    .line 2522
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    .line 2523
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2524
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2525
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2526
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 2527
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectionInt(I)V

    .line 2528
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V

    .line 2530
    :cond_0
    const/4 v1, 0x1

    .line 2546
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2547
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->awakenScrollBars()Z

    .line 2548
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 2551
    :cond_2
    return v1

    .line 2532
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 2533
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2534
    .local v0, "lastItem":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2535
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2537
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2538
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 2539
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectionInt(I)V

    .line 2540
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V

    .line 2542
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3910
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3807
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3808
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3837
    :cond_0
    :goto_0
    return-object v5

    .line 3813
    :cond_1
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3814
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3815
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3816
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3817
    .local v5, "ids":[J
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3819
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3820
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3821
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3822
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3820
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 3828
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3831
    new-array v6, v2, [J

    .line 3832
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3834
    goto :goto_0

    .line 3837
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3625
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3842
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 3843
    .local v0, "height":I
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3844
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 3846
    .end local v0    # "height":I
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3325
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 220
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

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
    .line 3722
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3330
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isOpaque()Z

    move-result v4

    .line 3331
    .local v4, "retValue":Z
    if-eqz v4, :cond_1

    .line 3333
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3334
    .local v3, "listTop":I
    :goto_0
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3335
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_3

    :cond_0
    move v4, v6

    .line 3345
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_1
    :goto_1
    return v4

    .line 3333
    .restart local v4    # "retValue":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPaddingTop()I

    move-result v3

    goto :goto_0

    .line 3338
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listTop":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 3339
    :goto_2
    sub-int v2, v7, v5

    .line 3340
    .local v2, "listBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3341
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_1

    :cond_4
    move v4, v6

    .line 3342
    goto :goto_1

    .line 3339
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPaddingBottom()I

    move-result v5

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 45

    .prologue
    .line 1533
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mBlockLayoutRequests:Z

    .line 1534
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mBlockLayoutRequests:Z

    .line 1541
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 1543
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 1545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_3

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resetList()V

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    if-eqz v4, :cond_2

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->onLayoutComplete()V

    .line 1916
    :cond_2
    if-nez v13, :cond_0

    .line 1917
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1551
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1552
    .local v8, "childrenTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getTop()I

    move-result v43

    sub-int v4, v4, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    sub-int v9, v4, v43

    .line 1553
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v15

    .line 1555
    .local v15, "childCount":I
    const/16 v29, 0x0

    .line 1556
    .local v29, "index":I
    const/4 v7, 0x0

    .line 1559
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 1560
    .local v5, "oldSel":Landroid/view/View;
    const/16 v32, 0x0

    .line 1561
    .local v32, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 1564
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 1579
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move/from16 v43, v0

    sub-int v29, v4, v43

    .line 1580
    if-ltz v29, :cond_4

    move/from16 v0, v29

    if-ge v0, v15, :cond_4

    .line 1581
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1585
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 1587
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNextSelectedPosition:I

    if-ltz v4, :cond_5

    .line 1588
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    move/from16 v43, v0

    sub-int v7, v4, v43

    .line 1592
    :cond_5
    add-int v4, v29, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1596
    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 1597
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_7

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->handleDataChanged()V

    .line 1603
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-nez v4, :cond_9

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resetList()V

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    if-eqz v4, :cond_8

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->onLayoutComplete()V

    .line 1916
    :cond_8
    if-nez v13, :cond_0

    .line 1917
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1566
    .end local v16    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move/from16 v43, v0

    sub-int v29, v4, v43

    .line 1567
    if-ltz v29, :cond_6

    move/from16 v0, v29

    if-ge v0, v15, :cond_6

    .line 1568
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1607
    .restart local v16    # "dataChanged":Z
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Landroid/widget/ListAdapter;->getCount()I

    move-result v43

    move/from16 v0, v43

    if-eq v4, v0, :cond_c

    .line 1608
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getId()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ") with Adapter("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v44, v0

    .line 1613
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1913
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v29    # "index":I
    .end local v32    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    move-object/from16 v43, v0

    if-eqz v43, :cond_a

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->onLayoutComplete()V

    .line 1916
    :cond_a
    if-nez v13, :cond_b

    .line 1917
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mBlockLayoutRequests:Z

    :cond_b
    throw v4

    .line 1616
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v29    # "index":I
    .restart local v32    # "oldFirst":Landroid/view/View;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectedPositionInt(I)V

    .line 1618
    const/4 v10, 0x0

    .line 1619
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 1620
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 1621
    .local v12, "accessibilityFocusPosition":I
    const/16 v30, 0x0

    .line 1626
    .local v30, "insideViewAccFocused":Z
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v39

    .line 1627
    .local v39, "viewRootImpl":Ljava/lang/Object;
    if-eqz v39, :cond_10

    .line 1628
    invoke-static/range {v39 .. v39}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v20

    .line 1629
    .local v20, "focusHost":Landroid/view/View;
    if-eqz v20, :cond_10

    .line 1630
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1631
    .local v18, "focusChild":Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 1632
    const/16 v30, 0x1

    .line 1634
    :cond_d
    if-eqz v18, :cond_10

    .line 1635
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1636
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_f

    .line 1639
    :cond_e
    move-object/from16 v11, v20

    .line 1641
    invoke-static/range {v39 .. v39}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->getAccessibilityFocusedVirtualView(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1646
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1651
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v20    # "focusHost":Landroid/view/View;
    :cond_10
    const/16 v21, 0x0

    .line 1652
    .local v21, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v22, 0x0

    .line 1655
    .local v22, "focusLayoutRestoreView":Landroid/view/View;
    const/16 v19, 0x0

    .line 1661
    .local v19, "focusFirstItemTemporarily":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFocusedChild()Landroid/view/View;

    move-result-object v26

    .line 1662
    .local v26, "focusedChild":Landroid/view/View;
    if-eqz v26, :cond_13

    .line 1668
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1669
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_12

    .line 1670
    :cond_11
    move-object/from16 v21, v26

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->findFocus()Landroid/view/View;

    move-result-object v22

    .line 1673
    if-eqz v22, :cond_12

    .line 1675
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 1678
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-nez v4, :cond_12

    .line 1679
    const/16 v19, 0x1

    .line 1684
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->requestFocus()Z

    .line 1691
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 1692
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v35, v0

    .line 1693
    .local v35, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    if-eqz v16, :cond_14

    .line 1694
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move/from16 v0, v27

    if-ge v0, v15, :cond_15

    .line 1695
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v43, v17, v27

    move-object/from16 v0, v35

    move/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1694
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 1698
    .end local v27    # "i":I
    :cond_14
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1702
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mChnagedAdapter:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mInitAbsListView:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mWindowFocusChanged:Z

    if-eqz v4, :cond_17

    if-nez v16, :cond_17

    .line 1703
    :cond_16
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mJumpAtFirst:Z

    .line 1705
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mWindowFocusChanged:Z

    .line 1706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mChnagedAdapter:Z

    .line 1707
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mInitAbsListView:Z

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->detachAllViewsFromParent()V

    .line 1712
    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1714
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    .line 1755
    if-nez v15, :cond_25

    .line 1756
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-nez v4, :cond_24

    .line 1757
    const/4 v4, 0x0

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePosition(IZ)I

    move-result v33

    .line 1758
    .local v33, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectedPositionInt(I)V

    .line 1759
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v37

    .line 1780
    .end local v8    # "childrenTop":I
    .end local v33    # "position":I
    .local v37, "sel":Landroid/view/View;
    :cond_18
    :goto_3
    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1786
    if-eqz v37, :cond_2d

    .line 1790
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v19, :cond_2c

    .line 1792
    :cond_19
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    if-eqz v22, :cond_1a

    .line 1794
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_1a
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_1b
    const/16 v24, 0x1

    .line 1795
    .local v24, "focusWasTaken":Z
    :goto_4
    if-nez v24, :cond_2b

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFocusedChild()Landroid/view/View;

    move-result-object v25

    .line 1800
    .local v25, "focused":Landroid/view/View;
    if-eqz v25, :cond_1c

    .line 1801
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->clearFocus()V

    .line 1803
    :cond_1c
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionSelector(ILandroid/view/View;)V

    .line 1811
    .end local v24    # "focusWasTaken":Z
    .end local v25    # "focused":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedTop:I

    .line 1843
    :cond_1d
    :goto_6
    if-eqz v39, :cond_1e

    .line 1844
    invoke-static/range {v39 .. v39}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v31

    .line 1845
    .local v31, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v31, :cond_35

    .line 1846
    if-eqz v11, :cond_34

    .line 1847
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1849
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v34

    .line 1850
    .local v34, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_33

    if-eqz v34, :cond_33

    .line 1852
    invoke-static {v10}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v40

    .line 1854
    .local v40, "sourceNodeId":J
    invoke-static/range {v40 .. v41}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->getVirtualDescendantId(J)I

    move-result v42

    .line 1855
    .local v42, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v43, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1890
    .end local v31    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v34    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v40    # "sourceNodeId":J
    .end local v42    # "virtualViewId":I
    :cond_1e
    :goto_7
    if-eqz v22, :cond_1f

    .line 1891
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 1892
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 1895
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 1896
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataChanged:Z

    .line 1897
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mJumpAtFirst:Z

    .line 1898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_20

    .line 1899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->post(Ljava/lang/Runnable;)Z

    .line 1900
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1902
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNeedSync:Z

    .line 1903
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setNextSelectedPositionInt(I)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->updateScrollIndicators()V

    .line 1907
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-lez v4, :cond_21

    .line 1908
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->checkSelectionChanged()V

    .line 1911
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    if-eqz v4, :cond_22

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->onLayoutComplete()V

    .line 1916
    :cond_22
    if-nez v13, :cond_0

    .line 1917
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1716
    .end local v37    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :pswitch_2
    if-eqz v6, :cond_23

    .line 1717
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1719
    .end local v37    # "sel":Landroid/view/View;
    :cond_23
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v37

    .line 1721
    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1723
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSpecificTop:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .line 1724
    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1726
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    move-result-object v37

    .line 1727
    .restart local v37    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1730
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 1731
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v37

    .line 1732
    .restart local v37    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1735
    .end local v37    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->reconcileSelectedPosition()I

    move-result v38

    .line 1736
    .local v38, "selectedPosition":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSpecificTop:I

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .line 1743
    .restart local v37    # "sel":Landroid/view/View;
    if-nez v37, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    if-eqz v4, :cond_18

    .line 1744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    .line 1745
    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v23

    .line 1746
    .local v23, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v23, :cond_18

    .line 1747
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .end local v23    # "focusRunnable":Ljava/lang/Runnable;
    .end local v37    # "sel":Landroid/view/View;
    .end local v38    # "selectedPosition":I
    :pswitch_7
    move-object/from16 v4, p0

    .line 1752
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v37

    .line 1753
    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1761
    .end local v37    # "sel":Landroid/view/View;
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePosition(IZ)I

    move-result v33

    .line 1762
    .restart local v33    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectedPositionInt(I)V

    .line 1763
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillUp(II)Landroid/view/View;

    move-result-object v37

    .line 1764
    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1766
    .end local v33    # "position":I
    .end local v37    # "sel":Landroid/view/View;
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-ltz v4, :cond_27

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v4, v0, :cond_27

    .line 1767
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-nez v5, :cond_26

    .end local v8    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1768
    .end local v37    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_26
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_8

    .line 1769
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v4, v0, :cond_29

    .line 1770
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    if-nez v32, :cond_28

    .end local v8    # "childrenTop":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1771
    .end local v37    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_28
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_9

    .line 1773
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v37

    .restart local v37    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1794
    .end local v8    # "childrenTop":I
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1805
    .restart local v24    # "focusWasTaken":Z
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1809
    .end local v24    # "focusWasTaken":Z
    :cond_2c
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1813
    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTouchMode:I

    const/16 v43, 0x1

    move/from16 v0, v43

    if-eq v4, v0, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTouchMode:I

    const/16 v43, 0x2

    move/from16 v0, v43

    if-ne v4, v0, :cond_30

    :cond_2e
    const/16 v28, 0x1

    .line 1815
    .local v28, "inTouchMode":Z
    :goto_a
    if-eqz v28, :cond_31

    .line 1817
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move/from16 v43, v0

    sub-int v4, v4, v43

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1818
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_2f

    .line 1819
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionSelector(ILandroid/view/View;)V

    .line 1837
    .end local v14    # "child":Landroid/view/View;
    :cond_2f
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-eqz v22, :cond_1d

    .line 1838
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1813
    .end local v28    # "inTouchMode":Z
    :cond_30
    const/16 v28, 0x0

    goto :goto_a

    .line 1821
    .restart local v28    # "inTouchMode":Z
    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorPosition:I

    const/16 v43, -0x1

    move/from16 v0, v43

    if-eq v4, v0, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v4, v0, :cond_32

    .line 1825
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    move/from16 v43, v0

    sub-int v4, v4, v43

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1826
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_2f

    .line 1827
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    .line 1831
    .end local v14    # "child":Landroid/view/View;
    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedTop:I

    .line 1832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    .line 1858
    .end local v28    # "inTouchMode":Z
    .restart local v31    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v34    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_33
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 1860
    .end local v34    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_34
    const/4 v4, -0x1

    if-eq v12, v4, :cond_1e

    .line 1862
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v4, v12, v4

    const/16 v43, 0x0

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    .line 1862
    move/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v4, v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v33

    .line 1865
    .restart local v33    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    .line 1866
    .local v36, "restoreView":Landroid/view/View;
    if-eqz v36, :cond_1e

    .line 1867
    invoke-static/range {v36 .. v36}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 1870
    .end local v33    # "position":I
    .end local v36    # "restoreView":Landroid/view/View;
    :cond_35
    const/4 v4, -0x1

    if-eq v12, v4, :cond_1e

    .line 1871
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    sub-int v4, v12, v4

    const/16 v43, 0x0

    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v44

    add-int/lit8 v44, v44, -0x1

    .line 1871
    move/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v4, v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v33

    .line 1874
    .restart local v33    # "position":I
    if-eqz v30, :cond_36

    .line 1875
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getId()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    .line 1879
    .restart local v36    # "restoreView":Landroid/view/View;
    :goto_c
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_1e

    .line 1880
    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 1881
    if-eqz v36, :cond_1e

    .line 1882
    invoke-static/range {v36 .. v36}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 1877
    .end local v36    # "restoreView":Landroid/view/View;
    :cond_36
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v36

    .restart local v36    # "restoreView":Landroid/view/View;
    goto :goto_c

    .line 1564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1714
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
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2180
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 2208
    :cond_1
    :goto_0
    return v2

    .line 2184
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2185
    .local v1, "count":I
    if-nez p1, :cond_4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-ne v4, v3, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsFolderTypeFeature:Z

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    .line 2186
    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2187
    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2190
    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    if-nez v4, :cond_6

    .line 2191
    if-eqz p2, :cond_5

    .line 2192
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2193
    :goto_1
    if-ge p1, v1, :cond_6

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2194
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2197
    :cond_5
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2198
    :goto_2
    if-ltz p1, :cond_6

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2199
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2204
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 2205
    goto :goto_0

    :cond_8
    move v2, p1

    .line 2208
    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2224
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2225
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 2256
    :cond_1
    :goto_0
    return v1

    .line 2230
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2231
    .local v1, "after":I
    if-ne v1, v3, :cond_1

    .line 2236
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2237
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result p1

    .line 2238
    if-eqz p3, :cond_4

    .line 2239
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2240
    :goto_1
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2241
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2243
    :cond_3
    if-gt p2, p1, :cond_6

    move v1, v3

    .line 2244
    goto :goto_0

    .line 2247
    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2248
    :goto_2
    if-ge p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2249
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2251
    :cond_5
    if-lt p2, p1, :cond_6

    move v1, v3

    .line 2252
    goto :goto_0

    :cond_6
    move v1, p2

    .line 2256
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1296
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1297
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1351
    :cond_0
    :goto_0
    return v6

    .line 1301
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1302
    .local v9, "returnedHeight":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 1305
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1310
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1311
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    .line 1312
    .local v7, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->recycleOnMeasure()Z

    move-result v8

    .line 1313
    .local v8, "recyle":Z
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    .line 1315
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1316
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1318
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    invoke-direct {p0, v2, v4, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1320
    if-lez v4, :cond_3

    .line 1322
    add-int/2addr v9, v3

    .line 1326
    :cond_3
    if-eqz v8, :cond_4

    .line 1327
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    iget v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 1326
    invoke-virtual {v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1328
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1331
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1333
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1336
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1302
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevHeightWithoutPartialChild":I
    .end local v7    # "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1344
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1345
    move v6, v9

    .line 1315
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1351
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    .line 1153
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onDetachedFromWindow()V

    .line 1154
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3784
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onFinishInflate()V

    .line 3786
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v0

    .line 3787
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3788
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3789
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->addHeaderView(Landroid/view/View;)V

    .line 3788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3791
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeAllViews()V

    .line 3793
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
    .line 3727
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3729
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3730
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3731
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3732
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3733
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollX()I

    move-result v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3737
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v13

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3738
    const/4 v12, 0x0

    iput v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 3739
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->layoutChildren()V

    .line 3744
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mTempRect:Landroid/graphics/Rect;

    .line 3745
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3746
    .local v9, "minDistance":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v3

    .line 3747
    .local v3, "childCount":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    .line 3749
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3751
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3749
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3755
    :cond_2
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3756
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3757
    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3758
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3760
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3761
    move v9, v6

    .line 3762
    move v5, v8

    .line 3763
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3768
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3769
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectionFromTop(II)V

    .line 3773
    :goto_2
    return-void

    .line 3771
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 3917
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3919
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getCount()I

    move-result v1

    .line 3920
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 3921
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3923
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3925
    if-lez v1, :cond_0

    .line 3926
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3928
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3956
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3958
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 3959
    .local v7, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v0, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    move v4, v1

    .line 3960
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->isItemChecked(I)Z

    move-result v5

    .local v5, "isSelected":Z
    move v0, p2

    move v3, v1

    .line 3961
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 3963
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 3964
    return-void

    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v4, v2

    .line 3959
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2297
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2302
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2307
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->commonKey(IILandroid/view/KeyEvent;)Z

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

    .line 1177
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onMeasure(II)V

    .line 1179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1180
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1181
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1182
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1184
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1185
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1186
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1188
    .local v8, "childState":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    .line 1189
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1193
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 1196
    invoke-direct {p0, v6, v2, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1198
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1199
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1200
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1202
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    .line 1203
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 1202
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1209
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    .line 1211
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1216
    :goto_1
    if-nez v10, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 1218
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1221
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1223
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1226
    :cond_3
    invoke-virtual {p0, v12, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setMeasuredDimension(II)V

    .line 1228
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mWidthMeasureSpec:I

    .line 1229
    return-void

    .line 1188
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1213
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1159
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1160
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1161
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1162
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1163
    .local v0, "childBottom":I
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPaddingTop()I

    move-result v6

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1164
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1165
    .local v4, "top":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1166
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;Lcom/samsung/android/support/sesl/component/widget/SeslListView$1;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    .line 1168
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFocusSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;->setupForSetSelection(II)Lcom/samsung/android/support/sesl/component/widget/SeslListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->post(Ljava/lang/Runnable;)Z

    .line 1171
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onSizeChanged(IIII)V

    .line 1172
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2475
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2476
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2477
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2485
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_3

    .line 2486
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2487
    .local v2, "position":I
    if-ltz v2, :cond_3

    .line 2488
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 2489
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSpecificTop:I

    .line 2491
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_0

    .line 2492
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 2495
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2496
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 2499
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectionInt(I)V

    .line 2500
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invokeOnItemScrollListener()V

    .line 2501
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2502
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    :cond_2
    move v3, v4

    .line 2509
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_3
    return v3

    .line 2478
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_3

    .line 2479
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2480
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 3933
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3950
    :goto_0
    return v2

    .line 3937
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3950
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3939
    :pswitch_0
    const-string v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3940
    .local v1, "row":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3941
    .local v0, "position":I
    if-ltz v1, :cond_1

    .line 3944
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 3937
    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1264
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 439
    :cond_0
    const/4 v0, 0x1

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 444
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
    .line 339
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 345
    :cond_0
    const/4 v0, 0x1

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 350
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
    .line 584
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 587
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getHeight()I

    move-result v6

    .line 591
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v8

    .line 592
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 593
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 595
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 597
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 598
    :cond_0
    add-int/2addr v8, v5

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildCount()I

    move-result v2

    .line 603
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 605
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 607
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    iget v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 609
    :cond_2
    sub-int/2addr v7, v5

    .line 613
    :cond_3
    const/4 v11, 0x0

    .line 615
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 622
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 629
    :goto_0
    sub-int v4, v1, v7

    .line 630
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 650
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 651
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 652
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->scrollListItemsBy(I)V

    .line 653
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->positionSelector(ILandroid/view/View;)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedTop:I

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 657
    :cond_5
    return v10

    .line 625
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 631
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 638
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 645
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 646
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 647
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 641
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 650
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 539
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetList()V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    .line 542
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->resetList()V

    .line 481
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clear()V

    .line 483
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 484
    :cond_1
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 489
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOldSelectedPosition:I

    .line 490
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOldSelectedRowId:J

    .line 493
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 496
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    .line 497
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOldItemCount:I

    .line 498
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->checkFocus()V

    .line 501
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    .line 502
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 504
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 507
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 508
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 512
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectedPositionInt(I)V

    .line 513
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setNextSelectedPositionInt(I)V

    .line 515
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->checkSelectionChanged()V

    .line 526
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->requestLayout()V

    .line 527
    return-void

    .line 486
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 510
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 520
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAreAllItemsSelectable:Z

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->checkFocus()V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3350
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3351
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mIsCacheColorOpaque:Z

    .line 3352
    if-eqz v0, :cond_1

    .line 3353
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3354
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3356
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3358
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setCacheColorHint(I)V

    .line 3359
    return-void

    .line 3350
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 3610
    if-eqz p1, :cond_2

    .line 3611
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 3615
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3616
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerIsOpaque:Z

    .line 3617
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->requestLayout()V

    .line 3618
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 3619
    return-void

    .line 3613
    :cond_2
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3635
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 3636
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->requestLayout()V

    .line 3637
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 3638
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3673
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterDividersEnabled:Z

    .line 3674
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 3675
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3650
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderDividersEnabled:Z

    .line 3651
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 3652
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3314
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mItemsCanFocus:Z

    .line 3315
    if-nez p1, :cond_0

    .line 3316
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setDescendantFocusability(I)V

    .line 3318
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3714
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3715
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 3716
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3693
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3694
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    .line 3695
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->invalidate()V

    .line 3697
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelectionFromTop(II)V

    .line 2136
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2264
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2265
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2266
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNextSelectedPosition:I

    .line 2277
    :goto_0
    return-void

    .line 2270
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2271
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setSelection(I)V

    goto :goto_0

    .line 2273
    :cond_1
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mNextSelectedPosition:I

    .line 2274
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mLayoutMode:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2145
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->setNextSelectedPositionInt(I)V

    .line 2146
    const/4 v0, 0x0

    .line 2148
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mSelectedPosition:I

    .line 2150
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2151
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2152
    const/4 v0, 0x1

    .line 2158
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2159
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 2162
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->layoutChildren()V

    .line 2164
    if-eqz v0, :cond_2

    .line 2165
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->awakenScrollBars()Z

    .line 2167
    :cond_2
    return-void

    .line 2153
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method trackMotionScroll(II)Z
    .locals 2
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 1924
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 1925
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1926
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1927
    return v0
.end method
