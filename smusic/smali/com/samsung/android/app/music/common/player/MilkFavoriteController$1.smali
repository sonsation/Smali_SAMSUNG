.class Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;
.super Ljava/lang/Object;
.source "MilkFavoriteController.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/MilkFavoriteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/MilkFavoriteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->access$000(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->access$102(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;Z)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/MilkFavoriteController$1;->this$0:Lcom/samsung/android/app/music/common/player/MilkFavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/MilkFavoriteController;->access$000(Lcom/samsung/android/app/music/common/player/MilkFavoriteController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 68
    return-void
.end method
