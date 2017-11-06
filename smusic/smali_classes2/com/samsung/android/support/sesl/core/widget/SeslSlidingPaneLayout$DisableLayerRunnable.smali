.class Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;
.super Ljava/lang/Object;
.source "SeslSlidingPaneLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableLayerRunnable"
.end annotation


# instance fields
.field final mChildView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p2, "childView"    # Landroid/view/View;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    .line 1544
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1553
    return-void
.end method
