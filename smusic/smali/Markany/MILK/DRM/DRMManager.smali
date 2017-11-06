.class public LMarkany/MILK/DRM/DRMManager;
.super Ljava/lang/Object;
.source "DRMManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DRMManager"

.field private static volatile sDrmManager:LMarkany/MILK/DRM/DRMManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mCheckLicenseReceiver:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

.field private final mContentPath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDrmServer:Lcom/markany/drm/xsync/DRMServer;

.field private final secureDbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SamsungMusic/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mContentPath:Ljava/lang/String;

    .line 38
    iput-object p1, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->secureDbPath:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/markany/drm/xsync/DRMServer;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mContentPath:Ljava/lang/String;

    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->secureDbPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/markany/drm/xsync/DRMServer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 41
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mCheckLicenseReceiver:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mCheckLicenseReceiver:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    .line 45
    :cond_0
    const-string v0, "http://www.csafer.net/XSync/RTCTimer/RTCTimer.asp"

    invoke-direct {p0, v0}, LMarkany/MILK/DRM/DRMManager;->setTimeServer(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, LMarkany/MILK/DRM/DRMManager;->updateTime()Z

    .line 49
    const/16 v0, 0x1b58

    const/16 v1, 0xbb8

    invoke-direct {p0, v0, v1}, LMarkany/MILK/DRM/DRMManager;->setTimeOut(II)V

    .line 50
    return-void
.end method

.method private callCheckDRMLicense(Lcom/markany/drm/xsync/DRMSession;Lcom/markany/drm/xsync/LicenseData;Z)Z
    .locals 9
    .param p1, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;
    .param p2, "licenseData"    # Lcom/markany/drm/xsync/LicenseData;
    .param p3, "userGotRights"    # Z

    .prologue
    const/16 v8, 0xbb8

    .line 300
    const-string v5, "DRMManager"

    const-string v6, "callCheckDRMLicense : called"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move v2, p3

    .line 302
    .local v2, "innerUserGotRights":Z
    const/4 v0, 0x1

    .line 303
    .local v0, "canGetLicense":Z
    invoke-virtual {p2}, Lcom/markany/drm/xsync/LicenseData;->getLicenseType()Lcom/markany/drm/xsync/LicenseType;

    move-result-object v5

    sget-object v6, Lcom/markany/drm/xsync/LicenseType;->LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

    if-eq v5, v6, :cond_0

    .line 304
    invoke-virtual {p2}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "fileOrderId":Ljava/lang/String;
    iget-object v5, p0, LMarkany/MILK/DRM/DRMManager;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v7, 0x0

    .line 306
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "prefOrderId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 308
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 309
    iget-object v5, p0, LMarkany/MILK/DRM/DRMManager;->mCheckLicenseReceiver:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    .line 310
    invoke-virtual {p2}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->checkDRMLicense(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 317
    .end local v1    # "fileOrderId":Ljava/lang/String;
    .end local v4    # "prefOrderId":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 318
    invoke-direct {p0, p1}, LMarkany/MILK/DRM/DRMManager;->installLicense(Lcom/markany/drm/xsync/DRMSession;)I

    move-result v3

    .line 319
    .local v3, "lRet":I
    const-string v5, "DRMManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callCheckDRMLicense : getLicense return lRet : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v5, Lcom/markany/drm/xsync/ErrorCode;->E_DRM_OK:Lcom/markany/drm/xsync/ErrorCode;

    invoke-virtual {v5}, Lcom/markany/drm/xsync/ErrorCode;->swigValue()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 321
    const/4 v2, 0x0

    .line 323
    sget-object v5, Lcom/markany/drm/xsync/ErrorCode;->E_DRM_SESSION_DLMANAGER_DOWNLOAD_TIMEOUT:Lcom/markany/drm/xsync/ErrorCode;

    .line 324
    invoke-static {v3}, Lcom/markany/drm/xsync/ErrorCode;->swigToEnum(I)Lcom/markany/drm/xsync/ErrorCode;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 325
    const-string v5, "DRMManager"

    const-string v6, "Receiving License timed-out! - trying once again"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v5, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const/16 v6, 0x2ee0

    invoke-virtual {v5, v6, v8}, Lcom/markany/drm/xsync/DRMServer;->SetTimeOut(II)V

    .line 330
    invoke-direct {p0, p1}, LMarkany/MILK/DRM/DRMManager;->installLicense(Lcom/markany/drm/xsync/DRMSession;)I

    move-result v3

    .line 331
    sget-object v5, Lcom/markany/drm/xsync/ErrorCode;->E_DRM_OK:Lcom/markany/drm/xsync/ErrorCode;

    invoke-virtual {v5}, Lcom/markany/drm/xsync/ErrorCode;->swigValue()I

    move-result v5

    if-ne v3, v5, :cond_3

    const/4 v2, 0x1

    .line 333
    :goto_1
    const/16 v5, 0x1b58

    invoke-direct {p0, v5, v8}, LMarkany/MILK/DRM/DRMManager;->setTimeOut(II)V

    .line 337
    .end local v3    # "lRet":I
    :cond_1
    return v2

    .line 312
    .restart local v1    # "fileOrderId":Ljava/lang/String;
    .restart local v4    # "prefOrderId":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, LMarkany/MILK/DRM/DRMManager;->mCheckLicenseReceiver:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    .line 313
    invoke-virtual {p2}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->checkDRMLicense(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 331
    .end local v1    # "fileOrderId":Ljava/lang/String;
    .end local v4    # "prefOrderId":Ljava/lang/String;
    .restart local v3    # "lRet":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private callDrmLicenseComplete(Lcom/markany/drm/xsync/DRMSession;)V
    .locals 5
    .param p1, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 341
    new-instance v1, Lcom/markany/drm/xsync/LicenseData;

    invoke-direct {v1}, Lcom/markany/drm/xsync/LicenseData;-><init>()V

    .line 342
    .local v1, "licenseData":Lcom/markany/drm/xsync/LicenseData;
    invoke-virtual {p1, v1}, Lcom/markany/drm/xsync/DRMSession;->GetLicense(Lcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    .line 343
    .local v0, "lRet":I
    const-string v2, "DRMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callDrmLicenseComplete : return lRet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->mCheckLicenseReceiver:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$Receiver;->drmLicenseComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    if-nez v0, :cond_1

    .line 66
    const-class v1, LMarkany/MILK/DRM/DRMManager;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, LMarkany/MILK/DRM/DRMManager;

    invoke-direct {v0, p0}, LMarkany/MILK/DRM/DRMManager;-><init>(Landroid/content/Context;)V

    sput-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLicense(Lcom/markany/drm/xsync/DRMSession;Z)Z
    .locals 6
    .param p1, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;
    .param p2, "installLicensePerformed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Lcom/markany/drm/xsync/LicenseData;

    invoke-direct {v1}, Lcom/markany/drm/xsync/LicenseData;-><init>()V

    .line 110
    .local v1, "licenseData":Lcom/markany/drm/xsync/LicenseData;
    invoke-virtual {p1, v1}, Lcom/markany/drm/xsync/DRMSession;->GetLicense(Lcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    .line 111
    .local v0, "lRet":I
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLicense : GetLicense returned - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x0

    .line 116
    .local v2, "userGotRights":Z
    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getReadable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    sget-object v3, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getLicenseType()Lcom/markany/drm/xsync/LicenseType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 167
    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->delete()V

    .line 168
    const/4 v1, 0x0

    .line 169
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "LICENSE_NONE_MATCHED"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :pswitch_0
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_NO"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    if-eqz p2, :cond_1

    .line 175
    const-string v3, "DRMManager"

    const-string v4, "License acquisition failed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->delete()V

    .line 178
    const/4 v1, 0x0

    .line 180
    const/4 v3, 0x0

    .line 213
    :goto_1
    return v3

    .line 122
    :pswitch_1
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_EXPIRED"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_2
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_INVALID_VERSION"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_3
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_INVALID_DOMAIN"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "domain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :pswitch_4
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_INVALID_UID"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :pswitch_5
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_INVALID_DEVICE_KEY"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getDeviceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :pswitch_6
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_INVALID_TERM"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :pswitch_7
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_ROLLBACK"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :pswitch_8
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_TERM_NOT_YET_STARTED"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_9
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_INVALID"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getDeviceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_0
    const-string v3, "DRMManager"

    const-string v4, "-- License readable --"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v3, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getLicenseType()Lcom/markany/drm/xsync/LicenseType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 200
    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->delete()V

    .line 201
    const/4 v1, 0x0

    .line 202
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "NONE_MATCHED_LICENSE"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :pswitch_a
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_UNLIMITED"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x1

    .line 206
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    if-nez p2, :cond_2

    .line 207
    invoke-direct {p0, p1, v1, v2}, LMarkany/MILK/DRM/DRMManager;->callCheckDRMLicense(Lcom/markany/drm/xsync/DRMSession;Lcom/markany/drm/xsync/LicenseData;Z)Z

    move-result v2

    .line 210
    :cond_2
    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->delete()V

    .line 211
    const/4 v1, 0x0

    move v3, v2

    .line 213
    goto/16 :goto_1

    .line 190
    :pswitch_b
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_TERM"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getStartDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "DRMManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x1

    .line 194
    goto :goto_2

    .line 196
    :pswitch_c
    const-string v3, "DRMManager"

    const-string v4, "LICENSE_IS_NOT_DRM_FILE"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v2, 0x1

    .line 198
    goto :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 184
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private installLicense(Lcom/markany/drm/xsync/DRMSession;)I
    .locals 7
    .param p1, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 217
    const-string v4, "DRMManager"

    const-string v5, "-- Install License --"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v3, Lcom/markany/drm/xsync/LicenseResult;

    invoke-direct {v3}, Lcom/markany/drm/xsync/LicenseResult;-><init>()V

    .line 220
    .local v3, "lr":Lcom/markany/drm/xsync/LicenseResult;
    const-string v0, ""

    .line 224
    .local v0, "customParam":Ljava/lang/String;
    const-string v2, "http://drm.glb.samsungmilkradio.com/license/issue"

    .line 225
    .local v2, "laUrl":Ljava/lang/String;
    invoke-virtual {p1, v2, v3, v0}, Lcom/markany/drm/xsync/DRMSession;->InstallLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result v1

    .line 227
    .local v1, "lRet":I
    sget-object v4, Lcom/markany/drm/xsync/ErrorCode;->E_DRM_OK:Lcom/markany/drm/xsync/ErrorCode;

    invoke-virtual {v4}, Lcom/markany/drm/xsync/ErrorCode;->swigValue()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 228
    const-string v4, "DRMManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installLicense : Return Error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 229
    invoke-static {v1}, Lcom/markany/drm/xsync/ErrorCode;->swigToEnum(I)Lcom/markany/drm/xsync/ErrorCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v4, "DRMManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installLicense : Server Error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseResult;->getErrCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v4, "DRMManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installLicense : Server Error Result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseResult;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v4, "DRMManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installLicense : Server Error Description : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseResult;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseResult;->delete()V

    .line 243
    const/4 v3, 0x0

    .line 245
    return v1

    .line 238
    :cond_0
    invoke-direct {p0, p1}, LMarkany/MILK/DRM/DRMManager;->callDrmLicenseComplete(Lcom/markany/drm/xsync/DRMSession;)V

    .line 239
    const-string v4, "DRMManager"

    const-string v5, "-- Install License -- callDrmLicenseComplete called"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTimeOut(II)V
    .locals 1
    .param p1, "connectionTimeOut"    # I
    .param p2, "ioTimeOut"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1, p2}, Lcom/markany/drm/xsync/DRMServer;->SetTimeOut(II)V

    .line 62
    return-void
.end method

.method private setTimeServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeServerUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->SetTimeServer(Ljava/lang/String;)Z

    .line 58
    return-void
.end method

.method private updateTime()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->UpdateTime()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public closeServer()Z
    .locals 4

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "result":Z
    const-string v1, "DRMManager"

    const-string v2, "closeServer : __ CLOSE SERVER ___"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "DRMManager"

    const-string v2, "closeServer : -- stop mDrmServer --"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMServer;->Stop()Z

    move-result v0

    .line 272
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v1}, Lcom/markany/drm/xsync/DRMServer;->delete()V

    .line 275
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 277
    const-string v1, "DRMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeServer : ___ END CLOSE SERVER ___ result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return v0
.end method

.method public closeSession(Lcom/markany/drm/xsync/DRMSession;)V
    .locals 1
    .param p1, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 93
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->CloseSession(Lcom/markany/drm/xsync/DRMSession;)V

    .line 94
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LMarkany/MILK/DRM/DRMManager;->closeServer()Z

    .line 291
    const/4 v0, 0x0

    sput-object v0, LMarkany/MILK/DRM/DRMManager;->sDrmManager:LMarkany/MILK/DRM/DRMManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, LMarkany/MILK/DRM/DRMManager;->delete()V

    .line 296
    return-void
.end method

.method public getLastErrorCode()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->GetLastErrorCode()I

    move-result v0

    return v0
.end method

.method public getLicense(Lcom/markany/drm/xsync/DRMSession;)Z
    .locals 4
    .param p1, "drmSession"    # Lcom/markany/drm/xsync/DRMSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, LMarkany/MILK/DRM/DRMManager;->getLicense(Lcom/markany/drm/xsync/DRMSession;Z)Z

    move-result v0

    .line 99
    .local v0, "result":Z
    const-string v1, "DRMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLicense : GetLicense install true returned - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, LMarkany/MILK/DRM/DRMManager;->getLicense(Lcom/markany/drm/xsync/DRMSession;Z)Z

    move-result v0

    .line 101
    const-string v1, "DRMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLicense : GetLicense returned - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v0
.end method

.method public getState()Lcom/markany/drm/xsync/State;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->GetState()Lcom/markany/drm/xsync/State;

    move-result-object v0

    return-object v0
.end method

.method public isDBOpened()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMServer;->IsDBOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSession(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;
    .locals 1
    .param p1, "openMode"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1, p2}, Lcom/markany/drm/xsync/DRMServer;->OpenSession(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;

    move-result-object v0

    return-object v0
.end method

.method public runServer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7918

    const/16 v5, 0x7530

    .line 249
    const-string v1, "DRMManager"

    const-string/jumbo v2, "runServer : ___ RUN SERVER ___"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v1, v5, v6}, Lcom/markany/drm/xsync/DRMServer;->Start(II)Z

    move-result v0

    .line 260
    .local v0, "result":Z
    :goto_0
    const-string v1, "DRMManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runServer : ___ END RUN SERVER ___ result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return v0

    .line 256
    .end local v0    # "result":Z
    :cond_0
    new-instance v1, Lcom/markany/drm/xsync/DRMServer;

    iget-object v2, p0, LMarkany/MILK/DRM/DRMManager;->mContentPath:Ljava/lang/String;

    iget-object v3, p0, LMarkany/MILK/DRM/DRMManager;->secureDbPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/markany/drm/xsync/DRMServer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    .line 257
    iget-object v1, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v1, v5, v6}, Lcom/markany/drm/xsync/DRMServer;->Start(II)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public setDeviceKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->SetDeviceKey(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->SetUserID(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    const-string v1, "mamp3"

    const-string v2, "audio/text"

    invoke-virtual {v0, v1, v2}, Lcom/markany/drm/xsync/DRMServer;->SetMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public updateAllExpiryDate(Ljava/lang/String;)J
    .locals 2
    .param p1, "updateDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, LMarkany/MILK/DRM/DRMManager;->mDrmServer:Lcom/markany/drm/xsync/DRMServer;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMServer;->DBUpdateAllExpiryDate(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
