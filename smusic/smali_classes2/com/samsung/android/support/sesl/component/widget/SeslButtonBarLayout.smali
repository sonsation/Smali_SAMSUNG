.class public Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SeslButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mLastWidthSize:I

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x140

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 51
    .local v0, "allowStackingDefault":Z
    :goto_0
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 52
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslButtonBarLayout_seslAllowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mAllowStacking:Z

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void

    .line 49
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 3
    .param p1, "stacked"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->setOrientation(I)V

    .line 111
    if-eqz p1, :cond_1

    const/4 v2, 0x5

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->setGravity(I)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->getChildCount()I

    move-result v0

    .line 119
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 120
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 119
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 110
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :cond_1
    const/16 v2, 0x50

    goto :goto_1

    .line 122
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 70
    .local v5, "widthSize":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mAllowStacking:Z

    if-eqz v7, :cond_1

    .line 71
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mLastWidthSize:I

    if-le v5, v7, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->setStacked(Z)V

    .line 75
    :cond_0
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mLastWidthSize:I

    .line 77
    :cond_1
    const/4 v3, 0x0

    .line 82
    .local v3, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->isStacked()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_5

    .line 83
    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 85
    .local v0, "initialWidthMeasureSpec":I
    const/4 v3, 0x1

    .line 89
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mAllowStacking:Z

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->isStacked()Z

    move-result v7

    if-nez v7, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v1

    .line 95
    .local v1, "measuredWidth":I
    const/high16 v7, -0x1000000

    and-int v2, v1, v7

    .line 96
    .local v2, "measuredWidthState":I
    const/high16 v7, 0x1000000

    if-ne v2, v7, :cond_2

    move v4, v6

    .line 98
    .local v4, "stack":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 99
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->setStacked(Z)V

    .line 101
    const/4 v3, 0x1

    .line 104
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredWidthState":I
    .end local v4    # "stack":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 107
    :cond_4
    return-void

    .line 87
    .end local v0    # "initialWidthMeasureSpec":I
    :cond_5
    move v0, p1

    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mAllowStacking:Z

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->setStacked(Z)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslButtonBarLayout;->requestLayout()V

    .line 65
    :cond_1
    return-void
.end method
