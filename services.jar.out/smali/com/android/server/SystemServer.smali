.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103013f

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIMA_KEYSTORE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final isMobilePaymentAllowed:Z = true

.field private static final isRLLAllowed:Z = false

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

.field ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

.field pkmService:Lcom/android/server/PKMService;

.field safeModeValueForTheme:Z

.field timaObserver:Lcom/android/server/TimaObserver;

.field timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/SystemServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startThemeService()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object v0, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    .line 427
    iput-object v0, p0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    .line 428
    iput-object v0, p0, Lcom/android/server/SystemServer;->timaObserver:Lcom/android/server/TimaObserver;

    .line 429
    iput-object v0, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 433
    iput-object v0, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 434
    iput-object v0, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 438
    iput-object v0, p0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_ELASTIC_ENABLED:Z

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    .line 468
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 466
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 672
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 673
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 674
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 671
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 463
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 462
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 632
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 631
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 634
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 637
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 638
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 648
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 649
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 651
    const/4 v1, 0x0

    .line 653
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 658
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 659
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 660
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void

    .line 634
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 640
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 654
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 667
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 630
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 626
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    return-void
.end method

.method private run()V
    .locals 12

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v10, 0x80000

    .line 473
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 479
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 491
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 514
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 519
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 520
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 525
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 520
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 529
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 533
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 537
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 541
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 545
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 548
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 551
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 557
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 558
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 561
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 574
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 577
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 578
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 585
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 587
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 588
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 594
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 598
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.galaxybetaservice"

    .line 605
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x80

    .line 604
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 607
    .local v9, "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_4

    .line 608
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 609
    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 616
    .end local v9    # "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Process;->setSystemServerPid()V

    .line 620
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 622
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :catchall_0
    move-exception v0

    .line 580
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 579
    throw v0

    .line 589
    :catch_0
    move-exception v7

    .line 590
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 593
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 594
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 593
    throw v0

    .line 612
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private startBootstrapServices()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/32 v10, 0x80000

    .line 688
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 691
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 692
    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 691
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 693
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 694
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 701
    :try_start_0
    sget-object v4, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTISCREEN_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v7, 0x1

    .line 700
    invoke-static {v4, v7}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .line 699
    iput-object v4, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    .line 702
    iget-object v4, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v4, v7, v8}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->main(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 704
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setMultiScreenManager(Lcom/android/server/am/IMultiScreenManagerServiceBridge;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 719
    const-string/jumbo v4, "InitPowerManagement"

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 720
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 721
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/lights/LightsService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 728
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 731
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 734
    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "ro.alarm_boot"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 737
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 752
    :cond_0
    :goto_1
    const-string/jumbo v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 753
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "!@Boot: Start PackageManagerService"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 755
    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 754
    invoke-static {v7, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 756
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "!@Boot: End PackageManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 758
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 759
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 764
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_1

    .line 765
    const-string/jumbo v4, "config.disable_otadexopt"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 767
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_1

    .line 768
    const-string/jumbo v4, "StartOtaDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 770
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 779
    .end local v1    # "disableOtaDexopt":Z
    :cond_1
    :goto_3
    const-string/jumbo v4, "StartUserManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 780
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 781
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 784
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 787
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 792
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 684
    return-void

    .line 705
    .end local v0    # "cryptState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 706
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Failure starting MultiScreen Manager Service"

    invoke-static {v4, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 740
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 741
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Device encrypted - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 743
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_0

    .line 748
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    :cond_4
    move v4, v6

    .line 755
    goto/16 :goto_2

    .line 771
    .restart local v1    # "disableOtaDexopt":Z
    :catch_1
    move-exception v2

    .line 772
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "starting OtaDexOptService"

    invoke-direct {p0, v4, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    .line 773
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 774
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 773
    throw v4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 804
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 805
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 806
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 805
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 809
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 799
    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3073
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3074
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3073
    if-eqz v2, :cond_1

    .line 3076
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 3077
    .local v1, "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3072
    .end local v1    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_1
    :goto_0
    return-void

    .line 3078
    :catch_0
    move-exception v0

    .line 3079
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 222

    .prologue
    .line 820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 821
    .local v5, "context":Landroid/content/Context;
    const/16 v210, 0x0

    .line 822
    .local v210, "vibrator":Lcom/android/server/VibratorService;
    const/16 v159, 0x0

    .line 823
    .local v159, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 824
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 825
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v165, 0x0

    .line 826
    .local v165, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v57, 0x0

    .line 827
    .local v57, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v166, 0x0

    .line 828
    .local v166, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v187, 0x0

    .line 829
    .local v187, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v221, 0x0

    .line 830
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v185, 0x0

    .line 831
    .local v185, "serial":Lcom/android/server/SerialService;
    const/16 v168, 0x0

    .line 832
    .local v168, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v54, 0x0

    .line 833
    .local v54, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v116, 0x0

    .line 834
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v205, 0x0

    .line 835
    .local v205, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v64, 0x0

    .line 837
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v72, 0x0

    .line 839
    .local v72, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v136, 0x0

    .line 840
    .local v136, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v101, 0x0

    .line 841
    .local v101, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v27, 0x0

    .line 842
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v110, 0x0

    .line 843
    .local v110, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v219, 0x0

    .line 844
    .local v219, "wigigP2pService":Ljava/lang/Object;
    const/16 v220, 0x0

    .line 847
    .local v220, "wigigService":Ljava/lang/Object;
    const/16 v92, 0x0

    .line 850
    .local v92, "dualAppService":Lcom/android/server/DualAppManagerService;
    const/16 v88, 0x0

    .line 853
    .local v88, "dlpService":Lcom/android/server/DLPManagerService;
    const/16 v146, 0x0

    .line 854
    .local v146, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v148, 0x0

    .line 855
    .local v148, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v138, 0x0

    .line 856
    .local v138, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    const/16 v140, 0x0

    .line 860
    .local v140, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    const/16 v183, 0x0

    .line 861
    .local v183, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v181, 0x0

    .line 865
    .local v181, "sdpLogService":Lcom/android/server/SdpLogService;
    const/16 v134, 0x0

    .line 866
    .local v134, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    const/16 v132, 0x0

    .line 867
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    const/16 v128, 0x0

    .line 871
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    const/16 v130, 0x0

    .line 875
    .local v130, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    const/16 v192, 0x0

    .line 876
    .local v192, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    const/16 v188, 0x0

    .line 877
    .local v188, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    const/16 v196, 0x0

    .line 878
    .local v196, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    const/16 v190, 0x0

    .line 879
    .local v190, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    const/16 v194, 0x0

    .line 882
    .local v194, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    const/16 v144, 0x0

    .line 885
    .local v144, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    const/16 v214, 0x0

    .line 893
    .local v214, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string/jumbo v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v84

    .line 894
    .local v84, "disableStorage":Z
    const-string/jumbo v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    .line 895
    .local v74, "disableBluetooth":Z
    const-string/jumbo v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 896
    .local v75, "disableLocation":Z
    const-string/jumbo v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v85

    .line 897
    .local v85, "disableSystemUI":Z
    const-string/jumbo v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v79

    .line 898
    .local v79, "disableNonCoreServices":Z
    const-string/jumbo v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v77

    .line 899
    .local v77, "disableNetwork":Z
    const-string/jumbo v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .line 900
    .local v78, "disableNetworkTime":Z
    const-string/jumbo v6, "config.disable_rtt"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v80

    .line 901
    .local v80, "disableRtt":Z
    const-string/jumbo v6, "config.disable_mediaproj"

    .line 902
    const/4 v7, 0x0

    .line 901
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v76

    .line 903
    .local v76, "disableMediaProjection":Z
    const-string/jumbo v6, "config.disable_serial"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v83

    .line 904
    .local v83, "disableSerial":Z
    const-string/jumbo v6, "config.disable_searchmanager"

    .line 905
    const/4 v7, 0x0

    .line 904
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v82

    .line 906
    .local v82, "disableSearchManager":Z
    const-string/jumbo v6, "config.disable_trustmanager"

    .line 907
    const/4 v7, 0x0

    .line 906
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 908
    .local v87, "disableTrustManager":Z
    const-string/jumbo v6, "config.disable_textservices"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 909
    .local v86, "disableTextServices":Z
    const-string/jumbo v6, "config.disable_samplingprof"

    .line 910
    const/4 v7, 0x0

    .line 909
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v81

    .line 911
    .local v81, "disableSamplingProfiler":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v118

    .line 912
    .local v118, "isEmulator":Z
    const-string/jumbo v6, "persist.wigig.enable"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 915
    .local v97, "enableWigig":Z
    :try_start_0
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 918
    const-string/jumbo v6, "StartSchedulingPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 919
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 920
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 922
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 924
    const-string/jumbo v6, "StartTelephonyRegistry"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 925
    new-instance v206, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v206

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_97

    .line 926
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v206, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v206

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 927
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 929
    const-string/jumbo v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 930
    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 931
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 934
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v209

    .line 935
    .local v209, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v209

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 937
    :try_start_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v146

    .line 939
    .local v146, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v146

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 946
    .end local v146    # "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    :try_start_3
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxMUMContainerPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v139, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 948
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v139, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    :try_start_4
    const-string/jumbo v6, "mum_container_policy"

    move-object/from16 v0, v139

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_98

    move-object/from16 v138, v139

    .line 955
    .end local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    :goto_1
    :try_start_5
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxMUMRCPPolicyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v141, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 957
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v141, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    :try_start_6
    const-string/jumbo v6, "mum_container_rcp_policy"

    move-object/from16 v0, v141

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_99

    move-object/from16 v140, v141

    .line 966
    .end local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    :cond_0
    :goto_2
    :try_start_7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 968
    :try_start_8
    const-string/jumbo v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 976
    :goto_3
    :try_start_9
    const-string/jumbo v6, "0"

    const-string/jumbo v7, "ro.security.vaultkeeper.feature"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 977
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VaultKeeper Service Enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 979
    :try_start_a
    const-string/jumbo v6, "VaultKeeperService"

    new-instance v7, Lcom/android/server/VaultKeeperService;

    invoke-direct {v7, v5}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 991
    :goto_4
    :try_start_b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Remote Mobile Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 993
    :try_start_c
    new-instance v174, Lcom/android/server/rmm/RmmService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/rmm/RmmService;-><init>(Landroid/content/Context;)V

    .line 994
    .local v174, "rmmService":Lcom/android/server/rmm/RmmService;
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/rmm/RmmService;->startRmm()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 1002
    .end local v174    # "rmmService":Lcom/android/server/rmm/RmmService;
    :goto_5
    :try_start_d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    .line 1004
    :try_start_e
    const-string/jumbo v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v5}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 1013
    :goto_6
    :try_start_f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 1015
    :try_start_10
    const-string/jumbo v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v5}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 1024
    :goto_7
    :try_start_11
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    .line 1026
    :try_start_12
    const-string/jumbo v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v5}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 1033
    :goto_8
    :try_start_13
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1035
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1040
    new-instance v73, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    .line 1042
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v73, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_14
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1043
    const-string/jumbo v6, "DirEncryptService"

    move-object/from16 v0, v73

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9a

    :cond_1
    move-object/from16 v72, v73

    .line 1052
    .end local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_9
    :try_start_15
    const-string/jumbo v6, "StartAccountManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1054
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1056
    const-string/jumbo v6, "StartContentService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1058
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1060
    const-string/jumbo v6, "InstallSystemProviders"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1062
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    const-string/jumbo v6, "StartVibratorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1065
    new-instance v211, Lcom/android/server/VibratorService;

    move-object/from16 v0, v211

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .line 1066
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .local v211, "vibrator":Lcom/android/server/VibratorService;
    :try_start_16
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v211

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1067
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1069
    const-string/jumbo v6, "StartConsumerIrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1070
    new-instance v65, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_9b

    .line 1071
    .local v65, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_17
    const-string/jumbo v6, "consumer_ir"

    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v65

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1072
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1074
    const-string/jumbo v6, "StartAlarmManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1076
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1079
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_c

    .line 1081
    :try_start_18
    new-instance v44, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1082
    .local v44, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 1083
    .local v43, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    const-class v7, Landroid/app/IActivityManager;

    const/4 v10, 0x1

    aput-object v7, v6, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v45

    .line 1084
    .local v45, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x1

    aput-object v7, v6, v10

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v200

    check-cast v200, Landroid/os/IBinder;

    .line 1085
    .local v200, "ssrmService":Landroid/os/IBinder;
    const-string/jumbo v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v200

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_c

    .line 1093
    .end local v43    # "cfmsClass":Ljava/lang/Class;
    .end local v44    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v45    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v200    # "ssrmService":Landroid/os/IBinder;
    :goto_a
    :try_start_19
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Hqm Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_c

    .line 1095
    :try_start_1a
    new-instance v34, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1096
    .local v34, "HqmServiceClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.hqm.HqmManagerService"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v33

    .line 1097
    .local v33, "HqmServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 1098
    .local v35, "HqmServiceConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/IBinder;

    .line 1099
    .local v32, "HqmService":Landroid/os/IBinder;
    const-string/jumbo v6, "HqmManagerService"

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_c

    .line 1106
    .end local v32    # "HqmService":Landroid/os/IBinder;
    .end local v33    # "HqmServiceClass":Ljava/lang/Class;
    .end local v34    # "HqmServiceClassLoader":Ldalvik/system/PathClassLoader;
    .end local v35    # "HqmServiceConstructor":Ljava/lang/reflect/Constructor;
    :goto_b
    :try_start_1b
    const-string/jumbo v6, "InitWatchdog"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1107
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v213

    .line 1108
    .local v213, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v213

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1109
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1111
    const-string/jumbo v6, "StartInputManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1112
    new-instance v117, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 1113
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v117, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v6, 0x80000

    :try_start_1c
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1115
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1116
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const-string/jumbo v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_f

    .line 1121
    :cond_2
    :try_start_1d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1122
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1121
    if-eqz v6, :cond_4

    .line 1123
    :cond_3
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemContextService Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    new-instance v180, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v180

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1125
    .local v180, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.hardware.context.SemContextService"

    move-object/from16 v0, v180

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v49

    .line 1126
    .local v49, "class_SContextService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v62

    .line 1127
    .local v62, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_f

    .line 1133
    .end local v49    # "class_SContextService":Ljava/lang/Class;
    .end local v62    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    .end local v180    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    :cond_4
    :goto_c
    :try_start_1e
    const-string/jumbo v6, "StartWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_f

    move-result v207

    .line 1146
    .local v207, "timaEnabled":Z
    :try_start_1f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1150
    new-instance v6, Lcom/android/server/TimaService;

    invoke-direct {v6, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    .line 1151
    const-string/jumbo v6, "tima"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_f

    .line 1157
    :goto_d
    const/16 v6, -0x13

    :try_start_20
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_f

    .line 1161
    :try_start_21
    const-string/jumbo v6, "com.sec.tima.TimaKeyStoreProvider"

    .line 1160
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v119

    .line 1162
    .local v119, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v119 .. v119}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1163
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1168
    const-string/jumbo v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    .line 1167
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v31

    .line 1169
    .local v31, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1170
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_f

    .line 1178
    .end local v31    # "FipsKeyStoreClass":Ljava/lang/Class;
    .end local v119    # "keyStoreClass":Ljava/lang/Class;
    :cond_5
    :goto_e
    if-eqz v207, :cond_6

    .line 1180
    :try_start_22
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PKM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v6, Lcom/android/server/PKMService;

    invoke-direct {v6, v5}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    .line 1182
    const-string/jumbo v6, "pkm"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_f

    .line 1188
    :goto_f
    const/16 v6, -0x13

    :try_start_23
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_f

    .line 1192
    :try_start_24
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    new-instance v6, Lcom/android/server/TimaObserver;

    invoke-direct {v6, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->timaObserver:Lcom/android/server/TimaObserver;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_f

    .line 1201
    :goto_10
    :try_start_25
    const-string/jumbo v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v208

    .line 1202
    .local v208, "timaversion":Z
    if-eqz v208, :cond_6

    .line 1205
    const/16 v113, 0x0

    .line 1206
    .local v113, "icccService":Lcom/android/server/IcccManagerService;
    new-instance v113, Lcom/android/server/IcccManagerService;

    .end local v113    # "icccService":Lcom/android/server/IcccManagerService;
    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v113, "icccService":Lcom/android/server/IcccManagerService;
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v113

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1209
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_f

    .line 1211
    :try_start_26
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TIMA Version write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdffffe

    const/4 v11, 0x3

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v114

    .line 1213
    .local v114, "iccc_result":I
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getTrustedBootData result : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v114

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    if-nez v114, :cond_55

    .line 1216
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x0

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_f

    .line 1230
    .end local v114    # "iccc_result":I
    :goto_11
    :try_start_27
    new-instance v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1231
    const-string/jumbo v6, "knox_ccm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1232
    sget-object v6, Landroid/app/enterprise/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_f

    .line 1245
    .end local v113    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v208    # "timaversion":Z
    :cond_6
    :goto_12
    :try_start_28
    new-instance v6, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 1246
    const-string/jumbo v6, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1247
    const-string/jumbo v6, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_f

    .line 1253
    :goto_13
    :try_start_29
    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v6, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 1254
    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_f

    .line 1264
    :goto_14
    :try_start_2a
    new-instance v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {v6, v5}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .line 1265
    const-string/jumbo v6, "knox_scep_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1266
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP is enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_f

    .line 1272
    :goto_15
    :try_start_2b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string/jumbo v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_f

    .line 1280
    :goto_16
    :try_start_2c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string/jumbo v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_f

    .line 1287
    :goto_17
    :try_start_2d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_56

    const/4 v6, 0x1

    move v7, v6

    .line 1288
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v6, :cond_57

    const/4 v6, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1286
    move-object/from16 v0, v117

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v221

    .line 1289
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v6, "window"

    move-object/from16 v0, v221

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1290
    const-string/jumbo v6, "input"

    move-object/from16 v0, v117

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1291
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1293
    const-string/jumbo v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1295
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1299
    const-string/jumbo v6, "StartGearVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1301
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_f

    move-result v6

    if-eqz v6, :cond_7

    .line 1308
    :try_start_2e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v41, Landroid/app/BarBeamService;

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1311
    .local v41, "barbeam":Landroid/app/BarBeamService;
    const-string/jumbo v6, "barbeam"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_f

    .line 1323
    .end local v41    # "barbeam":Landroid/app/BarBeamService;
    :cond_7
    :goto_1a
    :try_start_2f
    sget-object v6, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .line 1324
    .local v164, "multiWindowManagerServiceBridge":Lcom/android/server/am/IMultiWindowManagerServiceBridge;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v164

    move-object/from16 v1, v221

    invoke-interface {v0, v6, v1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_f

    .line 1331
    .end local v164    # "multiWindowManagerServiceBridge":Lcom/android/server/am/IMultiWindowManagerServiceBridge;
    :goto_1b
    :try_start_30
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v221

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1333
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v117

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1334
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1337
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1342
    if-eqz v118, :cond_58

    .line 1343
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_1c
    const-string/jumbo v6, "ConnectivityMetricsLoggerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1366
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1368
    const-string/jumbo v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1370
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1374
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_f

    .line 1376
    :try_start_31
    new-instance v149, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_f

    .line 1377
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v149, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_32
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v149

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_9d
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_9c

    move-object/from16 v148, v149

    .line 1384
    .end local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_1d
    :try_start_33
    new-instance v6, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_f

    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v205, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v210, v211

    .line 1391
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v207    # "timaEnabled":Z
    .end local v209    # "versionInfo":Landroid/os/Bundle;
    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .end local v213    # "watchdog":Lcom/android/server/Watchdog;
    .end local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_1e
    const/16 v201, 0x0

    .line 1392
    .local v201, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v170, 0x0

    .line 1393
    .local v170, "notification":Landroid/app/INotificationManager;
    const/16 v122, 0x0

    .line 1394
    .local v122, "location":Lcom/android/server/LocationManagerService;
    const/16 v177, 0x0

    .line 1395
    .local v177, "sLocation":Landroid/os/IBinder;
    const/16 v66, 0x0

    .line 1396
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v124, 0x0

    .line 1398
    .local v124, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v154, 0x0

    .line 1400
    .local v154, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v99, 0x0

    .line 1404
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v120, 0x0

    .line 1411
    .local v120, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    const/16 v198, 0x0

    .line 1416
    .local v198, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    const/16 v126, 0x0

    .line 1417
    .local v126, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    const/16 v142, 0x0

    .line 1421
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    const/16 v175, 0x0

    .line 1425
    .local v175, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 1426
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1428
    const-string/jumbo v6, "StartAccessibilityManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1430
    :try_start_34
    const-string/jumbo v6, "accessibility"

    .line 1431
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 1430
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .line 1435
    :goto_1f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1439
    :cond_8
    :try_start_35
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 1446
    :goto_20
    :try_start_36
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v173

    .line 1447
    .local v173, "pm":Landroid/content/pm/PackageManager;
    if-eqz v173, :cond_9

    .line 1448
    const-string/jumbo v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v173

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1449
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    new-instance v176, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v176

    move-object/from16 v1, v116

    invoke-direct {v0, v5, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 1451
    .end local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v176, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :try_start_37
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v176

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1452
    move-object/from16 v0, v116

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_96

    move-object/from16 v175, v176

    .line 1461
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    .end local v176    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :cond_9
    :goto_21
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_a

    .line 1463
    :try_start_38
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Add SEM_FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string/jumbo v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1465
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .line 1473
    :cond_a
    :goto_22
    :try_start_39
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/16 v152, 0x0

    .line 1475
    .local v152, "mdnieClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v152

    .line 1476
    .local v152, "mdnieClass":Ljava/lang/Class;
    if-nez v152, :cond_5c

    .line 1477
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 1488
    .end local v152    # "mdnieClass":Ljava/lang/Class;
    :goto_23
    const/16 v68, 0x0

    .line 1490
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 1491
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 1492
    .local v70, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "1"

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1493
    :cond_b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v70    # "cryptState":Ljava/lang/String;
    :cond_c
    :goto_24
    const/16 v150, 0x0

    .line 1516
    .local v150, "mateService":Lcom/samsung/android/mateservice/MateService;
    :try_start_3a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v173

    .line 1517
    .restart local v173    # "pm":Landroid/content/pm/PackageManager;
    if-eqz v173, :cond_d

    const-string/jumbo v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v173

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1518
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mate Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v151, Lcom/samsung/android/mateservice/MateService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/samsung/android/mateservice/MateService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_24

    .line 1520
    .end local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .local v151, "mateService":Lcom/samsung/android/mateservice/MateService;
    :try_start_3b
    const-string/jumbo v6, "mate_service"

    move-object/from16 v0, v151

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_94

    move-object/from16 v150, v151

    .line 1527
    .end local v151    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_25
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    .line 1528
    if-nez v84, :cond_e

    .line 1529
    const-string/jumbo v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1544
    .end local v159    # "mountService":Landroid/os/storage/IMountService;
    :cond_e
    :goto_26
    :try_start_3c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    if-eqz v72, :cond_f

    .line 1546
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_26

    .line 1557
    :cond_f
    :goto_27
    :try_start_3d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v171

    .line 1558
    .local v171, "pM":Landroid/content/pm/PackageManager;
    if-eqz v171, :cond_10

    .line 1559
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const-string/jumbo v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1561
    const-string/jumbo v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v171

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1562
    new-instance v158, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v158

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1563
    .local v158, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.gesture.MotionRecognitionService"

    move-object/from16 v0, v158

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    .line 1564
    .local v48, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v61

    .line 1565
    .local v61, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1566
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_27

    .line 1576
    .end local v48    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v61    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v158    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v171    # "pM":Landroid/content/pm/PackageManager;
    :cond_10
    :goto_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1578
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_11

    .line 1579
    const-string/jumbo v6, "UpdatePackagesIfNeeded"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1581
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_28

    .line 1585
    :goto_29
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1598
    :cond_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_72

    .line 1599
    if-nez v79, :cond_13

    .line 1600
    const-string/jumbo v6, "StartLockSettingsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1602
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1604
    const-string/jumbo v6, "lock_settings"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1603
    invoke-static {v6}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_29

    move-result-object v124

    .line 1608
    .end local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_2a
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1610
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1611
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1614
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1618
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1623
    :cond_13
    :try_start_40
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v137, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_2a

    .line 1625
    .end local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v137, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_41
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v137

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1626
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_93

    move-object/from16 v136, v137

    .line 1635
    .end local v137    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_2b
    :try_start_42
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    new-instance v184, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v184

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2b

    .line 1637
    .end local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v184, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_43
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v184

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_92

    move-object/from16 v183, v184

    .line 1643
    .end local v184    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_2c
    :try_start_44
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v182, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2c

    .line 1645
    .end local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v182, "sdpLogService":Lcom/android/server/SdpLogService;
    :try_start_45
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v182

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_91

    move-object/from16 v181, v182

    .line 1665
    .end local v182    # "sdpLogService":Lcom/android/server/SdpLogService;
    :goto_2d
    :try_start_46
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DLPManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    new-instance v89, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 1667
    .end local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v89, "dlpService":Lcom/android/server/DLPManagerService;
    :try_start_47
    const-string/jumbo v6, "dlp"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_90

    move-object/from16 v88, v89

    .line 1674
    .end local v89    # "dlpService":Lcom/android/server/DLPManagerService;
    :goto_2e
    if-nez v79, :cond_14

    .line 1676
    :try_start_48
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1678
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v99

    .line 1679
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 1687
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_14
    :goto_2f
    if-nez v79, :cond_15

    .line 1689
    :try_start_49
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxCustom Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    new-instance v121, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2f

    .line 1691
    .end local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .local v121, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    :try_start_4a
    const-string/jumbo v6, "knoxcustom"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1692
    const-string/jumbo v6, "knoxcustom"

    const/4 v7, 0x0

    move-object/from16 v0, v121

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1693
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxCustom Policy added."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_8f

    move-object/from16 v120, v121

    .line 1701
    .end local v121    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    :cond_15
    :goto_30
    if-nez v79, :cond_16

    .line 1703
    if-eqz v99, :cond_16

    .line 1704
    :try_start_4b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Enterprise SSO service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    new-instance v129, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_30

    .line 1706
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v129, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    :try_start_4c
    const-string/jumbo v6, "enterprise_sso_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v129

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1708
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Enterprise Userspace SSO service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v133, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_8c

    .line 1710
    .local v133, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :try_start_4d
    const-string/jumbo v6, "enterprise_user_space_sso_policy"

    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v133

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1712
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Generic SSO service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    new-instance v135, Lcom/android/server/enterprise/sso/GenericSSOService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_8d

    .line 1714
    .local v135, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :try_start_4e
    const-string/jumbo v6, "genericssoservice"

    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    const/4 v7, 0x1

    move-object/from16 v0, v135

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_8e

    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    move-object/from16 v132, v133

    .end local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    move-object/from16 v134, v135

    .line 1723
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v135    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :cond_16
    :goto_31
    if-nez v79, :cond_17

    .line 1725
    if-eqz v99, :cond_17

    .line 1726
    :try_start_4f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX Shared Device service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    new-instance v131, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    .line 1728
    .end local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v131, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    :try_start_50
    const-string/jumbo v6, "enterprise_shared_device_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v131

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_8b

    move-object/from16 v130, v131

    .line 1737
    .end local v131    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    :cond_17
    :goto_32
    if-nez v79, :cond_18

    .line 1739
    if-eqz v99, :cond_18

    .line 1740
    :try_start_51
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KNOX OTP service is added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    new-instance v145, Lcom/android/server/enterprise/otp/OTPService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/otp/OTPService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    .line 1742
    .end local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .local v145, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    :try_start_52
    const-string/jumbo v6, "otp_service"

    move-object/from16 v0, v145

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1743
    const-string/jumbo v6, "otp_service"

    const/4 v7, 0x0

    move-object/from16 v0, v145

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_8a

    move-object/from16 v144, v145

    .line 1752
    .end local v145    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    :cond_18
    :goto_33
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1754
    :try_start_53
    new-instance v98, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    .line 1755
    .local v98, "enterpriseBillingPolicy":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    const-string/jumbo v6, "enterprise_billing_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v98

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 1764
    .end local v98    # "enterpriseBillingPolicy":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_19
    :goto_34
    :try_start_54
    new-instance v199, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    move-object/from16 v0, v199

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/spd/SPDControlPolicy;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_34

    .line 1765
    .end local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v199, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    :try_start_55
    const-string/jumbo v6, "spd_control_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v199

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_89

    move-object/from16 v198, v199

    .line 1770
    .end local v199    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    :goto_35
    :try_start_56
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const-string/jumbo v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 1777
    :goto_36
    :try_start_57
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1778
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 1784
    :goto_37
    if-nez v85, :cond_1a

    .line 1785
    const-string/jumbo v6, "StartStatusBarManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1787
    :try_start_58
    new-instance v202, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v202

    move-object/from16 v1, v221

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .line 1788
    .end local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v202, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_59
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v202

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_88

    move-object/from16 v201, v202

    .line 1792
    .end local v202    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_38
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1795
    :cond_1a
    if-nez v79, :cond_1b

    .line 1796
    const-string/jumbo v6, "StartClipboardService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1798
    :try_start_5a
    const-string/jumbo v6, "clipboard"

    .line 1799
    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 1798
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    .line 1803
    :goto_39
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1807
    :cond_1b
    if-eqz v79, :cond_60

    .line 1820
    :goto_3a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :try_start_5b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Absolute Persistence Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const-string/jumbo v6, "ABTPersistenceService"

    new-instance v7, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v7, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    .line 1823
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    .line 1831
    :goto_3b
    if-nez v77, :cond_1c

    .line 1832
    const-string/jumbo v6, "StartNetworkManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1834
    :try_start_5c
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1835
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3b

    .line 1839
    .end local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_3c
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1843
    :cond_1c
    if-nez v79, :cond_1d

    .line 1845
    if-eqz v99, :cond_1d

    .line 1846
    :try_start_5d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding EnterprisePremiumVpnService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    new-instance v127, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3c

    .line 1848
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v127, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    :try_start_5e
    const-string/jumbo v6, "enterprise_premium_vpn_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v127

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1850
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding KnoxVpnEngineService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    new-instance v143, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_86

    .line 1852
    .local v143, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_start_5f
    const-string/jumbo v6, "knox_vpn_policy"

    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    const/4 v7, 0x1

    move-object/from16 v0, v143

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_87

    move-object/from16 v142, v143

    .end local v143    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    move-object/from16 v126, v127

    .line 1860
    .end local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :cond_1d
    :goto_3d
    if-nez v79, :cond_1e

    if-eqz v86, :cond_61

    .line 1864
    :cond_1e
    :goto_3e
    if-nez v77, :cond_71

    .line 1865
    const-string/jumbo v6, "StartNetworkScoreService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1867
    :try_start_60
    new-instance v167, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3d

    .line 1868
    .end local v166    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v167, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_61
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v167

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_85

    move-object/from16 v166, v167

    .line 1872
    .end local v167    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_3f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1874
    const-string/jumbo v6, "StartNetworkStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1876
    :try_start_62
    invoke-static {v5, v9}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v8

    .line 1877
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v6, "netstats"

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3e

    .line 1881
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_40
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1883
    const-string/jumbo v6, "StartNetworkPolicyManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1885
    :try_start_63
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1886
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1887
    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    .line 1885
    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3f

    .line 1889
    .end local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_64
    const-string/jumbo v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_84

    .line 1893
    :goto_41
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1895
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.nan"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1896
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1900
    :goto_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1901
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1903
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1906
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1907
    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    .line 1906
    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1909
    if-nez v80, :cond_1f

    .line 1910
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1913
    :cond_1f
    if-eqz v97, :cond_20

    .line 1915
    :try_start_65
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wigig Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    new-instance v217, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/wigig-service.jar"

    .line 1918
    const-string/jumbo v7, "/system/lib64:/system/vendor/lib64"

    .line 1919
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 1917
    move-object/from16 v0, v217

    invoke-direct {v0, v6, v7, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1921
    .local v217, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 1920
    move-object/from16 v0, v217

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v218

    .line 1922
    .local v218, "wigigP2pClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v218

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1923
    .local v71, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v219

    .line 1924
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const-string/jumbo v7, "wigigp2p"

    move-object/from16 v0, v219

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1928
    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.WigigService"

    .line 1927
    move-object/from16 v0, v217

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v216

    .line 1929
    .local v216, "wigigClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v216

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1930
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v220

    .line 1931
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    const-string/jumbo v7, "wigig"

    move-object/from16 v0, v220

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_40

    .line 1938
    .end local v71    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v216    # "wigigClass":Ljava/lang/Class;
    .end local v217    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v218    # "wigigP2pClass":Ljava/lang/Class;
    .end local v219    # "wigigP2pService":Ljava/lang/Object;
    .end local v220    # "wigigService":Ljava/lang/Object;
    :cond_20
    :goto_43
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1939
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1938
    if-eqz v6, :cond_22

    .line 1940
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1943
    :cond_22
    const-string/jumbo v6, "StartConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1945
    :try_start_66
    new-instance v58, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v58

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_41

    .line 1947
    .end local v57    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v58, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_67
    const-string/jumbo v6, "connectivity"

    move-object/from16 v0, v58

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1948
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1949
    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_83

    move-object/from16 v57, v58

    .line 1953
    .end local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_44
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1955
    const-string/jumbo v6, "StartNsdService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1957
    :try_start_68
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v187

    .line 1959
    .local v187, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v6, "servicediscovery"

    .line 1958
    move-object/from16 v0, v187

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_42

    .line 1963
    .end local v187    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_45
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1967
    :goto_46
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1970
    :try_start_69
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    new-instance v215, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v215

    invoke-direct {v0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_43

    .line 1972
    .end local v214    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v215, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :try_start_6a
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v215

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_82

    move-object/from16 v214, v215

    .line 1979
    .end local v215    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :cond_23
    :goto_47
    if-nez v79, :cond_24

    .line 1980
    const-string/jumbo v6, "StartUpdateLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1982
    :try_start_6b
    const-string/jumbo v6, "updatelock"

    .line 1983
    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 1982
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_44

    .line 1987
    :goto_48
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1990
    :cond_24
    if-nez v79, :cond_25

    .line 1991
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1994
    :cond_25
    if-nez v79, :cond_26

    .line 1996
    :try_start_6c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemExecute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const-string/jumbo v6, "execute"

    .line 1998
    new-instance v7, Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/execute/SemExecuteManagerService;-><init>(Landroid/content/Context;)V

    .line 1997
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_45

    .line 2009
    :cond_26
    :goto_49
    if-eqz v159, :cond_27

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v6, :cond_63

    .line 2018
    :cond_27
    :goto_4a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2020
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2019
    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v170

    .line 2021
    .local v170, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v170

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2025
    if-nez v75, :cond_28

    .line 2026
    const-string/jumbo v6, "StartLocationManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2028
    :try_start_6d
    new-instance v123, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_47

    .line 2029
    .end local v122    # "location":Lcom/android/server/LocationManagerService;
    .local v123, "location":Lcom/android/server/LocationManagerService;
    :try_start_6e
    const-string/jumbo v6, "location"

    move-object/from16 v0, v123

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_81

    move-object/from16 v122, v123

    .line 2033
    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    :goto_4b
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2035
    const-string/jumbo v6, "StartCountryDetectorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2037
    :try_start_6f
    new-instance v67, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_48

    .line 2038
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v67, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_70
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_80

    move-object/from16 v66, v67

    .line 2042
    .end local v67    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_4c
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2047
    :cond_28
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2049
    const/16 v51, 0x0

    .line 2050
    .local v51, "clazz":Ljava/lang/Class;
    :try_start_71
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Starting VZW Location Manager "

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const-string/jumbo v6, "com.samsung.vzwlbs"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v39

    .line 2052
    .local v39, "apkServiceContext":Landroid/content/Context;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Loading VzwLocationManagerService from the APK"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_4a

    .line 2054
    :try_start_72
    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string/jumbo v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v51

    .line 2055
    .local v51, "clazz":Ljava/lang/Class;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Loaded VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_49
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_4a

    .line 2060
    .end local v51    # "clazz":Ljava/lang/Class;
    :goto_4d
    if-eqz v51, :cond_64

    .line 2061
    const/4 v6, 0x1

    :try_start_73
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2063
    .local v59, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/os/IBinder;

    .line 2064
    .local v112, "ib":Landroid/os/IBinder;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Adding VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string/jumbo v6, "vzwlbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IBinder : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v112

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string/jumbo v6, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v112

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2067
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Added VzwLocationManagerService to Service Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_4a

    .line 2080
    .end local v39    # "apkServiceContext":Landroid/content/Context;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v112    # "ib":Landroid/os/IBinder;
    :cond_29
    :goto_4e
    :try_start_74
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const-string/jumbo v6, "com.samsung.android.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v178

    .line 2082
    .local v178, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, v178

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v109

    .line 2083
    .local v109, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v177, v0

    .line 2084
    .local v177, "sLocation":Landroid/os/IBinder;
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v177

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_4b

    .line 2089
    .end local v109    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v177    # "sLocation":Landroid/os/IBinder;
    .end local v178    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4f
    if-nez v79, :cond_2a

    if-eqz v82, :cond_65

    .line 2099
    :cond_2a
    :goto_50
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2101
    if-nez v79, :cond_2b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2102
    const v7, 0x112004f

    .line 2101
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2102
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v6, :cond_66

    .line 2108
    :cond_2b
    :goto_51
    const-string/jumbo v6, "StartAudioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2110
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2112
    if-nez v79, :cond_2c

    .line 2113
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2115
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2120
    :cond_2c
    const-string/jumbo v6, "StartWiredAccessoryManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2124
    :try_start_75
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v116

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 2123
    move-object/from16 v0, v116

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_4d

    .line 2128
    :goto_52
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2130
    if-nez v79, :cond_31

    .line 2131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2133
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2136
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 2137
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2138
    const-string/jumbo v7, "android.hardware.usb.accessory"

    .line 2137
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 2136
    if-eqz v6, :cond_2f

    .line 2140
    :cond_2e
    const-string/jumbo v6, "StartUsbService"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2142
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2145
    :cond_2f
    if-nez v83, :cond_30

    .line 2146
    const-string/jumbo v6, "StartSerialService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2149
    :try_start_76
    new-instance v186, Lcom/android/server/SerialService;

    move-object/from16 v0, v186

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_4e

    .line 2150
    .end local v185    # "serial":Lcom/android/server/SerialService;
    .local v186, "serial":Lcom/android/server/SerialService;
    :try_start_77
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v186

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_7f

    move-object/from16 v185, v186

    .line 2154
    .end local v186    # "serial":Lcom/android/server/SerialService;
    :goto_53
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2158
    :cond_30
    const-string/jumbo v6, "StartHardwarePropertiesManagerService"

    .line 2157
    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2160
    :try_start_78
    new-instance v111, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_4f

    .line 2161
    .end local v110    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v111, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_79
    const-string/jumbo v6, "hardware_properties"

    move-object/from16 v0, v111

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_7e

    move-object/from16 v110, v111

    .line 2166
    .end local v111    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_54
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2172
    :cond_31
    :try_start_7a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    const-string/jumbo v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_50

    .line 2181
    :goto_55
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2187
    if-nez v79, :cond_37

    .line 2188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2192
    :cond_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 2193
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 2192
    if-eqz v6, :cond_34

    .line 2194
    :cond_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2197
    :cond_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2198
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2201
    :cond_35
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2202
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2205
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2206
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2209
    :cond_37
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2210
    .local v36, "SecEDSEnable":Ljava/lang/String;
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const-string/jumbo v6, "false"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 2214
    :try_start_7b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    const/16 v96, 0x0

    .line 2216
    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v96

    .line 2217
    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v96, :cond_67

    .line 2218
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_51

    .line 2234
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    :goto_56
    const-string/jumbo v6, "StartDiskStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2236
    :try_start_7c
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_52

    .line 2240
    :goto_57
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2244
    :try_start_7d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemDisplaySolution Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    const/16 v90, 0x0

    .line 2246
    .local v90, "dsClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v90

    .line 2247
    .local v90, "dsClass":Ljava/lang/Class;
    if-nez v90, :cond_68

    .line 2248
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemDisplaySolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_53

    .line 2260
    .end local v90    # "dsClass":Ljava/lang/Class;
    :goto_58
    :try_start_7e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAllAroundSensing Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const/16 v37, 0x0

    .line 2262
    .local v37, "aasClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.samsung.android.allaroundsensing.SemAllAroundSensingManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 2263
    .local v37, "aasClass":Ljava/lang/Class;
    if-nez v37, :cond_69

    .line 2264
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAllAroundSensing Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_54

    .line 2276
    .end local v37    # "aasClass":Ljava/lang/Class;
    :goto_59
    const-string/jumbo v6, "StartSpenGestureManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2278
    :try_start_7f
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v221

    invoke-direct {v7, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_55

    .line 2282
    :goto_5a
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.aod.AODManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2302
    :try_start_80
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_56

    .line 2309
    :goto_5b
    if-nez v81, :cond_39

    .line 2310
    const-string/jumbo v6, "StartSamplingProfilerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2316
    :try_start_81
    const-string/jumbo v6, "samplingprofiler"

    .line 2317
    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 2316
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_57

    .line 2321
    :goto_5c
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2324
    :cond_39
    if-nez v77, :cond_3a

    if-eqz v78, :cond_6a

    .line 2343
    .end local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_3a
    :goto_5d
    const-string/jumbo v6, "StartCommonTimeManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2345
    :try_start_82
    new-instance v55, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v55

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_59

    .line 2346
    .end local v54    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v55, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_83
    const-string/jumbo v6, "commontime_management"

    move-object/from16 v0, v55

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_7c

    move-object/from16 v54, v55

    .line 2350
    .end local v55    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_5e
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2352
    if-nez v77, :cond_3b

    .line 2353
    const-string/jumbo v6, "CertBlacklister"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2355
    :try_start_84
    new-instance v42, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_5a

    .line 2359
    :goto_5f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2362
    :cond_3b
    if-nez v79, :cond_3c

    .line 2364
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2367
    :cond_3c
    if-nez v79, :cond_3d

    .line 2378
    :cond_3d
    if-nez v79, :cond_3e

    .line 2379
    const-string/jumbo v6, "graphicsstats"

    .line 2380
    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 2379
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2383
    :cond_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 2384
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2387
    :cond_3f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2389
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2391
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2395
    :cond_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2396
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2399
    :cond_41
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 2400
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2403
    :cond_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2404
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2407
    :cond_43
    if-nez v79, :cond_46

    .line 2408
    const-string/jumbo v6, "StartMediaRouterService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2410
    :try_start_85
    new-instance v155, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_5b

    .line 2411
    .end local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v155, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_86
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v155

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_7b

    move-object/from16 v154, v155

    .line 2415
    .end local v155    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_60
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2417
    if-nez v87, :cond_44

    .line 2418
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2421
    :cond_44
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.fingerprint"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2422
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2425
    :cond_45
    const-string/jumbo v6, "StartBackgroundDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2427
    :try_start_87
    invoke-static {v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_5c

    .line 2431
    :goto_61
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2434
    :cond_46
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2436
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2440
    :try_start_88
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_5d

    .line 2448
    .end local v36    # "SecEDSEnable":Ljava/lang/String;
    .end local v170    # "notification":Landroid/app/INotificationManager;
    :goto_62
    if-nez v79, :cond_47

    if-eqz v76, :cond_6b

    .line 2452
    :cond_47
    :goto_63
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2458
    :cond_48
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v179

    .line 2460
    .local v179, "safeMode":Z
    move/from16 v0, v179

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    .line 2462
    if-eqz v179, :cond_6c

    .line 2463
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2465
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 2472
    :goto_64
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v147

    .line 2473
    .local v147, "mProductName":Ljava/lang/String;
    const-string/jumbo v6, "ktt"

    move-object/from16 v0, v147

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-nez v6, :cond_49

    .line 2476
    :try_start_89
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KT UCA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const-string/jumbo v6, "ktuca"

    new-instance v7, Landroid/ktuca/KtUcaService;

    invoke-direct {v7, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_5e

    .line 2485
    :cond_49
    :goto_65
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v27

    .end local v27    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v27, Lcom/android/server/MmsServiceBroker;

    .line 2490
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_8a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mobile Payment Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const-string/jumbo v6, "mobile_payment"

    new-instance v7, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_5f

    .line 2500
    :goto_66
    :try_start_8b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    new-instance v106, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v106

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2502
    .local v106, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v106

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v105

    .line 2503
    .local v105, "gamemanagerClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v105

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v107

    .line 2504
    .local v107, "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v107

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/os/IBinder;

    .line 2505
    .local v108, "gamemanagerService":Landroid/os/IBinder;
    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v108

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2506
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_60

    .line 2513
    .end local v105    # "gamemanagerClass":Ljava/lang/Class;
    .end local v106    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .end local v107    # "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    .end local v108    # "gamemanagerService":Landroid/os/IBinder;
    :goto_67
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.samsung.feature.hdr_capable"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 2515
    :try_start_8c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolutionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    new-instance v53, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/codecsolution.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v53

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2517
    .local v53, "clsLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.codecsolution.CodecSolutionManagerService"

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    .line 2518
    .local v52, "cls":Ljava/lang/Class;
    if-nez v52, :cond_6d

    .line 2519
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_61

    .line 2533
    .end local v52    # "cls":Ljava/lang/Class;
    .end local v53    # "clsLoader":Ldalvik/system/PathClassLoader;
    :cond_4a
    :goto_68
    const-string/jumbo v6, "MakeVibratorServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2535
    :try_start_8d
    invoke-virtual/range {v210 .. v210}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_62

    .line 2539
    :goto_69
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2541
    const-string/jumbo v6, "MakeLockSettingsServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2542
    if-eqz v124, :cond_4b

    .line 2544
    :try_start_8e
    invoke-interface/range {v124 .. v124}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_63

    .line 2549
    :cond_4b
    :goto_6a
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2552
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2556
    if-eqz v99, :cond_6e

    .line 2558
    :try_start_8f
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 2559
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_64

    .line 2569
    :goto_6b
    if-eqz v120, :cond_6f

    .line 2571
    :try_start_90
    invoke-virtual/range {v120 .. v120}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->systemReady()V

    .line 2572
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "knoxcustomPolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_65

    .line 2585
    :goto_6c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v6, :cond_4c

    .line 2586
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V

    .line 2587
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "credentialManagerService systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_4c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SecurityManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :try_start_91
    const-string/jumbo v6, "SecurityManagerService"

    new-instance v7, Lcom/android/server/SecurityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_66

    .line 2601
    :goto_6d
    const-string/jumbo v6, "MakeWindowManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2605
    if-eqz v97, :cond_4d

    .line 2607
    :try_start_92
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "calling onBootPhase for Wigig Services"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    invoke-virtual/range {v219 .. v219}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v218

    .line 2609
    .restart local v218    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, v218

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v125

    .line 2610
    .local v125, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    .line 2611
    const/16 v10, 0x1f4

    .line 2610
    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v125

    move-object/from16 v1, v219

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    invoke-virtual/range {v220 .. v220}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v216

    .line 2614
    .restart local v216    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, v216

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v125

    .line 2615
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    .line 2616
    const/16 v10, 0x1f4

    .line 2615
    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v125

    move-object/from16 v1, v220

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_67

    .line 2623
    .end local v125    # "m":Ljava/lang/reflect/Method;
    .end local v216    # "wigigClass":Ljava/lang/Class;
    .end local v218    # "wigigP2pClass":Ljava/lang/Class;
    :cond_4d
    :goto_6e
    :try_start_93
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_68

    .line 2627
    :goto_6f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2629
    if-eqz v179, :cond_4e

    .line 2630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2636
    :cond_4e
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v56

    .line 2637
    .local v56, "config":Landroid/content/res/Configuration;
    new-instance v156, Landroid/util/DisplayMetrics;

    invoke-direct/range {v156 .. v156}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2638
    .local v156, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v212

    check-cast v212, Landroid/view/WindowManager;

    .line 2639
    .local v212, "w":Landroid/view/WindowManager;
    invoke-interface/range {v212 .. v212}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v156

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2640
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v56

    move-object/from16 v1, v156

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2643
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v204

    .line 2644
    .local v204, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v204 .. v204}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 2645
    invoke-virtual/range {v204 .. v204}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2648
    :cond_4f
    const-string/jumbo v6, "MakePowerManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2651
    :try_start_94
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 2652
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_69

    .line 2656
    :goto_70
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2658
    const-string/jumbo v6, "MakePackageManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2660
    :try_start_95
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_6a

    .line 2664
    :goto_71
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2666
    const-string/jumbo v6, "MakeDisplayManagerServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2669
    :try_start_96
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v179

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_6b

    .line 2673
    :goto_72
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2677
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2693
    :goto_73
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .line 2694
    .local v102, "feature":Ljava/lang/String;
    if-eqz v102, :cond_50

    const-string/jumbo v6, "hongbao"

    move-object/from16 v0, v102

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2696
    :try_start_97
    const-string/jumbo v6, "HongbaoModeServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2697
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v46

    .line 2698
    .local v46, "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "com.samsung.android.hongbaomode.HongbaoModeService"

    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v47

    .line 2699
    .local v47, "class_HongbaoModeService":Ljava/lang/Class;
    const-string/jumbo v6, "HONGBAO_MODE_SERVICE"

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .line 2700
    .local v103, "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v60

    .line 2701
    .local v60, "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2702
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_6d

    .line 2712
    .end local v46    # "cl":Ljava/lang/ClassLoader;
    .end local v47    # "class_HongbaoModeService":Ljava/lang/Class;
    .end local v60    # "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    .end local v103    # "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    :cond_50
    :goto_74
    :try_start_98
    invoke-virtual/range {v183 .. v183}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_6e

    .line 2718
    :goto_75
    :try_start_99
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_6f

    .line 2724
    :goto_76
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 2726
    :try_start_9a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    new-instance v161, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v161

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2728
    .local v161, "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v161

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v160

    .line 2729
    .local v160, "mptcpClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v162

    .line 2730
    .local v162, "mptcpConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v162

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v163

    check-cast v163, Landroid/os/IBinder;

    .line 2733
    .local v163, "mptcpService":Landroid/os/IBinder;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_70

    .line 2752
    .end local v160    # "mptcpClass":Ljava/lang/Class;
    .end local v161    # "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    .end local v162    # "mptcpConstructor":Ljava/lang/reflect/Constructor;
    .end local v163    # "mptcpService":Landroid/os/IBinder;
    :cond_51
    :goto_77
    :try_start_9b
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/DLPManagerService;->systemReady()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_71

    .line 2759
    :goto_78
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v209

    .line 2760
    .restart local v209    # "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v209

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 2762
    :try_start_9c
    invoke-virtual/range {v146 .. v146}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_72

    .line 2767
    :goto_79
    :try_start_9d
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_73

    .line 2772
    :goto_7a
    if-eqz v99, :cond_52

    .line 2774
    :try_start_9e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy is not null"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string/jumbo v6, "mum_container_policy"

    const/4 v7, 0x0

    move-object/from16 v0, v138

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2776
    const-string/jumbo v6, "mum_container_rcp_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v140

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_74

    .line 2784
    :cond_52
    :goto_7b
    if-eqz v99, :cond_53

    .line 2786
    :try_start_9f
    new-instance v189, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;-><init>(Landroid/content/Context;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_75

    .line 2787
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v189, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    :try_start_a0
    const-string/jumbo v6, "smartcard_access_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v189

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2788
    const-string/jumbo v6, "smartcard_access_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v189

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2789
    new-instance v191, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    move-object/from16 v0, v191

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a0} :catch_76

    .line 2790
    .local v191, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    :try_start_a1
    const-string/jumbo v6, "smartcard_browser_policy"

    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v191

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2791
    const-string/jumbo v6, "smartcard_browser_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v191

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2792
    new-instance v193, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    move-object/from16 v0, v193

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a1} :catch_77

    .line 2793
    .local v193, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    :try_start_a2
    const-string/jumbo v6, "smartcard_email_policy"

    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v193

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2794
    const-string/jumbo v6, "smartcard_email_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v193

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2795
    new-instance v195, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    move-object/from16 v0, v195

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_78

    .line 2796
    .local v195, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    :try_start_a3
    const-string/jumbo v6, "smartcard_lockscreen_policy"

    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v195

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2797
    const-string/jumbo v6, "smartcard_lockscreen_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v195

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 2798
    new-instance v197, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    move-object/from16 v0, v197

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_79

    .line 2799
    .local v197, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :try_start_a4
    const-string/jumbo v6, "smartcard_vpn_policy"

    .end local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    const/4 v7, 0x1

    move-object/from16 v0, v197

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2800
    const-string/jumbo v6, "smartcard_vpn_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v197

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a4} :catch_7a

    move-object/from16 v194, v195

    .end local v195    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v194, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    move-object/from16 v190, v191

    .end local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .local v190, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v196, v197

    .end local v197    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .local v196, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    move-object/from16 v188, v189

    .end local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v188, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v192, v193

    .line 2807
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .end local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :cond_53
    :goto_7c
    move-object v14, v9

    .line 2808
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 2809
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 2810
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v57

    .line 2811
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v166

    .line 2812
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v122

    .line 2813
    .local v18, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v19, v177

    .line 2814
    .local v19, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v20, v66

    .line 2815
    .local v20, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v21, v168

    .line 2816
    .local v21, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v22, v54

    .line 1397
    .local v22, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    const/16 v23, 0x0

    .line 2818
    .local v23, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v24, v116

    .line 2819
    .local v24, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v25, v205

    .line 2820
    .local v25, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v26, v154

    .line 2821
    .local v26, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v157, v27

    .line 2824
    .local v157, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v29, v150

    .line 2828
    .local v29, "mateServiceF":Lcom/samsung/android/mateservice/MateService;
    move-object/from16 v30, v175

    .line 2832
    .local v30, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v28, v68

    .line 2840
    .local v28, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v30}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/mateservice/MateService;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 819
    return-void

    .line 940
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v19    # "sLocationF":Landroid/os/IBinder;
    .end local v20    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v21    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v22    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v23    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v24    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v25    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v26    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v28    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v29    # "mateServiceF":Lcom/samsung/android/mateservice/MateService;
    .end local v30    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v56    # "config":Landroid/content/res/Configuration;
    .end local v102    # "feature":Ljava/lang/String;
    .end local v147    # "mProductName":Ljava/lang/String;
    .end local v156    # "metrics":Landroid/util/DisplayMetrics;
    .end local v157    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v179    # "safeMode":Z
    .end local v204    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v212    # "w":Landroid/view/WindowManager;
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v54    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v57    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v110    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v159    # "mountService":Landroid/os/storage/IMountService;
    .restart local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v166    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v185    # "serial":Lcom/android/server/SerialService;
    .local v187, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v188, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v190, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .local v194, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v196, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v214    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v219    # "wigigP2pService":Ljava/lang/Object;
    .restart local v220    # "wigigService":Ljava/lang/Object;
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v95

    .line 941
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_a5
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_a5} :catch_1

    goto/16 :goto_0

    .line 1386
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v209    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v94

    .local v94, "e":Ljava/lang/RuntimeException;
    move-object/from16 v205, v206

    .line 1387
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .end local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_7d
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "************ Failure starting core service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 950
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .restart local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v209    # "versionInfo":Landroid/os/Bundle;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v95

    .line 951
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_7e
    :try_start_a6
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KnoxMUMContainerPolicy Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 959
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v95

    .line 960
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KnoxMUMRCPPolicyService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 970
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v95

    .line 971
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 981
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v95

    .line 982
    .restart local v95    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    .line 983
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add VaultKeeper Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 986
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_54
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VaultKeeper Service Disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 996
    :catch_6
    move-exception v95

    .line 997
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add Remote Mobile Manager."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1006
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v95

    .line 1007
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 1017
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v95

    .line 1018
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 1028
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v95

    .line 1029
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_a6} :catch_1

    goto/16 :goto_8

    .line 1045
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_a
    move-exception v95

    .line 1046
    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_a7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_a7} :catch_9a

    .line 1047
    const/16 v72, 0x0

    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_9

    .line 1086
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v211    # "vibrator":Lcom/android/server/VibratorService;
    :catch_b
    move-exception v93

    .line 1087
    .local v93, "e":Ljava/lang/Exception;
    :try_start_a8
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 1386
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v210, v211

    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .local v210, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .line 1100
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v211    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d
    move-exception v93

    .line 1101
    .restart local v93    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "hqm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_a8} :catch_c

    goto/16 :goto_b

    .line 1129
    .end local v93    # "e":Ljava/lang/Exception;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v213    # "watchdog":Lcom/android/server/Watchdog;
    :catch_e
    move-exception v93

    .line 1130
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_a9
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SemContextService"

    move-object/from16 v0, v93

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1386
    .end local v93    # "e":Ljava/lang/Exception;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_f
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v210, v211

    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .line 1153
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v207    # "timaEnabled":Z
    .restart local v211    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_10
    move-exception v95

    .line 1154
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaService except PKM service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1173
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v93

    .line 1174
    .restart local v93    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 1184
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v95

    .line 1185
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting pkmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1195
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v95

    .line 1196
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_a9} :catch_f

    goto/16 :goto_10

    .line 1219
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v113    # "icccService":Lcom/android/server/IcccManagerService;
    .restart local v114    # "iccc_result":I
    .restart local v208    # "timaversion":Z
    :cond_55
    :try_start_aa
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x1

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_aa} :catch_f

    goto/16 :goto_11

    .line 1221
    .end local v114    # "iccc_result":I
    :catch_14
    move-exception v93

    .line 1223
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_ab
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ab} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_ab} :catch_f

    goto/16 :goto_11

    .line 1235
    .end local v93    # "e":Ljava/lang/Exception;
    .end local v113    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v208    # "timaversion":Z
    :catch_15
    move-exception v93

    .line 1236
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_ac
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 1248
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v95

    .line 1249
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding UniversalCredentialManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 1255
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v95

    .line 1256
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding CredentialManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 1267
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v95

    .line 1268
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1274
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v95

    .line 1275
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 1282
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v95

    .line 1283
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 1287
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_56
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_18

    .line 1288
    :cond_57
    const/4 v6, 0x1

    goto/16 :goto_19

    .line 1312
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_1b
    move-exception v95

    .line 1313
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 1325
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v95

    .line 1326
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting MultiWindow Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 1344
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_58
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_59

    .line 1345
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1346
    :cond_59
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1347
    const-string/jumbo v7, "android.hardware.bluetooth"

    .line 1346
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 1348
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1349
    :cond_5a
    if-eqz v74, :cond_5b

    .line 1350
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1352
    :cond_5b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1357
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-string/jumbo v6, "bluetooth_secure_mode_manager"

    .line 1359
    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    .line 1358
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1c

    .line 1378
    :catch_1d
    move-exception v95

    .line 1379
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_ac} :catch_f

    goto/16 :goto_1d

    .line 1432
    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v207    # "timaEnabled":Z
    .end local v209    # "versionInfo":Landroid/os/Bundle;
    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .end local v213    # "watchdog":Lcom/android/server/Watchdog;
    .end local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .restart local v122    # "location":Lcom/android/server/LocationManagerService;
    .restart local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v170, "notification":Landroid/app/INotificationManager;
    .restart local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v177, "sLocation":Landroid/os/IBinder;
    .restart local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .restart local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1e
    move-exception v95

    .line 1433
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1440
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v95

    .line 1441
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1455
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v95

    .line 1456
    .end local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1466
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v95

    .line 1467
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1479
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v152    # "mdnieClass":Ljava/lang/Class;
    :cond_5c
    const/4 v6, 0x1

    :try_start_ad
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v152

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 1480
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/os/IBinder;

    .line 1481
    .local v153, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v153

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ad} :catch_22

    goto/16 :goto_23

    .line 1483
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v152    # "mdnieClass":Ljava/lang/Class;
    .end local v153    # "mdnieService":Landroid/os/IBinder;
    :catch_22
    move-exception v95

    .line 1484
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1495
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v70    # "cryptState":Ljava/lang/String;
    :cond_5d
    if-nez v79, :cond_c

    .line 1496
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v172

    .line 1497
    .local v172, "packageMgr":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v172

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 1498
    const-string/jumbo v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v172

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 1497
    if-eqz v6, :cond_c

    .line 1500
    :cond_5e
    :try_start_ae
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    new-instance v69, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v69

    move-object/from16 v1, v221

    move-object/from16 v2, v116

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_ae} :catch_23

    .line 1502
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v69, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_af
    const-string/jumbo v6, "cover"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_af} :catch_95

    move-object/from16 v68, v69

    .end local v69    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_24

    .line 1503
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    :catch_23
    move-exception v95

    .line 1504
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 1522
    .end local v70    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    :catch_24
    move-exception v95

    .line 1523
    .end local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v6, "starting Mate Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1535
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_5f
    :try_start_b0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1537
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1536
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b0} :catch_25

    move-result-object v159

    .local v159, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_26

    .line 1538
    .local v159, "mountService":Landroid/os/storage/IMountService;
    :catch_25
    move-exception v95

    .line 1539
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1549
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v159    # "mountService":Landroid/os/storage/IMountService;
    :catch_26
    move-exception v95

    .line 1550
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1569
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v93

    .line 1570
    .restart local v93    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v93

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1582
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v95

    .line 1583
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1605
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v95

    .line 1606
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1627
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_2a
    move-exception v95

    .line 1628
    .end local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1638
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v95

    .line 1639
    .end local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1646
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v95

    .line 1647
    .end local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1668
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v95

    .line 1669
    .end local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v6, "unable to start DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1680
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_2e
    move-exception v95

    .line 1681
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1694
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v95

    .line 1695
    .end local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Fail KnoxCustom Policy."

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1716
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v95

    .line 1717
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX SSO services"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1730
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v95

    .line 1731
    .end local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX Shared Device service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1745
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v95

    .line 1746
    .end local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX OTP service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1756
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v95

    .line 1757
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure registering EnterpriseBillingPolicy service with EDM service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1766
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v100

    .line 1767
    .end local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v100, "exception":Ljava/lang/Exception;
    :goto_8c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure registering SPDControlPolicy service with EDM service"

    move-object/from16 v0, v100

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 1772
    .end local v100    # "exception":Ljava/lang/Exception;
    :catch_35
    move-exception v95

    .line 1773
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1779
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v95

    .line 1780
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1789
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v95

    .line 1790
    .end local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8d
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1800
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v95

    .line 1801
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1809
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_60
    :try_start_b1
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemClipboardService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string/jumbo v6, "semclipboard"

    .line 1811
    new-instance v7, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    .line 1810
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b1} :catch_39

    goto/16 :goto_3a

    .line 1812
    :catch_39
    move-exception v95

    .line 1813
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SemClipboardService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1825
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v95

    .line 1826
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Absolute Persistence Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1836
    .end local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v95

    .line 1837
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1854
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v95

    .line 1855
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting EnterprisePremiumVpnService and KnoxVpnEngineService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1861
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_61
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_3e

    .line 1869
    :catch_3d
    move-exception v95

    .line 1870
    .end local v166    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_8f
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1878
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v95

    .line 1879
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1890
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v4, v165

    .line 1891
    .end local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_90
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1898
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_62
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 1933
    .end local v219    # "wigigP2pService":Ljava/lang/Object;
    .end local v220    # "wigigService":Ljava/lang/Object;
    :catch_40
    move-exception v95

    .line 1934
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1950
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v95

    .line 1951
    .end local v57    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_91
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1960
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v187    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_42
    move-exception v95

    .line 1961
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1973
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v95

    .line 1974
    .end local v214    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_92
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1984
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v95

    .line 1985
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1999
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v95

    .line 2000
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 2010
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_63
    const-string/jumbo v6, "WaitForAsecScan"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2012
    :try_start_b2
    invoke-interface/range {v159 .. v159}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b2} :catch_46

    .line 2015
    :goto_93
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4a

    .line 2013
    :catch_46
    move-exception v115

    .local v115, "ignored":Landroid/os/RemoteException;
    goto :goto_93

    .line 2030
    .end local v115    # "ignored":Landroid/os/RemoteException;
    .local v170, "notification":Landroid/app/INotificationManager;
    :catch_47
    move-exception v95

    .line 2031
    .end local v122    # "location":Lcom/android/server/LocationManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_94
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 2039
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v95

    .line 2040
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_95
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 2056
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v39    # "apkServiceContext":Landroid/content/Context;
    :catch_49
    move-exception v93

    .line 2057
    .restart local v93    # "e":Ljava/lang/Exception;
    :try_start_b3
    const-string/jumbo v6, "vzwlbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while loading the class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b3} :catch_4a

    goto/16 :goto_4d

    .line 2071
    .end local v39    # "apkServiceContext":Landroid/content/Context;
    .end local v93    # "e":Ljava/lang/Exception;
    :catch_4a
    move-exception v95

    .line 2072
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Failure starting VZW Location Manager"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    .line 2069
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v39    # "apkServiceContext":Landroid/content/Context;
    :cond_64
    :try_start_b4
    const-string/jumbo v6, "vzwlbs"

    const-string/jumbo v7, "Failure starting VZW Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b4} :catch_4a

    goto/16 :goto_4e

    .line 2085
    .end local v39    # "apkServiceContext":Landroid/content/Context;
    .end local v177    # "sLocation":Landroid/os/IBinder;
    :catch_4b
    move-exception v95

    .line 2086
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 2090
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_65
    const-string/jumbo v6, "StartSearchManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2092
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b5} :catch_4c

    .line 2096
    :goto_96
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_50

    .line 2093
    :catch_4c
    move-exception v95

    .line 2094
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_96

    .line 2103
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_66
    const-string/jumbo v6, "StartWallpaperManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2105
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_51

    .line 2125
    :catch_4d
    move-exception v95

    .line 2126
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 2151
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v95

    .line 2152
    .end local v185    # "serial":Lcom/android/server/SerialService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_97
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SerialService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    .line 2163
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_4f
    move-exception v95

    .line 2164
    .end local v110    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_98
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_54

    .line 2174
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v95

    .line 2175
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 2222
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v36    # "SecEDSEnable":Ljava/lang/String;
    .restart local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_67
    :try_start_b6
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v40, v0

    .line 2224
    .local v40, "arg":[Ljava/lang/Class;
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v40, v7

    .line 2225
    move-object/from16 v0, v96

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2226
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b6} :catch_51

    goto/16 :goto_56

    .line 2228
    .end local v40    # "arg":[Ljava/lang/Class;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_51
    move-exception v95

    .line 2229
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting eds Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 2237
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v95

    .line 2238
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 2250
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v90    # "dsClass":Ljava/lang/Class;
    :cond_68
    const/4 v6, 0x1

    :try_start_b7
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v90

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2251
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/IBinder;

    .line 2252
    .local v91, "dsService":Landroid/os/IBinder;
    const-string/jumbo v6, "DisplaySolution"

    move-object/from16 v0, v91

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b7} :catch_53

    goto/16 :goto_58

    .line 2254
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v90    # "dsClass":Ljava/lang/Class;
    .end local v91    # "dsService":Landroid/os/IBinder;
    :catch_53
    move-exception v95

    .line 2255
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failed To Start SemDisplaySolution Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 2266
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v37    # "aasClass":Ljava/lang/Class;
    :cond_69
    const/4 v6, 0x1

    :try_start_b8
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2267
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/IBinder;

    .line 2268
    .local v38, "aasService":Landroid/os/IBinder;
    const-string/jumbo v6, "AAS"

    move-object/from16 v0, v38

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b8} :catch_54

    goto/16 :goto_59

    .line 2270
    .end local v37    # "aasClass":Ljava/lang/Class;
    .end local v38    # "aasService":Landroid/os/IBinder;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_54
    move-exception v95

    .line 2271
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failed To Start SemAllAroundSensing Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 2279
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v95

    .line 2280
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 2304
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_56
    move-exception v95

    .line 2305
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 2318
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_57
    move-exception v95

    .line 2319
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 2325
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_6a
    const-string/jumbo v6, "StartNetworkTimeUpdateService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2327
    :try_start_b9
    new-instance v169, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_b9} :catch_58

    .line 2328
    .end local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v169, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_ba
    const-string/jumbo v6, "network_time_update_service"

    move-object/from16 v0, v169

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_ba} :catch_7d

    move-object/from16 v168, v169

    .line 2332
    .end local v169    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_99
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_5d

    .line 2329
    .restart local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_58
    move-exception v95

    .line 2330
    .end local v168    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9a
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99

    .line 2347
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_59
    move-exception v95

    .line 2348
    .end local v54    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9b
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e

    .line 2356
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v95

    .line 2357
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 2412
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5b
    move-exception v95

    .line 2413
    .end local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9c
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 2428
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v95

    .line 2429
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 2442
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_5d
    move-exception v95

    .line 2443
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62

    .line 2449
    .end local v36    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v170    # "notification":Landroid/app/INotificationManager;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_63

    .line 2468
    .restart local v179    # "safeMode":Z
    :cond_6c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_64

    .line 2478
    .restart local v147    # "mProductName":Ljava/lang/String;
    :catch_5e
    move-exception v95

    .line 2479
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KT UCA Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65

    .line 2492
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_5f
    move-exception v95

    .line 2493
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Payment Manager Service"

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66

    .line 2507
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_60
    move-exception v95

    .line 2508
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add GameManagerService."

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_67

    .line 2521
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v52    # "cls":Ljava/lang/Class;
    .restart local v53    # "clsLoader":Ldalvik/system/PathClassLoader;
    :cond_6d
    const/4 v6, 0x1

    :try_start_bb
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 2522
    .restart local v59    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v203

    check-cast v203, Landroid/os/IBinder;

    .line 2523
    .local v203, "svc":Landroid/os/IBinder;
    const-string/jumbo v6, "CodecSolution"

    move-object/from16 v0, v203

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2524
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolution Service loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_bb} :catch_61

    goto/16 :goto_68

    .line 2526
    .end local v52    # "cls":Ljava/lang/Class;
    .end local v53    # "clsLoader":Ldalvik/system/PathClassLoader;
    .end local v59    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v203    # "svc":Landroid/os/IBinder;
    :catch_61
    move-exception v95

    .line 2527
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed To Start CodecSolution Service "

    move-object/from16 v0, v95

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 2536
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_62
    move-exception v95

    .line 2537
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 2545
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_63
    move-exception v95

    .line 2546
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 2560
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_64
    move-exception v95

    .line 2561
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 2564
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_6e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy cannot ready because null reference"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 2573
    :catch_65
    move-exception v95

    .line 2574
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making knoxcustom manager service ready "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    .line 2577
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_6f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "knoxCustomPolicy can\'t be ready due to a null pointer reference."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 2596
    :catch_66
    move-exception v95

    .line 2597
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SecurityManagerService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 2617
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_67
    move-exception v95

    .line 2618
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    .line 2624
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_68
    move-exception v95

    .line 2625
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    .line 2653
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v56    # "config":Landroid/content/res/Configuration;
    .restart local v156    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v204    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v212    # "w":Landroid/view/WindowManager;
    :catch_69
    move-exception v95

    .line 2654
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    .line 2661
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6a
    move-exception v95

    .line 2662
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    .line 2670
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6b
    move-exception v95

    .line 2671
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72

    .line 2679
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_70
    :try_start_bc
    const-string/jumbo v6, "SmartBondingServiceReady"

    const-wide/32 v10, 0x80000

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2680
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v46

    .line 2681
    .restart local v46    # "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v50

    .line 2682
    .local v50, "class_SmartBondingService":Ljava/lang/Class;
    const-string/jumbo v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v104

    .line 2683
    .local v104, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v63

    .line 2684
    .local v63, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v104

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v63

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2685
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bc} :catch_6c

    goto/16 :goto_73

    .line 2686
    .end local v46    # "cl":Ljava/lang/ClassLoader;
    .end local v50    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v63    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v104    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :catch_6c
    move-exception v95

    .line 2687
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_73

    .line 2703
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v102    # "feature":Ljava/lang/String;
    :catch_6d
    move-exception v95

    .line 2704
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting HongbaoModeService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_74

    .line 2713
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6e
    move-exception v95

    .line 2714
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75

    .line 2719
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_6f
    move-exception v95

    .line 2720
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76

    .line 2734
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_70
    move-exception v95

    .line 2735
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_77

    .line 2753
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_71
    move-exception v95

    .line 2754
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making EnterpriserRightsManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_78

    .line 2763
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v209    # "versionInfo":Landroid/os/Bundle;
    :catch_72
    move-exception v95

    .line 2764
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_79

    .line 2768
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_73
    move-exception v95

    .line 2769
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making KnoxMUMContainerPolicy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a

    .line 2777
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_74
    move-exception v95

    .line 2778
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7b

    .line 2801
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_75
    move-exception v95

    .line 2802
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .end local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_9d
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c

    .line 2801
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :catch_76
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v188, v189

    .end local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v188, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    :catch_77
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v190, v191

    .end local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .local v190, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v188, v189

    .end local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    :catch_78
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v190, v191

    .end local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v188, v189

    .end local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v192, v193

    .end local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .local v192, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v195    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    :catch_79
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v194, v195

    .end local v195    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v194, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    move-object/from16 v190, v191

    .end local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v188, v189

    .end local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v192, v193

    .end local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    goto :goto_9d

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .end local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .end local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .end local v196    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .restart local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v195    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v197    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :catch_7a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v194, v195

    .end local v195    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .restart local v194    # "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    move-object/from16 v190, v191

    .end local v191    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .restart local v190    # "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    move-object/from16 v196, v197

    .end local v197    # "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    .local v196, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    move-object/from16 v188, v189

    .end local v189    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .restart local v188    # "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    move-object/from16 v192, v193

    .end local v193    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .restart local v192    # "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    goto :goto_9d

    .line 2412
    .end local v56    # "config":Landroid/content/res/Configuration;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v102    # "feature":Ljava/lang/String;
    .end local v147    # "mProductName":Ljava/lang/String;
    .end local v156    # "metrics":Landroid/util/DisplayMetrics;
    .end local v179    # "safeMode":Z
    .end local v204    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v209    # "versionInfo":Landroid/os/Bundle;
    .end local v212    # "w":Landroid/view/WindowManager;
    .local v27, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v36    # "SecEDSEnable":Ljava/lang/String;
    .restart local v155    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v170    # "notification":Landroid/app/INotificationManager;
    .local v188, "smartcardAcessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    .local v190, "smartcardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .local v192, "smartcardEmailPolicy":Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
    .local v194, "smartcardLockscreenPolicy":Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
    .local v196, "smartcardVPNPolicy":Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
    :catch_7b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v154, v155

    .end local v155    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v154, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_9c

    .line 2347
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v55    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v154, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_7c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v54, v55

    .end local v55    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v54, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_9b

    .line 2329
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v54, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v169    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_7d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v168, v169

    .end local v169    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v168, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_9a

    .line 2163
    .end local v36    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v111    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v168, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_7e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v110, v111

    .end local v111    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v110, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_98

    .line 2151
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v110, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v186    # "serial":Lcom/android/server/SerialService;
    :catch_7f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v185, v186

    .end local v186    # "serial":Lcom/android/server/SerialService;
    .local v185, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_97

    .line 2039
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v67    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v177    # "sLocation":Landroid/os/IBinder;
    .local v185, "serial":Lcom/android/server/SerialService;
    :catch_80
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v66, v67

    .end local v67    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_95

    .line 2030
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v123    # "location":Lcom/android/server/LocationManagerService;
    :catch_81
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v122, v123

    .end local v123    # "location":Lcom/android/server/LocationManagerService;
    .local v122, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_94

    .line 1973
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v122, "location":Lcom/android/server/LocationManagerService;
    .local v170, "notification":Landroid/app/INotificationManager;
    .restart local v215    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_82
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v214, v215

    .end local v215    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v214, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    goto/16 :goto_92

    .line 1950
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v187    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v214, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_83
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v57, v58

    .end local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v57, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_91

    .line 1890
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v57, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v219    # "wigigP2pService":Ljava/lang/Object;
    .restart local v220    # "wigigService":Ljava/lang/Object;
    :catch_84
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    goto/16 :goto_90

    .line 1869
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v165    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v167    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_85
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v166, v167

    .end local v167    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v166, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_8f

    .line 1854
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v166, "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_86
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v126, v127

    .end local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v126, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    goto/16 :goto_8e

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v143    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :catch_87
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v142, v143

    .end local v143    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    move-object/from16 v126, v127

    .end local v127    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    goto/16 :goto_8e

    .line 1789
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v126, "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .local v142, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v202    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_88
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v201, v202

    .end local v202    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v201, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_8d

    .line 1766
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v199    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v201, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_89
    move-exception v100

    .restart local v100    # "exception":Ljava/lang/Exception;
    move-object/from16 v198, v199

    .end local v199    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .local v198, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    goto/16 :goto_8c

    .line 1745
    .end local v100    # "exception":Ljava/lang/Exception;
    .restart local v145    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .local v198, "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    :catch_8a
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v144, v145

    .end local v145    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .local v144, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    goto/16 :goto_8b

    .line 1730
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v131    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v144, "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    :catch_8b
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v130, v131

    .end local v131    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .local v130, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    goto/16 :goto_8a

    .line 1716
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v130, "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .restart local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :catch_8c
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    goto/16 :goto_89

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    :catch_8d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    move-object/from16 v132, v133

    .end local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    goto/16 :goto_89

    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v135    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :catch_8e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v128, v129

    .end local v129    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    move-object/from16 v132, v133

    .end local v133    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    move-object/from16 v134, v135

    .end local v135    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .local v134, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    goto/16 :goto_89

    .line 1694
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v121    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .local v128, "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .local v132, "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .local v134, "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    :catch_8f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v120, v121

    .end local v121    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .local v120, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    goto/16 :goto_88

    .line 1668
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v89    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v120, "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    :catch_90
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v88, "dlpService":Lcom/android/server/DLPManagerService;
    goto/16 :goto_87

    .line 1646
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v88, "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v182    # "sdpLogService":Lcom/android/server/SdpLogService;
    :catch_91
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v181, v182

    .end local v182    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v181, "sdpLogService":Lcom/android/server/SdpLogService;
    goto/16 :goto_86

    .line 1638
    .end local v95    # "e":Ljava/lang/Throwable;
    .local v181, "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v184    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_92
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v183, v184

    .end local v184    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v183, "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_85

    .line 1627
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v137    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v183, "sdpService":Lcom/android/server/SdpManagerService;
    :catch_93
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v136, v137

    .end local v137    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v136, "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_84

    .line 1522
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v136, "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v151    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .restart local v159    # "mountService":Landroid/os/storage/IMountService;
    .restart local v173    # "pm":Landroid/content/pm/PackageManager;
    :catch_94
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v150, v151

    .end local v151    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .local v150, "mateService":Lcom/samsung/android/mateservice/MateService;
    goto/16 :goto_83

    .line 1503
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v150    # "mateService":Lcom/samsung/android/mateservice/MateService;
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    .restart local v69    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v70    # "cryptState":Ljava/lang/String;
    .restart local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_95
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v68, "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_82

    .line 1455
    .end local v68    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v70    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v172    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v173    # "pm":Landroid/content/pm/PackageManager;
    .restart local v176    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_96
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v175, v176

    .end local v176    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v175, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    goto/16 :goto_81

    .line 1386
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .end local v122    # "location":Lcom/android/server/LocationManagerService;
    .end local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .end local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .end local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v170    # "notification":Landroid/app/INotificationManager;
    .end local v173    # "pm":Landroid/content/pm/PackageManager;
    .end local v175    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v177    # "sLocation":Landroid/os/IBinder;
    .end local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .end local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v146, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v205, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v210, "vibrator":Lcom/android/server/VibratorService;
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_97
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_7d

    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v146    # "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v209    # "versionInfo":Landroid/os/Bundle;
    :catch_98
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v138, v139

    .end local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v138, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v205, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_7d

    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_99
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v140, v141

    .end local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v140, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_7d

    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_9a
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v72, v73

    .end local v73    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v72, "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_7d

    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v211    # "vibrator":Lcom/android/server/VibratorService;
    :catch_9b
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v210, v211

    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .local v210, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v207    # "timaEnabled":Z
    .restart local v211    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v213    # "watchdog":Lcom/android/server/Watchdog;
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_9c
    move-exception v94

    .restart local v94    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v148, v149

    .end local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v148, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v64, v65

    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v205, v206

    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v116, v117

    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v210, v211

    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v210    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_7d

    .line 1378
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v94    # "e":Ljava/lang/RuntimeException;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v211    # "vibrator":Lcom/android/server/VibratorService;
    :catch_9d
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v148, v149

    .end local v149    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_80

    .line 959
    .end local v65    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v117    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v207    # "timaEnabled":Z
    .end local v211    # "vibrator":Lcom/android/server/VibratorService;
    .end local v213    # "watchdog":Lcom/android/server/Watchdog;
    .local v64, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v72, "dEncService":Lcom/android/server/DirEncryptService;
    .local v116, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .local v148, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v210, "vibrator":Lcom/android/server/VibratorService;
    .local v221, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_9e
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v140, v141

    .end local v141    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .restart local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    goto/16 :goto_7f

    .line 950
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v140, "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    :catch_9f
    move-exception v95

    .restart local v95    # "e":Ljava/lang/Throwable;
    move-object/from16 v138, v139

    .end local v139    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    goto/16 :goto_7e

    .end local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v64    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v116    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .end local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .end local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .end local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .end local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v138    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v140    # "mKnoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    .end local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .end local v148    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v159    # "mountService":Landroid/os/storage/IMountService;
    .end local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    .end local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    .end local v206    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v209    # "versionInfo":Landroid/os/Bundle;
    .end local v210    # "vibrator":Lcom/android/server/VibratorService;
    .end local v221    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v122    # "location":Lcom/android/server/LocationManagerService;
    .restart local v154    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v170    # "notification":Landroid/app/INotificationManager;
    .restart local v177    # "sLocation":Landroid/os/IBinder;
    :cond_71
    move-object/from16 v4, v165

    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v88    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v120    # "knoxCustomPolicy":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .restart local v124    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v126    # "mEnterprisePremiumVpnService":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .restart local v128    # "mEnterpriseSSOPolicy":Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .restart local v130    # "mEnterpriseSharedDevicePolicy":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .restart local v132    # "mEnterpriseUserSpaceSSOPolicy":Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .restart local v134    # "mGenericSSOService":Lcom/android/server/enterprise/sso/GenericSSOService;
    .restart local v136    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v142    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .restart local v144    # "mOTPService":Lcom/android/server/enterprise/otp/OTPService;
    .restart local v181    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v183    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v198    # "spdControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .restart local v201    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_72
    move-object/from16 v4, v165

    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_62
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3057
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3058
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 3059
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 3058
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3060
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3062
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3056
    return-void
.end method

.method private startThemeService()V
    .locals 5

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 3047
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3048
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.themecenter"

    .line 3049
    const-string/jumbo v4, "com.samsung.android.thememanager.ThemeManagerService"

    .line 3048
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3050
    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3051
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3052
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3045
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3066
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3067
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    return-void
.end method
