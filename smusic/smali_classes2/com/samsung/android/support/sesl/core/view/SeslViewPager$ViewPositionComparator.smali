.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .prologue
    .line 3218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 3219
    .local v0, "llp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    .line 3220
    .local v1, "rlp":Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 3221
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3223
    :goto_0
    return v2

    .line 3221
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 3223
    :cond_1
    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->position:I

    iget v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3215
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
