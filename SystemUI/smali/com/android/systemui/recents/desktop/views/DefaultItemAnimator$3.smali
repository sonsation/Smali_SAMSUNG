.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    .prologue
    .line 178
    .local p2, "val$additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 181
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v2, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-wrap0(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 183
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-get1(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method
