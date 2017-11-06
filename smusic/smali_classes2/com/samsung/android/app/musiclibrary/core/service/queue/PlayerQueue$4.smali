.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;
.super Ljava/lang/Object;
.source "PlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
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
    .line 1633
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enqueue(Ljava/util/List;IZI)V
    .locals 1
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1600(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Ljava/util/List;IZI)V

    .line 1655
    return-void
.end method

.method public enqueue([JIZI)V
    .locals 1
    .param p1, "list"    # [J
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "positionToPlay"    # I

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[JIZI)V

    .line 1649
    return-void
.end method

.method public moveTo(ZIZ)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "direction"    # I
    .param p3, "isGapLessPlaying"    # Z

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;ZIZ)V

    .line 1665
    return-void
.end method

.method public notifyLegalError()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2800(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V

    .line 1715
    return-void
.end method

.method public reloadMeta()V
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2700(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V

    .line 1710
    return-void
.end method

.method public reloadSavedQueue(Z)V
    .locals 1
    .param p1, "syncRequest"    # Z

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Z)V

    .line 1637
    return-void
.end method

.method public removeIds([J)V
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1700(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[J)V

    .line 1660
    return-void
.end method

.method public removePositions([I)V
    .locals 1
    .param p1, "positions"    # [I

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1900(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;[I)V

    .line 1670
    return-void
.end method

.method public reorder(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2300(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;II)V

    .line 1690
    return-void
.end method

.method public resetMoveToCount()V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)V

    .line 1675
    return-void
.end method

.method public setList(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;)V
    .locals 7
    .param p1, "r"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .line 1642
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->uriType:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->uriType:I

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->keyWord:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->list:[J

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->queue:Ljava/util/List;

    iget v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->position:I

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;ILjava/lang/String;[JLjava/util/List;I)V

    .line 1644
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IIZ)V

    .line 1680
    return-void
.end method

.method public setQueueItem(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "direction"    # I

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;JI)V

    .line 1685
    return-void
.end method

.method public setRepeat(IZ)V
    .locals 1
    .param p1, "repeat"    # I
    .param p2, "doSave"    # Z

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2500(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IZ)Z

    .line 1700
    return-void
.end method

.method public setShuffle(IZ)V
    .locals 1
    .param p1, "shuffle"    # I
    .param p2, "doSave"    # Z

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2400(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IZ)Z

    .line 1695
    return-void
.end method

.method public setSortMode(IZ)V
    .locals 1
    .param p1, "sortMode"    # I
    .param p2, "doSave"    # Z

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$2600(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;IZ)Z

    .line 1705
    return-void
.end method
