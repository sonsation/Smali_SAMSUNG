.class Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;
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
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final DIRECTION_DOWN:I = 0x2

.field private static final DIRECTION_UNDIFINED:I = -0x1

.field private static final DIRECTION_UP:I = 0x1


# instance fields
.field private mDirection:I

.field private mLastY:I

.field private final mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V
    .locals 1
    .param p2, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layout"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mDirection:I

    .line 349
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 350
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 351
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->access$100(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 360
    const/4 v3, 0x0

    .line 361
    .local v3, "dy":I
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLastY:I

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLastY:I

    sub-int v3, v0, v1

    .line 365
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    if-eqz v3, :cond_3

    .line 366
    if-lez v3, :cond_4

    .line 367
    iput v6, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mDirection:I

    .line 373
    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mDirection:I

    if-ne v0, v6, :cond_5

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_6

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    goto :goto_0

    .line 369
    :cond_4
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mDirection:I

    goto :goto_1

    .line 378
    :cond_5
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mDirection:I

    if-ne v0, v2, :cond_6

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v0

    if-nez v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    goto :goto_0

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->access$200(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 387
    .local v4, "min":I
    const/4 v5, 0x0

    .line 388
    .local v5, "max":I
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 393
    .end local v4    # "min":I
    .end local v5    # "max":I
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->mSecondScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLastY:I

    goto/16 :goto_0

    .line 391
    :cond_7
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlingRunnable.run. but scrolling now. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->access$200(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 395
    .end local v3    # "dy":I
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->mLayout:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    goto/16 :goto_0
.end method
