.class Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;
.super Landroid/os/Handler;
.source "MilkDrmLicenseCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;->this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    const-string v1, "SV-PlayerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;->this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 66
    .local v0, "result":Landroid/os/Bundle;
    const-class v1, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;->this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->access$002(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 68
    const-string v1, "SV-PlayerServer"

    const-string/jumbo v3, "received data"

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;->this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit v2

    .line 71
    return-void

    .line 70
    .end local v0    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
