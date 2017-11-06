.class public Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SeslLinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1793
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1773
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1794
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->weight:F

    .line 1795
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .prologue
    .line 1808
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1773
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1809
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->weight:F

    .line 1810
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 1779
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1773
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1780
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslLinearLayoutCompat_Layout:[I

    .line 1781
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1783
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslLinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->weight:F

    .line 1784
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslLinearLayoutCompat_Layout_android_layout_gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1786
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1787
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1773
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1817
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1823
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1773
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1824
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;

    .prologue
    .line 1833
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1773
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1835
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->weight:F

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->weight:F

    .line 1836
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;->gravity:I

    .line 1837
    return-void
.end method
