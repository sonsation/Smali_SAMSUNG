.class Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;Z)Z

    .line 250
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
