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

    .line 48
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    .line 49
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 77
    sput-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 78
    sput-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 64
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 66
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 69
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 83
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 84
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 85
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 88
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 90
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 95
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 107
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 305
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 306
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 307
    new-instance v1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method private checkSdCardMetafile()V
    .locals 15

    .prologue
    const/high16 v14, 0x10400000

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1003
    iput v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1004
    iput v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1006
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 1009
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v6, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 1011
    .local v0, "SDCardState":I
    const-string/jumbo v8, "policy"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1015
    .local v4, "isPolicy":I
    const-string/jumbo v8, "sec.fle.encryption.status"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, "isExistMeta":Ljava/lang/String;
    const-string/jumbo v8, "DirEncryptService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkSdCardMetafile result "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string/jumbo v8, "encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1018
    const/4 v7, -0x1

    .line 1020
    .local v7, "rc":I
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v9}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/DirEncryptPrefs;->migrationUUIDPrefs(Ljava/lang/String;Z)I

    move-result v7

    .line 1021
    if-nez v7, :cond_0

    .line 1022
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "Migration Success, so re-call policy"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 1024
    const-string/jumbo v8, "policy"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1027
    :cond_0
    if-eq v0, v12, :cond_1

    .line 1028
    if-nez v0, :cond_3

    .line 1029
    :cond_1
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "SD card has decrypting/encrypting state -> Self Decrypting/Encrypting!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-boolean v12, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1031
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v8}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 1094
    .end local v7    # "rc":I
    :cond_2
    :goto_0
    sput-boolean v11, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 1002
    return-void

    .line 1032
    .restart local v7    # "rc":I
    :cond_3
    if-ne v0, v13, :cond_5

    .line 1033
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "ENC_META_CHECK : Error Case (Encrypted on other device)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v8, 0x8

    iput v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1036
    const-string/jumbo v8, "done"

    invoke-direct {p0, v13, v8}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1038
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1039
    const-string/jumbo v9, "user_setup_complete"

    .line 1038
    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1041
    .local v5, "isSetupWizardCompleted":I
    if-nez v5, :cond_4

    .line 1042
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "The Setup Wizard is not completed yet"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void

    .line 1046
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "OtherDevice"

    const-string/jumbo v9, "exception"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1050
    :try_start_0
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v1

    .line 1052
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "DirEncryptService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to start intent activity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1055
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "isSetupWizardCompleted":I
    :cond_5
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iput-boolean v12, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1059
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v8}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    .end local v7    # "rc":I
    :cond_6
    if-eqz v0, :cond_7

    .line 1063
    const/4 v8, 0x2

    if-ne v0, v8, :cond_8

    .line 1064
    :cond_7
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "ENC_META_CHECK : Meta deleted Case"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iput-boolean v12, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1066
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v8}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    :cond_8
    if-ne v0, v12, :cond_9

    .line 1068
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "SD card has decrypting state -> Self Decrypting!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iput-boolean v12, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1070
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v8}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    :cond_9
    if-ne v4, v12, :cond_a

    .line 1073
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "ENC_META_CHECK : EAS Policy Set"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1076
    sget-boolean v8, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    if-nez v8, :cond_2

    .line 1078
    :try_start_1
    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1079
    :catch_1
    move-exception v1

    .line 1080
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "DirEncryptService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to start intent activity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1084
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iput-boolean v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1088
    iput-boolean v12, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 1090
    const-string/jumbo v8, "done"

    invoke-direct {p0, v13, v8}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1118
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "clearNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 1120
    const-string/jumbo v2, "notification"

    .line 1119
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1121
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1117
    return-void
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 13
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string/jumbo v10, "vold.decrypt"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 848
    .local v5, "encryptBoot":Ljava/lang/String;
    const-string/jumbo v10, "trigger_restart_min_framework"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 849
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Do not work if encryption lock page"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void

    .line 853
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

    .line 858
    :cond_1
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-eqz v10, :cond_2

    .line 859
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 860
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 863
    :cond_2
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "clearNotification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 866
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 869
    :try_start_0
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :cond_3
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v4

    .line 871
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 873
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v10, "HiddenMount"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 886
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "clearNotification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 889
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 890
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 891
    .local v1, "currentUid":I
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 892
    .local v6, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v10, :cond_7

    .line 893
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 895
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 896
    .local v0, "SDCardState":I
    if-nez v0, :cond_5

    const/4 v2, 0x1

    .line 897
    .local v2, "doEncrypt":Z
    :goto_1
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    or-int/2addr v2, v10

    .line 899
    .local v2, "doEncrypt":Z
    :try_start_1
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v9

    .line 900
    .local v9, "service":Landroid/os/storage/IMountService;
    if-eqz v9, :cond_3

    .line 901
    invoke-interface {v9, v2}, Landroid/os/storage/IMountService;->encryptExternalStorage(Z)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 902
    .end local v9    # "service":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v8

    .line 903
    .local v8, "re":Landroid/os/RemoteException;
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Unable to communicate with Mountservice"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 896
    .end local v2    # "doEncrypt":Z
    .end local v8    # "re":Landroid/os/RemoteException;
    :cond_5
    const/4 v2, 0x0

    .local v2, "doEncrypt":Z
    goto :goto_1

    .line 897
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 907
    .end local v0    # "SDCardState":I
    .end local v2    # "doEncrypt":Z
    :cond_7
    :try_start_2
    const-string/jumbo v10, "vold.crypto.ext_migrate"

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 908
    .local v7, "migrateProperty":Ljava/lang/String;
    const-string/jumbo v10, "1"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 911
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 913
    .end local v7    # "migrateProperty":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 914
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 917
    .end local v1    # "currentUid":I
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_8
    const-string/jumbo v10, "MoveMount"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 926
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 927
    .restart local v0    # "SDCardState":I
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    .line 928
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string/jumbo v10, "success"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 930
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 931
    const-string/jumbo v10, "busy"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 932
    :cond_9
    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    .line 933
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Since encrypt is ON: final mount command (ENCRYPTED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :cond_a
    const/4 v10, 0x3

    if-ne v0, v10, :cond_c

    .line 938
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_c

    .line 939
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 941
    const-string/jumbo v10, "Mount"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 942
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "delete uuid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/DirEncryptPrefs;->clearPrefs(Ljava/lang/String;)V

    .line 945
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    if-nez v10, :cond_b

    .line 946
    const-string/jumbo v10, "success"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 948
    :cond_b
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "don\'t send encryption notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 951
    :cond_c
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "MOVE_MOUNT => ENCRYPTING or OTHER_ENCRYPT"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 953
    .end local v0    # "SDCardState":I
    :cond_d
    const-string/jumbo v10, "mounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 954
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "Update SD card encryption status"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 956
    const-string/jumbo v10, "free"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 957
    :cond_e
    const-string/jumbo v10, "removed"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 958
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 959
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 960
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 962
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "SD card removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 965
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 966
    const-string/jumbo v10, "free"

    const/4 v11, 0x0

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 967
    :cond_f
    const-string/jumbo v10, "unmounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 968
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "SD card unmounted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v10, :cond_10

    .line 970
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 973
    :cond_10
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-eqz v10, :cond_3

    .line 974
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 976
    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :cond_11
    const-string/jumbo v10, "bad_removal"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 979
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 980
    const-string/jumbo v10, "DirEncryptService"

    const-string/jumbo v11, "SD card bad removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v10, :cond_3

    .line 982
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 983
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 984
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
    .line 98
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
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
    .line 1100
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1103
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1104
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1105
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1106
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1108
    return-object v0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1112
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "adminStart"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    return-object v0
.end method

.method private getStorageCardEncryptionInternal(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "policy"    # Landroid/os/Bundle;

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 730
    .local v0, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    if-eqz p1, :cond_0

    .line 731
    const-string/jumbo v2, "policy"

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
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

    .line 735
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getCurrentUUID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 737
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "getStorageCardEncryptionInternal : UUID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v1, 0x3

    return v1

    .line 731
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    return v1
.end method

.method private isAdminApplied()Z
    .locals 5

    .prologue
    .line 813
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 814
    .local v0, "adminPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 815
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 817
    .local v2, "isDisabledByAdmin":Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 823
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 824
    const/4 v2, 0x1

    .line 827
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 832
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 834
    .local v0, "pol":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 835
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 836
    return v3

    .line 839
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

    .line 755
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    .line 754
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .locals 11
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "storage"    # I

    .prologue
    .line 759
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

    .line 760
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v10

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 762
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/storage/IDirEncryptServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
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

    .line 766
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

    .line 762
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 769
    :catch_0
    move-exception v6

    .line 770
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

    .line 760
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "i":I
    .end local v8    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 767
    .restart local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .restart local v7    # "i":I
    .restart local v8    # "n":I
    :catch_1
    move-exception v9

    .line 768
    .local v9, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "Listener dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 773
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v9    # "rex":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 758
    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
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
    .line 348
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

    .line 349
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 347
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "encType"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1125
    const/4 v8, 0x0

    .line 1126
    .local v8, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1127
    .local v3, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v7, ""

    .line 1128
    .local v7, "tickerText":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 1129
    .local v6, "contentText":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 1130
    .local v5, "contentTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1132
    .local v4, "icon":I
    packed-switch p1, :pswitch_data_0

    .line 1261
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1264
    :cond_0
    return-void

    .line 1134
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040674

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040675

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1138
    .local v3, "pending":Landroid/app/PendingIntent;
    const v4, 0x10802fa

    .line 1267
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_1
    move-object/from16 v2, p0

    .line 1271
    invoke-direct/range {v2 .. v7}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1272
    .local v8, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_2

    .line 1273
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1274
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1275
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1276
    iget v2, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v8, Landroid/app/Notification;->defaults:I

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1278
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    sget v2, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v9, v2, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1124
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 1142
    .local v3, "pending":Landroid/app/PendingIntent;
    .local v8, "notification":Landroid/app/Notification;
    :pswitch_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1144
    const-string/jumbo v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067a

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1147
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1148
    const v4, 0x10802fa

    .line 1169
    :goto_1
    move-object v5, v7

    .line 1170
    move-object v7, v6

    .line 1171
    goto/16 :goto_0

    .line 1150
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

    .line 1151
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1152
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1153
    const v4, 0x10802f9

    goto :goto_1

    .line 1156
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1157
    const-string/jumbo v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1160
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1161
    const v4, 0x108028e

    goto :goto_1

    .line 1163
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

    .line 1164
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1165
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1166
    const v4, 0x108028d

    goto/16 :goto_1

    .line 1174
    .local v3, "pending":Landroid/app/PendingIntent;
    :pswitch_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040679

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1177
    const v4, 0x10802fa

    .line 1183
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1184
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1185
    goto/16 :goto_0

    .line 1179
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067d

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1181
    const v4, 0x108028e

    goto :goto_2

    .line 1188
    :pswitch_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1189
    .local v10, "progress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v11

    .line 1191
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_7

    .line 1192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1194
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v2, v10}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-set1(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-set0(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1196
    if-nez v10, :cond_9

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1199
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

    .line 1204
    return-void

    .line 1200
    :cond_9
    const/16 v2, 0x64

    if-ne v2, v10, :cond_8

    .line 1201
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1189
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2

    .line 1207
    .end local v10    # "progress":I
    :pswitch_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1208
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1211
    const v4, 0x10802f9

    .line 1217
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

    .line 1218
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1219
    move-object v5, v7

    .line 1220
    goto/16 :goto_0

    .line 1213
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1215
    const v4, 0x108028d

    goto :goto_4

    .line 1223
    :pswitch_6
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 1224
    const v4, 0x10802f9

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1232
    :goto_5
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1234
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1235
    goto/16 :goto_0

    .line 1228
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_b
    const v4, 0x108028d

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1238
    :pswitch_7
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 1239
    const v4, 0x10802f9

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040678

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1247
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

    .line 1248
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1249
    goto/16 :goto_0

    .line 1243
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_c
    const v4, 0x10802f9

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104067f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 1252
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040676

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040677

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1255
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1256
    const v4, 0x108007b

    .line 1257
    move-object v5, v7

    .line 1258
    goto/16 :goto_0

    .line 1132
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
    .line 778
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 328
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 327
    return-void
.end method

.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    const-string/jumbo v2, ""

    return-object v2

    .line 719
    :cond_0
    const-string/jumbo v2, "\\\\"

    const-string/jumbo v3, "\\\\\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "temp":Ljava/lang/String;
    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "temp2":Ljava/lang/String;
    return-object v1
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    sget-object v2, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 406
    :pswitch_0
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v3, "Invalid command!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 378
    return-void

    .line 382
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 386
    :pswitch_2
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 387
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

    .line 388
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 394
    const-string/jumbo v1, "HiddenMount"

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
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

    .line 397
    :cond_0
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v3, "Command.ENC_META_CHECK:: non operation"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 380
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
    .line 344
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "EncPrefs found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-nez p1, :cond_0

    .line 694
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "param is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p1

    .line 697
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

    .line 698
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 705
    .end local v0    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :goto_0
    return-object v0

    .line 702
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

    .line 990
    const-string/jumbo v0, "/.MetaEcfsFile"

    .line 991
    .local v0, "SDCARD_ENC_PREFERENCES_FILE":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    .line 992
    .local v2, "sdpath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 993
    return v4

    .line 995
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/.MetaEcfsFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 997
    const/4 v3, 0x1

    return v3

    .line 999
    :cond_1
    return v4
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 2

    .prologue
    .line 367
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
    .locals 26
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 413
    sget-object v23, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v23

    .line 414
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-eqz v22, :cond_0

    const/4 v8, 0x1

    .line 415
    .local v8, "isPolicy":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    monitor-exit v23

    .line 682
    const/16 v22, 0x1

    return v22

    .line 414
    .end local v8    # "isPolicy":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "isPolicy":I
    goto :goto_0

    .line 417
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 418
    const-string/jumbo v24, "notification"

    .line 417
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 419
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    sget v22, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 413
    .end local v8    # "isPolicy":I
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 423
    .restart local v8    # "isPolicy":I
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 424
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 425
    .local v18, "reqEnc":I
    const/16 v22, 0x3

    aget-object v20, p3, v22

    .line 427
    .local v20, "status":Ljava/lang/String;
    const-string/jumbo v22, "success"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 428
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "RESP_ENCRYPT success"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 430
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 431
    const-string/jumbo v22, "success"

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 432
    if-nez v18, :cond_1

    .line 433
    const/16 v22, 0x3

    .line 434
    :goto_2
    const-string/jumbo v24, "Mount"

    .line 432
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 437
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "ENCRYPT Response admin : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-nez v18, :cond_2

    .line 439
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "Decrypt compelte"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_3
    new-instance v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 445
    if-nez v18, :cond_3

    .line 446
    const/16 v22, 0x3

    .line 448
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 444
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v15, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 449
    .local v15, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 433
    .end local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_1
    const/16 v22, 0x2

    goto :goto_2

    .line 441
    :cond_2
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "Encrypt complete"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 447
    :cond_3
    const/16 v22, 0x2

    goto :goto_4

    .line 451
    :cond_4
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "RESP_ENCRYPT failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 453
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 454
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 459
    :cond_5
    :goto_5
    const-string/jumbo v22, "failed"

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 460
    if-nez v18, :cond_7

    .line 461
    const/16 v22, 0x3

    .line 462
    :goto_6
    const-string/jumbo v24, "free"

    .line 460
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 463
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_1

    .line 456
    :cond_6
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_5

    .line 461
    :cond_7
    const/16 v22, 0x2

    goto :goto_6

    .line 466
    .end local v18    # "reqEnc":I
    .end local v20    # "status":Ljava/lang/String;
    :cond_8
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_ENCRYPT extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 471
    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 472
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "DirEncryptServiceVoldResponse.PROGRESS inside"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v22, 0x1

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 474
    .restart local v18    # "reqEnc":I
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 475
    .local v14, "percentage":I
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 476
    .local v21, "storage":I
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 477
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 481
    :goto_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 482
    if-nez v18, :cond_a

    const/16 v22, 0x3

    .line 483
    :goto_8
    const-string/jumbo v24, "busy"

    .line 482
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 479
    :cond_9
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_7

    .line 482
    :cond_a
    const/16 v22, 0x2

    goto :goto_8

    .line 485
    .end local v14    # "percentage":I
    .end local v18    # "reqEnc":I
    .end local v21    # "storage":I
    :cond_b
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_PROGRESS extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 490
    :pswitch_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x8

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 491
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 492
    .restart local v18    # "reqEnc":I
    const/16 v22, 0x5

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 493
    .local v6, "encType":I
    const/16 v22, 0x6

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 495
    .local v10, "needed":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 496
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 497
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 499
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 500
    if-nez v18, :cond_c

    const/16 v22, 0x3

    .line 501
    :goto_9
    const-string/jumbo v24, "free"

    .line 500
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 502
    new-instance v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 503
    if-nez v18, :cond_d

    .line 504
    const/16 v22, 0x2

    .line 506
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 502
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v15, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 507
    .restart local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 500
    .end local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_c
    const/16 v22, 0x2

    goto :goto_9

    .line 505
    :cond_d
    const/16 v22, 0x3

    goto :goto_a

    .line 509
    .end local v6    # "encType":I
    .end local v10    # "needed":I
    .end local v18    # "reqEnc":I
    :cond_e
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_PRESCAN_FULL_ERR extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 514
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x8

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 515
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 516
    .restart local v18    # "reqEnc":I
    const/16 v22, 0x5

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 517
    .restart local v6    # "encType":I
    const/16 v22, 0xb

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 518
    const-string/jumbo v22, ""

    const/16 v24, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 519
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 520
    if-nez v18, :cond_f

    const/16 v22, 0x3

    .line 521
    :goto_b
    const-string/jumbo v24, "free"

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 522
    new-instance v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 523
    if-nez v18, :cond_10

    .line 524
    const/16 v22, 0x2

    .line 526
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 522
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v15, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 527
    .restart local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 520
    .end local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_f
    const/16 v22, 0x2

    goto :goto_b

    .line 525
    :cond_10
    const/16 v22, 0x3

    goto :goto_c

    .line 529
    .end local v6    # "encType":I
    .end local v18    # "reqEnc":I
    :cond_11
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_FILE_OPEN_ERR extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 534
    :pswitch_6
    const/4 v12, -0x1

    .line 535
    .local v12, "operation":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 536
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 537
    .local v19, "status":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 538
    const/4 v12, 0x2

    .line 540
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 541
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 542
    const-string/jumbo v22, "success"

    const/16 v24, 0x2

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 543
    const-string/jumbo v22, "Mount"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 545
    :cond_12
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 546
    const-string/jumbo v22, ""

    const/16 v24, 0x2

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 547
    const-string/jumbo v22, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 549
    .end local v19    # "status":I
    :cond_13
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 550
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 552
    .restart local v18    # "reqEnc":I
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 553
    if-nez v18, :cond_14

    const/4 v12, 0x3

    .line 555
    :goto_d
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 556
    const-string/jumbo v22, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 557
    new-instance v15, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 558
    if-nez v18, :cond_15

    .line 559
    const/16 v22, 0x2

    .line 561
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 557
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v15, v8, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 562
    .restart local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 553
    .end local v15    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_14
    const/4 v12, 0x2

    goto :goto_d

    .line 560
    :cond_15
    const/16 v22, 0x3

    goto :goto_e

    .line 564
    .end local v18    # "reqEnc":I
    :cond_16
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_MOUNT extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 569
    .end local v12    # "operation":I
    :pswitch_7
    const/4 v13, -0x1

    .line 570
    .local v13, "operationUnmount":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 571
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 572
    .restart local v19    # "status":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 573
    const-string/jumbo v22, ""

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 575
    :cond_17
    const/4 v13, 0x3

    goto/16 :goto_1

    .line 577
    .end local v19    # "status":I
    :cond_18
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_UNMOUNT extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 582
    .end local v13    # "operationUnmount":I
    :pswitch_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 583
    const/16 v22, 0x1

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 584
    .restart local v19    # "status":I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 585
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 587
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 590
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 591
    .local v16, "policy":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v4

    .line 592
    .local v4, "SDCardState":I
    const-string/jumbo v22, "policy"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 595
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 596
    const/16 v17, -0x1

    .line 598
    .local v17, "rc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptPrefs;->migrationUUIDPrefs(Ljava/lang/String;Z)I

    move-result v17

    .line 599
    if-nez v17, :cond_19

    .line 600
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "Migration Success, so re-call policy"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v4

    .line 602
    const-string/jumbo v22, "policy"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 605
    :cond_19
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_1a

    .line 606
    if-nez v4, :cond_1c

    .line 607
    :cond_1a
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "SD card has decrypting/encrypting state -> Self Decrypting/Encrypting!!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 676
    .end local v4    # "SDCardState":I
    .end local v16    # "policy":Landroid/os/Bundle;
    .end local v17    # "rc":I
    .end local v19    # "status":I
    :cond_1b
    :goto_f
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    goto/16 :goto_1

    .line 610
    .restart local v4    # "SDCardState":I
    .restart local v16    # "policy":Landroid/os/Bundle;
    .restart local v17    # "rc":I
    .restart local v19    # "status":I
    :cond_1c
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v4, v0, :cond_1e

    .line 611
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "ENC_META_CHECK : Error Case (Encrypted on other device)"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 616
    const-string/jumbo v24, "user_setup_complete"

    const/16 v25, 0x0

    .line 614
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 618
    .local v9, "isSetupWizardCompleted":I
    if-nez v9, :cond_1d

    .line 619
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "The Setup Wizard is not completed yet"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 623
    :cond_1d
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v22, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "OtherDevice"

    const-string/jumbo v24, "exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const/high16 v22, 0x10400000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_f

    .line 628
    :catch_0
    move-exception v5

    .line 629
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failed to start intent activity"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 632
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "isSetupWizardCompleted":I
    :cond_1e
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "ENC_META_CHECK : Encryption State Normal"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 639
    .end local v17    # "rc":I
    :cond_1f
    if-eqz v4, :cond_20

    .line 640
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v4, v0, :cond_21

    .line 641
    :cond_20
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "ENC_META_CHECK : Meta deleted Case"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 644
    :cond_21
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_22

    .line 645
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "SD card has decrypting state -> Self Decrypting!!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 649
    :cond_22
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_23

    .line 650
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "ENC_META_CHECK : EAS Policy Set"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v22, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v22, 0x10400000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 653
    sget-boolean v22, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v22, :cond_1b

    .line 655
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_f

    .line 656
    :catch_1
    move-exception v5

    .line 657
    .restart local v5    # "e":Landroid/content/ActivityNotFoundException;
    :try_start_6
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failed to start intent activity"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 661
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_23
    const-string/jumbo v22, "DirEncryptService"

    const-string/jumbo v24, "ENC_META_CHECK : Normal SD Card"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 665
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 667
    const-string/jumbo v22, "done"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 672
    .end local v4    # "SDCardState":I
    .end local v16    # "policy":Landroid/os/Bundle;
    .end local v19    # "status":I
    :cond_24
    const-string/jumbo v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RESP_ENC_META_CHECK extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 674
    const-string/jumbo v22, "free"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_f

    .line 415
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
    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 356
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 370
    return-void
.end method

.method public registerStorageEventListener()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "RegisterStorageEventListner fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "RegisterStorageEventListner success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public setBootComplted(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 352
    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 362
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 360
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 324
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 323
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 5

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 795
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

    .line 796
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    const-string/jumbo v2, "DirEncryptService"

    const-string/jumbo v3, "Unmount SD Card By Admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 804
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 374
    return-void
.end method
