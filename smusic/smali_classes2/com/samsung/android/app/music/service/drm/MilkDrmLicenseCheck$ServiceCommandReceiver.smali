.class public Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;
.super Ljava/lang/Object;
.source "MilkDrmLicenseCheck.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCommandReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "milkServiceInterface"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;Landroid/os/Messenger;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->sendResponse(Landroid/os/Messenger;Z)V

    return-void
.end method

.method private checkDRMLicense(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reqId"    # I

    .prologue
    .line 149
    const-string v1, "extra_messenger"

    .line 150
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/Messenger;

    .line 151
    .local v9, "messenger":Landroid/os/Messenger;
    const-string v1, "extra_track_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "trackId":Ljava/lang/String;
    const-string v1, "extra_order_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "orderId":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v6, "01"

    new-instance v7, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;

    invoke-direct {v7, p0, v9}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;-><init>(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;Landroid/os/Messenger;)V

    iget-object v8, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 161
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->doWork()V

    .line 162
    return-void
.end method

.method private drmLicenseComplete(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reqId"    # I

    .prologue
    .line 165
    const-string v1, "extra_track_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "trackId":Ljava/lang/String;
    const-string v1, "extra_order_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "orderId":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 170
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->doWork()V

    .line 171
    return-void
.end method

.method private sendResponse(Landroid/os/Messenger;Z)V
    .locals 6
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "canGetDrmLicense"    # Z

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 138
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "extra_can_get_drm_license"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SV-PlayerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendResponse : send msg but error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.samsung.android.app.music.action.ACTION_CHECK_DRM_LICENSE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string v3, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->checkDRMLicense(Landroid/content/Intent;I)V

    .line 133
    :goto_0
    return v1

    .line 129
    :cond_0
    const-string v3, "com.samsung.android.app.music.action.ACTION_DRM_LICENSE_COMPLETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->drmLicenseComplete(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    goto :goto_0
.end method
