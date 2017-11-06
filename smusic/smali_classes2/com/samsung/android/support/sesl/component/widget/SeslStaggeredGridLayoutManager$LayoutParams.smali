.class public Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
.source "SeslStaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2361
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(II)V

    .line 2362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2357
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2358
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2369
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2370
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2366
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 2373
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V

    .line 2374
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    .line 2406
    const/4 v0, -0x1

    .line 2408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    goto :goto_0
.end method

.method public isFullSpan()Z
    .locals 1

    .prologue
    .line 2395
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0
    .param p1, "fullSpan"    # Z

    .prologue
    .line 2385
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2386
    return-void
.end method
