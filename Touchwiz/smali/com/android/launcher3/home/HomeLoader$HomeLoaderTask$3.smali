.class Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->finishBind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->access$5100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 497
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->finishBindingItems()V

    .line 499
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$5202(Z)Z

    .line 501
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$5300(Lcom/android/launcher3/home/HomeLoader;)V

    .line 503
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$3;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeLoader;->access$5402(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .line 505
    :cond_0
    return-void
.end method
