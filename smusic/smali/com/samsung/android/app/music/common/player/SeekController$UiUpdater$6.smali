.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 10
    .param p1, "frameTimeNanos"    # J

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    .line 693
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1900(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 701
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 705
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 706
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    const-wide/16 v6, 0x14

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 707
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$900(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2002(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;J)J

    .line 708
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 709
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 722
    .local v2, "progress":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 723
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 724
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->setProgress(I)V

    .line 725
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->setUpdateProgressTime()V

    .line 729
    .end local v2    # "progress":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 730
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 731
    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v6

    .line 730
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 713
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 714
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2300(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)F

    move-result v3

    float-to-double v6, v3

    mul-double v0, v4, v6

    .line 715
    .local v0, "predicted":D
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 716
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    double-to-long v6, v0

    add-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 717
    .restart local v2    # "progress":I
    goto :goto_1

    .line 720
    .end local v0    # "predicted":D
    .end local v2    # "progress":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "progress":I
    goto :goto_1

    .line 733
    .end local v2    # "progress":I
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$700(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 734
    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v6

    .line 733
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
