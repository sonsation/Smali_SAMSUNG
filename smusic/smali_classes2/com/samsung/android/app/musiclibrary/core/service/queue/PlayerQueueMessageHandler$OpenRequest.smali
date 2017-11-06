.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;
.super Ljava/lang/Object;
.source "PlayerQueueMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenRequest"
.end annotation


# instance fields
.field final keyWord:Ljava/lang/String;

.field final list:[J

.field final position:I

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

.field final uriType:I


# direct methods
.method constructor <init>(ILjava/lang/String;[JLjava/util/List;I)V
    .locals 0
    .param p1, "uriType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "list"    # [J
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->uriType:I

    .line 154
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->keyWord:Ljava/lang/String;

    .line 155
    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    .end local p3    # "list":[J
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->list:[J

    .line 156
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->position:I

    .line 157
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;->queue:Ljava/util/List;

    .line 158
    return-void
.end method
