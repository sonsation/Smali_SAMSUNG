.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;
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
    .line 657
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->setRequestedTime()V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1800(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1700(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
