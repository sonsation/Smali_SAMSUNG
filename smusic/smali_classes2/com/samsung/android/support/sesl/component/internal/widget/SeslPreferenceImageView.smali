.class public Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;
.super Landroid/widget/ImageView;
.source "SeslPreferenceImageView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v3, 0x7fffffff

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v3, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxWidth:I

    .line 37
    iput v3, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxHeight:I

    .line 50
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceImageView_android_maxWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->setMaxWidth(I)V

    .line 56
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceImageView_android_maxHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->setMaxHeight(I)V

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v0, 0x7fffffff

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    iput v0, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxWidth:I

    .line 37
    iput v0, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxHeight:I

    .line 65
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v7, 0x7fffffff

    const/high16 v6, -0x80000000

    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 90
    .local v4, "widthMode":I
    if-eq v4, v6, :cond_0

    if-nez v4, :cond_2

    .line 91
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 92
    .local v5, "widthSize":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->getMaxWidth()I

    move-result v3

    .line 93
    .local v3, "maxWidth":I
    if-eq v3, v7, :cond_2

    if-lt v3, v5, :cond_1

    if-nez v4, :cond_2

    .line 95
    :cond_1
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 99
    .end local v3    # "maxWidth":I
    .end local v5    # "widthSize":I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 100
    .local v0, "heightMode":I
    if-eq v0, v6, :cond_3

    if-nez v0, :cond_5

    .line 101
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 102
    .local v1, "heightSize":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->getMaxHeight()I

    move-result v2

    .line 103
    .local v2, "maxHeight":I
    if-eq v2, v7, :cond_5

    if-lt v2, v1, :cond_4

    if-nez v0, :cond_5

    .line 105
    :cond_4
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 109
    .end local v1    # "heightSize":I
    .end local v2    # "maxHeight":I
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 110
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxHeight:I

    .line 80
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 81
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/android/support/sesl/component/internal/widget/SeslPreferenceImageView;->mMaxWidth:I

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 71
    return-void
.end method
