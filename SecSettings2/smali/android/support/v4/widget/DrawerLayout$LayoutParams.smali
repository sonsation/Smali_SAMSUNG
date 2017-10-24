.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field private isPeeking:Z

.field private onScreen:F

.field private openState:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    return v0
.end method

.method static synthetic -get1(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    return p1
.end method

.method static synthetic -set1(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return p1
.end method

.method static synthetic -set2(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    return p1
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2235
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2221
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 2227
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2221
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2229
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->-get1()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2230
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2226
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2221
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2245
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2243
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2221
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2248
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2253
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2221
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2252
    return-void
.end method
