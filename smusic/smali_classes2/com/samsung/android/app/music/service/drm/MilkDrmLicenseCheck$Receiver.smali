.class public Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;
.super Ljava/lang/Object;
.source "MilkDrmLicenseCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;

.field private mResult:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver$1;-><init>(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mMessenger:Landroid/os/Messenger;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mResult:Landroid/os/Bundle;

    return-object p1
.end method

.method private requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "extra_messenger"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v1, "extra_track_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "extra_order_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    const-string v1, "SV-PlayerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestToMilk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private waitResponse()V
    .locals 4

    .prologue
    .line 102
    monitor-enter p0

    .line 104
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkDRMLicense(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 79
    const-string v0, "com.samsung.android.app.music.action.ACTION_CHECK_DRM_LICENSE"

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->waitResponse()V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->mResult:Landroid/os/Bundle;

    const-string v1, "extra_can_get_drm_license"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public drmLicenseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 87
    const-string v0, "com.samsung.android.app.music.action.ACTION_DRM_LICENSE_COMPLETE"

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
