.class Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor$1;
.super Ljava/lang/Object;
.source "LaunchStationTPOExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 69
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "StationSelectTPO"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p1, :cond_0

    .line 71
    const-string v1, "SucceedPlaying"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 78
    return-void

    .line 74
    :cond_0
    const-string v1, "SucceedPlaying"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 82
    return-void
.end method
