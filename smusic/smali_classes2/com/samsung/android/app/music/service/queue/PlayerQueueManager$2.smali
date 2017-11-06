.class Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;
.super Ljava/lang/Object;
.source "PlayerQueueManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->onCustomEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

.field final synthetic val$queueType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->val$queueType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    iget v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->val$queueType:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$200(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;I)V

    .line 401
    return-void
.end method
