.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 823
    return-void
.end method
