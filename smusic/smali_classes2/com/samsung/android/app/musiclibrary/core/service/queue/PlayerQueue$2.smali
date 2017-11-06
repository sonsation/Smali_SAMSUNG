.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;
.super Ljava/lang/Object;
.source "PlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->executeConverter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;)V
    .locals 4
    .param p1, "list"    # [J
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
    .local p2, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[J)[J

    .line 880
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$202(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)I

    .line 881
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Ljava/util/List;)Ljava/util/List;

    .line 882
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)I

    .line 883
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 885
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;)V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;[JZI)V

    .line 891
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->reloadMeta()V

    .line 892
    return-void
.end method
