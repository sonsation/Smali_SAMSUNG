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

.field private mUserManager:Landroid/os/UserManager;


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

    .line 50
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    .line 51
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 80
    sput-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 81
    sput-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 67
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 69
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 72
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 86
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 87
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 88
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 91
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 93
    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 98
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 110
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 327
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 328
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 329
    new-instance v1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUserManager:Landroid/os/UserManager;

    .line 325
    return-void
.end method

.method private checkSdCardMetafile()V
    .locals 13

    .prologue
    .line 1022
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1023
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1025
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 1028
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1029
    .local v7, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 1030
    .local v0, "SDCardState":I
    const-string v10, "policy"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1034
    .local v4, "isPolicy":I
    const-string v10, "sec.fle.encryption.status"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1035
    .local v3, "isExistMeta":Ljava/lang/String;
    const-string v10, "DirEncryptService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkSdCardMetafile result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v10, "encrypted"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1038
    const/4 v8, -0x1

    .line 1039
    .local v8, "rc":I
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v6

    .line 1040
    .local v6, "mUserUnlocked":Z
    const/4 v9, 0x0

    .line 1043
    .local v9, "skipMounting":Z
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1044
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1045
    const/4 v9, 0x1

    .line 1047
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const/4 v9, 0x0

    .line 1050
    :cond_1
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/DirEncryptPrefs;->migrationUUIDPrefs(Ljava/lang/String;Z)I

    move-result v8

    .line 1051
    if-nez v8, :cond_2

    .line 1052
    const-string v10, "DirEncryptService"

    const-string v11, "Migration Success, so re-call policy"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 1054
    const-string v10, "policy"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1057
    :cond_2
    const/4 v10, 0x1

    if-eq v0, v10, :cond_3

    .line 1058
    if-nez v0, :cond_7

    .line 1059
    :cond_3
    const-string v10, "DirEncryptService"

    const-string v11, "SD card has decrypting/encrypting state -> Self Decrypting/Encrypting!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-eqz v9, :cond_5

    .line 1061
    const-string v10, "DirEncryptService"

    const-string v11, "checkSdCardMetafile but user locked yet"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1045
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 1064
    :cond_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1065
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 1135
    .end local v6    # "mUserUnlocked":Z
    .end local v8    # "rc":I
    .end local v9    # "skipMounting":Z
    :cond_6
    :goto_1
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 1021
    return-void

    .line 1066
    .restart local v6    # "mUserUnlocked":Z
    .restart local v8    # "rc":I
    .restart local v9    # "skipMounting":Z
    :cond_7
    const/4 v10, 0x3

    if-ne v0, v10, :cond_a

    .line 1067
    const-string v10, "DirEncryptService"

    const-string v11, "ENC_META_CHECK : Error Case (Encrypted on other device)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/16 v10, 0x8

    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1069
    const-string v10, "done"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1070
    if-nez v6, :cond_8

    .line 1071
    const-string v10, "DirEncryptService"

    const-string v11, "checkSdCardMetafile but user locked yet"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-void

    .line 1075
    :cond_8
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1076
    const-string v11, "user_setup_complete"

    const/4 v12, 0x0

    .line 1075
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1078
    .local v5, "isSetupWizardCompleted":I
    if-nez v5, :cond_9

    .line 1079
    const-string v10, "DirEncryptService"

    const-string v11, "The Setup Wizard is not completed yet"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1083
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v2, "intent":Landroid/content/Intent;
    const-string v10, "OtherDevice"

    const-string v11, "exception"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const/high16 v10, 0x10400000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    :try_start_0
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v10, "DirEncryptService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to start intent activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1092
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "isSetupWizardCompleted":I
    :cond_a
    const-string v10, "DirEncryptService"

    const-string v11, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    if-eqz v9, :cond_b

    .line 1094
    const-string v10, "DirEncryptService"

    const-string v11, "checkSdCardMetafile but user locked yet"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1099
    :cond_b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1100
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1103
    .end local v6    # "mUserUnlocked":Z
    .end local v8    # "rc":I
    .end local v9    # "skipMounting":Z
    :cond_c
    if-eqz v0, :cond_d

    .line 1104
    const/4 v10, 0x2

    if-ne v0, v10, :cond_e

    .line 1105
    :cond_d
    const-string v10, "DirEncryptService"

    const-string v11, "ENC_META_CHECK : Meta deleted Case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1107
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1108
    :cond_e
    const/4 v10, 0x1

    if-ne v0, v10, :cond_f

    .line 1109
    const-string v10, "DirEncryptService"

    const-string v11, "SD card has decrypting state -> Self Decrypting!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1111
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1113
    :cond_f
    const/4 v10, 0x1

    if-ne v4, v10, :cond_10

    .line 1114
    const-string v10, "DirEncryptService"

    const-string v11, "ENC_META_CHECK : EAS Policy Set"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v10, 0x10400000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1117
    sget-boolean v10, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    if-nez v10, :cond_6

    .line 1119
    :try_start_1
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1120
    :catch_1
    move-exception v1

    .line 1121
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v10, "DirEncryptService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to start intent activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1125
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v10, "DirEncryptService"

    const-string v11, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1129
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 1131
    const-string v10, "done"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1159
    const-string v1, "DirEncryptService"

    const-string v2, "clearNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 1161
    const-string v2, "notification"

    .line 1160
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1162
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1158
    return-void
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 13
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 876
    const-string v10, "vold.decrypt"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 877
    .local v5, "encryptBoot":Ljava/lang/String;
    const-string v10, "trigger_restart_min_framework"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 878
    const-string v10, "DirEncryptService"

    const-string v11, "Do not work if encryption lock page"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 882
    :cond_0
    const-string v10, "unmounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getUserDiff()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 887
    :cond_1
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-eqz v10, :cond_2

    .line 888
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 889
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 891
    :cond_2
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 892
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 895
    :try_start_0
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :cond_3
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v4

    .line 897
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 899
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v10, "HiddenMount"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 911
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 913
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 914
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 915
    .local v1, "currentUid":I
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 916
    .local v6, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v10, :cond_7

    .line 917
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 919
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 920
    .local v0, "SDCardState":I
    if-nez v0, :cond_5

    const/4 v2, 0x1

    .line 921
    .local v2, "doEncrypt":Z
    :goto_1
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    or-int/2addr v2, v10

    .line 923
    .local v2, "doEncrypt":Z
    :try_start_1
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v9

    .line 924
    .local v9, "service":Landroid/os/storage/IMountService;
    if-eqz v9, :cond_3

    .line 925
    invoke-interface {v9, v2}, Landroid/os/storage/IMountService;->encryptExternalStorage(Z)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 926
    .end local v9    # "service":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v8

    .line 927
    .local v8, "re":Landroid/os/RemoteException;
    const-string v10, "DirEncryptService"

    const-string v11, "Unable to communicate with Mountservice"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 920
    .end local v2    # "doEncrypt":Z
    .end local v8    # "re":Landroid/os/RemoteException;
    :cond_5
    const/4 v2, 0x0

    .local v2, "doEncrypt":Z
    goto :goto_1

    .line 921
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 931
    .end local v0    # "SDCardState":I
    .end local v2    # "doEncrypt":Z
    :cond_7
    :try_start_2
    const-string v10, "vold.crypto.ext_migrate"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 932
    .local v7, "migrateProperty":Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 935
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 937
    .end local v7    # "migrateProperty":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 938
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 941
    .end local v1    # "currentUid":I
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_8
    const-string v10, "MoveMount"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 950
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v0

    .line 951
    .restart local v0    # "SDCardState":I
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    .line 952
    const-string v10, "DirEncryptService"

    const-string v11, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v10, "success"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 954
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 955
    const-string v10, "busy"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 956
    :cond_9
    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    .line 957
    const-string v10, "DirEncryptService"

    const-string v11, "Since encrypt is ON: final mount command (ENCRYPTED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 961
    :cond_a
    const/4 v10, 0x3

    if-ne v0, v10, :cond_c

    .line 962
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_c

    .line 963
    const-string v10, "DirEncryptService"

    const-string v11, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 965
    const-string v10, "Mount"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 966
    const-string v10, "DirEncryptService"

    const-string v11, "delete uuid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v11, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v11}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/DirEncryptPrefs;->clearPrefs(Ljava/lang/String;)V

    .line 969
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    if-nez v10, :cond_b

    .line 970
    const-string v10, "success"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :cond_b
    const-string v10, "DirEncryptService"

    const-string v11, "don\'t send encryption notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 975
    :cond_c
    const-string v10, "DirEncryptService"

    const-string v11, "MOVE_MOUNT => ENCRYPTING or OTHER_ENCRYPT"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 977
    .end local v0    # "SDCardState":I
    :cond_d
    const-string v10, "mounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 978
    const-string v10, "DirEncryptService"

    const-string v11, "Update SD card encryption status"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 980
    const-string v10, "free"

    const/4 v11, 0x3

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 981
    :cond_e
    const-string v10, "removed"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 982
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 983
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 984
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 986
    const-string v10, "DirEncryptService"

    const-string v11, "SD card removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 989
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 990
    const-string v10, "free"

    const/4 v11, 0x0

    invoke-direct {p0, v11, v10}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 991
    :cond_f
    const-string v10, "unmounted"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 992
    const-string v10, "DirEncryptService"

    const-string v11, "SD card unmounted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v10, :cond_10

    .line 994
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 997
    :cond_10
    iget-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-eqz v10, :cond_3

    .line 998
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1000
    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1002
    :cond_11
    const-string v10, "bad_removal"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1003
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1004
    const-string v10, "DirEncryptService"

    const-string v11, "SD card bad removed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v10, :cond_3

    .line 1006
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1007
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1008
    const-string v10, "free"

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
    .line 101
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 103
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    const-string v1, "DirEncryptService"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact mount service"

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
    .line 1141
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1142
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1144
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1145
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1146
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1147
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1149
    return-object v0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    return-object v0
.end method

.method private getStorageCardEncryptionInternal(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "policy"    # Landroid/os/Bundle;

    .prologue
    .line 757
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 759
    .local v0, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    if-eqz p1, :cond_0

    .line 760
    const-string v2, "policy"

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    :cond_0
    const-string v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStorageCardEncryptionInternal : "

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

    .line 764
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getCurrentUUID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 766
    const-string v1, "DirEncryptService"

    const-string v2, "getStorageCardEncryptionInternal : UUID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v1, 0x3

    return v1

    .line 760
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 770
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    return v1
.end method

.method private isAdminApplied()Z
    .locals 5

    .prologue
    .line 842
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 843
    .local v0, "adminPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 844
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 846
    .local v2, "isDisabledByAdmin":Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 852
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    const/4 v2, 0x1

    .line 856
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 861
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 863
    .local v0, "pol":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 864
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 865
    return v3

    .line 868
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

    .line 784
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    .line 783
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .locals 11
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "storage"    # I

    .prologue
    .line 788
    const-string v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEncryptionStatusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v10

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 791
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/storage/IDirEncryptServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    .local v0, "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :try_start_1
    const-string v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
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

    .line 791
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 798
    :catch_0
    move-exception v6

    .line 799
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener failed: "

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

    .line 789
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "i":I
    .end local v8    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 796
    .restart local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .restart local v7    # "i":I
    .restart local v8    # "n":I
    :catch_1
    move-exception v9

    .line 797
    .local v9, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "DirEncryptService"

    const-string v2, "Listener dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v9    # "rex":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 787
    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "DirEncryptService"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 372
    const-string v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 371
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "encType"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1166
    const/4 v8, 0x0

    .line 1167
    .local v8, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1168
    .local v3, "pending":Landroid/app/PendingIntent;
    const-string v7, ""

    .line 1169
    .local v7, "tickerText":Ljava/lang/String;
    const-string v6, ""

    .line 1170
    .local v6, "contentText":Ljava/lang/String;
    const-string v5, ""

    .line 1171
    .local v5, "contentTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1173
    .local v4, "icon":I
    packed-switch p1, :pswitch_data_0

    .line 1302
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1305
    :cond_0
    return-void

    .line 1175
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a5

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a6

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1179
    .local v3, "pending":Landroid/app/PendingIntent;
    const v4, 0x10802fd

    .line 1308
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_1
    move-object/from16 v2, p0

    .line 1312
    invoke-direct/range {v2 .. v7}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1313
    .local v8, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_2

    .line 1314
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1315
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1316
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1317
    iget v2, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v8, Landroid/app/Notification;->defaults:I

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1319
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    sget v2, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v9, v2, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1165
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 1183
    .local v3, "pending":Landroid/app/PendingIntent;
    .local v8, "notification":Landroid/app/Notification;
    :pswitch_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a9

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1185
    const-string v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ab

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1188
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1189
    const v4, 0x10802fd

    .line 1210
    :goto_1
    move-object v5, v7

    .line 1211
    move-object v7, v6

    .line 1212
    goto/16 :goto_0

    .line 1191
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1192
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ac

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1193
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1194
    const v4, 0x10802fc

    goto :goto_1

    .line 1197
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ad

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1198
    const-string v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406af

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1201
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1202
    const v4, 0x108028e

    goto :goto_1

    .line 1204
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1205
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406b0

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1206
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1207
    const v4, 0x108028d

    goto/16 :goto_1

    .line 1215
    .local v3, "pending":Landroid/app/PendingIntent;
    :pswitch_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a9

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406aa

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1218
    const v4, 0x10802fd

    .line 1224
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1225
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1226
    goto/16 :goto_0

    .line 1220
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ad

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ae

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1222
    const v4, 0x108028e

    goto :goto_2

    .line 1229
    :pswitch_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1230
    .local v10, "progress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v11

    .line 1232
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_7

    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1235
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v2, v10}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-set1(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-set0(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1237
    if-nez v10, :cond_9

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1240
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

    .line 1245
    return-void

    .line 1241
    :cond_9
    const/16 v2, 0x64

    if-ne v2, v10, :cond_8

    .line 1242
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1230
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2

    .line 1248
    .end local v10    # "progress":I
    :pswitch_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1249
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a9

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ac

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1252
    const v4, 0x10802fc

    .line 1258
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1259
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1260
    move-object v5, v7

    .line 1261
    goto/16 :goto_0

    .line 1254
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ad

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406b0

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1256
    const v4, 0x108028d

    goto :goto_4

    .line 1264
    :pswitch_6
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 1265
    const v4, 0x10802fc

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a9

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ac

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1273
    :goto_5
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1275
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1276
    goto/16 :goto_0

    .line 1269
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_b
    const v4, 0x108028d

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ad

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406b0

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1279
    :pswitch_7
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 1280
    const v4, 0x10802fc

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a9

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ac

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1288
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1289
    .local v3, "pending":Landroid/app/PendingIntent;
    move-object v5, v7

    .line 1290
    goto/16 :goto_0

    .line 1284
    .local v3, "pending":Landroid/app/PendingIntent;
    :cond_c
    const v4, 0x10802fc

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406ad

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406b0

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 1293
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a7

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10406a8

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v2, v12, v11, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1296
    .local v3, "pending":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1297
    const v4, 0x108007b

    .line 1298
    move-object v5, v7

    .line 1299
    goto/16 :goto_0

    .line 1173
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
    .line 807
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 352
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 351
    return-void
.end method

.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 744
    if-nez p1, :cond_0

    .line 745
    const-string v2, ""

    return-object v2

    .line 748
    :cond_0
    const-string v2, "\\\\"

    const-string v3, "\\\\\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "temp":Ljava/lang/String;
    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "temp2":Ljava/lang/String;
    return-object v1
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 403
    sget-object v2, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 404
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 430
    :pswitch_0
    const-string v1, "DirEncryptService"

    const-string v3, "Invalid command!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 402
    return-void

    .line 406
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 410
    :pswitch_2
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 411
    .local v0, "state":Ljava/lang/String;
    const-string v1, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command.USB_STATE:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 418
    const-string v1, "HiddenMount"

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "dir_crypto"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "encMetaCheck"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "/mnt/secure/staging"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_0
    const-string v1, "DirEncryptService"

    const-string v3, "Command.ENC_META_CHECK:: non operation"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 404
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
    .line 368
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .locals 1

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    const-string v1, "DirEncryptService"

    const-string v2, "EncPrefs found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v1, "DirEncryptService"

    const-string v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-nez p1, :cond_0

    .line 723
    const-string v1, "DirEncryptService"

    const-string v2, "param is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p1

    .line 726
    :cond_0
    const-string v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdCardEncryptionPreferences : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v1, "DirEncryptService"

    const-string v2, "************************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 734
    .end local v0    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :goto_0
    return-object v0

    .line 731
    .restart local v0    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_1
    const-string v1, "DirEncryptService"

    const-string v2, "EncPrefs not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEncryptionAppliedSDCard()Z
    .locals 3

    .prologue
    .line 1014
    const-string v1, "sec.fle.encryption.status"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "isExistMeta":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    const/4 v1, 0x1

    return v1

    .line 1018
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 2

    .prologue
    .line 391
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
    .line 437
    sget-object v23, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v23

    .line 438
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    if-eqz v22, :cond_1

    const/4 v7, 0x1

    .line 439
    .local v7, "isPolicy":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    monitor-exit v23

    .line 711
    const/16 v22, 0x1

    return v22

    .line 438
    .end local v7    # "isPolicy":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isPolicy":I
    goto :goto_0

    .line 442
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 443
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 444
    .local v16, "reqEnc":I
    const/16 v22, 0x3

    aget-object v20, p3, v22

    .line 446
    .local v20, "status":Ljava/lang/String;
    const-string v22, "success"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 447
    const-string v22, "DirEncryptService"

    const-string v24, "RESP_ENCRYPT success"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 449
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 450
    const-string v22, "success"

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 451
    if-nez v16, :cond_2

    .line 452
    const/16 v22, 0x3

    .line 453
    :goto_2
    const-string v24, "Mount"

    .line 451
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 456
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ENCRYPT Response admin : "

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

    .line 457
    if-nez v16, :cond_3

    .line 458
    const-string v22, "DirEncryptService"

    const-string v24, "Decrypt compelte"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_3
    new-instance v13, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 464
    if-nez v16, :cond_4

    .line 465
    const/16 v22, 0x3

    .line 467
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 463
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v13, v7, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 468
    .local v13, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 437
    .end local v7    # "isPolicy":I
    .end local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v16    # "reqEnc":I
    .end local v20    # "status":Ljava/lang/String;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 452
    .restart local v7    # "isPolicy":I
    .restart local v16    # "reqEnc":I
    .restart local v20    # "status":Ljava/lang/String;
    :cond_2
    const/16 v22, 0x2

    goto :goto_2

    .line 460
    :cond_3
    :try_start_2
    const-string v22, "DirEncryptService"

    const-string v24, "Encrypt complete"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 466
    :cond_4
    const/16 v22, 0x2

    goto :goto_4

    .line 470
    :cond_5
    const-string v22, "DirEncryptService"

    const-string v24, "RESP_ENCRYPT failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 472
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 473
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 478
    :cond_6
    :goto_5
    const-string v22, "failed"

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 479
    if-nez v16, :cond_8

    .line 480
    const/16 v22, 0x3

    .line 481
    :goto_6
    const-string v24, "free"

    .line 479
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 482
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_1

    .line 475
    :cond_7
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_5

    .line 480
    :cond_8
    const/16 v22, 0x2

    goto :goto_6

    .line 485
    .end local v16    # "reqEnc":I
    .end local v20    # "status":Ljava/lang/String;
    :cond_9
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_ENCRYPT extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 490
    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 491
    const-string v22, "DirEncryptService"

    const-string v24, "DirEncryptServiceVoldResponse.PROGRESS inside"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/16 v22, 0x1

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 493
    .restart local v16    # "reqEnc":I
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 494
    .local v12, "percentage":I
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 495
    .local v21, "storage":I
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 496
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 500
    :goto_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 501
    if-nez v16, :cond_b

    const/16 v22, 0x3

    .line 502
    :goto_8
    const-string v24, "busy"

    .line 501
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 498
    :cond_a
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_7

    .line 501
    :cond_b
    const/16 v22, 0x2

    goto :goto_8

    .line 504
    .end local v12    # "percentage":I
    .end local v16    # "reqEnc":I
    .end local v21    # "storage":I
    :cond_c
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_PROGRESS extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 509
    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 510
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 511
    .restart local v16    # "reqEnc":I
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 513
    .local v9, "needed":I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 514
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 515
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 517
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 518
    if-nez v16, :cond_d

    const/16 v22, 0x3

    .line 519
    :goto_9
    const-string v24, "free"

    .line 518
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 520
    new-instance v13, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 521
    if-nez v16, :cond_e

    .line 522
    const/16 v22, 0x2

    .line 524
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 520
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v13, v7, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 525
    .restart local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 518
    .end local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_d
    const/16 v22, 0x2

    goto :goto_9

    .line 523
    :cond_e
    const/16 v22, 0x3

    goto :goto_a

    .line 527
    .end local v9    # "needed":I
    .end local v16    # "reqEnc":I
    :cond_f
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_PRESCAN_FULL_ERR extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 532
    :pswitch_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 533
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 534
    .restart local v16    # "reqEnc":I
    const/16 v22, 0x4

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 535
    .local v17, "ro":I
    const/16 v22, 0xb

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 536
    const-string v22, ""

    const/16 v24, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 537
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 538
    if-nez v16, :cond_10

    const/16 v22, 0x3

    .line 539
    :goto_b
    const-string v24, "free"

    .line 538
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 540
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 541
    new-instance v13, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 542
    if-nez v16, :cond_11

    .line 543
    const/16 v22, 0x2

    .line 545
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 541
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v13, v7, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 546
    .restart local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 538
    .end local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_10
    const/16 v22, 0x2

    goto :goto_b

    .line 544
    :cond_11
    const/16 v22, 0x3

    goto :goto_c

    .line 549
    .end local v16    # "reqEnc":I
    .end local v17    # "ro":I
    :cond_12
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_FILE_OPEN_ERR extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 554
    :pswitch_5
    const/4 v10, -0x1

    .line 555
    .local v10, "operation":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 556
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 557
    .local v19, "status":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 558
    const/4 v10, 0x2

    .line 560
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 561
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 562
    const-string v22, "success"

    const/16 v24, 0x2

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 563
    const-string v22, "Mount"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 565
    :cond_13
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 566
    const-string v22, ""

    const/16 v24, 0x2

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 567
    const-string v22, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 569
    .end local v19    # "status":I
    :cond_14
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 570
    const/16 v22, 0x2

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 572
    .restart local v16    # "reqEnc":I
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 573
    if-nez v16, :cond_15

    const/4 v10, 0x3

    .line 575
    :goto_d
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 576
    const-string v22, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 577
    new-instance v13, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 578
    if-nez v16, :cond_16

    .line 579
    const/16 v22, 0x2

    .line 581
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v24

    .line 577
    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v13, v7, v0, v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 582
    .restart local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    goto/16 :goto_1

    .line 573
    .end local v13    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_15
    const/4 v10, 0x2

    goto :goto_d

    .line 580
    :cond_16
    const/16 v22, 0x3

    goto :goto_e

    .line 584
    .end local v16    # "reqEnc":I
    :cond_17
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_MOUNT extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 589
    .end local v10    # "operation":I
    :pswitch_6
    const/4 v11, -0x1

    .line 590
    .local v11, "operationUnmount":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 591
    const/16 v22, 0x3

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 592
    .restart local v19    # "status":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 593
    const-string v22, ""

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 595
    :cond_18
    const/4 v11, 0x3

    goto/16 :goto_1

    .line 597
    .end local v19    # "status":I
    :cond_19
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_UNMOUNT extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 602
    .end local v11    # "operationUnmount":I
    :pswitch_7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_27

    .line 603
    const/16 v22, 0x1

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 604
    .restart local v19    # "status":I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 605
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 607
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v18

    .line 610
    .local v18, "state":Ljava/lang/String;
    if-nez v18, :cond_1a

    .line 611
    const-string v22, "DirEncryptService"

    const-string v24, "there is no SD card"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 616
    :cond_1a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v14, "policy":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v4

    .line 618
    .local v4, "SDCardState":I
    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 620
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_22

    .line 621
    const/4 v15, -0x1

    .line 623
    .local v15, "rc":I
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

    move-result v15

    .line 624
    if-nez v15, :cond_1b

    .line 625
    const-string v22, "DirEncryptService"

    const-string v24, "Migration Success, so re-call policy"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal(Landroid/os/Bundle;)I

    move-result v4

    .line 627
    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 630
    :cond_1b
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_1c

    .line 631
    if-nez v4, :cond_1e

    .line 632
    :cond_1c
    const-string v22, "DirEncryptService"

    const-string v24, "SD card has decrypting/encrypting state -> Self Decrypting/Encrypting!!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 705
    .end local v4    # "SDCardState":I
    .end local v14    # "policy":Landroid/os/Bundle;
    .end local v15    # "rc":I
    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "status":I
    :cond_1d
    :goto_f
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    goto/16 :goto_1

    .line 635
    .restart local v4    # "SDCardState":I
    .restart local v14    # "policy":Landroid/os/Bundle;
    .restart local v15    # "rc":I
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v19    # "status":I
    :cond_1e
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v4, v0, :cond_21

    .line 636
    const/16 v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 637
    const-string v22, "DirEncryptService"

    const-string v24, "ENC_META_CHECK : Error Case (Encrypted on other device)"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v22

    if-nez v22, :cond_1f

    .line 639
    const-string v22, "DirEncryptService"

    const-string v24, "checkSdCardMetafile but user locked yet"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 644
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 645
    const-string v24, "user_setup_complete"

    const/16 v25, 0x0

    .line 643
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 647
    .local v8, "isSetupWizardCompleted":I
    if-nez v8, :cond_20

    .line 648
    const-string v22, "DirEncryptService"

    const-string v24, "The Setup Wizard is not completed yet"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 652
    :cond_20
    new-instance v6, Landroid/content/Intent;

    const-string v22, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v6, "intent":Landroid/content/Intent;
    const-string v22, "OtherDevice"

    const-string v24, "exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const/high16 v22, 0x10400000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_f

    .line 657
    :catch_0
    move-exception v5

    .line 658
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to start intent activity"

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
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "isSetupWizardCompleted":I
    :cond_21
    const-string v22, "DirEncryptService"

    const-string v24, "ENC_META_CHECK : Encryption State Normal"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 668
    .end local v15    # "rc":I
    :cond_22
    if-eqz v4, :cond_23

    .line 669
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v4, v0, :cond_24

    .line 670
    :cond_23
    const-string v22, "DirEncryptService"

    const-string v24, "ENC_META_CHECK : Meta deleted Case"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 673
    :cond_24
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_25

    .line 674
    const-string v22, "DirEncryptService"

    const-string v24, "SD card has decrypting state -> Self Decrypting!!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 676
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 678
    :cond_25
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_26

    .line 679
    const-string v22, "DirEncryptService"

    const-string v24, "ENC_META_CHECK : EAS Policy Set"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v6, Landroid/content/Intent;

    const-string v22, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .restart local v6    # "intent":Landroid/content/Intent;
    const/high16 v22, 0x10400000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 682
    sget-boolean v22, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v22, :cond_1d

    .line 684
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_f

    .line 685
    :catch_1
    move-exception v5

    .line 686
    .restart local v5    # "e":Landroid/content/ActivityNotFoundException;
    :try_start_6
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to start intent activity"

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

    .line 690
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_26
    const-string v22, "DirEncryptService"

    const-string v24, "ENC_META_CHECK : Normal SD Card"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 694
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    goto/16 :goto_f

    .line 701
    .end local v4    # "SDCardState":I
    .end local v14    # "policy":Landroid/os/Bundle;
    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "status":I
    :cond_27
    const-string v22, "DirEncryptService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RESP_ENC_META_CHECK extra data recvd["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], please fix!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 703
    const-string v22, "free"

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_f

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x2ab
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method ready()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 380
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 394
    return-void
.end method

.method public registerStorageEventListener()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    const-string v0, "DirEncryptService"

    const-string v1, "RegisterStorageEventListner fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_0
    const-string v0, "DirEncryptService"

    const-string v1, "RegisterStorageEventListner success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public setBootComplted(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 376
    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 386
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 384
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 348
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    .line 347
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 5

    .prologue
    .line 822
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 824
    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD card  : State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Admin policy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Encrypted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    const-string v2, "DirEncryptService"

    const-string v3, "Unmount SD Card By Admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 833
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 398
    return-void
.end method
