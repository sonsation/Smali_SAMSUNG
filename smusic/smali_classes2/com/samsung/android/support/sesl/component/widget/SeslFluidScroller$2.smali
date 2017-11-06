.class Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslFluidScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;Z)Z

    .line 264
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
