.class Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;
.super Ljava/lang/Object;
.source "RadioStationExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->addToMyStation()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    const-string v2, "AddToMyStation"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->checkSuccessPlaying(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .line 108
    .local v0, "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 109
    return-void

    .line 105
    .end local v0    # "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    const-string v2, "AddToMyStation"

    invoke-virtual {v1, v2, p2, v3}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->checkFailurePlaying(Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .restart local v0    # "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 114
    return-void
.end method
