.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mateServiceF:Lcom/samsung/android/mateservice/MateService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

.field final synthetic val$sLocationF:Landroid/os/IBinder;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/mateservice/MateService;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p4, "val$networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p5, "val$networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p6, "val$networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "val$connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "val$locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "val$sLocationF"    # Landroid/os/IBinder;
    .param p10, "val$countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p11, "val$networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p12, "val$commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p13, "val$atlasF"    # Lcom/android/server/AssetAtlasService;
    .param p14, "val$inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p15, "val$telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p16, "val$mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p17, "val$mmsServiceF"    # Lcom/android/server/MmsServiceBroker;
    .param p18, "val$coverServiceF"    # Lcom/android/server/cover/CoverManagerService;
    .param p19, "val$mateServiceF"    # Lcom/samsung/android/mateservice/MateService;
    .param p20, "val$sAccessoryManagerF"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .prologue
    .line 2840
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mateServiceF:Lcom/samsung/android/mateservice/MateService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x80000

    .line 2844
    const-string/jumbo v4, "systemReady_runnable BEGIN"

    const v5, 0xf42a9

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2846
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Making services ready"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v4

    .line 2848
    const/16 v5, 0x226

    .line 2847
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2849
    const-string/jumbo v4, "PhaseActivityManagerReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2851
    const-string/jumbo v4, "StartObservingNativeCrashes"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2853
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2857
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2859
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2860
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "WebViewFactory preparation"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const-string/jumbo v4, "WebViewFactoryPreparation"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2862
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2863
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2866
    :cond_0
    const-string/jumbo v4, "StartSystemUI"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2869
    const/4 v4, -0x2

    :try_start_1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2871
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2875
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2876
    const-string/jumbo v4, "MakeNetworkScoreReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2880
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-wrap1(Lcom/android/server/SystemServer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2887
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v4}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2891
    :cond_1
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2892
    const-string/jumbo v4, "MakeNetworkManagementServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2894
    :try_start_4
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v4}, Lcom/android/server/NetworkManagementService;->systemReady()V

    .line 2896
    :cond_2
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 2900
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2901
    const-string/jumbo v4, "MakeNetworkStatsServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2903
    :try_start_5
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 2907
    :cond_3
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2908
    const-string/jumbo v4, "MakeNetworkPolicyServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2910
    :try_start_6
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 2914
    :cond_4
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2915
    const-string/jumbo v4, "MakeConnectivityServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2917
    :try_start_7
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 2922
    :cond_5
    :goto_7
    :try_start_8
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v4}, Lcom/android/server/NetworkManagementService;->enableStrict()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 2926
    :cond_6
    :goto_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2928
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/Watchdog;->start()V

    .line 2932
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2933
    const-string/jumbo v4, "PhaseThirdPartyAppsCanStart"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2934
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v4

    .line 2935
    const/16 v5, 0x258

    .line 2934
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2938
    :try_start_9
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 2943
    :cond_7
    :goto_9
    :try_start_a
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    if-eqz v4, :cond_8

    .line 2944
    const-string/jumbo v4, "com.samsung.android.location.SLocationLoader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2945
    .local v2, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "systemReady"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2946
    .local v3, "sLocationSystemReady":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 2952
    .end local v2    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "sLocationSystemReady":Ljava/lang/reflect/Method;
    :cond_8
    :goto_a
    :try_start_b
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v4}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 2957
    :cond_9
    :goto_b
    :try_start_c
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v4}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 2962
    :cond_a
    :goto_c
    :try_start_d
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v4, :cond_b

    .line 2963
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v4}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 2969
    :cond_b
    :goto_d
    :try_start_e
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v4}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 2975
    :cond_c
    :goto_e
    :try_start_f
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 2980
    :cond_d
    :goto_f
    :try_start_10
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 2985
    :cond_e
    :goto_10
    :try_start_11
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 2999
    :cond_f
    :goto_11
    :try_start_12
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 3005
    :cond_10
    :goto_12
    :try_start_13
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v4}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 3013
    :cond_11
    :goto_13
    :try_start_14
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverManagerService;->systemReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 3019
    :cond_12
    :goto_14
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3024
    :try_start_15
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mateServiceF:Lcom/samsung/android/mateservice/MateService;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mateServiceF:Lcom/samsung/android/mateservice/MateService;

    invoke-virtual {v4}, Lcom/samsung/android/mateservice/MateService;->systemReady()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 3032
    :cond_13
    :goto_15
    :try_start_16
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 3038
    :cond_14
    :goto_16
    const-string/jumbo v4, "systemReady_runnable END"

    const v5, 0xf42aa

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2842
    return-void

    .line 2854
    :catch_0
    move-exception v1

    .line 2855
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "observing native crashes"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2872
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2873
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "starting System UI"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2881
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 2882
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "starting Theme Service"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2888
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 2889
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Score Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2897
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 2898
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Managment Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 2904
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v1

    .line 2905
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Stats Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 2911
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v1

    .line 2912
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Policy Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2918
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    .line 2919
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Connectivity Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2923
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v1

    .line 2924
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "enableStrict"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2939
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v1

    .line 2940
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying Location Service running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2948
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v1

    .line 2949
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "making SLocation Service ready :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2953
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v1

    .line 2954
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying CountryDetectorService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 2958
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v1

    .line 2959
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying NetworkTimeService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 2965
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v1

    .line 2966
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying CommonTimeManagementService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 2970
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v1

    .line 2971
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying AssetAtlasService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 2976
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v1

    .line 2977
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying InputManagerService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 2981
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v1

    .line 2982
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying TelephonyRegistry running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 2986
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v1

    .line 2987
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying MediaRouterService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 3000
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v1

    .line 3001
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying MmsService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 3006
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v1

    .line 3007
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying NetworkScoreService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 3014
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v1

    .line 3015
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying CoverManagerService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 3025
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v0

    .line 3026
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying Mate Service running"

    invoke-static {v4, v5, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 3033
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v0

    .line 3034
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying SAccessoryManager running"

    invoke-static {v4, v5, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16
.end method
