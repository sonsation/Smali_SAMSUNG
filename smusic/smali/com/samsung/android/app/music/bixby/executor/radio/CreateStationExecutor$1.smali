.class Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;
.super Ljava/lang/Object;
.source "CreateStationExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->createStationFromSong(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->val$state:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->checkSuccessPlaying(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .line 70
    .local v0, "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 76
    return-void

    .line 72
    .end local v0    # "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;->val$state:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->checkFailurePlaying(Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .restart local v0    # "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 81
    return-void
.end method
