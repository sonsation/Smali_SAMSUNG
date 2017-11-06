.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;
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
    .line 314
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    if-nez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    goto :goto_0
.end method
