.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;
.super Landroid/os/Handler;
.source "RadioDialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initialize(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 589
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;

    .line 591
    .local v7, "request":Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;
    if-eqz v7, :cond_0

    .line 592
    const-string v0, "RadioDialView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : stationID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->stationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->trackId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-result-object v0

    iget v1, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->position:I

    iget-object v2, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->stationId:Ljava/lang/String;

    iget-object v3, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->stationType:Ljava/lang/String;

    iget-object v4, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->trackId:Ljava/lang/String;

    iget-boolean v5, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->isMyStation:Z

    iget-boolean v6, v7, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;->play:Z

    .line 596
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onPlayRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2602(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 601
    monitor-exit v1

    .line 603
    :cond_0
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
