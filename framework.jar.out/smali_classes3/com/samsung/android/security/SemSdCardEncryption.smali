.class public Lcom/samsung/android/security/SemSdCardEncryption;
.super Ljava/lang/Object;
.source "SemSdCardEncryption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/SemSdCardEncryption$EncryptionState;,
        Lcom/samsung/android/security/SemSdCardEncryption$Error;,
        Lcom/samsung/android/security/SemSdCardEncryption$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final CHECK_OTHER_DEVICE:Ljava/lang/String; = "OtherDevice"

.field private static final DEBUG:Z = true

.field public static final DECRYPT:I = 0x3

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERROR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/efs/sec_efs/"

.field public static final FLE_KEY_STORE_LEGACY:Ljava/lang/String; = "/efs/"

.field public static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final IS_SUPPORT_SDCARD_SLOT:Z

.field public static final MOVE_MOUNT:Ljava/lang/String; = "MoveMount"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xd

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_CAN_NOT_BE_SET_UNDER_BUSY_STATE:I = 0xf

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "com.sec.app.action.START_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field public static final STATUS_MOUNT:Ljava/lang/String; = "Mount"

.field private static final TAG:Ljava/lang/String; = "SemSdCardEncryption"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "HiddenMount"

.field private static mPolicyChanged:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/sec/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    .line 70
    const v0, -0x35014542    # -8346975.0f

    sput v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    .line 160
    iput-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 161
    iput-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 168
    iput-object p1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    .line 170
    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 171
    const-string/jumbo v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v0, "SemSdCardEncryption"

    const-string/jumbo v1, "Unable to get DirEncryptService instance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-nez v0, :cond_1

    .line 177
    const-string/jumbo v0, "SemSdCardEncryption"

    const-string/jumbo v1, "Dir Encryption not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 167
    :cond_1
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .locals 1

    .prologue
    .line 224
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 3
    .param p1, "in"    # Z

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_1

    .line 402
    return-void

    .line 405
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->SetMountSDcardToHelper(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearPrefs(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string/jumbo v1, "SemSdCardEncryption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearPrefs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-nez p1, :cond_0

    .line 728
    return-void

    .line 732
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->clearPrefs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public encryptStorage(Z)I
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 569
    const/16 v1, 0xc8

    .line 572
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 573
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 574
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->encryptExternalStorage(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    .end local v2    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemSdCardEncryption"

    const-string/jumbo v4, "Unable to communicate with DirEncryptService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAdditionalSpaceRequired()I
    .locals 4

    .prologue
    .line 629
    const/16 v1, 0xc8

    .line 631
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    return v1

    .line 634
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_1

    .line 635
    return v1

    .line 638
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 642
    :goto_0
    return v1

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentStatus()I
    .locals 4

    .prologue
    .line 586
    const/16 v1, 0xc8

    .line 588
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    return v1

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_1

    .line 592
    return v1

    .line 595
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    :goto_0
    return v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentUserID()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v0

    return v0
.end method

.method public getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    .line 608
    const/16 v1, 0xc8

    .line 610
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    return v1

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_1

    .line 614
    return v1

    .line 617
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 621
    :goto_0
    return v1

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPolicyChanged()Z
    .locals 1

    .prologue
    .line 718
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    return v0
.end method

.method public getSavedUserID()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getSavedUserID()I

    move-result v0

    return v0
.end method

.method public getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 659
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_0

    .line 660
    return-object v3

    .line 662
    :cond_0
    const/4 v0, 0x0

    .line 664
    .local v0, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2, p1}, Landroid/os/storage/IDirEncryptService;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 668
    .end local v0    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :goto_0
    return-object v0

    .line 665
    .restart local v0    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :catch_0
    move-exception v1

    .line 666
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserDiff()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getUserDiff()Z

    move-result v0

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionAppliedSDCard()Z
    .locals 4

    .prologue
    .line 676
    const/4 v1, 0x0

    .line 678
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_0

    .line 679
    const/4 v2, 0x0

    return v2

    .line 682
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->isEncryptionAppliedSDCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 683
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 684
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEncryptionSupported()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    sget-boolean v0, Lcom/samsung/android/security/SemSdCardEncryption;->IS_SUPPORT_SDCARD_SLOT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_0
    return v1
.end method

.method public isExternalSDRemovable()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .locals 4

    .prologue
    .line 518
    const/4 v1, 0x0

    .line 520
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    return v1

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_1

    .line 524
    return v1

    .line 527
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 531
    :goto_0
    return v1

    .line 527
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mountVolume()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdminPolicy(ZLjava/lang/String;)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 476
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 477
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "DPM set the encryption policy yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v1, 0x9

    return v1

    .line 480
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p2}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNeedToCreateKey(Z)V
    .locals 3
    .param p1, "in"    # Z

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_1

    .line 382
    return-void

    .line 385
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->setNeedToCreateKey(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 542
    const/16 v1, 0xc8

    .line 544
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 545
    return v1

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    .line 548
    return v1

    .line 551
    :cond_1
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 552
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 553
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->setExternalEncryptionPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 558
    .end local v2    # "service":Landroid/os/IBinder;
    :cond_2
    :goto_0
    return v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemSdCardEncryption"

    const-string/jumbo v4, "Unable to communicate with DirEncryptService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPolicyChanged(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 710
    sput-boolean p1, Lcom/samsung/android/security/SemSdCardEncryption;->mPolicyChanged:Z

    .line 709
    return-void
.end method

.method public setSavedUserID(I)V
    .locals 1
    .param p1, "in"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 339
    return-void
.end method

.method public setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .locals 5
    .param p1, "isPolicy"    # I
    .param p2, "status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 485
    const/16 v1, 0xc8

    .line 487
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    return v1

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_1

    .line 491
    return v1

    .line 494
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setSdCardEncryptionPolicy(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 499
    :goto_0
    const-string/jumbo v2, "SemSdCardEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSdCardEncryptionPolicy result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 501
    :cond_2
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->unmountSDCardByAdmin()V

    .line 505
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 507
    return v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStorageCardEncryptionPolicy(I)I
    .locals 5
    .param p1, "encType"    # I

    .prologue
    .line 431
    const/16 v1, 0xc8

    .line 433
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    return v1

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_1

    .line 437
    return v1

    .line 440
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-interface {v2, p1, v3, v4}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    const-string/jumbo v2, "SemSdCardEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStorageCardEncryptionPolicy result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 448
    :cond_2
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->unmountSDCardByAdmin()V

    .line 452
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setPolicyChanged(Z)V

    .line 454
    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemSdCardEncryption"

    const-string/jumbo v3, "Unable to communicate with DirEncryptService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUserDiff(Z)V
    .locals 1
    .param p1, "in"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 319
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 3

    .prologue
    .line 695
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 696
    return-void

    .line 699
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1}, Landroid/os/storage/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    .line 302
    .local v0, "sdPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .end local v0    # "sdPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 306
    .restart local v0    # "sdPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    move-result v1

    return v1

    .line 309
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/SemSdCardEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemSdCardEncryption"

    const-string/jumbo v2, "Unable to communicate with DirEncryptService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
