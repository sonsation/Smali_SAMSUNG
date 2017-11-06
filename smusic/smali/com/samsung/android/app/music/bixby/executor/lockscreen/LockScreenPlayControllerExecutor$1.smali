.class Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;
.super Ljava/lang/Object;
.source "LockScreenPlayControllerExecutor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 184
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$200(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    .line 187
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$302(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 193
    return-void
.end method
