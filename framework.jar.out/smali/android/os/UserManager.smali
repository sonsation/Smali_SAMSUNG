.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final ACTION_CREATE_USER:Ljava/lang/String; = "android.os.action.CREATE_USER"

.field public static final ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_CAMERA:Ljava/lang/String; = "no_camera"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DATA_ROAMING:Ljava/lang/String; = "no_data_roaming"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_RUN_IN_BACKGROUND:Ljava/lang/String; = "no_run_in_background"

.field public static final DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final DISALLOW_SET_USER_ICON:Ljava/lang/String; = "no_set_user_icon"

.field public static final DISALLOW_SET_WALLPAPER:Ljava/lang/String; = "no_set_wallpaper"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final EXTRA_USER_ACCOUNT_NAME:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_NAME"

.field public static final EXTRA_USER_ACCOUNT_OPTIONS:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_OPTIONS"

.field public static final EXTRA_USER_ACCOUNT_TYPE:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_TYPE"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "android.os.extra.USER_NAME"

.field public static final KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field public static final RESTRICTION_NOT_SET:I = 0x0

.field public static final RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2

.field public static final RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4

.field public static final RESTRICTION_SOURCE_SYSTEM:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_CREATION_FAILED_NOT_PERMITTED:I = 0x1

.field public static final USER_CREATION_FAILED_NO_MORE_USERS:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "UserManager"

    sput-object v0, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IUserManager;

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 717
    iput-object p1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 715
    return-void
.end method

.method public static createUserCreationIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 3
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountOptions"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1448
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.CREATE_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_0

    .line 1450
    const-string/jumbo v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1453
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "accountType must be specified if accountName is specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1456
    :cond_1
    if-eqz p1, :cond_2

    .line 1457
    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    :cond_2
    if-eqz p2, :cond_3

    .line 1460
    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    :cond_3
    if-eqz p3, :cond_4

    .line 1463
    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1465
    :cond_4
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 711
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public static getMaxSupportedUsers()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 2062
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string/jumbo v4, "JVP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    .line 2064
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    return v6

    .line 2067
    :cond_1
    const/4 v0, -0x1

    .line 2068
    .local v0, "NO_CSC_FOUND":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 2069
    const-string/jumbo v4, "CscFeature_Framework_ConfigMaxMultiUsers"

    .line 2068
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 2070
    .local v2, "mumMaxUsers":I
    if-ne v2, v5, :cond_2

    .line 2071
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2073
    :cond_2
    const-string/jumbo v3, "persist.sys.max_users"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2075
    .local v1, "config":I
    const-string/jumbo v3, "fw.max_users"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method public static isSplitSystemUser()Z
    .locals 2

    .prologue
    .line 748
    const-string/jumbo v0, "ro.fw.system_user_split"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportsMultipleUsers()Z
    .locals 6

    .prologue
    .line 727
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 728
    const-string/jumbo v4, "CscFeature_Framework_ConfigStatusMultiUser"

    const-string/jumbo v5, "NoCscFound"

    .line 727
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "mumStatus":Ljava/lang/String;
    const/4 v1, 0x0

    .line 730
    .local v1, "mumEnabled":Z
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    const/4 v1, 0x1

    .line 735
    .end local v1    # "mumEnabled":Z
    :goto_0
    const-string/jumbo v3, "persist.sys.show_multiuserui"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 737
    .local v0, "config":Z
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 738
    const-string/jumbo v3, "fw.show_multiuserui"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 737
    :goto_1
    return v3

    .line 733
    .end local v0    # "config":Z
    .restart local v1    # "mumEnabled":Z
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .local v1, "mumEnabled":Z
    goto :goto_0

    .line 737
    .end local v1    # "mumEnabled":Z
    .restart local v0    # "config":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canAddMoreManagedProfiles(IZ)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .prologue
    .line 1705
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->canAddMoreManagedProfiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canAddMoreUsers()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1682
    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1683
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1684
    .local v2, "totalUserCount":I
    const/4 v0, 0x0

    .line 1685
    .local v0, "aliveUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1686
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1687
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1685
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1688
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1691
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    if-ge v0, v6, :cond_3

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 878
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canSwitchUsers()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 759
    iget-object v4, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 760
    const-string/jumbo v5, "allow_user_switching_when_system_user_locked"

    .line 758
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 761
    .local v0, "allowUserSwitchingWhenSystemUserLocked":Z
    :goto_0
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    .line 762
    .local v2, "isSystemUserUnlocked":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 764
    .local v1, "inCall":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_4

    :cond_1
    :goto_2
    return v3

    .line 758
    .end local v0    # "allowUserSwitchingWhenSystemUserLocked":Z
    .end local v1    # "inCall":Z
    .end local v2    # "isSystemUserUnlocked":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allowUserSwitchingWhenSystemUserLocked":Z
    goto :goto_0

    .line 762
    .restart local v2    # "isSystemUserUnlocked":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "inCall":Z
    goto :goto_1

    .line 764
    :cond_4
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public clearSeedAccountData()V
    .locals 2

    .prologue
    .line 1540
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->clearSeedAccountData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1360
    .local v0, "guest":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v3, 0x4

    invoke-interface {v2, p2, v3}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1361
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1363
    const-string/jumbo v3, "skip_first_use_hints"

    const-string/jumbo v4, "1"

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1362
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :cond_0
    return-object v0

    .line 1365
    .end local v0    # "guest":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 1366
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1385
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1401
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1402
    .local v0, "parentUserHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 1403
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1402
    invoke-interface {v3, p1, v4}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1404
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 1405
    iget-object v3, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 1406
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 1405
    invoke-virtual {v3, v0, v4}, Landroid/accounts/AccountManager;->addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :cond_0
    return-object v2

    .line 1409
    .end local v0    # "parentUserHandle":Landroid/os/UserHandle;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 1410
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1336
    const/4 v1, 0x0

    .line 1338
    .local v1, "user":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1341
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-object v1

    .line 1342
    :cond_1
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string/jumbo v3, "no_sms"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1343
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string/jumbo v3, "no_outgoing_calls"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1345
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2156
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2167
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "badgedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    .prologue
    .line 1937
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1907
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1954
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1821
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 2215
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledProfileIds(I)[I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1809
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProfiles(I)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1757
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 1668
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 1790
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1835
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfiles(I)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1724
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1476
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 2

    .prologue
    .line 1506
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountOptions()Landroid/os/PersistableBundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1490
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1306
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSerialNumbersOfUsers(Z)[J
    .locals 6
    .param p1, "excludeDying"    # Z

    .prologue
    .line 1616
    :try_start_0
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1617
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [J

    .line 1618
    .local v2, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1619
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    int-to-long v4, v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    return-object v2

    .line 1622
    .end local v0    # "i":I
    .end local v2    # "result":[J
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    .line 1623
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1637
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserCount()I
    .locals 2

    .prologue
    .line 1585
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1586
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUserCreationTime(Landroid/os/UserHandle;)J
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2229
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserCreationTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 2230
    :catch_0
    move-exception v0

    .line 2231
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 3
    .param p1, "serialNumber"    # J

    .prologue
    .line 1319
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    .line 1320
    .local v0, "ident":I
    if-ltz v0, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserHandle()I
    .locals 1

    .prologue
    .line 774
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .locals 2
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 2129
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserHandle(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2130
    :catch_0
    move-exception v0

    .line 2131
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2027
    :try_start_0
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2028
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 2030
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 2033
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2030
    :goto_0
    return-object v4

    .line 2034
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2031
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2033
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2031
    :goto_1
    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2049
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    .line 2050
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 2034
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2040
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_5
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUserIconForBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2041
    .local v3, "result":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 2042
    return-object v3

    .line 2045
    :cond_1
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v4

    return-object v4
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1115
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1770
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v2

    .line 1771
    .local v2, "userIds":[I
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1772
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v2, v3

    .line 1773
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1772
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1775
    .end local v1    # "userId":I
    :cond_0
    return-object v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1136
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1165
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1175
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 2112
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2113
    :catch_0
    move-exception v0

    .line 2114
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 2
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1968
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1969
    :catch_0
    move-exception v0

    .line 1970
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1191
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 1277
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1289
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 1290
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1289
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAdminUser()Z
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    return v0
.end method

.method public isEphemeralUser()Z
    .locals 1

    .prologue
    .line 958
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    move-result v0

    return v0
.end method

.method public isGuestUser()Z
    .locals 2

    .prologue
    .line 890
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 891
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLinkedUser()Z
    .locals 2

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->isRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isManagedProfile()Z
    .locals 5

    .prologue
    .line 904
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 906
    .local v1, "callingUid":I
    iget-object v3, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "callingPackage":Ljava/lang/String;
    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.samsung.android.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 908
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 914
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "callingUid":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/os/IUserManager;->isManagedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 915
    :catch_0
    move-exception v2

    .line 916
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public isManagedProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->isManagedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPrimaryUser()Z
    .locals 2

    .prologue
    .line 813
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 814
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1865
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .prologue
    .line 1739
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSystemUser()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 825
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserAGoat()Z
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 802
    const-string/jumbo v1, "com.coffeestainstudios.goatsimulator"

    .line 801
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserAdmin(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 843
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 844
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserEphemeral(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 967
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserRunning(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 986
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserRunningAndLocked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunningAndLocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserRunningAndLocked(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1019
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1020
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x2

    .line 1019
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserRunningAndUnlocked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunningAndUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserRunningAndUnlocked(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1037
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x4

    .line 1036
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1002
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1003
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    .line 1002
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserSwitcherEnabled()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2085
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2086
    return v7

    .line 2088
    :cond_0
    invoke-virtual {p0, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2089
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_1

    .line 2090
    return v7

    .line 2092
    :cond_1
    const/4 v1, 0x0

    .line 2093
    .local v1, "switchableUserCount":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2094
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2095
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v5, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getGuestUserDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    .line 2100
    .local v0, "guestEnabled":Z
    :goto_1
    if-gt v1, v6, :cond_5

    .end local v0    # "guestEnabled":Z
    :goto_2
    return v0

    .line 2098
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "guestEnabled":Z
    goto :goto_1

    :cond_5
    move v0, v6

    .line 2100
    goto :goto_2
.end method

.method public isUserUnlocked()Z
    .locals 1

    .prologue
    .line 1058
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1083
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1084
    const/4 v2, 0x4

    .line 1083
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1077
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1099
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1100
    const/16 v2, 0x8

    .line 1099
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1092
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public markGuestForDeletion(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1555
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeUser(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1982
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1153
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semIsLinkedUser()Z
    .locals 1

    .prologue
    .line 869
    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    return v0
.end method

.method public semIsManagedProfile()Z
    .locals 1

    .prologue
    .line 931
    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    return v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2179
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    return-void

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 2203
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2201
    return-void

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKnoxRestrictions(Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 1262
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setKnoxRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setQuietModeEnabled(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z

    .prologue
    .line 1850
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setQuietModeEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    return-void

    .line 1851
    :catch_0
    move-exception v0

    .line 1852
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPin"    # Ljava/lang/String;

    .prologue
    .line 2194
    const/4 v0, 0x0

    return v0
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1526
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 1527
    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1526
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    return-void

    .line 1528
    :catch_0
    move-exception v6

    .line 1529
    .local v6, "re":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1653
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    return-void

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1575
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    return-void

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2012
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    return-void

    .line 2013
    :catch_0
    move-exception v0

    .line 2014
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1998
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    return-void

    .line 1999
    :catch_0
    move-exception v0

    .line 2000
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1229
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 1228
    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1247
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2245
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .prologue
    .line 1882
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1883
    :catch_0
    move-exception v0

    .line 1884
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
