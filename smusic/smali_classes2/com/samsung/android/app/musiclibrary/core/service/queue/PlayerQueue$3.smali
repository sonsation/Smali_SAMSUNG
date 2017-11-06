.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;
.super Ljava/lang/Object;
.source "PlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->buildUpQueue(Landroid/net/Uri;[JZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

.field final synthetic val$queueChangedReason:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->val$queueChangedReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;)V
    .locals 2
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)[J

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[J[J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Ljava/util/List;)Ljava/util/List;

    .line 966
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$3;->val$queueChangedReason:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    const-string v0, "SV-List"

    const-string v1, "Queue was composed but it is not same list!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
