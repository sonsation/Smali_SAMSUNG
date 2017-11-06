.class Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;
.super Ljava/lang/Object;
.source "LockScreenPlayControllerExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut()V
    .locals 5

    .prologue
    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v1

    if-nez v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "state":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTimeOut() can\'t handle state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v2, "CurrentSongInfo"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
