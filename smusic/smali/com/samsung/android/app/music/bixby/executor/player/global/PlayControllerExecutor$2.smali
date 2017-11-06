.class Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;
.super Ljava/lang/Object;
.source "PlayControllerExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut()V
    .locals 5

    .prologue
    .line 228
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v2

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTimeOut() can\'t handle state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "CurrentSongInfo"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    goto :goto_0
.end method
