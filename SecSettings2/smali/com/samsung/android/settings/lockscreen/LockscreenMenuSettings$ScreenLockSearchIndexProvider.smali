.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockSearchIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2335
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 2336
    const-class v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    .line 2335
    return-void
.end method

.method private isGuestUser(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2534
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2536
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2537
    const/4 v1, 0x1

    return v1

    .line 2540
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2546
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2548
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2549
    .local v4, "isSupportLMM":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_0

    .line 2550
    const/4 v4, 0x1

    .line 2553
    :cond_0
    const/4 v0, 0x0

    .line 2554
    .local v0, "hasFMMDMClient":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    .line 2556
    .local v0, "hasFMMDMClient":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2557
    const-string/jumbo v8, "lock_screen_menu_notifications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2563
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2564
    const-string/jumbo v8, "secured_lock_settigns"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2567
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2568
    const-string/jumbo v8, "show_information"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2569
    const-string/jumbo v8, "secured_lock_settigns"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2573
    const-string/jumbo v8, "lock_screen_menu_notifications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2574
    const-string/jumbo v8, "lock_screen_menu_sec_notifications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2578
    const-string/jumbo v8, "find_my_mobile"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    :cond_4
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2582
    :cond_5
    const-string/jumbo v8, "finger_scanner"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2583
    const-string/jumbo v8, "iris_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2584
    const-string/jumbo v8, "unlock_set_or_change"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    const-string/jumbo v8, "other_security_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2586
    const-string/jumbo v8, "silent_lock"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2589
    :cond_6
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2590
    const-string/jumbo v8, "finger_scanner"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2595
    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2596
    const-string/jumbo v8, "iris_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v8

    if-nez v8, :cond_9

    .line 2600
    const-string/jumbo v8, "silent_lock"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2603
    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2604
    const-string/jumbo v8, "unlock_set_or_change"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2605
    const-string/jumbo v8, "iris_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2606
    const-string/jumbo v8, "finger_scanner"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2607
    const-string/jumbo v8, "silent_lock"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2608
    const-string/jumbo v8, "secured_lock_settigns"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2611
    :cond_a
    const-string/jumbo v8, "app_ops_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2613
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2614
    const-string/jumbo v8, "lock_screen_menu_notifications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2615
    const-string/jumbo v8, "lock_screen_menu_sec_notifications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2616
    const-string/jumbo v8, "unlock_set_or_change"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    const-string/jumbo v8, "show_information"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2618
    const-string/jumbo v8, "secured_lock_settigns"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2619
    const-string/jumbo v8, "toggle_install_applications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2622
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2623
    const-string/jumbo v8, "toggle_install_applications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v8

    if-nez v8, :cond_d

    .line 2627
    const-string/jumbo v8, "iris_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2630
    :cond_d
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v8

    if-nez v8, :cond_e

    .line 2631
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_17

    .line 2633
    :cond_e
    :goto_2
    const-string/jumbo v8, "key_private_mode"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2636
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2637
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2638
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2639
    invoke-virtual {v1, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_18

    const/4 v3, 0x1

    .line 2641
    .local v3, "isSecureFolderAction":Z
    :goto_3
    const-string/jumbo v8, "persona"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2643
    .local v6, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz v3, :cond_19

    .line 2647
    :goto_4
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_11

    .line 2648
    :cond_10
    const-string/jumbo v8, "samsung_pass"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2652
    :cond_11
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2653
    const-string/jumbo v8, "iris_settings"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v2, 0x1

    .line 2656
    .local v2, "isSecondUser":Z
    :goto_5
    const-string/jumbo v8, "com.samsung.android.app.aodservice"

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    if-eqz v2, :cond_14

    .line 2657
    :cond_13
    const-string/jumbo v8, "always_on_screen"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2661
    :cond_14
    return-object v5

    .line 2559
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isSecondUser":Z
    .end local v3    # "isSecureFolderAction":Z
    .end local v6    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_15
    const-string/jumbo v8, "lock_screen_menu_sec_notifications"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2591
    :cond_16
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->isGuestUser(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2592
    const-string/jumbo v8, "finger_scanner"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2632
    :cond_17
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 2631
    if-nez v8, :cond_e

    .line 2632
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v8

    .line 2631
    if-nez v8, :cond_e

    .line 2632
    invoke-static {p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v8

    .line 2630
    if-eqz v8, :cond_f

    goto/16 :goto_2

    .line 2639
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "isSecureFolderAction":Z
    goto :goto_3

    .line 2644
    .restart local v6    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_19
    const-string/jumbo v8, "secure_folder"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2655
    :cond_1a
    const/4 v2, 0x0

    .restart local v2    # "isSecondUser":Z
    goto :goto_5
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f0b048c

    .line 2397
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2399
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2402
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2403
    .local v1, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "unlock_set_or_change"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2404
    const-class v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2405
    const v6, 0x7f0b1101

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2406
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2407
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2411
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-class v6, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2412
    const-string/jumbo v6, "show_information"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2413
    const v6, 0x7f0b0892

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2414
    invoke-static {p1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2415
    invoke-static {p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 2416
    .local v0, "covertype":I
    const/16 v6, 0x8

    if-ne v0, v6, :cond_8

    .line 2417
    const v6, 0x7f0b08c3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2427
    .end local v0    # "covertype":I
    :goto_0
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2428
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2431
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "toggle_install_applications"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2432
    const v6, 0x7f0b1475

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2433
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2434
    const v6, 0x7f0b0880

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2438
    :goto_1
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2439
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2441
    const/4 v3, 0x0

    .line 2442
    .local v3, "isSupportLMM":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_0

    .line 2443
    const/4 v3, 0x1

    .line 2446
    :cond_0
    const/4 v2, 0x0

    .line 2447
    .local v2, "hasFMMDMClient":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    .line 2449
    .local v2, "hasFMMDMClient":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_c

    .line 2459
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2460
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2461
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "secured_lock_settigns"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2462
    const-class v6, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2463
    const v6, 0x7f0b08c4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2464
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 2465
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2466
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2467
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2471
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2472
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "always_on_screen"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2473
    const-string/jumbo v6, "android.intent.action.MAIN"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 2474
    const-string/jumbo v6, "com.samsung.android.app.aodservice"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2475
    const-string/jumbo v6, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2476
    const v6, 0x7f0b0405

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2477
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 2478
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2479
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2480
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2483
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2485
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2486
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "other_security_settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2487
    const-class v6, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2488
    const v6, 0x7f0b089d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2489
    const v6, 0x7f0b089e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2490
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2491
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2506
    :cond_5
    :goto_3
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2518
    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2530
    :cond_7
    :goto_5
    return-object v5

    .line 2419
    .end local v2    # "hasFMMDMClient":Z
    .end local v3    # "isSupportLMM":Z
    .restart local v0    # "covertype":I
    :cond_8
    const v6, 0x7f0b08c2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 2421
    .end local v0    # "covertype":I
    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2422
    const v6, 0x7f0b08c1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 2424
    :cond_a
    const v6, 0x7f0b0893

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 2436
    :cond_b
    const v6, 0x7f0b0399

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    .line 2450
    .restart local v2    # "hasFMMDMClient":Z
    .restart local v3    # "isSupportLMM":Z
    :cond_c
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2451
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "find_my_mobile"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2452
    const v6, 0x7f0b077f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2453
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 2454
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2455
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2456
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2494
    :cond_d
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2495
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2496
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "iris_settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2497
    const-string/jumbo v6, "android.intent.action.MAIN"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 2498
    const-string/jumbo v6, "com.android.settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2499
    const-string/jumbo v6, "com.samsung.android.settings.iris.IrisLockSettings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2500
    const v6, 0x7f0b07a3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2501
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2502
    iput v9, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2503
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2506
    :cond_e
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2507
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2508
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "finger_scanner"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2509
    const-string/jumbo v6, "android.intent.action.MAIN"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 2510
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2511
    const-class v6, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2512
    const v6, 0x7f0b0680

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2513
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2514
    iput v9, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2515
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2518
    :cond_f
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2519
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2520
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "silent_lock"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2521
    const-string/jumbo v6, "android.intent.action.MAIN"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 2522
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2523
    const-class v6, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2524
    const v6, 0x7f0b074c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2525
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2526
    iput v9, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2527
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2340
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    .line 2342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2345
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2346
    .local v6, "sir":Landroid/provider/SearchIndexableResource;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2347
    const v7, 0x7f080096

    iput v7, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2348
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2350
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    .line 2353
    .local v1, "hasFMMDMClient":Z
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    .line 2355
    .local v3, "mIsPrimary":Z
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2392
    :cond_1
    :goto_0
    return-object v5

    .line 2355
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2356
    const/4 v4, 0x0

    .line 2357
    .local v4, "resId":I
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2359
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2360
    const v4, 0x7f0800fc

    .line 2367
    :cond_3
    :goto_1
    new-instance v6, Landroid/provider/SearchIndexableResource;

    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2368
    .restart local v6    # "sir":Landroid/provider/SearchIndexableResource;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2369
    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2370
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2373
    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    .line 2374
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 2373
    invoke-direct {v0, v7}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 2375
    .local v0, "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2376
    const-string/jumbo v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 2377
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2378
    const v4, 0x7f08010e

    .line 2382
    :goto_2
    new-instance v6, Landroid/provider/SearchIndexableResource;

    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2383
    .restart local v6    # "sir":Landroid/provider/SearchIndexableResource;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2384
    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2385
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2389
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_4
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2364
    .end local v0    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    :cond_5
    const v4, 0x7f080112

    goto :goto_1

    .line 2380
    .restart local v0    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_6
    const v4, 0x7f08010f

    goto :goto_2
.end method
