.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 10961
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10962
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10985
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 10987
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10931
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10922
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 10923
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10952
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10943
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 10944
    return-void
.end method
