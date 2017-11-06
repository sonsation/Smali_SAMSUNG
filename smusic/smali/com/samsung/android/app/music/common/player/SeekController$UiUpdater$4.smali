.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;
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
    .line 671
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$1900(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$2000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    goto :goto_0
.end method
