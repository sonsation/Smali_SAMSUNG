.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 158
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->animateAddImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 160
    .end local v0    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method
