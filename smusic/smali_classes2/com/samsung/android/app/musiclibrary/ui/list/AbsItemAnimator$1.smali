.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;
.super Ljava/lang/Object;
.source "AbsItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    .line 111
    .local v6, "moveInfo":Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->fromX:I

    iget v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->fromY:I

    iget v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->toX:I

    iget v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->animateMoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 114
    .end local v6    # "moveInfo":Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method
