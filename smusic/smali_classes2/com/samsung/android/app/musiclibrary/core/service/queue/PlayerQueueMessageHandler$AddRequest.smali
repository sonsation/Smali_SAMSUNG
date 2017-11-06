.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;
.super Ljava/lang/Object;
.source "PlayerQueueMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddRequest"
.end annotation


# instance fields
.field final action:I

.field final doChange:Z

.field final list:[J

.field final positionToPlay:I

.field final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([JLjava/util/List;IZI)V
    .locals 0
    .param p1, "list"    # [J
    .param p3, "action"    # I
    .param p4, "doChange"    # Z
    .param p5, "positionToPlay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->list:[J

    .line 176
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->queue:Ljava/util/List;

    .line 177
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->action:I

    .line 178
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->doChange:Z

    .line 179
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->positionToPlay:I

    .line 180
    return-void
.end method
