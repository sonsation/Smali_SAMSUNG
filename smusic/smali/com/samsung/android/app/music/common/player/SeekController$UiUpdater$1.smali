.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;
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
    .line 625
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$700(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
