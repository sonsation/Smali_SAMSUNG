.class Lcom/samsung/android/support/sesl/component/widget/SeslGridView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.source "SeslGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslGridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 109
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    .line 111
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    .line 112
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    .line 117
    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 118
    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 120
    const v6, 0x800003

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mGravity:I

    .line 122
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mTempRect:Landroid/graphics/Rect;

    .line 139
    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView_android_horizontalSpacing:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 144
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setHorizontalSpacing(I)V

    .line 146
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView_android_verticalSpacing:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 148
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setVerticalSpacing(I)V

    .line 150
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView_android_stretchMode:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 151
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 152
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setStretchMode(I)V

    .line 155
    :cond_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView_android_columnWidth:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 156
    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    .line 157
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setColumnWidth(I)V

    .line 160
    :cond_1
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView_android_numColumns:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 161
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setNumColumns(I)V

    .line 163
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslGridView_android_gravity:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 164
    if-ltz v3, :cond_2

    .line 165
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setGravity(I)V

    .line 168
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 798
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 806
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 807
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 810
    .local v0, "offset":I
    neg-int v3, v0

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 812
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 833
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 834
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 837
    .local v0, "offset":I
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 839
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v1

    .line 2255
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 2259
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2262
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2263
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2264
    .local v2, "delta":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2267
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2269
    :cond_0
    if-gez v2, :cond_1

    .line 2271
    const/4 v2, 0x0

    .line 2290
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2291
    neg-int v3, v2

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 2294
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 2275
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2276
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2278
    .restart local v2    # "delta":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2281
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2284
    :cond_4
    if-lez v2, :cond_1

    .line 2286
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1632
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1771
    :goto_0
    return v2

    .line 1636
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1637
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->layoutChildren()V

    .line 1640
    :cond_1
    const/4 v1, 0x0

    .line 1641
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1642
    .local v0, "action":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1643
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v3, :cond_2

    .line 1644
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1645
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1646
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->keyPressed()V

    .line 1647
    const/4 v1, 0x1

    .line 1651
    :cond_2
    if-eq v0, v3, :cond_3

    .line 1652
    sparse-switch p1, :sswitch_data_0

    .line 1755
    :cond_3
    :goto_1
    if-eqz v1, :cond_2a

    move v2, v3

    .line 1756
    goto :goto_0

    .line 1654
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1655
    :cond_4
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCurrentFocusPosition:I

    .line 1656
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 1661
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1662
    :cond_7
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCurrentFocusPosition:I

    .line 1663
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_3

    .line 1668
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1669
    :cond_a
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCurrentFocusPosition:I

    .line 1670
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_c
    move v1, v2

    goto :goto_4

    .line 1671
    :cond_d
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1672
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_f
    move v1, v2

    goto :goto_5

    .line 1677
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1678
    :cond_10
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCurrentFocusPosition:I

    .line 1679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    move v1, v3

    :goto_6
    goto/16 :goto_1

    :cond_12
    move v1, v2

    goto :goto_6

    .line 1680
    :cond_13
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1681
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_7

    .line 1687
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1688
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1689
    if-nez v1, :cond_3

    .line 1690
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1691
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->keyPressed()V

    .line 1692
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1698
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1699
    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1700
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_8

    .line 1701
    :cond_19
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1702
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_9

    .line 1708
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_a

    .line 1710
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1711
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_b

    .line 1716
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1717
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_c

    .line 1718
    :cond_23
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1719
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_25
    move v1, v2

    goto :goto_d

    .line 1724
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1725
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_27
    move v1, v2

    goto :goto_e

    .line 1730
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1731
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_29
    move v1, v2

    goto :goto_f

    .line 1759
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v2, v3

    .line 1760
    goto/16 :goto_0

    .line 1763
    :cond_2b
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1765
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1767
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1769
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1652
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

    .line 1763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 610
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 611
    .local v6, "lastPosition":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 613
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 616
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 618
    .local v4, "lastBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 622
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 624
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 625
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 629
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 630
    :cond_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 632
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 636
    :cond_1
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 637
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 640
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    .line 641
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    .line 640
    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    .line 643
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 647
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 650
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 652
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 655
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 658
    .local v2, "firstTop":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 661
    .local v6, "start":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 665
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 666
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 667
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 668
    .local v3, "lastBottom":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 672
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 673
    :cond_0
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 675
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 679
    :cond_1
    neg-int v8, v7

    invoke-static {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 680
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 683
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    .line 684
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    .line 683
    invoke-direct {p0, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 686
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 690
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 939
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedHorizontalSpacing:I

    .line 940
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    .line 941
    .local v4, "stretchMode":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedColumnWidth:I

    .line 942
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 944
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 945
    if-lez v1, :cond_2

    .line 947
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 958
    :goto_0
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 959
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 962
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 970
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 973
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    .line 974
    const/4 v0, 0x1

    .line 977
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1009
    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    .line 951
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    goto :goto_0

    .line 955
    :cond_3
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    goto :goto_0

    .line 965
    :pswitch_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    .line 966
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 980
    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    .line 981
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 986
    :pswitch_2
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    .line 987
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 988
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 991
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 997
    :pswitch_3
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    .line 998
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 999
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1002
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 977
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 294
    .local v1, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTop()I

    move-result v4

    sub-int v0, v3, v4

    .line 295
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getFlagClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 299
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 300
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 301
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 302
    move-object v1, v2

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 309
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 310
    goto :goto_0

    .line 312
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 437
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 438
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 440
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 441
    .local v0, "invertedPosition":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 704
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    .line 705
    .local v9, "selectedPosition":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 706
    .local v4, "numColumns":I
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    .line 709
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 711
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 712
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 723
    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 724
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 727
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 729
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 731
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 732
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 733
    invoke-direct {p0, v5, v10, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 735
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 736
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    .line 737
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 738
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 746
    :goto_2
    return-object v8

    .line 714
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 716
    .local v3, "invertedSelection":I
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 717
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    .line 727
    goto :goto_1

    .line 740
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 741
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 742
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    .line 427
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 428
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 429
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 432
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 433
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 448
    .local v10, "selectedPosition":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 449
    .local v4, "numColumns":I
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    .line 452
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 454
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 455
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 463
    .local v8, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 464
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 466
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 467
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 469
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 471
    .local v6, "referenceView":Landroid/view/View;
    if-nez v6, :cond_2

    .line 491
    :goto_2
    return-object v9

    .line 457
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 459
    .local v3, "invertedSelection":I
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 460
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    .line 466
    goto :goto_1

    .line 475
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    iget-boolean v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v13, :cond_3

    .line 476
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 477
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->pinToBottom(I)V

    .line 478
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    .line 479
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 481
    :cond_3
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 483
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 484
    .local v5, "offset":I
    invoke-static {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 485
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    .line 486
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->pinToTop(I)V

    .line 487
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 549
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 552
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 554
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 555
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 563
    .local v5, "motionRowStart":I
    :goto_0
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 566
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 568
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 570
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 571
    const/4 v8, 0x0

    .line 604
    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 557
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 559
    .local v3, "invertedSelection":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 560
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    :cond_2
    move v10, v5

    .line 563
    goto :goto_1

    .line 574
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    .line 579
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 580
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 582
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v2

    .line 585
    .local v2, "childCount":I
    if-lez v2, :cond_4

    .line 586
    invoke-direct {p0, v6, v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->correctTooHigh(III)V

    .line 599
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 601
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 602
    goto :goto_2

    .line 589
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 590
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 591
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 593
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v2

    .line 594
    .restart local v2    # "childCount":I
    if-lez v2, :cond_4

    .line 595
    invoke-direct {p0, v6, v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 604
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 393
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getFlagClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 397
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 399
    invoke-direct {p0, p1, p2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 400
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 401
    move-object v1, v2

    .line 404
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 406
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 408
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 409
    goto :goto_0

    .line 411
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 412
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 415
    :cond_3
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 761
    move v0, p1

    .line 762
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 763
    sub-int/2addr v0, p2

    .line 765
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 778
    move v0, p1

    .line 779
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 780
    add-int/2addr v0, p2

    .line 782
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2001
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v0

    .line 2002
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2007
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 2008
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2009
    .local v3, "rowStart":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2015
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2036
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2011
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2012
    .restart local v2    # "rowEnd":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    .line 2019
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 2034
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 2019
    goto :goto_1

    .line 2022
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 2025
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 2028
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 2031
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 2034
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 2015
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1421
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1424
    .local v1, "activeView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1427
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1439
    .end local v1    # "activeView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1437
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v9, v0, v2

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v1, v3

    .line 1439
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 19
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    .line 317
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    .line 319
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isLayoutRtl()Z

    move-result v14

    .line 324
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_5

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    move v1, v12

    :goto_0
    sub-int v5, v3, v1

    .line 332
    .local v5, "nextLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v1, :cond_7

    .line 333
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 344
    .local v15, "last":I
    :cond_0
    :goto_2
    const/16 v18, 0x0

    .line 346
    .local v18, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->shouldShowSelector()Z

    move-result v11

    .line 347
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->touchModeDrawsInPressedState()Z

    move-result v13

    .line 348
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 350
    .local v17, "selectedPosition":I
    const/4 v8, 0x0

    .line 351
    .local v8, "child":Landroid/view/View;
    if-eqz v14, :cond_9

    const/16 v16, -0x1

    .line 352
    .local v16, "nextChildDir":I
    :goto_3
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_4
    if-ge v2, v15, :cond_c

    .line 354
    move/from16 v0, v17

    if-ne v2, v0, :cond_a

    const/4 v6, 0x1

    .line 357
    .local v6, "selected":Z
    :goto_5
    if-eqz p3, :cond_b

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_6
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 358
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 360
    mul-int v1, v16, v9

    add-int/2addr v5, v1

    .line 361
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_1

    .line 362
    mul-int v1, v16, v12

    add-int/2addr v5, v1

    .line 365
    :cond_1
    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    if-eqz v13, :cond_3

    .line 366
    :cond_2
    move-object/from16 v18, v8

    .line 352
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 325
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "nextChildDir":I
    .end local v17    # "selectedPosition":I
    .end local v18    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 328
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v12

    :goto_7
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_1

    .end local v5    # "nextLeft":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 335
    .restart local v5    # "nextLeft":I
    :cond_7
    add-int/lit8 v15, p1, 0x1

    .line 336
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 338
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    if-ge v1, v3, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 340
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_8

    const/4 v1, -0x1

    :goto_8
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_8

    .line 351
    .end local v10    # "deltaLeft":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v17    # "selectedPosition":I
    .restart local v18    # "selectedView":Landroid/view/View;
    :cond_9
    const/16 v16, 0x1

    goto :goto_3

    .line 354
    .restart local v2    # "pos":I
    .restart local v16    # "nextChildDir":I
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 357
    .restart local v6    # "selected":Z
    :cond_b
    sub-int v7, v2, p1

    goto :goto_6

    .line 370
    .end local v6    # "selected":Z
    :cond_c
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 372
    if-eqz v18, :cond_d

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 376
    :cond_d
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 856
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 857
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 858
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 862
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 864
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 865
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 867
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 879
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .line 881
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 882
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 886
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 891
    if-lez v12, :cond_3

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 899
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 900
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 902
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 925
    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 926
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 928
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 935
    :goto_4
    return-object v15

    .line 869
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 871
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 872
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 874
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 876
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 896
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    .line 897
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v19, v14

    .line 899
    goto/16 :goto_2

    .line 903
    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 910
    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 911
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .line 913
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 907
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    .line 908
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10    # "oldTop":I
    :cond_5
    move/from16 v19, v14

    .line 910
    goto :goto_6

    .line 918
    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 921
    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 922
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .line 918
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    .line 919
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10    # "oldTop":I
    :cond_8
    move/from16 v19, v14

    .line 921
    goto :goto_8

    .line 930
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    .line 932
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v1

    .line 506
    .local v1, "count":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 507
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 508
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 509
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 510
    invoke-static {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 513
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .param p1, "childrenTop"    # I

    .prologue
    .line 495
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 496
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 497
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 498
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 499
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 502
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1460
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1461
    .local v14, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1462
    .local v20, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mTouchMode:I

    move/from16 v16, v0

    .line 1463
    .local v16, "mode":I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1465
    .local v13, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1467
    .local v19, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1471
    .local v17, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1472
    .local v18, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    check-cast v18, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1475
    .restart local v18    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 1478
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1479
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    :goto_5
    if-eqz v20, :cond_2

    .line 1489
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1490
    if-eqz v14, :cond_2

    .line 1491
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestFocus()Z

    .line 1495
    :cond_2
    if-eqz v19, :cond_3

    .line 1496
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1499
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1500
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1501
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1508
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1509
    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1510
    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->height:I

    move/from16 v24, v0

    .line 1509
    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1512
    .local v7, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    .line 1513
    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    .line 1512
    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1514
    .local v11, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1519
    .end local v7    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1520
    .local v21, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1523
    .local v12, "h":I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1525
    .local v10, "childTop":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getLayoutDirection()I

    move-result v15

    .line 1526
    .local v15, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1527
    .local v5, "absoluteGravity":I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1538
    :pswitch_0
    move/from16 v8, p5

    .line 1542
    .local v8, "childLeft":I
    :goto_9
    if-eqz v17, :cond_10

    .line 1543
    add-int v9, v8, v21

    .line 1544
    .local v9, "childRight":I
    add-int v6, v10, v12

    .line 1545
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1551
    .end local v6    # "childBottom":I
    .end local v9    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1552
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1555
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1557
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1559
    :cond_6
    return-void

    .line 1460
    .end local v5    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "h":I
    .end local v13    # "isPressed":Z
    .end local v14    # "isSelected":Z
    .end local v15    # "layoutDirection":I
    .end local v16    # "mode":I
    .end local v17    # "needToMeasure":Z
    .end local v18    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v19    # "updateChildPressed":Z
    .end local v20    # "updateChildSelected":Z
    .end local v21    # "w":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1461
    .restart local v14    # "isSelected":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1463
    .restart local v16    # "mode":I
    .restart local v20    # "updateChildSelected":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1465
    .restart local v13    # "isPressed":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1467
    .restart local v19    # "updateChildPressed":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1481
    .restart local v17    # "needToMeasure":Z
    .restart local v18    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->forceAdd:Z

    .line 1482
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1502
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1516
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1523
    .restart local v12    # "h":I
    .restart local v21    # "w":I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1529
    .restart local v5    # "absoluteGravity":I
    .restart local v10    # "childTop":I
    .restart local v15    # "layoutDirection":I
    :pswitch_1
    move/from16 v8, p5

    .line 1530
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1532
    .end local v8    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1533
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1535
    .end local v8    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1536
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1547
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1548
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v9, 0x6

    .line 1837
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    .line 1838
    .local v5, "selectedPosition":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 1843
    .local v4, "numColumns":I
    const/4 v3, 0x0

    .line 1845
    .local v3, "moved":Z
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 1846
    div-int v7, v5, v4

    mul-int v6, v7, v4

    .line 1847
    .local v6, "startOfRowPos":I
    add-int v7, v6, v4

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1854
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1871
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isLayoutRtl()Z

    move-result v2

    .line 1872
    .local v2, "isLayoutRtl":Z
    if-le v5, v6, :cond_7

    if-ne p1, v11, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-ne p1, v12, :cond_7

    if-eqz v2, :cond_7

    .line 1874
    :cond_2
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1875
    add-int/lit8 v7, v5, -0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1876
    const/4 v3, 0x1

    .line 1884
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 1885
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->playSoundEffect(I)V

    .line 1886
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V

    .line 1889
    :cond_4
    if-eqz v3, :cond_5

    .line 1890
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->awakenScrollBars()Z

    .line 1893
    :cond_5
    return v3

    .line 1849
    .end local v0    # "endOfRowPos":I
    .end local v2    # "isLayoutRtl":Z
    .end local v6    # "startOfRowPos":I
    :cond_6
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v5

    .line 1850
    .local v1, "invertedSelection":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    div-int v8, v1, v4

    mul-int/2addr v8, v4

    sub-int v0, v7, v8

    .line 1851
    .restart local v0    # "endOfRowPos":I
    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "startOfRowPos":I
    goto :goto_0

    .line 1856
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v6, :cond_0

    .line 1857
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1858
    sub-int v7, v5, v4

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1859
    const/4 v3, 0x1

    goto :goto_1

    .line 1863
    :sswitch_1
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_0

    .line 1864
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1865
    add-int v7, v5, v4

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1866
    const/4 v3, 0x1

    goto :goto_1

    .line 1877
    .restart local v2    # "isLayoutRtl":Z
    :cond_7
    if-ge v5, v0, :cond_3

    if-ne p1, v11, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-ne p1, v12, :cond_3

    if-nez v2, :cond_3

    .line 1879
    :cond_9
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1880
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1881
    const/4 v3, 0x1

    goto :goto_2

    .line 1854
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1105
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1108
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1110
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1113
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1114
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1115
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1116
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1118
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1119
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1120
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1127
    :goto_0
    return-void

    .line 1122
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1124
    .local v1, "invertedIndex":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1125
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2298
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v1

    .line 2299
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 2300
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 2301
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2303
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2305
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2306
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2307
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    add-int v3, v8, v9

    .line 2308
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2309
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2312
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2313
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2314
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    add-int v3, v8, v9

    .line 2315
    if-lez v3, :cond_1

    .line 2316
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2321
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2326
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 2327
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2328
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2329
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    add-int v0, v8, v9

    .line 2330
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 2331
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 2332
    .local v1, "numColumns":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2336
    .local v3, "rowCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int v8, v3, v1

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2338
    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2339
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    .line 2340
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 2339
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2343
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_0
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v2, v7

    .line 2336
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2349
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 2350
    .local v0, "numColumns":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2351
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2352
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2354
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2356
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 8
    .param p1, "down"    # Z

    .prologue
    .line 244
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 245
    .local v1, "numColumns":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    .line 247
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v0

    .line 249
    .local v0, "count":I
    if-eqz p1, :cond_3

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getFlagClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getListPaddingTop()I

    move-result v3

    .line 254
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    .line 255
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 256
    .local v5, "startOffset":I
    :goto_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 257
    .local v4, "position":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 258
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 260
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillDown(II)Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->correctTooHigh(III)V

    .line 278
    .end local v3    # "paddingTop":I
    :goto_1
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_2
    move v5, v3

    .line 255
    goto :goto_0

    .line 263
    .end local v3    # "paddingTop":I
    :cond_3
    const/4 v2, 0x0

    .line 264
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getFlagClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getListPaddingBottom()I

    move-result v2

    .line 267
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    .line 268
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 269
    .restart local v5    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 270
    .restart local v4    # "position":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 271
    sub-int/2addr v4, v1

    .line 275
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->correctTooLow(III)V

    goto :goto_1

    .line 268
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 273
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v0

    .line 518
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 520
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 521
    .local v2, "numColumns":I
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 522
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 523
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 524
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 535
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .line 522
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 528
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 529
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 530
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 528
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 535
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1808
    const/4 v0, 0x0

    .line 1809
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1810
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1811
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1812
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V

    .line 1813
    const/4 v0, 0x1

    .line 1821
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1822
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->awakenScrollBars()Z

    .line 1825
    :cond_1
    return v0

    .line 1814
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1815
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1816
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1817
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V

    .line 1818
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2361
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 2201
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2065
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2100
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2245
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    .line 2218
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2120
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2171
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 2151
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 38

    .prologue
    .line 1131
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mBlockLayoutRequests:Z

    .line 1132
    .local v7, "blockLayoutRequests":Z
    if-nez v7, :cond_0

    .line 1133
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mBlockLayoutRequests:Z

    .line 1137
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invalidate()V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    if-nez v35, :cond_2

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resetList()V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    if-nez v7, :cond_1

    .line 1399
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mBlockLayoutRequests:Z

    .line 1402
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 1148
    .local v11, "childrenTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getBottom()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getTop()I

    move-result v36

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v10, v35, v36

    .line 1150
    .local v10, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v9

    .line 1152
    .local v9, "childCount":I
    const/4 v13, 0x0

    .line 1155
    .local v13, "delta":I
    const/16 v25, 0x0

    .line 1156
    .local v25, "oldSel":Landroid/view/View;
    const/16 v24, 0x0

    .line 1157
    .local v24, "oldFirst":Landroid/view/View;
    const/16 v23, 0x0

    .line 1160
    .local v23, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 1179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v19, v35, v36

    .line 1180
    .local v19, "index":I
    if-ltz v19, :cond_3

    move/from16 v0, v19

    if-ge v0, v9, :cond_3

    .line 1181
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1185
    :cond_3
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1188
    .end local v19    # "index":I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataChanged:Z

    .line 1189
    .local v12, "dataChanged":Z
    if-eqz v12, :cond_5

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->handleDataChanged()V

    .line 1195
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v35, v0

    if-nez v35, :cond_6

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resetList()V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    if-nez v7, :cond_1

    .line 1399
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1162
    .end local v12    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v19, v35, v36

    .line 1163
    .restart local v19    # "index":I
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v9, :cond_4

    .line 1164
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    goto :goto_1

    .line 1173
    .end local v19    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    move/from16 v35, v0

    if-ltz v35, :cond_4

    .line 1174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v36, v0

    sub-int v13, v35, v36

    goto :goto_1

    .line 1201
    .restart local v12    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectedPositionInt(I)V

    .line 1203
    const/4 v4, 0x0

    .line 1204
    .local v4, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    .line 1205
    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v6, -0x1

    .line 1206
    .local v6, "accessibilityFocusPosition":I
    const/16 v21, 0x0

    .line 1211
    .local v21, "mInsideViewAccFocused":Z
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v31

    .line 1212
    .local v31, "viewRootImpl":Ljava/lang/Object;
    if-eqz v31, :cond_a

    .line 1213
    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v16

    .line 1214
    .local v16, "focusHost":Landroid/view/View;
    if-eqz v16, :cond_a

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .line 1216
    .local v15, "focusChild":Landroid/view/View;
    move-object/from16 v0, v16

    if-eq v0, v15, :cond_7

    .line 1217
    const/16 v21, 0x1

    .line 1219
    :cond_7
    if-eqz v15, :cond_a

    .line 1220
    if-eqz v12, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->hasTransientState()Z

    move-result v35

    if-nez v35, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapterHasStableIds:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    .line 1224
    :cond_8
    move-object/from16 v5, v16

    .line 1226
    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->getAccessibilityFocusedVirtualView(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1230
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1237
    .end local v15    # "focusChild":Landroid/view/View;
    .end local v16    # "focusHost":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 1238
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v28, v0

    .line 1240
    .local v28, "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    if-eqz v12, :cond_b

    .line 1241
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 1242
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    add-int v36, v14, v17

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1241
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1245
    .end local v17    # "i":I
    :cond_b
    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1249
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->detachAllViewsFromParent()V

    .line 1250
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_1

    .line 1280
    if-nez v9, :cond_18

    .line 1281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    move/from16 v35, v0

    if-nez v35, :cond_15

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    if-eqz v35, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isInTouchMode()Z

    move-result v35

    if-eqz v35, :cond_14

    :cond_d
    const/16 v35, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectedPositionInt(I)V

    .line 1284
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 1306
    .end local v11    # "childrenTop":I
    .local v30, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1308
    if-eqz v30, :cond_1d

    .line 1309
    const/16 v35, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->positionSelector(ILandroid/view/View;)V

    .line 1310
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedTop:I

    .line 1336
    :cond_e
    :goto_5
    if-eqz v31, :cond_f

    .line 1337
    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v22

    .line 1338
    .local v22, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v22, :cond_23

    .line 1339
    if-eqz v5, :cond_22

    .line 1340
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v35

    if-eqz v35, :cond_22

    .line 1342
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v27

    .line 1343
    .local v27, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_21

    if-eqz v27, :cond_21

    .line 1345
    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v32

    .line 1347
    .local v32, "sourceNodeId":J
    invoke-static/range {v32 .. v33}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->getVirtualDescendantId(J)I

    move-result v34

    .line 1348
    .local v34, "virtualViewId":I
    const/16 v35, 0x40

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1381
    .end local v22    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v32    # "sourceNodeId":J
    .end local v34    # "virtualViewId":I
    :cond_f
    :goto_6
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1382
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataChanged:Z

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_10

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->post(Ljava/lang/Runnable;)Z

    .line 1385
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1387
    :cond_10
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNeedSync:Z

    .line 1388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setNextSelectedPositionInt(I)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->updateScrollIndicators()V

    .line 1392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v35, v0

    if-lez v35, :cond_11

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->checkSelectionChanged()V

    .line 1396
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1398
    if-nez v7, :cond_1

    .line 1399
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1254
    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :pswitch_3
    if-eqz v23, :cond_12

    .line 1255
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v11, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1257
    .end local v30    # "sel":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v30

    .line 1259
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1261
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 1262
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 1263
    .restart local v30    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1398
    .end local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .end local v9    # "childCount":I
    .end local v10    # "childrenBottom":I
    .end local v11    # "childrenTop":I
    .end local v12    # "dataChanged":Z
    .end local v13    # "delta":I
    .end local v14    # "firstPosition":I
    .end local v21    # "mInsideViewAccFocused":Z
    .end local v23    # "newSel":Landroid/view/View;
    .end local v24    # "oldFirst":Landroid/view/View;
    .end local v25    # "oldSel":Landroid/view/View;
    .end local v28    # "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    .end local v30    # "sel":Landroid/view/View;
    .end local v31    # "viewRootImpl":Ljava/lang/Object;
    :catchall_0
    move-exception v35

    if-nez v7, :cond_13

    .line 1399
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mBlockLayoutRequests:Z

    :cond_13
    throw v35

    .line 1266
    .restart local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "childCount":I
    .restart local v10    # "childrenBottom":I
    .restart local v11    # "childrenTop":I
    .restart local v12    # "dataChanged":Z
    .restart local v13    # "delta":I
    .restart local v14    # "firstPosition":I
    .restart local v21    # "mInsideViewAccFocused":Z
    .restart local v23    # "newSel":Landroid/view/View;
    .restart local v24    # "oldFirst":Landroid/view/View;
    .restart local v25    # "oldSel":Landroid/view/View;
    .restart local v28    # "recycleBin":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    .restart local v31    # "viewRootImpl":Ljava/lang/Object;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillUp(II)Landroid/view/View;

    move-result-object v30

    .line 1267
    .restart local v30    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1270
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSpecificTop:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .line 1271
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1273
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSyncPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSpecificTop:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .line 1274
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1277
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v30

    .line 1278
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1282
    .end local v30    # "sel":Landroid/view/View;
    :cond_14
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 1286
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v35, v0

    add-int/lit8 v20, v35, -0x1

    .line 1287
    .local v20, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    if-eqz v35, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isInTouchMode()Z

    move-result v35

    if-eqz v35, :cond_17

    :cond_16
    const/16 v35, -0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectedPositionInt(I)V

    .line 1289
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v30

    .line 1290
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :cond_17
    move/from16 v35, v20

    .line 1287
    goto :goto_7

    .line 1292
    .end local v20    # "last":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    if-ltz v35, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    .line 1293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    if-nez v25, :cond_19

    .end local v11    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1294
    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_19
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_8

    .line 1295
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1c

    .line 1296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v24, :cond_1b

    .end local v11    # "childrenTop":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1297
    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_1b
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_9

    .line 1299
    :cond_1c
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1312
    .end local v11    # "childrenTop":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mTouchMode:I

    move/from16 v35, v0

    if-lez v35, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1e

    const/16 v18, 0x1

    .line 1314
    .local v18, "inTouchMode":Z
    :goto_a
    if-eqz v18, :cond_1f

    .line 1316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1317
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_e

    .line 1318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1312
    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "inTouchMode":Z
    :cond_1e
    const/16 v18, 0x0

    goto :goto_a

    .line 1320
    .restart local v18    # "inTouchMode":Z
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_20

    .line 1324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectorPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1325
    .restart local v8    # "child":Landroid/view/View;
    if-eqz v8, :cond_e

    .line 1326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectorPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1330
    .end local v8    # "child":Landroid/view/View;
    :cond_20
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedTop:I

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1351
    .end local v18    # "inTouchMode":Z
    .restart local v22    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_21
    invoke-static {v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    goto/16 :goto_6

    .line 1353
    .end local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_22
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v6, v0, :cond_f

    .line 1355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v6, v35

    const/16 v36, 0x0

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    .line 1355
    invoke-static/range {v35 .. v37}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v26

    .line 1358
    .local v26, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1359
    .local v29, "restoreView":Landroid/view/View;
    if-eqz v29, :cond_f

    .line 1360
    invoke-static/range {v29 .. v29}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    goto/16 :goto_6

    .line 1363
    .end local v26    # "position":I
    .end local v29    # "restoreView":Landroid/view/View;
    :cond_23
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v6, v0, :cond_f

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v6, v35

    const/16 v36, 0x0

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    .line 1364
    invoke-static/range {v35 .. v37}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result v26

    .line 1367
    .restart local v26    # "position":I
    if-eqz v21, :cond_24

    .line 1368
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1372
    .restart local v29    # "restoreView":Landroid/view/View;
    :goto_b
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v35

    if-eqz v35, :cond_f

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1373
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 1374
    if-eqz v29, :cond_f

    .line 1375
    invoke-static/range {v29 .. v29}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    goto/16 :goto_6

    .line 1370
    .end local v29    # "restoreView":Landroid/view/View;
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v29

    .restart local v29    # "restoreView":Landroid/view/View;
    goto :goto_b

    .line 1160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1252
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 229
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 236
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .line 233
    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 234
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1956
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1958
    const/4 v1, -0x1

    .line 1959
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1960
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getScrollY()I

    move-result v8

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1964
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1965
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1966
    .local v4, "minDistance":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v0

    .line 1967
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1969
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1967
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1973
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1974
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1975
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1976
    invoke-static {p3, v6, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1978
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    .line 1979
    move v4, v2

    .line 1980
    move v1, v3

    goto :goto_1

    .line 1985
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1986
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelection(I)V

    .line 1990
    :goto_2
    return-void

    .line 1988
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 2368
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2370
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getNumColumns()I

    move-result v1

    .line 2371
    .local v1, "columnsCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getCount()I

    move-result v4

    div-int v2, v4, v1

    .line 2372
    .local v2, "rowsCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getSelectionModeForAccessibility()I

    move-result v3

    .line 2373
    .local v3, "selectionMode":I
    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 2375
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2377
    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    .line 2378
    :cond_0
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2380
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2411
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2413
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getCount()I

    move-result v7

    .line 2414
    .local v7, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getNumColumns()I

    move-result v6

    .line 2415
    .local v6, "columnsCount":I
    div-int v11, v7, v6

    .line 2419
    .local v11, "rowsCount":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 2420
    rem-int v2, p2, v6

    .line 2421
    .local v2, "column":I
    div-int v0, p2, v6

    .line 2429
    .local v0, "row":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 2430
    .local v10, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-eqz v10, :cond_1

    iget v1, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_1

    const/4 v4, 0x1

    .line 2431
    .local v4, "isHeading":Z
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isItemChecked(I)Z

    move-result v5

    .line 2432
    .local v5, "isSelected":Z
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v9

    .line 2434
    .local v9, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2435
    return-void

    .line 2423
    .end local v0    # "row":I
    .end local v2    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v9    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v10    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v7, -0x1

    sub-int v8, v1, p2

    .line 2425
    .local v8, "invertedIndex":I
    add-int/lit8 v1, v6, -0x1

    rem-int v3, v8, v6

    sub-int v2, v1, v3

    .line 2426
    .restart local v2    # "column":I
    add-int/lit8 v1, v11, -0x1

    div-int v3, v8, v6

    sub-int v0, v1, v3

    .restart local v0    # "row":I
    goto :goto_0

    .line 2430
    .end local v8    # "invertedIndex":I
    .restart local v10    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1618
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1623
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1015
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onMeasure(II)V

    .line 1017
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1018
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1019
    .local v12, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1020
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1022
    .local v13, "heightSize":I
    if-nez v18, :cond_0

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1024
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1028
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1031
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1032
    .local v8, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->determineColumns(I)Z

    move-result v11

    .line 1034
    .local v11, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .line 1035
    .local v4, "childHeight":I
    const/4 v7, 0x0

    .line 1037
    .local v7, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    .line 1038
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    .line 1039
    .local v10, "count":I
    if-lez v10, :cond_2

    .line 1040
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1042
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1043
    .local v17, "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-nez v17, :cond_1

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .end local v17    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    check-cast v17, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 1045
    .restart local v17    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 1049
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->forceAdd:Z

    .line 1052
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    const/16 v21, 0x0

    .line 1051
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 1053
    .local v6, "childSafeHeghtSpec":I
    const/16 v20, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 1054
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    .line 1055
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    .line 1054
    invoke-static/range {v20 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1056
    .local v9, "childWidthSpec":I
    invoke-virtual {v3, v9, v5}, Landroid/view/View;->measure(II)V

    .line 1058
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1059
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1066
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v6    # "childSafeHeghtSpec":I
    .end local v9    # "childWidthSpec":I
    .end local v17    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_2
    if-nez v12, :cond_3

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v4

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1071
    :cond_3
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1074
    .local v16, "ourSize":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 1075
    .local v15, "numColumns":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_5

    .line 1076
    add-int v16, v16, v4

    .line 1077
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1080
    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_b

    .line 1081
    move/from16 v16, v13

    .line 1085
    :cond_5
    move/from16 v13, v16

    .line 1088
    .end local v14    # "i":I
    .end local v15    # "numColumns":I
    .end local v16    # "ourSize":I
    :cond_6
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1092
    .restart local v16    # "ourSize":I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    if-eqz v11, :cond_8

    .line 1093
    :cond_7
    const/high16 v20, 0x1000000

    or-int v19, v19, v20

    .line 1097
    .end local v16    # "ourSize":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setMeasuredDimension(II)V

    .line 1098
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mWidthMeasureSpec:I

    .line 1099
    return-void

    .line 1026
    .end local v4    # "childHeight":I
    .end local v7    # "childState":I
    .end local v8    # "childWidth":I
    .end local v10    # "count":I
    .end local v11    # "didNotInitiallyFit":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    .line 1037
    .restart local v4    # "childHeight":I
    .restart local v7    # "childState":I
    .restart local v8    # "childWidth":I
    .restart local v11    # "didNotInitiallyFit":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 1075
    .restart local v10    # "count":I
    .restart local v14    # "i":I
    .restart local v15    # "numColumns":I
    .restart local v16    # "ourSize":I
    :cond_b
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1782
    const/4 v0, -0x1

    .line 1784
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1785
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1790
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1791
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1792
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V

    .line 1793
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->awakenScrollBars()Z

    .line 1794
    const/4 v1, 0x1

    .line 1797
    :cond_1
    return v1

    .line 1786
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1787
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 2385
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2405
    :goto_0
    return v3

    .line 2389
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2405
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2393
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getNumColumns()I

    move-result v0

    .line 2394
    .local v0, "numColumns":I
    const-string v4, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2395
    .local v2, "row":I
    mul-int v4, v2, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2396
    .local v1, "position":I
    if-ltz v2, :cond_1

    .line 2399
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 2389
    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method sequenceScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1901
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mSelectedPosition:I

    .line 1902
    .local v5, "selectedPosition":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    .line 1903
    .local v4, "numColumns":I
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    .line 1907
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1908
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1909
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1916
    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    .line 1917
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1918
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    .line 1942
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1943
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->playSoundEffect(I)V

    .line 1944
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->invokeOnItemScrollListener()V

    .line 1947
    :cond_1
    if-eqz v6, :cond_2

    .line 1948
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->awakenScrollBars()Z

    .line 1951
    :cond_2
    return v3

    .line 1911
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1912
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1913
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_0

    .line 1920
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1922
    iput v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1923
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1924
    const/4 v3, 0x1

    .line 1926
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1931
    :pswitch_1
    if-lez v5, :cond_0

    .line 1933
    iput v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1934
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectionInt(I)V

    .line 1935
    const/4 v3, 0x1

    .line 1937
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1918
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->resetList()V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clear()V

    .line 189
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mOldSelectedPosition:I

    .line 192
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mOldSelectedRowId:J

    .line 195
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 198
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mOldItemCount:I

    .line 199
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    .line 200
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataChanged:Z

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->checkFocus()V

    .line 203
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    .line 204
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 209
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 210
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 214
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setSelectedPositionInt(I)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setNextSelectedPositionInt(I)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->checkSelectionChanged()V

    .line 223
    .end local v0    # "position":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayout()V

    .line 224
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0

    .line 218
    .end local v0    # "position":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->checkFocus()V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 2182
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2183
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedColumnWidth:I

    .line 2184
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayoutIfNecessary()V

    .line 2186
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 2051
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2052
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mGravity:I

    .line 2053
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayoutIfNecessary()V

    .line 2055
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2078
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2079
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedHorizontalSpacing:I

    .line 2080
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayoutIfNecessary()V

    .line 2082
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 2229
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2230
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mRequestedNumColumns:I

    .line 2231
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayoutIfNecessary()V

    .line 2233
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setNextSelectedPositionInt(I)V

    .line 1576
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mLayoutMode:I

    .line 1577
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 1580
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayout()V

    .line 1581
    return-void

    .line 1574
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1590
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    .line 1591
    .local v4, "previousSelectedPosition":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    .line 1593
    .local v5, "tmpFirstPosition":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v6, :cond_0

    .line 1594
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 1597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->setNextSelectedPositionInt(I)V

    .line 1598
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->layoutChildren()V

    .line 1600
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    sub-int v0, v6, v7

    .line 1602
    .local v0, "next":I
    :goto_0
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStackFromBottom:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v2, v6, v4

    .line 1605
    .local v2, "previous":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    div-int v1, v0, v6

    .line 1606
    .local v1, "nextRow":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNumColumns:I

    div-int v3, v2, v6

    .line 1608
    .local v3, "previousRow":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mFirstPosition:I

    if-eq v5, v6, :cond_1

    .line 1609
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->showGoToTop()V

    .line 1611
    :cond_1
    if-eq v1, v3, :cond_2

    .line 1612
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->awakenScrollBars()Z

    .line 1614
    :cond_2
    return-void

    .line 1600
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_4
    move v2, v4

    .line 1602
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 2163
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2164
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mStretchMode:I

    .line 2165
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayoutIfNecessary()V

    .line 2167
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2135
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2136
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->mVerticalSpacing:I

    .line 2137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridView;->requestLayoutIfNecessary()V

    .line 2139
    :cond_0
    return-void
.end method
