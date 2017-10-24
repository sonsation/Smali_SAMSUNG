.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$1;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

.field private static mMountSDcardToHelper:Z

.field private static mNeedToCreateKey:Z

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private mAlreadyDecrypted:Z

.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/storage/IDirEncryptServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressTime:J

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mUnnmountRequested:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DirEncryptServiceHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    .line 47
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 75
    sput-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 76
    sput-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 62
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 64
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 67
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 81
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 82
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 83
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 86
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 88
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 93
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 105
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 303
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 304
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 305
    new-instance v1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 301
    return-void
.end method

.method private checkSdCardMetafile()V
    .locals 14

    .prologue
    const/high16 v13, 0x10400000

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 991
    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 992
    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 994
    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 997
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 998
    .local v5, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 999
    .local v0, "SDCardState":I
    const-string/jumbo v7, "policy"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1003
    .local v4, "isPolicy":I
    const-string/jumbo v7, "sec.fle.encryption.status"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1004
    .local v3, "isExistMeta":Ljava/lang/String;
    const-string/jumbo v7, "DirEncryptService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkSdCardMetafile result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string/jumbo v7, "encrypted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1006
    const/4 v6, -0x1

    .line 1008
    .local v6, "rc":I
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v8}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/DirEncryptPrefs;->migrationUUIDPrefs(Ljava/lang/String;Z)I

    move-result v6

    .line 1009
    if-nez v6, :cond_0

    .line 1010
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "Migration Success, so re-call policy"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 1012
    const-string/jumbo v7, "policy"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1015
    :cond_0
    if-eq v0, v11, :cond_1

    .line 1016
    if-nez v0, :cond_3

    .line 1017
    :cond_1
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "SD card has decrypting/encrypting state -> Self Decrypting/Encrypting!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1019
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 1073
    .end local v6    # "rc":I
    :cond_2
    :goto_0
    sput-boolean v10, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 990
    return-void

    .line 1020
    .restart local v6    # "rc":I
    :cond_3
    if-ne v0, v12, :cond_4

    .line 1021
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "ENC_META_CHECK : Error Case (Encrypted on other device)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/16 v7, 0x8

    iput v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1024
    const-string/jumbo v7, "done"

    invoke-direct {p0, v12, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1025
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "OtherDevice"

    const-string/jumbo v8, "exception"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1029
    :try_start_0
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "DirEncryptService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to start intent activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1034
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1038
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    .end local v6    # "rc":I
    :cond_5
    if-eqz v0, :cond_6

    .line 1042
    const/4 v7, 0x2

    if-ne v0, v7, :cond_7

    .line 1043
    :cond_6
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "ENC_META_CHECK : Meta deleted Case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1045
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_7
    if-ne v0, v11, :cond_8

    .line 1047
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "SD card has decrypting state -> Self Decrypting!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1049
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1051
    :cond_8
    if-ne v4, v11, :cond_9

    .line 1052
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "ENC_META_CHECK : EAS Policy Set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1055
    sget-boolean v7, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    if-nez v7, :cond_2

    .line 1057
    :try_start_1
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1058
    :catch_1
    move-exception v1

    .line 1059
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "DirEncryptService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to start intent activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1063
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1067
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 1069
    const-string/jumbo v7, "done"

    invoke-direct {p0, v12, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1097
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "clearNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 1099
    const-string/jumbo v2, "notification"

    .line 1098
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1100
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1096
    return-void
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 13
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 835
    const-string/jumbo v10, "vold.decrypt"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, "encryptBoot":Ljava/lang/String;
    const-string/jumbo v10, "trigger_restart_min_framework"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 837
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Do not work if encryption lock page"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return-void

    .line 841
    :cond_0
    const-string/jumbo v10, "unmounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getUserDiff()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 846
    :cond_1
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-eqz v10, :cond_2

    .line 847
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 848
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 851
    :cond_2
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "clearNotification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 854
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 857
    :try_start_0
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_3
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v4

    .line 859
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 861
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v10, "HiddenMount"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 874
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "clearNotification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 877
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 878
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 879
    .local v1, "currentUid":I
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 880
    .local v6, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v10, :cond_7

    .line 881
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 883
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 884
    .local v0, "SDCardState":I
    if-nez v0, :cond_5

    const/4 v2, 0x1

    .line 885
    .local v2, "doEncrypt":Z
    :goto_1
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    or-int/2addr v2, v10

    .line 887
    .local v2, "doEncrypt":Z
    :try_start_1
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v9

    .line 888
    .local v9, "service":Landroid/os/storage/IMountService;
    if-eqz v9, :cond_3

    .line 889
    invoke-interface {v9, v2}, Landroid/os/storage/IMountService;->encryptExternalStorage(Z)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 890
    .end local v9    # "service":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v8

    .line 891
    .local v8, "re":Landroid/os/RemoteException;
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Unable to communicate with Mountservice"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    .end local v2    # "doEncrypt":Z
    .end local v8    # "re":Landroid/os/RemoteException;
    :cond_5
    const/4 v2, 0x0

    .local v2, "doEncrypt":Z
    goto :goto_1

    .line 885
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 895
    .end local v0    # "SDCardState":I
    .end local v2    # "doEncrypt":Z
    :cond_7
    :try_start_2
    const-string/jumbo v10, "vold.crypto.ext_migrate"

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 896
    .local v7, "migrateProperty":Ljava/lang/String;
    const-string/jumbo v10, "1"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 899
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 901
    .end local v7    # "migrateProperty":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 902
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 905
    .end local v1    # "currentUid":I
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_8
    const-string/jumbo v10, "MoveMount"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 914
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 915
    .restart local v0    # "SDCardState":I
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    .line 916
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string/jumbo v10, "success"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 918
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 919
    const-string/jumbo v10, "busy"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 920
    :cond_9
    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    .line 921
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Since encrypt is ON: final mount command (ENCRYPTED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :cond_a
    const/4 v10, 0x3

    if-ne v0, v10, :cond_c

    .line 926
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_c

    .line 927
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 929
    const-string/jumbo v10, "Mount"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 930
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "delete uuid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/DirEncryptPrefs;->clearPrefs(Ljava/lang/String;)V

    .line 933
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    if-nez v10, :cond_b

    .line 934
    const-string/jumbo v10, "success"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 936
    :cond_b
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "don\'t send encryption notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 939
    :cond_c
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "MOVE_MOUNT => ENCRYPTING or OTHER_ENCRYPT"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    .end local v0    # "SDCardState":I
    :cond_d
    const-string/jumbo v10, "mounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 942
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Update SD card encryption status"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 944
    const-string/jumbo v10, "free"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 945
    :cond_e
    const-string/jumbo v10, "removed"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 946
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 947
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 948
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 950
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "SD card removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 953
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 954
    const-string/jumbo v10, "free"

    const/4 v11, 0x0

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 955
    :cond_f
    const-string/jumbo v10, "unmounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 956
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "SD card unmounted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v10, :cond_10

    .line 958
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 961
    :cond_10
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-eqz v10, :cond_3

    .line 962
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 964
    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 966
    :cond_11
    const-string/jumbo v10, "bad_removal"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 967
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 968
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "SD card bad removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v10, :cond_3

    .line 970
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 971
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 972
    const-string/jumbo v10, "free"

    const/4 v11, 0x0

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getMountService()Landroid/os/storage/IMountService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Could not contact mount service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;

    .prologue
    .line 1079
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1081
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1082
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1083
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1084
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1085
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1087
    return-object v0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "adminStart"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    return-object v0
.end method

.method private getStorageCardEncryptionInternal(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "policy"    # Landroid/os/Bundle;

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 718
    .local v0, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    if-eqz p1, :cond_0

    .line 719
    const-string/jumbo v2, "policy"

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    :cond_0
    const-string/jumbo v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStorageCardEncryptionInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getCurrentUUID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 725
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "getStorageCardEncryptionInternal : UUID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v1, 0x3

    return v1

    .line 719
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    return v1
.end method

.method private isAdminApplied()Z
    .locals 5

    .prologue
    .line 801
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 802
    .local v0, "adminPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 803
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 805
    .local v2, "isDisabledByAdmin":Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 807
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 811
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    const/4 v2, 0x1

    .line 815
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 820
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 822
    .local v0, "pol":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 823
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 824
    return v3

    .line 827
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 743
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    .line 742
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .locals 11
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "storage"    # I

    .prologue
    .line 747
    const-string/jumbo v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyEncryptionStatusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v10

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 750
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 751
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/storage/IDirEncryptServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    .local v0, "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :try_start_1
    const-string/jumbo v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Listener :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 757
    :catch_0
    move-exception v6

    .line 758
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Listener failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 748
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "i":I
    .end local v8    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 755
    .restart local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .restart local v7    # "i":I
    .restart local v8    # "n":I
    :catch_1
    move-exception v9

    .line 756
    .local v9, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "Listener dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 761
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v9    # "rex":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 746
    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 346
    const-string/jumbo v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 345
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "encType"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1104
    const/4 v8, 0x0

    .line 1105
    .local v8, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1106
    .local v3, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v7, ""

    .line 1107
    .local v7, "tickerText":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 1108
    .local v6, "contentText":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 1109
    .local v5, "contentTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1111
    .local v4, "icon":I
    packed-switch p1, :pswitch_data_0

    .line 1240
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1243
    :cond_0
    return-void

    .line 1113
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040674

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040675

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1117
    .local v3, "pending":Landroid/app/PendingIntent;
    const v4, 0x10802fa

    .line 1246
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_1
    move-object/from16 v2, p0

    .line 1250
    invoke-direct/range {v2 .. v7}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1251
    .local v8, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_2

    .line 1252
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1253
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1254
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1255
    iget v2, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v8, Landroid/app/Notification;->defaults:I

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1257
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    sget v2, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v9, v2, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1103
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 1121
    .local v3, "pending":Landroid/app/PendingIntent;
    .local v8, "notification":Landroid/app/Notification;
    :pswitch_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1123
    const-string/jumbo v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067a

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1126
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1127
    const v4, 0x10802fa

    .line 1148
    :goto_1
    move-object v5, v7

    .line 1149
    move-object v7, v6

    .line 1150
    goto/16 :goto_0

    .line 1129
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1130
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1131
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1132
    const v4, 0x10802f9

    goto :goto_1

    .line 1135
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1136
    const-string/jumbo v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1139
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1140
    const v4, 0x108028e

    goto :goto_1

    .line 1142
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1143
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1144
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1145
    const v4, 0x108028d

    goto/16 :goto_1

    .line 1153
    .local v3, "pending":Landroid/app/PendingIntent;
    :pswitch_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040679

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1156
    const v4, 0x10802fa

    .line 1162
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1163
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1164
    goto/16 :goto_0

    .line 1158
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067d

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1160
    const v4, 0x108028e

    goto :goto_2

    .line 1167
    :pswitch_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1168
    .local v10, "progress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v11

    .line 1170
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_7

    .line 1171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1173
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v2, v10}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-set1(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-set0(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1175
    if-nez v10, :cond_9

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_3
    monitor-exit v11

    .line 1183
    return-void

    .line 1179
    :cond_9
    const/16 v2, 0x64

    if-ne v2, v10, :cond_8

    .line 1180
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1168
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2

    .line 1186
    .end local v10    # "progress":I
    :pswitch_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1187
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1190
    const v4, 0x10802f9

    .line 1196
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1197
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1198
    move-object v5, v7

    .line 1199
    goto/16 :goto_0

    .line 1192
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1194
    const v4, 0x108028d

    goto :goto_4

    .line 1202
    :pswitch_6
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 1203
    const v4, 0x10802f9

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1211
    :goto_5
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1213
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1214
    goto/16 :goto_0

    .line 1207
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_b
    const v4, 0x108028d

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1217
    :pswitch_7
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 1218
    const v4, 0x10802f9

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1226
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1227
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1228
    goto/16 :goto_0

    .line 1222
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_c
    const v4, 0x10802f9

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 1231
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040676

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040677

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1234
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1235
    const v4, 0x108007b

    .line 1236
    move-object v5, v7

    .line 1237
    goto/16 :goto_0

    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method private unmountSDCard()V
    .locals 2

    .prologue
    .line 766
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 326
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 325
    return-void
.end method

.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    const-string/jumbo v2, ""

    return-object v2

    .line 707
    :cond_0
    const-string/jumbo v2, "\\\\"

    const-string/jumbo v3, "\\\\\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "temp":Ljava/lang/String;
    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "temp2":Ljava/lang/String;
    return-object v1
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 377
    sget-object v2, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 378
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 404
    :pswitch_0
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v3, "Invalid command!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 376
    return-void

    .line 380
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 384
    :pswitch_2
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Command.USB_STATE:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 392
    const-string/jumbo v1, "HiddenMount"

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string/jumbo v1, "dir_crypto"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "encMetaCheck"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "/mnt/secure/staging"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_0
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v3, "Command.ENC_META_CHECK:: non operation"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 677
    .local v0, "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "EncPrefs found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    if-nez p1, :cond_0

    .line 682
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "param is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p1

    .line 685
    :cond_0
    const-string/jumbo v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSdCardEncryptionPreferences : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 693
    .end local v0    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :goto_0
    return-object v0

    .line 690
    .restart local v0    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_1
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "EncPrefs not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEncryptionAppliedSDCard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 978
    const-string/jumbo v0, "/.MetaEcfsFile"

    .line 979
    .local v0, "SDCARD_ENC_PREFERENCES_FILE":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "sdpath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 981
    return v4

    .line 983
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/.MetaEcfsFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 985
    const/4 v3, 0x1

    return v3

    .line 987
    :cond_1
    return v4
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 2

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 411
    sget-object v22, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v22

    .line 412
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    if-eqz v21, :cond_0

    const/4 v8, 0x1

    .line 413
    .local v8, "isPolicy":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    monitor-exit v22

    .line 670
    const/16 v21, 0x1

    return v21

    .line 412
    .end local v8    # "isPolicy":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "isPolicy":I
    goto :goto_0

    .line 415
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 416
    const-string/jumbo v23, "notification"

    .line 415
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 417
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    sget v21, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 411
    .end local v8    # "isPolicy":I
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 421
    .restart local v8    # "isPolicy":I
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 422
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 423
    .local v17, "reqEnc":I
    const/16 v21, 0x3

    aget-object v19, p3, v21

    .line 425
    .local v19, "status":Ljava/lang/String;
    const-string/jumbo v21, "success"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 426
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "RESP_ENCRYPT success"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 428
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 429
    const-string/jumbo v21, "success"

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 430
    if-nez v17, :cond_1

    .line 431
    const/16 v21, 0x3

    .line 432
    :goto_2
    const-string/jumbo v23, "Mount"

    .line 430
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 435
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ENCRYPT Response admin : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-nez v17, :cond_2

    .line 437
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "Decrypt compelte"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_3
    new-instance v14, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 443
    if-nez v17, :cond_3

    .line 444
    const/16 v21, 0x3

    .line 446
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v23

    .line 442
    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v14, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 447
    .local v14, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 431
    .end local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_1
    const/16 v21, 0x2

    goto :goto_2

    .line 439
    :cond_2
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "Encrypt complete"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 445
    :cond_3
    const/16 v21, 0x2

    goto :goto_4

    .line 449
    :cond_4
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "RESP_ENCRYPT failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 451
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 452
    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 457
    :cond_5
    :goto_5
    const-string/jumbo v21, "failed"

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 458
    if-nez v17, :cond_7

    .line 459
    const/16 v21, 0x3

    .line 460
    :goto_6
    const-string/jumbo v23, "free"

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 461
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_1

    .line 454
    :cond_6
    const/16 v21, 0x6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_5

    .line 459
    :cond_7
    const/16 v21, 0x2

    goto :goto_6

    .line 464
    .end local v17    # "reqEnc":I
    .end local v19    # "status":Ljava/lang/String;
    :cond_8
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_ENCRYPT extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 469
    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 470
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "DirEncryptServiceVoldResponse.PROGRESS inside"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 472
    .restart local v17    # "reqEnc":I
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 473
    .local v13, "percentage":I
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 474
    .local v20, "storage":I
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 475
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 479
    :goto_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 480
    if-nez v17, :cond_a

    const/16 v21, 0x3

    .line 481
    :goto_8
    const-string/jumbo v23, "busy"

    .line 480
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 477
    :cond_9
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_7

    .line 480
    :cond_a
    const/16 v21, 0x2

    goto :goto_8

    .line 483
    .end local v13    # "percentage":I
    .end local v17    # "reqEnc":I
    .end local v20    # "storage":I
    :cond_b
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_PROGRESS extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 488
    :pswitch_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 489
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 490
    .restart local v17    # "reqEnc":I
    const/16 v21, 0x5

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 491
    .local v6, "encType":I
    const/16 v21, 0x6

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 493
    .local v9, "needed":I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 494
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 495
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 497
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 498
    if-nez v17, :cond_c

    const/16 v21, 0x3

    .line 499
    :goto_9
    const-string/jumbo v23, "free"

    .line 498
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 500
    new-instance v14, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 501
    if-nez v17, :cond_d

    .line 502
    const/16 v21, 0x2

    .line 504
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v23

    .line 500
    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v14, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 505
    .restart local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 498
    .end local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_c
    const/16 v21, 0x2

    goto :goto_9

    .line 503
    :cond_d
    const/16 v21, 0x3

    goto :goto_a

    .line 507
    .end local v6    # "encType":I
    .end local v9    # "needed":I
    .end local v17    # "reqEnc":I
    :cond_e
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_PRESCAN_FULL_ERR extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 512
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 513
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 514
    .restart local v17    # "reqEnc":I
    const/16 v21, 0x5

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 515
    .restart local v6    # "encType":I
    const/16 v21, 0xb

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 516
    const-string/jumbo v21, ""

    const/16 v23, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 517
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 518
    if-nez v17, :cond_f

    const/16 v21, 0x3

    .line 519
    :goto_b
    const-string/jumbo v23, "free"

    .line 518
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 520
    new-instance v14, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 521
    if-nez v17, :cond_10

    .line 522
    const/16 v21, 0x2

    .line 524
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v23

    .line 520
    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v14, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 525
    .restart local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 518
    .end local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_f
    const/16 v21, 0x2

    goto :goto_b

    .line 523
    :cond_10
    const/16 v21, 0x3

    goto :goto_c

    .line 527
    .end local v6    # "encType":I
    .end local v17    # "reqEnc":I
    :cond_11
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_FILE_OPEN_ERR extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 532
    :pswitch_6
    const/4 v11, -0x1

    .line 533
    .local v11, "operation":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x5

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 534
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 535
    .local v18, "status":I
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 536
    const/4 v11, 0x2

    .line 538
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 539
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 540
    const-string/jumbo v21, "success"

    const/16 v23, 0x2

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 541
    const-string/jumbo v21, "Mount"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 543
    :cond_12
    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 544
    const-string/jumbo v21, ""

    const/16 v23, 0x2

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 545
    const-string/jumbo v21, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 547
    .end local v18    # "status":I
    :cond_13
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 548
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 550
    .restart local v17    # "reqEnc":I
    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 551
    if-nez v17, :cond_14

    const/4 v11, 0x3

    .line 553
    :goto_d
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 554
    const-string/jumbo v21, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 555
    new-instance v14, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 556
    if-nez v17, :cond_15

    .line 557
    const/16 v21, 0x2

    .line 559
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v23

    .line 555
    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v14, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 560
    .restart local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 551
    .end local v14    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_14
    const/4 v11, 0x2

    goto :goto_d

    .line 558
    :cond_15
    const/16 v21, 0x3

    goto :goto_e

    .line 562
    .end local v17    # "reqEnc":I
    :cond_16
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_MOUNT extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 567
    .end local v11    # "operation":I
    :pswitch_7
    const/4 v12, -0x1

    .line 568
    .local v12, "operationUnmount":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 569
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 570
    .restart local v18    # "status":I
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 571
    const-string/jumbo v21, ""

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 573
    :cond_17
    const/4 v12, 0x3

    goto/16 :goto_1

    .line 575
    .end local v18    # "status":I
    :cond_18
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_UNMOUNT extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 580
    .end local v12    # "operationUnmount":I
    :pswitch_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_23

    .line 581
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 582
    .restart local v18    # "status":I
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 583
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 585
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 588
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v15, "policy":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v4

    .line 590
    .local v4, "SDCardState":I
    const-string/jumbo v21, "policy"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 593
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 594
    const/16 v16, -0x1

    .line 596
    .local v16, "rc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptPrefs;->migrationUUIDPrefs(Ljava/lang/String;Z)I

    move-result v16

    .line 597
    if-nez v16, :cond_19

    .line 598
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "Migration Success, so re-call policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v4

    .line 600
    const-string/jumbo v21, "policy"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 603
    :cond_19
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_1a

    .line 604
    if-nez v4, :cond_1c

    .line 605
    :cond_1a
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "SD card has decrypting/encrypting state -> Self Decrypting/Encrypting!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 664
    .end local v4    # "SDCardState":I
    .end local v15    # "policy":Landroid/os/Bundle;
    .end local v16    # "rc":I
    .end local v18    # "status":I
    :cond_1b
    :goto_f
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    goto/16 :goto_1

    .line 608
    .restart local v4    # "SDCardState":I
    .restart local v15    # "policy":Landroid/os/Bundle;
    .restart local v16    # "rc":I
    .restart local v18    # "status":I
    :cond_1c
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v4, v0, :cond_1d

    .line 609
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "ENC_META_CHECK : Error Case (Encrypted on other device)"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 v21, 0x8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 611
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v21, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "OtherDevice"

    const-string/jumbo v23, "exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const/high16 v21, 0x10400000

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 615
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_f

    .line 616
    :catch_0
    move-exception v5

    .line 617
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed to start intent activity"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 620
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1d
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "ENC_META_CHECK : Encryption State Normal"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 627
    .end local v16    # "rc":I
    :cond_1e
    if-eqz v4, :cond_1f

    .line 628
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_20

    .line 629
    :cond_1f
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "ENC_META_CHECK : Meta deleted Case"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 632
    :cond_20
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_21

    .line 633
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "SD card has decrypting state -> Self Decrypting!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 637
    :cond_21
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_22

    .line 638
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "ENC_META_CHECK : EAS Policy Set"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v21, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v21, 0x10400000

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 641
    sget-boolean v21, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v21, :cond_1b

    .line 643
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_f

    .line 644
    :catch_1
    move-exception v5

    .line 645
    .restart local v5    # "e":Landroid/content/ActivityNotFoundException;
    :try_start_6
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed to start intent activity"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 649
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_22
    const-string/jumbo v21, "DirEncryptService"

    const-string/jumbo v23, "ENC_META_CHECK : Normal SD Card"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 653
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 655
    const-string/jumbo v21, "done"

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 660
    .end local v4    # "SDCardState":I
    .end local v15    # "policy":Landroid/os/Bundle;
    .end local v18    # "status":I
    :cond_23
    const-string/jumbo v21, "DirEncryptService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "RESP_ENC_META_CHECK extra data recvd["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "], please fix!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 662
    const-string/jumbo v21, "free"

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_f

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x2ab
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method ready()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 354
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 368
    return-void
.end method

.method public registerStorageEventListener()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "RegisterStorageEventListner fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "RegisterStorageEventListner success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public setBootComplted(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 350
    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 360
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 358
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 322
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 321
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 5

    .prologue
    .line 781
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 783
    const-string/jumbo v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SD card  : State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / Admin policy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / Encrypted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    const-string/jumbo v2, "DirEncryptService"

    const-string/jumbo v3, "Unmount SD Card By Admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 792
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 372
    return-void
.end method
