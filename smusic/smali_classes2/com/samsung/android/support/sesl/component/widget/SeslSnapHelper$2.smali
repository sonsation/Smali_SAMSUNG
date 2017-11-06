.class Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
.source "SeslSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->createSnapScroller(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 228
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "action"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    .prologue
    .line 216
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->calculateDistanceToFinalSnap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    .line 218
    .local v2, "snapDistances":[I
    const/4 v4, 0x0

    aget v0, v2, v4

    .line 219
    .local v0, "dx":I
    const/4 v4, 0x1

    aget v1, v2, v4

    .line 220
    .local v1, "dy":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 221
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 222
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 224
    :cond_0
    return-void
.end method
