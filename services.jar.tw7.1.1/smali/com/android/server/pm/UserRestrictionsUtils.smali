.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "no_config_wifi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "no_modify_accounts"

    aput-object v1, v0, v4

    const-string/jumbo v1, "no_install_apps"

    aput-object v1, v0, v5

    const-string/jumbo v1, "no_uninstall_apps"

    aput-object v1, v0, v6

    const-string/jumbo v1, "no_share_location"

    aput-object v1, v0, v7

    const-string/jumbo v1, "no_install_unknown_sources"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_bluetooth"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_usb_file_transfer"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_credentials"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_remove_user"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_debugging_features"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_vpn"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_tethering"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_network_reset"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_factory_reset"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_add_user"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "ensure_verify_apps"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_cell_broadcasts"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_mobile_networks"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_control_apps"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_physical_media"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_unmute_microphone"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_adjust_volume"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_outgoing_calls"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_sms"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_fun"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_create_windows"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_cross_profile_copy_paste"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_outgoing_beam"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_wallpaper"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_safe_boot"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "allow_parent_profile_app_linking"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_record_audio"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_camera"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_run_in_background"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_data_roaming"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_set_user_icon"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_set_wallpaper"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_oem_unlock"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "disallow_unmute_device"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "no_record_audio"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "no_usb_file_transfer"

    aput-object v1, v0, v3

    const-string/jumbo v1, "no_config_tethering"

    aput-object v1, v0, v4

    const-string/jumbo v1, "no_network_reset"

    aput-object v1, v0, v5

    const-string/jumbo v1, "no_factory_reset"

    aput-object v1, v0, v6

    const-string/jumbo v1, "no_add_user"

    aput-object v1, v0, v7

    const-string/jumbo v1, "no_config_cell_broadcasts"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_config_mobile_networks"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_physical_media"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_sms"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_fun"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_safe_boot"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_create_windows"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "no_data_roaming"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "no_record_audio"

    aput-object v1, v0, v3

    const-string/jumbo v1, "no_wallpaper"

    aput-object v1, v0, v4

    const-string/jumbo v1, "no_oem_unlock"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "no_adjust_volume"

    aput-object v1, v0, v3

    const-string/jumbo v1, "no_run_in_background"

    aput-object v1, v0, v4

    const-string/jumbo v1, "no_unmute_microphone"

    aput-object v1, v0, v5

    const-string/jumbo v1, "disallow_unmute_device"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v10, "no_config_wifi"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz p3, :cond_0

    const-string/jumbo v10, "wifi_networks_available_notification_on"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v10, "no_data_roaming"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz p3, :cond_0

    new-instance v9, Landroid/telephony/SubscriptionManager;

    invoke-direct {v9, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "data_roaming"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_2
    :try_start_2
    const-string/jumbo v10, "no_share_location"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p3, :cond_0

    const-string/jumbo v10, "location_mode"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "no_debugging_features"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    const-string v10, "adb_enabled"

    const-string v11, "0"

    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "ensure_verify_apps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "package_verifier_enable"

    const-string v12, "1"

    invoke-static {v10, v11, v12, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "verifier_verify_adb_installs"

    const-string v12, "1"

    invoke-static {v10, v11, v12, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v10, "no_install_unknown_sources"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz p3, :cond_0

    const-string/jumbo v10, "install_non_market_apps"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v10, "no_run_in_background"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_0

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, p1, v11, v12}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v10

    throw v10

    :cond_7
    const-string/jumbo v10, "no_safe_boot"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "safe_boot_disallowed"

    if-eqz p3, :cond_b

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v10, "no_factory_reset"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_3
    if-eqz p3, :cond_0

    const-string/jumbo v10, "persistent_data_block"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v10, "no_oem_unlock"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_3

    :cond_a
    const-string v10, "data_roaming"

    const-string v11, "0"

    invoke-static {v0, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_b
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5

    sget-object v4, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {p0, p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    return v2

    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_3

    return v4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    return v4

    :cond_6
    return v5
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UserRestrictionsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-nez p1, :cond_1

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "true"

    invoke-interface {p0, v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_2
    const-string v2, "UserRestrictionsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
