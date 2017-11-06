.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 635
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 638
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$800(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$900(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getBuffering()I

    move-result v0

    .line 640
    .local v0, "buffering":I
    if-ltz v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 642
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 644
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1300(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 646
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    .line 645
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    .end local v0    # "buffering":I
    :cond_0
    :goto_0
    return-void

    .line 647
    .restart local v0    # "buffering":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$700(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1300(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 649
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v4

    .line 648
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
