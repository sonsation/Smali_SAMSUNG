.class public Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;
.super Landroid/widget/FrameLayout;
.source "IndexContainer.java"


# instance fields
.field private mHeightMeasureSpec:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    .line 13
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    .line 13
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    .line 13
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    .line 13
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    .line 29
    return-void
.end method


# virtual methods
.method public forceMeasure()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 46
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    if-eq v1, v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->getMeasureAllChildren()Z

    move-result v0

    .line 48
    .local v0, "previousMeasureAllChildren":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->setMeasureAllChildren(Z)V

    .line 49
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->measure(II)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->setMeasureAllChildren(Z)V

    .line 52
    .end local v0    # "previousMeasureAllChildren":Z
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mWidthMeasureSpec:I

    .line 34
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->mHeightMeasureSpec:I

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 36
    return-void
.end method
