.class Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmMonitor"
.end annotation


# instance fields
.field private mAirplaneModeAllowed:Z

.field private mBluetoothAllowed:Z

.field private mCellularDataAllowed:Z

.field private mGPSStateChangeAllowed:Z

.field private mIsDeviceDisableForMaxFailedAttempt:Z

.field private mIsLockscreenInvisibleOverlayConfigured:Z

.field private mIsLockscreenWallpaperConfigured:Z

.field private mIsMDMKioskMode:Z

.field private mIsNavigationBarHidden:Z

.field private mIsStatusBarHidden:Z

.field private mLocationProviderAllowed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockDelay:I

.field private mLockedIccIdList:[Ljava/lang/String;

.field private mMaxNumFailedAttemptForDisable:I

.field private mNFCAllowed:Z

.field private mNFCStateChangeAllowed:Z

.field private mPwdChangeRequest:I

.field private mSettingsChangesAllowed:Z

.field private mStatusBarExpandAllowed:Z

.field private mWifiAllowed:Z

.field private mWifiStateChangeAllowed:Z

.field private mWifiTetheringAllowed:Z

.field private mWipeExcludeExternalStorage:Z

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1579
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    .line 1555
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    .line 1556
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    .line 1557
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    .line 1558
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 1559
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    .line 1560
    iput v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1561
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1562
    iput v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    .line 1563
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    .line 1564
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 1565
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    .line 1566
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    .line 1567
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    .line 1568
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    .line 1569
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    .line 1570
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 1571
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 1572
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    .line 1573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 1574
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 1576
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 1577
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 1580
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->registerCallback()V

    .line 1579
    return-void
.end method

.method private getCurrentFailedAttempts()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1738
    const/4 v8, 0x0

    .line 1739
    .local v8, "result":I
    const-string/jumbo v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1740
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "getCurrentFailedPasswordAttempts"

    .line 1741
    .local v3, "projectionArgs":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1742
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1744
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1745
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1751
    :cond_0
    :goto_0
    return v8

    .line 1746
    :catch_0
    move-exception v7

    .line 1748
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1747
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1748
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1747
    throw v0
.end method

.method private isMDMEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1709
    iget v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 1585
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 1587
    .local v1, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 1588
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    .line 1583
    :goto_0
    return-void

    .line 1590
    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() cannot reference because edm is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerKnoxCallback() Failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0
    .param p1, "exclude"    # Z

    .prologue
    .line 1629
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 1628
    return-void
.end method

.method public getLockDelay()I
    .locals 1

    .prologue
    .line 1778
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    return v0
.end method

.method public getPwdChangeRequest()I
    .locals 1

    .prologue
    .line 1713
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    return v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1784
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isBlockedEdmSettingsChange(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1717
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1788
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDetailsSettingBlocked()Z
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_0

    .line 1730
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1734
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLocationProviderAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1689
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLocationTileBlocked()Z
    .locals 10

    .prologue
    .line 1800
    const/4 v7, 0x0

    .line 1801
    .local v7, "mdmRestricted":Z
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v6

    .line 1802
    .local v6, "isSettingsChangesDisAllowed":Z
    const-string/jumbo v8, "gps"

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v4, 0x0

    .line 1803
    .local v4, "isLocationProviderBlockedGPS":Z
    :goto_0
    const-string/jumbo v8, "network"

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v5, 0x0

    .line 1804
    .local v5, "isLocationProviderBlockedNetwork":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 1805
    .local v3, "isLocationGPSStateChangeAllowed":Z
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "gps"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 1806
    .local v2, "isGpsOn":Z
    if-nez v4, :cond_8

    if-nez v2, :cond_0

    if-eqz v3, :cond_8

    :cond_0
    const/4 v0, 0x0

    .line 1807
    .local v0, "isGpsBlocked":Z
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v3, :cond_9

    :cond_1
    const/4 v1, 0x0

    .line 1809
    .local v1, "isGpsEnforced":Z
    :goto_3
    if-eqz v0, :cond_2

    if-nez v5, :cond_3

    :cond_2
    if-eqz v6, :cond_4

    .line 1810
    :cond_3
    const/4 v7, 0x1

    .line 1813
    :cond_4
    if-eqz v1, :cond_5

    .line 1814
    const/4 v7, 0x1

    .line 1816
    :cond_5
    return v7

    .line 1802
    .end local v0    # "isGpsBlocked":Z
    .end local v1    # "isGpsEnforced":Z
    .end local v2    # "isGpsOn":Z
    .end local v3    # "isLocationGPSStateChangeAllowed":Z
    .end local v4    # "isLocationProviderBlockedGPS":Z
    .end local v5    # "isLocationProviderBlockedNetwork":Z
    :cond_6
    const/4 v4, 0x1

    .restart local v4    # "isLocationProviderBlockedGPS":Z
    goto :goto_0

    .line 1803
    :cond_7
    const/4 v5, 0x1

    .restart local v5    # "isLocationProviderBlockedNetwork":Z
    goto :goto_1

    .line 1806
    .restart local v2    # "isGpsOn":Z
    .restart local v3    # "isLocationGPSStateChangeAllowed":Z
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "isGpsBlocked":Z
    goto :goto_2

    .line 1807
    :cond_9
    const/4 v1, 0x1

    .restart local v1    # "isGpsEnforced":Z
    goto :goto_3
.end method

.method public isLockScreenOverlayEnabled()Z
    .locals 1

    .prologue
    .line 1880
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return v0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 1

    .prologue
    .line 1884
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1792
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    return v0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSFinderTileBlocked()Z
    .locals 1

    .prologue
    .line 1852
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    return v0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    return v0
.end method

.method public isSubIdLockedByAdmin()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1889
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 1890
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1889
    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v3

    .line 1891
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1892
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v5

    .line 1893
    const-string/jumbo v7, "telephony_subscription_service"

    .line 1892
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 1894
    .local v2, "mSubMgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1895
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v0, 0x0

    .line 1896
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1897
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1901
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1902
    return v10

    .line 1903
    :cond_1
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1904
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_3

    aget-object v1, v7, v5

    .line 1905
    .local v1, "lockedIccId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1906
    return v10

    .line 1904
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1912
    .end local v1    # "lockedIccId":Ljava/lang/String;
    .end local v2    # "mSubMgr":Landroid/telephony/SubscriptionManager;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return v6
.end method

.method public isWifiCallingTileBlocked()Z
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1856
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isWifiTileBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1860
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public setAirplaneModeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1646
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mAirplaneModeAllowed:Z

    .line 1645
    return-void
.end method

.method public setBluetoothAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1663
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mBluetoothAllowed:Z

    .line 1662
    return-void
.end method

.method public setCellularDataAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1650
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mCellularDataAllowed:Z

    .line 1649
    return-void
.end method

.method public setGPSStateChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllowed"    # Z

    .prologue
    .line 1693
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 1692
    return-void
.end method

.method public setKioskModeEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1616
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsMDMKioskMode:Z

    .line 1615
    return-void
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "isAllowed"    # Z

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    return-void
.end method

.method public setLockedIccIds([Ljava/lang/String;)V
    .locals 0
    .param p1, "blockedIccIdList"    # [Ljava/lang/String;

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    .line 1875
    return-void
.end method

.method public setLockscreenInvisibleOverlay(Z)V
    .locals 0
    .param p1, "configured"    # Z

    .prologue
    .line 1697
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 1696
    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .locals 2
    .param p1, "configured"    # Z

    .prologue
    const/16 v1, 0x13a0

    .line 1701
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eq v0, p1, :cond_0

    .line 1702
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 1703
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1704
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1700
    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1621
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1620
    return-void
.end method

.method public setNFCAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1654
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCAllowed:Z

    .line 1653
    return-void
.end method

.method public setNFCStateChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1668
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 1667
    return-void
.end method

.method public setNavigationBarHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    const/16 v1, 0x139c

    .line 1608
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 1609
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsNavigationBarHidden:Z

    .line 1610
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1611
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1607
    :cond_0
    return-void
.end method

.method public setPasswordLockDelay(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 1633
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mLockDelay:I

    .line 1632
    return-void
.end method

.method public setPwdChangeRequested(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 1625
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mPwdChangeRequest:I

    .line 1624
    return-void
.end method

.method public setSettingsChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1638
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mSettingsChangesAllowed:Z

    .line 1637
    return-void
.end method

.method public setStatusBarExpansionAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1642
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 1641
    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    const/16 v1, 0x139b

    .line 1600
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 1601
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsStatusBarHidden:Z

    .line 1602
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1599
    :cond_0
    return-void
.end method

.method public setWifiAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1677
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiAllowed:Z

    .line 1676
    return-void
.end method

.method public setWifiStateChangeAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1673
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 1672
    return-void
.end method

.method public setWifiTetheringAllowed(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 1658
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mWifiTetheringAllowed:Z

    .line 1657
    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 5

    .prologue
    const/16 v4, 0x139e

    .line 1755
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->isMDMEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1756
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    .line 1757
    .local v0, "curNumFailedAttempts":I
    iget v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 1758
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedUnlockAttempt :  maxNumFailedAttemptForDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1759
    iget v3, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 1758
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1759
    const-string/jumbo v3, " , curNumFailedAttempts = "

    .line 1758
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeviceDisabledForMaxFailedAttempt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v1, :cond_0

    .line 1764
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1765
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$EdmMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1754
    .end local v0    # "curNumFailedAttempts":I
    :cond_0
    :goto_1
    return-void

    .line 1757
    .restart local v0    # "curNumFailedAttempts":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1768
    .end local v0    # "curNumFailedAttempts":I
    :cond_2
    const-string/jumbo v1, "KnoxStateMonitor"

    const-string/jumbo v2, "MDM is not enabled..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
