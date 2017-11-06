.class Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;
.super Ljava/lang/Object;
.source "LockScreenGetMetaExecutor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 144
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 147
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$200(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$302(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;Z)Z

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 157
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->access$502(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 159
    return-void
.end method
