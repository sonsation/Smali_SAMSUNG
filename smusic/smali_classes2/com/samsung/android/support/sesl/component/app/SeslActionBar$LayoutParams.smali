.class public Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SeslActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 838
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(III)V

    .line 839
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 828
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 829
    const v0, 0x800013

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 830
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 833
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 834
    iput p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 835
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 820
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 817
    iput v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 822
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 823
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBarLayout_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 824
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 825
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 848
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 849
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 844
    iget v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;->gravity:I

    .line 845
    return-void
.end method
