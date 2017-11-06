.class Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;
.super Ljava/lang/Object;
.source "ParallaxHeaderScrollBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollToTopRunnable"
.end annotation


# instance fields
.field private final mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field private final mScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V
    .locals 0
    .param p2, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layout"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .param p4, "scrollable"    # Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 313
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 314
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 319
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->getScrolledPosition()I

    move-result v1

    .line 321
    .local v1, "position":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-static {v3, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mScrollable:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->getScrollVelocityY()I

    move-result v2

    .line 327
    .local v2, "velocityY":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 328
    .local v0, "minVelocity":I
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScrollToTopRunnable.run. scroll done or position over 15. pos - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", velocity - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", min velocity - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    neg-int v3, v0

    if-lt v2, v3, :cond_1

    .line 330
    neg-int v2, v0

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    const/4 v6, 0x0

    int-to-float v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->dispatchFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;F)V

    goto :goto_0
.end method
