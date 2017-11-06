.class Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;
.super Ljava/lang/Object;
.source "RadioPlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(IZ)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->access$100(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IZ)V

    .line 85
    return-void
.end method

.method public reloadQueue()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->access$000(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    .line 80
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "direction"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->access$200(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;II)V

    .line 90
    return-void
.end method
