.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

.field final synthetic val$checkedItemIds:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;->val$checkedItemIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityResult() : getActivity() is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;->val$checkedItemIds:[J

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
