.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslRecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;Z)Z

    .line 272
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
