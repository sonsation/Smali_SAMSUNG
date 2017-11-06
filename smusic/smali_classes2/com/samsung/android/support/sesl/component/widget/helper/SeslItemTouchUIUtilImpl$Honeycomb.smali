.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Honeycomb;
.super Ljava/lang/Object;
.source "SeslItemTouchUIUtilImpl.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Honeycomb"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 84
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 104
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    return-void
.end method

.method public onSelected(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "actionState"    # I

    .prologue
    .line 93
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 94
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;-><init>(Landroid/view/View;)V

    .line 95
    .local v0, "mScaleUpAndDownAnimation":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;->start()V

    .line 98
    .end local v0    # "mScaleUpAndDownAnimation":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$ItemSelectHighlightingAnimation;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Honeycomb;->onSelected(Landroid/view/View;)V

    .line 99
    return-void
.end method
