.class Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p2, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>.FlingRunnable;"
    .local p3, "layout":Landroid/view/View;, "TV;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 307
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 308
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;, "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<TV;>.FlingRunnable;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method
