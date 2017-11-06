.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;
.super Ljava/lang/Object;
.source "PlayerQueueMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MoveRequest"
.end annotation


# instance fields
.field final direction:I

.field final isGapLessPlaying:Z

.field final success:Z


# direct methods
.method constructor <init>(ZIZ)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "direction"    # I
    .param p3, "isGapLessPlaying"    # Z

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;->success:Z

    .line 193
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;->direction:I

    .line 194
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;->isGapLessPlaying:Z

    .line 195
    return-void
.end method
