.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

.field final synthetic val$doExpand:Z

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->val$doExpand:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    .line 192
    .local v7, "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v2, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->fromX:I

    iget v3, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->fromY:I

    iget v4, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->toX:I

    iget v5, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->toY:I

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->val$doExpand:Z

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateMoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIIIZ)V

    goto :goto_0

    .line 195
    .end local v7    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method
