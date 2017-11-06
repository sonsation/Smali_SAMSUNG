.class Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$2;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "LockScreenGetMetaExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMetadataChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)V

    .line 168
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPlaybackStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)V

    .line 175
    return-void
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "queue"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    return-void
.end method
