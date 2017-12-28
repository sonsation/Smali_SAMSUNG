.class public Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "InsettableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/InsettableFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field ignoreInsets:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 93
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->InsettableFrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 106
    return-void
.end method
