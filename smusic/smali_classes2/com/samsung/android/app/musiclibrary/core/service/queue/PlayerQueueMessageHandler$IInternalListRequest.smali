.class interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;
.super Ljava/lang/Object;
.source "PlayerQueueMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IInternalListRequest"
.end annotation


# virtual methods
.method public abstract enqueue(Ljava/util/List;IZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZI)V"
        }
    .end annotation
.end method

.method public abstract enqueue([JIZI)V
.end method

.method public abstract moveTo(ZIZ)V
.end method

.method public abstract notifyLegalError()V
.end method

.method public abstract reloadMeta()V
.end method

.method public abstract reloadSavedQueue(Z)V
.end method

.method public abstract removeIds([J)V
.end method

.method public abstract removePositions([I)V
.end method

.method public abstract reorder(II)V
.end method

.method public abstract resetMoveToCount()V
.end method

.method public abstract setList(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;)V
.end method

.method public abstract setPosition(II)V
.end method

.method public abstract setQueueItem(JI)V
.end method

.method public abstract setRepeat(IZ)V
.end method

.method public abstract setShuffle(IZ)V
.end method

.method public abstract setSortMode(IZ)V
.end method
