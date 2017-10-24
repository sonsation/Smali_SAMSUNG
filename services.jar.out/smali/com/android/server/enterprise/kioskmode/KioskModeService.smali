.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$1;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

.field private static final ACTION_TERMINATE_KIOSK_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

.field private static final COCKTAIL_BAR_SERVICE_CLSNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_SERVICE_PKGNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final MDM_APP_PKGNAME:Ljava/lang/String; = "com.samsung.android.mdm"

.field private static final SYTEMUI_PACKAGE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TASKMANAGER_PKGS:[Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static mProcessing:Z

.field private static volatile packageRemoveIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile terminateIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private preAdminRemoval_NavigationBar:Z

.field private preAdminRemoval_StatusBar:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/kioskmode/KioskModeService;ZI)Z
    .locals 1
    .param p1, "isCalledAdmin"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 0
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "operation"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "operation"    # I
    .param p3, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->evaluateAirModeConfigurationsAsUser(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    .line 188
    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 190
    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 201
    sput-boolean v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "com.sec.android.app.controlpanel"

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "com.sec.android.app.taskmanager"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 203
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;-><init>()V

    .line 156
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 157
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 162
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 163
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 170
    iput-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    .line 198
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 231
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 214
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 215
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 216
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeHandlerThread()V

    .line 217
    const-string/jumbo v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 219
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 212
    return-void
.end method

.method private _disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "operation"    # I

    .prologue
    .line 782
    sget-object v15, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 783
    const/4 v3, 0x1

    :try_start_0
    sput-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 784
    const/4 v12, 0x0

    .line 785
    .local v12, "isSystem":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 786
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 787
    const/4 v12, 0x1

    .line 790
    :cond_0
    move-object/from16 v2, p1

    .line 791
    .local v2, "info":Lcom/samsung/android/knox/ContextInfo;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 792
    .local v7, "userId":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 794
    .local v8, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 797
    .local v10, "token":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 798
    const-string/jumbo v3, "KioskModeService"

    const-string/jumbo v4, "Kiosk Mode already disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 861
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 863
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    .line 781
    return-void

    .line 800
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 802
    const-string/jumbo v3, "KioskModeService"

    const-string/jumbo v4, "Kiosk Mode enabled by different admin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v3, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 782
    .end local v2    # "info":Lcom/samsung/android/knox/ContextInfo;
    .end local v7    # "userId":I
    .end local v8    # "adminUid":I
    .end local v10    # "token":J
    .end local v12    # "isSystem":Z
    .end local v14    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v15

    throw v3

    .line 806
    .restart local v2    # "info":Lcom/samsung/android/knox/ContextInfo;
    .restart local v7    # "userId":I
    .restart local v8    # "adminUid":I
    .restart local v10    # "token":J
    .restart local v12    # "isSystem":Z
    .restart local v14    # "uid":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver(I)V

    .line 807
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 810
    const-string/jumbo v4, "KIOSKMODE"

    const-string/jumbo v5, "kioskModeKioskPackage"

    .line 809
    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 811
    .local v6, "kioskPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 812
    const-string/jumbo v4, "KIOSKMODE"

    const-string/jumbo v5, "kioskModeDefaultPackage"

    .line 811
    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 815
    .local v13, "newHomePackage":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 817
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v3, :cond_3

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 826
    :cond_3
    if-eqz v12, :cond_4

    .line 827
    new-instance v16, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v15

    .line 845
    return-void

    .line 849
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 855
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 858
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private _enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 659
    sget-object v21, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v21

    .line 660
    const/16 v20, 0x1

    :try_start_0
    sput-boolean v20, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 663
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 665
    .local v17, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 667
    .local v18, "token":J
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 671
    .local v4, "adminUid":I
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, " _enableKioskMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v20

    const-string/jumbo v22, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 673
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, " support HW keyboard "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 676
    .local v5, "conf":Landroid/content/res/Configuration;
    const-class v20, Landroid/content/res/Configuration;

    const-string/jumbo v22, "mobileKeyboardCovered"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 677
    .local v11, "isCovered":Ljava/lang/reflect/Field;
    const-class v20, Landroid/content/res/Configuration;

    const-string/jumbo v22, "MOBILEKEYBOARD_COVERED_YES"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 678
    .local v12, "mobileCoveredOn":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_0

    invoke-virtual {v11, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    invoke-virtual {v12, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 679
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, "Kiosk Mode - mobile keypad enabled::: return false"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/16 v20, 0x1

    const/16 v22, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v21

    .line 681
    return-void

    .line 688
    .end local v5    # "conf":Landroid/content/res/Configuration;
    .end local v11    # "isCovered":Ljava/lang/reflect/Field;
    .end local v12    # "mobileCoveredOn":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v9

    .line 689
    .local v9, "e2":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, "_enableKioskMode :: IllegalAccessException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v9    # "e2":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 693
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, "Kiosk Mode already enabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/16 v20, 0x1

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 768
    :goto_1
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 770
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v21

    .line 658
    return-void

    .line 685
    :catch_1
    move-exception v8

    .line 687
    .local v8, "e1":Ljava/lang/NoSuchFieldException;
    :try_start_3
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, "_enableKioskMode :: NoSuchFieldException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 659
    .end local v4    # "adminUid":I
    .end local v8    # "e1":Ljava/lang/NoSuchFieldException;
    .end local v17    # "userId":I
    .end local v18    # "token":J
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 699
    .restart local v4    # "adminUid":I
    .restart local v17    # "userId":I
    .restart local v18    # "token":J
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, "currentHomePackage":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v14

    .line 704
    .local v14, "result":I
    const-string/jumbo v20, "KioskModeService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Kiosk  result   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-eqz v14, :cond_2

    .line 706
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, "Kiosk Mode App not validated"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1, v14}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_1

    .line 708
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 709
    const-string/jumbo v20, "KioskModeService"

    const-string/jumbo v22, "Cannot find HOME activity"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 718
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 719
    const/16 v20, 0x1

    const/16 v22, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_1

    .line 723
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v22, "toolbox_onoff"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 726
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 734
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 739
    const/4 v10, 0x0

    .line 740
    .local v10, "flag":Z
    const/16 v15, 0x64

    .local v15, "timeoutCount":I
    move/from16 v16, v15

    .line 741
    .end local v15    # "timeoutCount":I
    .local v16, "timeoutCount":I
    :goto_2
    if-nez v10, :cond_5

    add-int/lit8 v15, v16, -0x1

    .end local v16    # "timeoutCount":I
    .restart local v15    # "timeoutCount":I
    if-lez v16, :cond_6

    .line 742
    const/4 v13, 0x0

    .line 744
    .local v13, "recentTasks":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    const/16 v22, 0xa

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v13

    .end local v13    # "recentTasks":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_3
    move/from16 v16, v15

    .end local v15    # "timeoutCount":I
    .restart local v16    # "timeoutCount":I
    goto :goto_2

    :cond_5
    move/from16 v15, v16

    .line 762
    .end local v16    # "timeoutCount":I
    .restart local v15    # "timeoutCount":I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 765
    const/16 v20, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_1

    .line 745
    .restart local v13    # "recentTasks":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_2
    move-exception v7

    .line 746
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1695
    const/4 v1, 0x1

    .line 1696
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1698
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1699
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1700
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1702
    .end local v1    # "ret":Z
    :cond_0
    return v1
.end method

.method private applyHideNavigationBarSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2744
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 2745
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNavigationBarHiddenAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2741
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 2746
    :catch_0
    move-exception v0

    .line 2747
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "applyHideNavigationBarSystemUI() failed. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2748
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2749
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2748
    throw v4
.end method

.method private applyHideStatusBarSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2733
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 2734
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setStatusBarHiddenAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2730
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 2735
    :catch_0
    move-exception v0

    .line 2736
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "applyHideStatusBarSystemUI() failed. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2738
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2737
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2738
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2737
    throw v4
.end method

.method private applyHideSystemBarSystemUI(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 2723
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHiddenAsUser(I)Z

    move-result v0

    .line 2724
    .local v0, "isHidden":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v2

    .line 2725
    .local v2, "isHiddenStatusBar":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHiddenAsUser(I)Z

    move-result v1

    .line 2727
    .local v1, "isHiddenNavigationBar":Z
    if-nez v0, :cond_1

    .end local v2    # "isHiddenStatusBar":Z
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideStatusBarSystemUI(IZ)V

    .line 2728
    if-nez v0, :cond_0

    move v3, v1

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideNavigationBarSystemUI(IZ)V

    .line 2722
    return-void

    .restart local v2    # "isHiddenStatusBar":Z
    :cond_1
    move v2, v3

    .line 2727
    goto :goto_0
.end method

.method private applyMultiWindowPolicy(ZI)Z
    .locals 9
    .param p1, "isCalledAdmin"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1568
    const/4 v2, 0x0

    .line 1569
    .local v2, "ret":Z
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 1570
    .local v0, "allowed":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1572
    .local v4, "token":J
    if-nez v0, :cond_1

    .line 1574
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string/jumbo v6, "com.android.server.enterprise.kioskmode"

    const-string/jumbo v7, "disable"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 1586
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1588
    :goto_1
    const-string/jumbo v3, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "applyMultiWindowPolicy() : ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", allowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,isCalledAdmin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return v2

    .line 1577
    :cond_1
    if-eqz p1, :cond_0

    .line 1578
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string/jumbo v6, "com.android.server.enterprise.kioskmode"

    const-string/jumbo v7, "enable"

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1582
    :catch_0
    move-exception v1

    .line 1583
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "KioskModeService"

    const-string/jumbo v6, "applyMultiWindowPolicy() : Failed to update multi window policy"

    invoke-static {v3, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1584
    const/4 v2, 0x0

    .line 1586
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1585
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1586
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    throw v3
.end method

.method private broadcastBlockedEdgeScreenIntent(Z)V
    .locals 6
    .param p1, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2703
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.edm.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2704
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.samsung.edm.intent.extra.BLOCKED_STATUS"

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2706
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2707
    .local v1, "intent1":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.BLOCKED_STATUS"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2709
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2710
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2700
    return-void

    .end local v1    # "intent1":Landroid/content/Intent;
    :cond_0
    move v2, v4

    .line 2704
    goto :goto_0

    .restart local v1    # "intent1":Landroid/content/Intent;
    :cond_1
    move v3, v4

    .line 2707
    goto :goto_1
.end method

.method private broadcastKioskResult(III)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "operation"    # I
    .param p3, "result"    # I

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "adminPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1068
    return-void

    .line 1071
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1110
    return-void

    .line 1073
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v2, "intent1":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    :goto_0
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1115
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1116
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v6, v1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1117
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1118
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    return-void

    .line 1086
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intent1":Landroid/content/Intent;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1089
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .restart local v2    # "intent1":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1099
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intent1":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.UNEXPECTED_KIOSK_BEHAVIOR"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .restart local v2    # "intent1":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1071
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 1294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1296
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.sec.android.kiosk"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1297
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "com.sec.android.kiosk"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z

    .line 1300
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1292
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1281
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 1283
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1284
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1280
    :cond_0
    return-void
.end method

.method private enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_KIOSK_MODE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 423
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 422
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_KIOSK_MODE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 433
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 432
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 431
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private evaluateAirModeConfigurationsAsUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2358
    if-lez p1, :cond_1

    .line 2359
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 2362
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2363
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirCommandConfigurationAsUser(I)Z

    .line 2365
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2366
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirViewConfigurationAsUser(I)V

    .line 2356
    :cond_1
    return-void
.end method

.method private extractDefaultApkAndInstall(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v12, 0x0

    .line 1233
    const/4 v3, 0x0

    .line 1234
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 1235
    .local v5, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1237
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.android.mdm"

    .line 1238
    const/4 v10, 0x2

    .line 1237
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1239
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_3

    .line 1240
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "MDMApp context could not be created!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 1259
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1261
    :cond_0
    if-eqz v6, :cond_1

    .line 1263
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1268
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 1270
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1277
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    :goto_2
    const/16 v8, -0x7d0

    return v8

    .line 1242
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "kioskdefault.apk"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 1243
    .local v5, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "kioskdefault.apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1245
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_5
    invoke-direct {p0, v5, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1247
    .end local v6    # "out":Ljava/io/OutputStream;
    const/16 v8, 0x1b4

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v4, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1248
    if-eqz v4, :cond_7

    .line 1249
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, p1, v9, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v8

    .line 1248
    if-eqz v8, :cond_f

    .line 1258
    if-eqz v4, :cond_4

    .line 1259
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1261
    :cond_4
    if-eqz v7, :cond_5

    .line 1263
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1268
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 1270
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1250
    :cond_6
    :goto_4
    return v12

    :cond_7
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 1249
    .end local v4    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    goto :goto_0

    .line 1264
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 1265
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing OutputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1271
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1272
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing InputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1264
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 1265
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing OutputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1271
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1272
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing InputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1255
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "ex":Ljava/io/IOException;
    .local v3, "file":Ljava/io/File;
    .local v6, "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .line 1256
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5
    :try_start_8
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "NameNotFoundException while creating package context"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1258
    if-eqz v3, :cond_8

    .line 1259
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1261
    :cond_8
    if-eqz v6, :cond_9

    .line 1263
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1268
    :cond_9
    :goto_6
    if-eqz v5, :cond_2

    .line 1270
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 1271
    :catch_5
    move-exception v2

    .line 1272
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing InputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1264
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 1265
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing OutputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1253
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    .line 1254
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v2    # "ex":Ljava/io/IOException;
    :goto_7
    :try_start_b
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while extracting default apk"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1258
    if-eqz v3, :cond_a

    .line 1259
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1261
    :cond_a
    if-eqz v6, :cond_b

    .line 1263
    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 1268
    :cond_b
    :goto_8
    if-eqz v5, :cond_2

    .line 1270
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_2

    .line 1271
    :catch_8
    move-exception v2

    .line 1272
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing InputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1264
    :catch_9
    move-exception v2

    .line 1265
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "IOException while closing OutputStream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1257
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1258
    :goto_9
    if-eqz v3, :cond_c

    .line 1259
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1261
    :cond_c
    if-eqz v6, :cond_d

    .line 1263
    :try_start_e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 1268
    :cond_d
    :goto_a
    if-eqz v5, :cond_e

    .line 1270
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 1257
    :cond_e
    :goto_b
    throw v8

    .line 1264
    :catch_a
    move-exception v2

    .line 1265
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v9, "KioskModeService"

    const-string/jumbo v10, "IOException while closing OutputStream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1271
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_b
    move-exception v2

    .line 1272
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v9, "KioskModeService"

    const-string/jumbo v10, "IOException while closing InputStream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 1257
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    goto :goto_9

    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_9

    .line 1253
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .local v6, "out":Ljava/io/OutputStream;
    :catch_c
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_7

    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_d
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_7

    .line 1255
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .local v6, "out":Ljava/io/OutputStream;
    :catch_e
    move-exception v1

    .restart local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_f
    move-exception v1

    .restart local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_f
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private forceTerminateKiosk(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v0

    .line 874
    .local v0, "kioskAdminUid":I
    const-string/jumbo v1, "KioskModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceTerminateKiosk() - uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 879
    return-void
.end method

.method private getActiveKioskAdmin(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 1142
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 1143
    const-string/jumbo v6, "kioskModeEnabled"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 1144
    const-string/jumbo v6, "adminUid"

    const/4 v7, 0x1

    aput-object v6, v0, v7

    .line 1147
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1148
    const-string/jumbo v7, "KIOSKMODE"

    .line 1147
    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1150
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1167
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActiveKioskAdmin() failed for user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v6, -0x1

    return v6

    .line 1151
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v1, 0x0

    .line 1152
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1154
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1156
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1157
    const-string/jumbo v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 1159
    .local v5, "uid":I
    return v5

    .line 1163
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "uid":I
    :catch_0
    move-exception v2

    .line 1164
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getAllBlockedList()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1736
    .local v8, "token":J
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 1737
    .local v10, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1738
    const/4 v7, 0x0

    .line 1740
    .local v7, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1741
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1742
    .local v2, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1744
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "KIOSKMODE"

    .line 1745
    const-string/jumbo v14, "blockedHwKeyList"

    .line 1744
    invoke-virtual {v12, v13, v14, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1747
    .local v11, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1749
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "list$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1750
    .local v4, "list":Ljava/lang/String;
    const-string/jumbo v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1753
    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "list":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1755
    .end local v2    # "i":Landroid/content/pm/UserInfo;
    .end local v5    # "list$iterator":Ljava/util/Iterator;
    .end local v6    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method private getBlockedEdgeScreenByAdmin(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2647
    const/4 v0, 0x0

    .line 2649
    .local v0, "blockedFunctions":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2650
    const-string/jumbo v4, "KIOSKMODE"

    .line 2651
    const-string/jumbo v5, "edgeScreenBlockedFunctions"

    .line 2649
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2655
    :goto_0
    return v0

    .line 2652
    :catch_0
    move-exception v1

    .line 2653
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string/jumbo v2, "KioskModeService"

    const-string/jumbo v3, "getBlockedEdgeScreen() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 7
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1763
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KIOSKMODE"

    .line 1764
    const-string/jumbo v6, "blockedHwKeyList"

    .line 1763
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1765
    .local v3, "var":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1766
    .local v1, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1767
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1768
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1769
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1768
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1772
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getDefaultHomeScreen(I)Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1309
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "cName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 1315
    const/high16 v5, 0x10000

    .line 1314
    invoke-virtual {v4, v2, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1316
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 1317
    new-instance v0, Landroid/content/ComponentName;

    .line 1318
    .end local v0    # "cName":Landroid/content/ComponentName;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1319
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1317
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_0
    if-nez v0, :cond_1

    .line 1323
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "getDefaultHomeScreen() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-object v6

    .line 1327
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1332
    return-object v6

    .line 1335
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1338
    .local v3, "pkgName":Ljava/lang/String;
    return-object v3
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 285
    const-string/jumbo v1, "enterprise_policy_new"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1440
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    const-string/jumbo v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1445
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 1446
    const/high16 v7, 0x10000

    .line 1445
    invoke-virtual {v6, v1, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1447
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1450
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1451
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1452
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v6

    .line 1449
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "KioskModeService"

    const-string/jumbo v7, " - cannot find matched home activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v6, 0x0

    return-object v6
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "callingUid"    # I

    .prologue
    .line 1127
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1128
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 1129
    const/16 v2, 0x4e1f

    if-le v1, v2, :cond_1

    .line 1130
    :cond_0
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v2

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "pkgName":Ljava/lang/String;
    return-object v0
.end method

.method private getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2503
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2504
    const-string/jumbo v2, "pen_detachment_option"

    .line 2505
    const/4 v3, 0x0

    .line 2503
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2508
    .local v0, "index":I
    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2221
    if-nez p1, :cond_0

    .line 2222
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2225
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2226
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2227
    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2228
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 2229
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2231
    :cond_1
    const-string/jumbo v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2233
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2234
    .local v4, "userId":I
    const-string/jumbo v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "System UI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2236
    return v4

    .line 2239
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    return v5
.end method

.method private initKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x3

    const/4 v10, 0x0

    .line 1183
    const/4 v3, 0x0

    .line 1186
    .local v3, "removeOwner":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 1187
    .local v5, "userId":I
    const-string/jumbo v8, "com.sec.android.kiosk"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->extractDefaultApkAndInstall(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 1189
    .local v4, "result":I
    if-eqz v4, :cond_3

    .line 1190
    return v4

    .line 1195
    .end local v4    # "result":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-interface {v8, p2, v9, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1196
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 1197
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "Check if Kiosk App exists and is enabled  - fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    return v11

    .line 1200
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1204
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v8, p2, v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1205
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "Check if Kiosk App Disabled  - fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return v11

    .line 1210
    :cond_2
    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "homeActivity":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 1212
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "Check if Kiosk App have home activities  - fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/16 v8, -0x7d0

    return v8

    .line 1217
    .end local v2    # "homeActivity":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1220
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1222
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1224
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    return v10
.end method

.method private initializeHandlerThread()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 242
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 243
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 240
    return-void
.end method

.method private initializeKeyCodeLists()V
    .locals 7

    .prologue
    .line 1825
    invoke-static {}, Landroid/view/KeyEvent;->getSamsungLastKeyCode()I

    move-result v2

    .line 1827
    .local v2, "maxKeycode":I
    new-array v1, v2, [I

    .line 1828
    .local v1, "keyCodes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1829
    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    .line 1828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1831
    :cond_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .line 1832
    .local v3, "ret":[Z
    if-eqz v3, :cond_3

    .line 1833
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    .line 1834
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1835
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_1

    .line 1836
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v5

    .line 1824
    :cond_3
    return-void

    .line 1833
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private isComContainerEnabled()Z
    .locals 6

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 557
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 562
    .local v1, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 559
    .local v1, "ret":Z
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "isComContainerEnabled() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 562
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    throw v4
.end method

.method private isEdgeScreenFunctionalityAllowed(I)Z
    .locals 3
    .param p1, "function"    # I

    .prologue
    .line 2683
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2684
    .local v0, "blockedFunctions":I
    const/4 v1, 0x1

    .line 2685
    .local v1, "isFunctionAllowed":Z
    and-int v2, v0, p1

    if-lez v2, :cond_0

    .line 2686
    const/4 v1, 0x0

    .line 2688
    :cond_0
    return v1
.end method

.method private isHardwareKeyValid(I)Z
    .locals 2
    .param p1, "hwKeyId"    # I

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNavigationBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2129
    const/4 v0, 0x0

    .line 2131
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 2132
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2133
    const-string/jumbo v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    .line 2132
    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2135
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2136
    .local v1, "value":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_0

    .line 2137
    const/4 v0, 0x1

    .line 2144
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private isStatusBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2051
    const/4 v0, 0x0

    .line 2053
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 2054
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2055
    const-string/jumbo v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    .line 2054
    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2057
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2058
    .local v1, "value":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 2059
    const/4 v0, 0x1

    .line 2066
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private isSystemBarHiddenAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1550
    const/4 v0, 0x0

    .line 1552
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 1553
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1554
    const-string/jumbo v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    .line 1553
    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1556
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1557
    .local v1, "value":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1558
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_0

    .line 1559
    const/4 v0, 0x1

    .line 1565
    .end local v1    # "value":I
    :cond_1
    return v0
.end method

.method private isTaskManagerAvailable(I)Z
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1916
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android"

    .line 1915
    invoke-static {v6, v8, v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    .line 1917
    .local v5, "userContext":Landroid/content/Context;
    if-nez v5, :cond_0

    .line 1918
    return v9

    .line 1919
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1920
    const/16 v8, 0x200

    .line 1919
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1921
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 1922
    .local v3, "found":Z
    if-nez v2, :cond_1

    .line 1923
    return v9

    .line 1924
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1925
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    sget-object v8, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_3

    aget-object v4, v8, v6

    .line 1926
    .local v4, "taskMngrPkg":Ljava/lang/String;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1927
    const/4 v3, 0x1

    .line 1931
    .end local v4    # "taskMngrPkg":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_2

    .line 1934
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_4
    return v3

    .line 1925
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "taskMngrPkg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private launchHomeActivity(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1479
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1483
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :goto_0
    return-void

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPackageRemoveReceiver(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 888
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 890
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 893
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 934
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 936
    const-string/jumbo v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    .line 935
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 938
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 939
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    .line 938
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 940
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v6

    .line 944
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "KioskModeService"

    const-string/jumbo v2, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerSwitchingUserReceiver()V
    .locals 6

    .prologue
    .line 1036
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1037
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 1048
    .local v2, "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KioskModeService"

    const-string/jumbo v4, "Cannot register registerSwitchingUserReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerTerminationReceiver(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 968
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 971
    .local v3, "newIntentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 1010
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_0

    .line 1011
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1013
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    .line 1012
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "newIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v6

    .line 1017
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "KioskModeService"

    const-string/jumbo v2, "Cannot register terminateIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1706
    const/4 v1, 0x1

    .line 1707
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1708
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1709
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1710
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1712
    .end local v1    # "ret":Z
    :cond_0
    return v1
.end method

.method private resetAirCommandConfigurationAsUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2340
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    move-result v0

    .line 2341
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2342
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V

    .line 2344
    :cond_0
    return v0
.end method

.method private resetAirViewConfigurationAsUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2418
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirViewOn(IZ)V

    .line 2419
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setFingerAirViewOn(IZ)V

    .line 2420
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setFingerAirViewInformationPreviewOn(IZ)V

    .line 2421
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setPenHoveringOn(IZ)V

    .line 2417
    return-void
.end method

.method private resetEdgeScreenSetting(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2694
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2691
    return-void

    .line 2695
    :catchall_0
    move-exception v2

    .line 2696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2695
    throw v2
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1716
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1718
    .local v0, "ret":Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1719
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KIOSKMODE"

    .line 1720
    const-string/jumbo v6, "blockedHwKeyList"

    const/4 v7, 0x0

    .line 1719
    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1729
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1722
    .local v0, "ret":Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1723
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1724
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1726
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KIOSKMODE"

    .line 1727
    const-string/jumbo v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1726
    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0
.end method

.method private setAirCommandOn(IZ)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2432
    .local v2, "token":J
    const/4 v1, 0x0

    .line 2434
    .local v1, "ret":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2435
    const-string/jumbo v6, "air_button_onoff"

    .line 2436
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    .line 2434
    :goto_0
    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2443
    .local v1, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2445
    .end local v1    # "ret":Z
    :goto_1
    if-nez v1, :cond_0

    .line 2446
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "setAirCommandOn() : failed to update setting value ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_0
    return v1

    .line 2436
    .local v1, "ret":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2439
    :catch_0
    move-exception v0

    .line 2440
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "setAirCommandOn() : failed to update setting value ."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2441
    const/4 v1, 0x0

    .line 2443
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2442
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2443
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2442
    throw v4
.end method

.method private setAirViewOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2459
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2460
    const-string/jumbo v4, "air_view_master_onoff"

    .line 2461
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 2459
    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2457
    return-void

    .line 2461
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p1, "userId"    # I
    .param p2, "oldHomePackage"    # Ljava/lang/String;
    .param p3, "newHomePackage"    # Ljava/lang/String;

    .prologue
    .line 1353
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.HOME"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    const/4 v14, 0x0

    .line 1362
    .local v14, "flag":Z
    if-eqz p2, :cond_2

    .line 1363
    const/16 v18, 0x0

    .line 1367
    .local v18, "isAppInstalled":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v6, 0x80

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v4, v0, v6, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 1368
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_0

    .line 1369
    const/16 v18, 0x1

    .line 1375
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    const-string/jumbo v4, "com.sec.android.kiosk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v18, :cond_1

    .line 1376
    const/4 v14, 0x1

    .line 1379
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1381
    .local v22, "token":J
    :try_start_1
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v20

    .line 1382
    .local v20, "mIPackageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    .end local v18    # "isAppInstalled":Z
    .end local v20    # "mIPackageManager":Landroid/content/pm/IPackageManager;
    .end local v22    # "token":J
    :cond_2
    :goto_1
    if-eqz p3, :cond_6

    .line 1395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1396
    .restart local v22    # "token":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 1397
    const/high16 v6, 0x10000

    .line 1396
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v4, v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    .line 1398
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1401
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    .local v12, "componentsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 1403
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1404
    .local v21, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1405
    .local v10, "activity":Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string/jumbo v4, "com.sec.android.kiosk"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1402
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1383
    .end local v10    # "activity":Ljava/lang/String;
    .end local v12    # "componentsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v16    # "i":I
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "pkgName":Ljava/lang/String;
    .restart local v18    # "isAppInstalled":Z
    :catch_0
    move-exception v13

    .line 1386
    .local v13, "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1385
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1386
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1385
    throw v4

    .line 1408
    .end local v18    # "isAppInstalled":Z
    .restart local v10    # "activity":Ljava/lang/String;
    .restart local v12    # "componentsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v16    # "i":I
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "pkgName":Ljava/lang/String;
    :cond_3
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    invoke-direct {v4, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1410
    .end local v10    # "activity":Ljava/lang/String;
    .end local v21    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [Landroid/content/ComponentName;

    .line 1411
    .local v7, "components":[Landroid/content/ComponentName;
    invoke-interface {v12, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "components":[Landroid/content/ComponentName;
    check-cast v7, [Landroid/content/ComponentName;

    .line 1413
    .restart local v7    # "components":[Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1414
    .local v15, "homeActivity":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 1415
    const/4 v4, 0x0

    return v4

    .line 1419
    :cond_5
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v5, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1423
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x100000

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1428
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v12    # "componentsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v15    # "homeActivity":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "token":J
    :cond_6
    const/4 v4, 0x1

    return v4

    .line 1371
    .restart local v18    # "isAppInstalled":Z
    :catch_1
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private setFingerAirViewInformationPreviewOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2489
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2490
    const-string/jumbo v4, "finger_air_view_information_preview"

    .line 2491
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 2489
    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2493
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2487
    return-void

    .line 2491
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFingerAirViewOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2474
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2475
    const-string/jumbo v4, "finger_air_view"

    .line 2476
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 2474
    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2472
    return-void

    .line 2476
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setKioskModeEnabledSystemUI(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2755
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    .line 2756
    .local v1, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setKioskModeEnabledAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2752
    .end local v1    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :goto_0
    return-void

    .line 2757
    :catch_0
    move-exception v0

    .line 2758
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "setKioskModeEnabledSystemUI() failed. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2759
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2759
    throw v4
.end method

.method private setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "option"    # Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .prologue
    .line 2518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2519
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2520
    const-string/jumbo v3, "pen_detachment_option"

    .line 2521
    invoke-virtual {p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ordinal()I

    move-result v4

    .line 2519
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2517
    return-void
.end method

.method private setPenHoveringOn(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2534
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2535
    const-string/jumbo v4, "pen_hovering"

    .line 2536
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 2534
    :goto_0
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2532
    return-void

    .line 2536
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unregisterPackageRemoveReceiver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 953
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 955
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :goto_0
    return-void

    .line 957
    :cond_0
    const-string/jumbo v0, "KioskModeService"

    const-string/jumbo v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterTerminationReceiver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1026
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1028
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :goto_0
    return-void

    .line 1030
    :cond_0
    const-string/jumbo v0, "KioskModeService"

    const-string/jumbo v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "enabled"    # Z
    .param p3, "kioskPackage"    # Ljava/lang/String;
    .param p4, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "KIOSKMODE"

    .line 1467
    const-string/jumbo v2, "kioskModeEnabled"

    .line 1466
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1468
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "KIOSKMODE"

    .line 1469
    const-string/jumbo v2, "kioskModeDefaultPackage"

    .line 1468
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1470
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "KIOSKMODE"

    .line 1471
    const-string/jumbo v2, "kioskModeKioskPackage"

    .line 1470
    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1464
    return-void
.end method

.method private updateSystemUIMonitor(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    .line 2719
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 2717
    return-void
.end method

.method private wipeRecentTasks(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1599
    const/4 v4, 0x0

    .line 1600
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1602
    .local v6, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1604
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->clearRecentTasks(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1608
    .local v4, "result":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1611
    .end local v4    # "result":Z
    :goto_0
    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 1612
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1615
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v5, "KioskMode"

    const-string/jumbo v8, "wipeRecentTasks"

    const/4 v9, 0x1

    invoke-virtual {v3, v5, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1616
    const-string/jumbo v5, "KioskModeService"

    const-string/jumbo v8, "GearPolicy wipeRecentTasks"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1621
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return v4

    .line 1605
    .local v4, "result":Z
    :catch_0
    move-exception v1

    .line 1606
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "KioskModeService"

    const-string/jumbo v8, "Remote exception calling clearRecentTasks!"

    invoke-static {v5, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1608
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1607
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 1608
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1607
    throw v5

    .line 1617
    .end local v4    # "result":Z
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v2

    .line 1618
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2301
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2302
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2303
    .local v5, "userId":I
    const/4 v2, 0x1

    .line 2305
    .local v2, "isAllowedbyAdmin":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2308
    .end local v2    # "isAllowedbyAdmin":Z
    :goto_0
    const/4 v3, 0x0

    .line 2309
    .local v3, "ret":Z
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowAirCommandMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2311
    const-string/jumbo v8, "KIOSKMODE"

    .line 2312
    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    .line 2310
    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2314
    .local v3, "ret":Z
    if-eqz v3, :cond_2

    .line 2315
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 2316
    .local v1, "isAllowed":Z
    if-eqz v1, :cond_1

    .line 2317
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    move-result v3

    .line 2322
    :goto_1
    if-nez v3, :cond_0

    .line 2323
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 2324
    .local v4, "retFail":Z
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowAirCommandMode() : restore policy because fail to update aircommand setting. = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    .end local v1    # "isAllowed":Z
    .end local v4    # "retFail":Z
    :cond_0
    :goto_2
    return v3

    .line 2306
    .end local v3    # "ret":Z
    .restart local v2    # "isAllowedbyAdmin":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowAirCommandMode() : fail to get admin policy value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2320
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "isAllowedbyAdmin":Z
    .restart local v1    # "isAllowed":Z
    .restart local v3    # "ret":Z
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirCommandConfigurationAsUser(I)Z

    move-result v3

    goto :goto_1

    .line 2328
    .end local v1    # "isAllowed":Z
    :cond_2
    const-string/jumbo v6, "KioskModeService"

    const-string/jumbo v7, "allowAirCommandMode() : failed to update policy. "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2398
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2399
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2401
    .local v0, "userId":I
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2402
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirViewConfigurationAsUser(I)V

    .line 2405
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2406
    const-string/jumbo v3, "KIOSKMODE"

    .line 2407
    const-string/jumbo v4, "kioskModeAirViewAllowed"

    .line 2405
    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "edgeScreenFunction"    # I
    .param p3, "allow"    # Z

    .prologue
    const/16 v6, 0x1f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2544
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2547
    if-eq p2, v6, :cond_0

    .line 2548
    return v9

    .line 2552
    :cond_0
    and-int/lit8 v6, p2, 0x1f

    if-lez v6, :cond_1

    if-eqz p3, :cond_8

    .line 2563
    :cond_1
    :goto_0
    and-int/lit8 v6, p2, 0x1

    if-lez v6, :cond_2

    if-eqz p3, :cond_9

    .line 2571
    :cond_2
    :goto_1
    and-int/lit8 v6, p2, 0x2

    if-lez v6, :cond_3

    if-eqz p3, :cond_a

    .line 2579
    :cond_3
    :goto_2
    and-int/lit8 v6, p2, 0x8

    if-lez v6, :cond_4

    if-eqz p3, :cond_b

    .line 2587
    :cond_4
    :goto_3
    const/4 v3, 0x1

    .line 2588
    .local v3, "wasInfoStreamAllowed":Z
    and-int/lit8 v6, p2, 0x4

    if-lez v6, :cond_5

    .line 2589
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    .line 2590
    .local v3, "wasInfoStreamAllowed":Z
    if-nez p3, :cond_5

    if-eqz v3, :cond_5

    .line 2592
    const-string/jumbo v6, "edge_information_stream"

    invoke-direct {p0, v6, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2593
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 2598
    .end local v3    # "wasInfoStreamAllowed":Z
    :cond_5
    and-int/lit8 v6, p2, 0x10

    if-lez v6, :cond_6

    if-eqz p3, :cond_c

    .line 2605
    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreenByAdmin(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2609
    .local v0, "currentBlockedFunctions":I
    if-eqz p3, :cond_d

    .line 2610
    not-int v6, p2

    and-int v1, v6, v0

    .line 2615
    .local v1, "newBlockedFunctions":I
    :goto_5
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2616
    const-string/jumbo v8, "KIOSKMODE"

    .line 2617
    const-string/jumbo v9, "edgeScreenBlockedFunctions"

    .line 2615
    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 2623
    .local v2, "result":Z
    if-eqz v2, :cond_7

    .line 2624
    and-int/lit8 v6, p2, 0x4

    if-lez v6, :cond_7

    .line 2625
    if-eqz p3, :cond_7

    if-eqz v3, :cond_e

    .line 2632
    :cond_7
    :goto_6
    return v2

    .line 2554
    .end local v0    # "currentBlockedFunctions":I
    .end local v1    # "newBlockedFunctions":I
    .end local v2    # "result":Z
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2556
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "edge_enable"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2558
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2557
    :catchall_0
    move-exception v6

    .line 2558
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2557
    throw v6

    .line 2564
    .end local v4    # "token":J
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2566
    const-string/jumbo v6, "night_mode"

    invoke-direct {p0, v6, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    goto :goto_1

    .line 2572
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2574
    const-string/jumbo v6, "people_stripe"

    invoke-direct {p0, v6, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    goto :goto_2

    .line 2580
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2582
    const-string/jumbo v6, "turn_over_lighting"

    invoke-direct {p0, v6, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    goto :goto_3

    .line 2599
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2601
    const-string/jumbo v6, "task_edge"

    invoke-direct {p0, v6, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    goto :goto_4

    .line 2612
    .restart local v0    # "currentBlockedFunctions":I
    :cond_d
    or-int v1, p2, v0

    .restart local v1    # "newBlockedFunctions":I
    goto :goto_5

    .line 2625
    .restart local v2    # "result":Z
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2628
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    goto :goto_6
.end method

.method public allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I
    .locals 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hwKeyId"    # [I
    .param p3, "allow"    # Z

    .prologue
    .line 1632
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1636
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1637
    const-string/jumbo v12, "KioskModeService"

    const-string/jumbo v13, "Failed. Caller is not COM container or owner"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/4 v12, 0x0

    return-object v12

    .line 1641
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 1643
    .local v11, "userId":I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1644
    .local v1, "callingUid":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v10, "successList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v4, "hwKeyIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v12, v0

    if-nez v12, :cond_2

    .line 1648
    :cond_1
    const/4 v12, 0x0

    return-object v12

    .line 1651
    :cond_2
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v6, v12, :cond_3

    .line 1652
    aget v12, p2, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1654
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1655
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1656
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1657
    .local v8, "keycode":I
    if-nez p3, :cond_5

    .line 1658
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v1, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1659
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    if-nez v11, :cond_4

    .line 1661
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1664
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v12, "KioskMode"

    const-string/jumbo v13, "allowHardwareKeys"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v3, v12, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1665
    const-string/jumbo v12, "KioskModeService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "GearPolicy allowHardwareKeys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " allow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1666
    :catch_0
    move-exception v2

    .line 1667
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1672
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v1, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1673
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    if-nez v11, :cond_4

    .line 1675
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1678
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v12, "KioskMode"

    const-string/jumbo v13, "allowHardwareKeys"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v3, v12, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1679
    const-string/jumbo v12, "KioskModeService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "GearPolicy allowHardwareKeys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " allow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1680
    :catch_1
    move-exception v2

    .line 1681
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1687
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v8    # "keycode":I
    :cond_6
    iget-object v12, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 1688
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    new-array v9, v12, [I

    .line 1689
    .local v9, "ret":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v12, v9

    if-ge v5, v12, :cond_7

    .line 1690
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v9, v5

    .line 1689
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1691
    :cond_7
    return-object v9
.end method

.method public allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2148
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2149
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2150
    .local v5, "userId":I
    const/4 v3, 0x0

    .line 2151
    .local v3, "ret":Z
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMultiWindowMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    .line 2155
    return v3

    .line 2157
    :cond_0
    const/4 v2, 0x1

    .line 2159
    .local v2, "isAllowedbyAdmin":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "KIOSKMODE"

    const-string/jumbo v9, "multiWindowEnabled"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2163
    .end local v2    # "isAllowedbyAdmin":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "KIOSKMODE"

    .line 2164
    const-string/jumbo v9, "multiWindowEnabled"

    .line 2163
    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2165
    .local v3, "ret":Z
    if-eqz v3, :cond_3

    .line 2166
    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(ZI)Z

    move-result v3

    .line 2167
    if-nez v3, :cond_1

    .line 2168
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "KIOSKMODE"

    .line 2169
    const-string/jumbo v9, "multiWindowEnabled"

    .line 2168
    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 2170
    .local v4, "retFail":Z
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMultiWindowMode() : restore policy because fail to update multiwindow setting. = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    .end local v4    # "retFail":Z
    :cond_1
    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    .line 2174
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2177
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v6, "KioskMode"

    const-string/jumbo v7, "allowMultiWindowMode"

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2178
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GearPolicy allowMultiWindowMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2188
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_1
    return v3

    .line 2160
    .restart local v2    # "isAllowedbyAdmin":Z
    .local v3, "ret":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowMultiWindowMode() : fail to get admin policy value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "isAllowedbyAdmin":Z
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "ret":Z
    :catch_1
    move-exception v0

    .line 2180
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2185
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    const-string/jumbo v6, "KioskModeService"

    const-string/jumbo v7, "allowMultiWindowMode() : failed to update policy. "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1844
    const/4 v3, 0x1

    .line 1845
    .local v3, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1848
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAvailable(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1849
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "Task Manager is not available in this device"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    return v9

    .line 1855
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1856
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return v9

    .line 1860
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 1861
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1862
    .local v4, "token":J
    if-nez p2, :cond_2

    .line 1864
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1865
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1866
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :cond_2
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1873
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v9, "KIOSKMODE"

    .line 1874
    const-string/jumbo v10, "taskManagerEnabled"

    .line 1873
    invoke-virtual {v7, v8, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1876
    .local v3, "ret":Z
    if-eqz v3, :cond_3

    if-nez v6, :cond_3

    .line 1877
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1880
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v7, "KioskMode"

    const-string/jumbo v8, "allowTaskManager"

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1881
    const-string/jumbo v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GearPolicy allowTaskManager : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1887
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_1
    return v3

    .line 1867
    .local v3, "ret":Z
    :catch_0
    move-exception v0

    .line 1868
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "Fail getting ActivityManager"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1882
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "ret":Z
    :catch_1
    move-exception v1

    .line 1883
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2244
    const/4 v5, 0x0

    .line 2245
    .local v5, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2246
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2247
    .local v0, "callingUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 2249
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2251
    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v4

    .line 2252
    .local v4, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v4, v8}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->clearAllNotificationsAsUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 2256
    .local v5, "ret":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2258
    .end local v4    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .end local v5    # "ret":Z
    :goto_0
    if-nez v8, :cond_0

    if-eqz v5, :cond_0

    .line 2259
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2262
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v9, "KioskMode"

    const-string/jumbo v10, "clearAllNotifications"

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2263
    const-string/jumbo v9, "KioskModeService"

    const-string/jumbo v10, "GearPolicy clearAllNotifications"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2268
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return v5

    .line 2253
    .local v5, "ret":Z
    :catch_0
    move-exception v2

    .line 2254
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 2256
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2255
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 2256
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2255
    throw v9

    .line 2264
    .end local v5    # "ret":Z
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v1

    .line 2265
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v7, 0x2

    .line 475
    const-string/jumbo v5, "KioskModeService"

    const-string/jumbo v6, "disableKioskMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 479
    sget-boolean v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-eqz v5, :cond_0

    .line 480
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v6, -0x4

    invoke-direct {p0, v5, v7, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 481
    return-void

    .line 483
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 484
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "adminuid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 487
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 490
    .local v4, "userId":I
    if-nez v4, :cond_1

    .line 491
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 494
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v5, "KioskMode"

    const-string/jumbo v6, "disableKioskMode"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 495
    const-string/jumbo v5, "KioskModeService"

    const-string/jumbo v6, "GearPolicy disableKioskMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return-void

    .line 496
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 2765
    const-string/jumbo v1, "android.permission.DUMP"

    .line 2764
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    const-string/jumbo v0, "Permission Denial: can\'t dump KioskModeService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    return-void

    .line 2769
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[KioskMode Cache]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2763
    return-void
.end method

.method public enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 443
    const-string/jumbo v5, "KioskModeService"

    const-string/jumbo v6, "enableKioskMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 447
    sget-boolean v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-eqz v5, :cond_0

    .line 448
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v6, -0x4

    invoke-direct {p0, v5, v7, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 452
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "package"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v5, "adminuid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 456
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 459
    .local v4, "userId":I
    if-nez v4, :cond_1

    .line 460
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 463
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string/jumbo v5, "KioskMode"

    const-string/jumbo v6, "enableKioskMode"

    invoke-virtual {v2, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string/jumbo v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GearPolicy enableKioskMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return-void

    .line 465
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1782
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v5

    .line 1784
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 1785
    .local v2, "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1787
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/Set;

    .line 1789
    .local v2, "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1791
    .local v1, "blockedListInt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 1792
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1793
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1794
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1795
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1796
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1797
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1800
    .end local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "next":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2637
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2638
    const-string/jumbo v5, "KIOSKMODE"

    const-string/jumbo v6, "edgeScreenBlockedFunctions"

    .line 2637
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2639
    .local v2, "blockedEdgeScreenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 2640
    .local v3, "blockedFunctionsAllAdmins":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "blockedEdgeScreen$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2641
    .local v0, "blockedEdgeScreen":I
    or-int/2addr v3, v0

    goto :goto_0

    .line 2643
    .end local v0    # "blockedEdgeScreen":I
    :cond_0
    return v3
.end method

.method public getBlockedHwKeysCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-get0(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareKeyList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1625
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1626
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v0

    .line 1627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1626
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 610
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 613
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKioskHomePackageAsUser(I)Ljava/lang/String;
    .locals 12
    .param p1, "userId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 619
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    .line 620
    const-string/jumbo v7, "kioskModeEnabled"

    const/4 v10, 0x0

    aput-object v7, v0, v10

    .line 621
    const-string/jumbo v7, "kioskModeKioskPackage"

    const/4 v10, 0x1

    aput-object v7, v0, v10

    .line 624
    .local v0, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 625
    const-string/jumbo v10, "KIOSKMODE"

    .line 624
    invoke-virtual {v7, v10, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 627
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 648
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    return-object v11

    .line 628
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v1, 0x0

    .line 631
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 633
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v4, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 634
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 635
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "kioskModeEnabled"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 636
    .local v2, "cvInteger":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    move v10, v8

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_2
    and-int/2addr v7, v10

    if-eqz v7, :cond_2

    .line 637
    const-string/jumbo v7, "kioskModeKioskPackage"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 640
    .local v5, "kioskPackage":Ljava/lang/String;
    return-object v5

    .end local v5    # "kioskPackage":Ljava/lang/String;
    :cond_3
    move v10, v9

    .line 636
    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_2

    .line 644
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvInteger":Ljava/lang/Integer;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 645
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getKioskHomePackageAsUser() failed user : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    const/4 v11, 0x0

    .line 2075
    const/4 v7, 0x1

    .line 2076
    .local v7, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2078
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2079
    const-string/jumbo v9, "KioskModeService"

    const-string/jumbo v10, "Failed. Caller is not COM container or owner"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return v11

    .line 2083
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2084
    .local v0, "callingUid":I
    const/4 v6, 0x0

    .line 2087
    .local v6, "oldVal":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KIOSKMODE"

    .line 2088
    const-string/jumbo v11, "systemBarEnabled"

    .line 2087
    invoke-virtual {v9, v0, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2093
    :goto_0
    if-eqz p2, :cond_3

    or-int/lit8 v6, v6, 0x2

    move v5, v6

    .line 2096
    .local v5, "newVal":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KIOSKMODE"

    .line 2097
    const-string/jumbo v11, "systemBarEnabled"

    .line 2096
    invoke-virtual {v9, v0, v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 2099
    .local v7, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 2100
    .local v8, "userId":I
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHiddenAsUser(I)Z

    move-result v4

    .line 2102
    .local v4, "isHidden":Z
    if-eqz v7, :cond_1

    .line 2103
    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideNavigationBarSystemUI(IZ)V

    .line 2106
    :cond_1
    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 2107
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2110
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v9, "KioskMode"

    const-string/jumbo v10, "hideNavigationBar"

    invoke-virtual {v2, v9, v10, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2111
    const-string/jumbo v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GearPolicy hideNavigationBar : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2116
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_2
    return v7

    .line 2094
    .end local v4    # "isHidden":Z
    .end local v5    # "newVal":I
    .end local v8    # "userId":I
    .local v7, "result":Z
    :cond_3
    and-int/lit8 v6, v6, -0x3

    move v5, v6

    .restart local v5    # "newVal":I
    goto :goto_1

    .line 2112
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "isHidden":Z
    .local v7, "result":Z
    .restart local v8    # "userId":I
    :catch_0
    move-exception v1

    .line 2113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2089
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v4    # "isHidden":Z
    .end local v5    # "newVal":I
    .end local v8    # "userId":I
    .local v7, "result":Z
    :catch_1
    move-exception v3

    .local v3, "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    goto :goto_0
.end method

.method public hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    const/4 v11, 0x0

    .line 1998
    const/4 v7, 0x1

    .line 1999
    .local v7, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2001
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2002
    const-string/jumbo v9, "KioskModeService"

    const-string/jumbo v10, "Failed. Caller is not COM container or owner"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return v11

    .line 2006
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2007
    .local v0, "callingUid":I
    const/4 v6, 0x0

    .line 2010
    .local v6, "oldVal":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KIOSKMODE"

    .line 2011
    const-string/jumbo v11, "systemBarEnabled"

    .line 2010
    invoke-virtual {v9, v0, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2016
    :goto_0
    if-eqz p2, :cond_3

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2019
    .local v5, "newVal":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KIOSKMODE"

    .line 2020
    const-string/jumbo v11, "systemBarEnabled"

    .line 2019
    invoke-virtual {v9, v0, v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 2021
    .local v7, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 2022
    .local v8, "userId":I
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v4

    .line 2023
    .local v4, "isHidden":Z
    if-eqz v7, :cond_1

    .line 2024
    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideStatusBarSystemUI(IZ)V

    .line 2027
    :cond_1
    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 2028
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2031
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v9, "KioskMode"

    const-string/jumbo v10, "hideStatusBar"

    invoke-virtual {v2, v9, v10, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2032
    const-string/jumbo v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GearPolicy hideStatusBar : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2038
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_2
    return v7

    .line 2017
    .end local v4    # "isHidden":Z
    .end local v5    # "newVal":I
    .end local v8    # "userId":I
    .local v7, "result":Z
    :cond_3
    and-int/lit8 v6, v6, -0x2

    move v5, v6

    .restart local v5    # "newVal":I
    goto :goto_1

    .line 2033
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "isHidden":Z
    .local v7, "result":Z
    .restart local v8    # "userId":I
    :catch_0
    move-exception v1

    .line 2034
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2012
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v4    # "isHidden":Z
    .end local v5    # "newVal":I
    .end local v8    # "userId":I
    .local v7, "result":Z
    :catch_1
    move-exception v3

    .local v3, "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    goto :goto_0
.end method

.method public hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1496
    const/4 v6, 0x1

    .line 1497
    .local v6, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1499
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1500
    const-string/jumbo v8, "KioskModeService"

    const-string/jumbo v9, "Failed. Caller is not COM container or owner"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return v10

    .line 1504
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1505
    .local v0, "callingUid":I
    const/4 v5, 0x0

    .line 1508
    .local v5, "oldVal":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KIOSKMODE"

    .line 1509
    const-string/jumbo v10, "systemBarEnabled"

    .line 1508
    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1514
    :goto_0
    if-eqz p2, :cond_3

    or-int/lit8 v5, v5, 0x3

    move v4, v5

    .line 1517
    .local v4, "newVal":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KIOSKMODE"

    .line 1518
    const-string/jumbo v10, "systemBarEnabled"

    .line 1517
    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 1519
    .local v6, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 1521
    .local v7, "userId":I
    if-eqz v6, :cond_1

    .line 1522
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    .line 1525
    :cond_1
    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    .line 1526
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1529
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v8, "KioskMode"

    const-string/jumbo v9, "hideSystemBar"

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHiddenAsUser(I)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1530
    const-string/jumbo v8, "KioskModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GearPolicy hideSystemBar : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1536
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_2
    return v6

    .line 1515
    .end local v4    # "newVal":I
    .end local v7    # "userId":I
    .local v6, "result":Z
    :cond_3
    and-int/lit8 v5, v5, -0x4

    move v4, v5

    .restart local v4    # "newVal":I
    goto :goto_1

    .line 1531
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v6, "result":Z
    .restart local v7    # "userId":I
    :catch_0
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1510
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v4    # "newVal":I
    .end local v7    # "userId":I
    .local v6, "result":Z
    :catch_1
    move-exception v3

    .local v3, "ignore":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    goto :goto_0
.end method

.method public isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2280
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2281
    const-string/jumbo v4, "KIOSKMODE"

    .line 2282
    const-string/jumbo v5, "kioskModeAirCommandAllowed"

    .line 2280
    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2284
    .local v0, "kioskPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2285
    .local v1, "permission":Z
    if-nez v1, :cond_0

    .line 2286
    return v1

    .line 2290
    .end local v1    # "permission":Z
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2378
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2379
    const-string/jumbo v4, "KIOSKMODE"

    .line 2380
    const-string/jumbo v5, "kioskModeAirViewAllowed"

    .line 2378
    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2382
    .local v0, "kioskPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2383
    .local v1, "permission":Z
    if-nez v1, :cond_0

    .line 2384
    return v1

    .line 2388
    .end local v1    # "permission":Z
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2679
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2659
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2671
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEnableKioskModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "ret":Z
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 546
    .local v1, "user_id":I
    if-nez v1, :cond_0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-nez v2, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isComContainerEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 551
    :cond_0
    return v0
.end method

.method public isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hwKeyId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 1804
    const/4 v0, 0x1

    .line 1806
    .local v0, "allowed":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 1808
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-get0(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-get0(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1809
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-get0(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1810
    const/4 v0, 0x0

    .line 1814
    :cond_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_3

    .line 1818
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1819
    const-string/jumbo v2, "KioskModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHardwareKeyAllowed() key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is blocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_2
    return v0

    .line 1816
    :cond_3
    const v2, 0x10409b5

    .line 1815
    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0
.end method

.method public isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2675
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 508
    const/4 v6, 0x0

    .line 510
    .local v6, "ret":Z
    const/4 v9, 0x1

    :try_start_0
    new-array v0, v9, [Ljava/lang/String;

    .line 511
    const-string/jumbo v9, "kioskModeEnabled"

    const/4 v10, 0x0

    aput-object v9, v0, v10

    .line 514
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 515
    const-string/jumbo v10, "KIOSKMODE"

    .line 514
    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 517
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 532
    :cond_0
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "There\'s no matched data"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "ret":Z
    :cond_1
    :goto_0
    if-nez v6, :cond_2

    .line 539
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isComContainerEnabled()Z

    move-result v6

    .line 541
    :cond_2
    return v6

    .line 518
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6    # "ret":Z
    :cond_3
    const/4 v1, 0x0

    .line 519
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 521
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .local v4, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 522
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 523
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "kioskModeEnabled"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 524
    .local v2, "cvInteger":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    .line 525
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-ne v9, v7, :cond_5

    move v6, v7

    .line 526
    .local v6, "ret":Z
    :goto_1
    if-eqz v6, :cond_4

    goto :goto_0

    .end local v6    # "ret":Z
    :cond_5
    move v6, v8

    .line 525
    goto :goto_1

    .line 534
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvInteger":Ljava/lang/Integer;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "isKioskModeEnabledAsUser() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKioskModeEnabledAsUser(I)Z
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 567
    const/4 v6, 0x0

    .line 569
    .local v6, "ret":Z
    const/4 v9, 0x1

    :try_start_0
    new-array v0, v9, [Ljava/lang/String;

    .line 570
    const-string/jumbo v9, "kioskModeEnabled"

    const/4 v10, 0x0

    aput-object v9, v0, v10

    .line 573
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 574
    const-string/jumbo v10, "KIOSKMODE"

    .line 573
    invoke-virtual {v9, v10, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 576
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 592
    :cond_0
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "There\'s no matched data"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "ret":Z
    :cond_1
    :goto_0
    return v6

    .line 577
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6    # "ret":Z
    :cond_2
    const/4 v1, 0x0

    .line 579
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 581
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .local v4, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 582
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 583
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "kioskModeEnabled"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 584
    .local v2, "cvInteger":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 585
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-ne v9, v7, :cond_4

    move v6, v7

    .line 586
    .local v6, "ret":Z
    :goto_1
    if-eqz v6, :cond_3

    goto :goto_0

    .end local v6    # "ret":Z
    :cond_4
    move v6, v8

    .line 585
    goto :goto_1

    .line 594
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvInteger":Ljava/lang/Integer;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 595
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "KioskModeService"

    const-string/jumbo v8, "isKioskModeEnabledAsUser() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2193
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 2195
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 2197
    .local v0, "allowed":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    .line 2202
    :cond_0
    :goto_0
    return v0

    .line 2199
    :cond_1
    const v2, 0x10409c7

    .line 2198
    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0
.end method

.method public isMultiWindowModeAllowedAsUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2206
    const/4 v2, 0x1

    .line 2208
    .local v2, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2209
    const-string/jumbo v5, "KIOSKMODE"

    const-string/jumbo v6, "multiWindowEnabled"

    .line 2208
    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2210
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adminValue$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2211
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2212
    const/4 v2, 0x0

    goto :goto_0

    .line 2216
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    return v2
.end method

.method public isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2663
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2667
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2047
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isSystemBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1891
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowedAsUser(ZI)Z
    .locals 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1897
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p2

    .line 1898
    const/4 v2, 0x1

    .line 1899
    .local v2, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1900
    const-string/jumbo v5, "KIOSKMODE"

    const-string/jumbo v6, "taskManagerEnabled"

    .line 1899
    invoke-virtual {v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1901
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adminValue$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1902
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1903
    const/4 v2, 0x0

    goto :goto_0

    .line 1906
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v2, :cond_3

    .line 1911
    :cond_2
    :goto_1
    return v2

    .line 1908
    :cond_3
    const v4, 0x10409b7

    .line 1907
    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 2714
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 407
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 408
    const/4 v2, 0x0

    .line 407
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 409
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 410
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateSystemUIMonitor(I)V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 406
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 336
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    .line 337
    const/4 v11, 0x0

    .line 336
    invoke-direct {v10, p1, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 340
    .local v8, "userId":I
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 343
    .local v4, "deletedInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v10, 0x0

    invoke-virtual {p0, v4, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 344
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 347
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 348
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 352
    :cond_1
    if-nez v8, :cond_6

    .line 354
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    .line 355
    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v7, v11

    .line 356
    const-string/jumbo v10, "edgeScreenBlockedFunctions"

    const/4 v11, 0x1

    aput-object v10, v7, v11

    .line 359
    .local v7, "returnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 360
    const-string/jumbo v11, "KIOSKMODE"

    const/4 v12, 0x0

    .line 359
    invoke-virtual {v10, v11, v7, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 363
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 364
    .local v0, "adminBlocksInfoStream":Z
    const/4 v5, 0x0

    .line 366
    .local v5, "infoStreamBlockedAfterRemoval":Z
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cv$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 367
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "edgeScreenBlockedFunctions"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 368
    .local v3, "cvInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/lit8 v10, v10, 0x4

    if-lez v10, :cond_3

    const/4 v6, 0x1

    .line 371
    .local v6, "informationStreamBlocked":Z
    :goto_1
    int-to-long v10, p1

    const-string/jumbo v12, "adminUid"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    .line 374
    if-eqz v6, :cond_2

    .line 375
    const/4 v5, 0x1

    goto :goto_0

    .line 369
    .end local v6    # "informationStreamBlocked":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "informationStreamBlocked":Z
    goto :goto_1

    .line 380
    :cond_4
    if-eqz v6, :cond_2

    .line 381
    const/4 v0, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvInteger":Ljava/lang/Integer;
    .end local v6    # "informationStreamBlocked":Z
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v5, :cond_8

    .line 396
    .end local v0    # "adminBlocksInfoStream":Z
    .end local v2    # "cv$iterator":Ljava/util/Iterator;
    .end local v5    # "infoStreamBlockedAfterRemoval":Z
    .end local v7    # "returnColumns":[Ljava/lang/String;
    .end local v9    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_6
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v10

    if-ne p1, v10, :cond_7

    .line 397
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 335
    :cond_7
    return-void

    .line 391
    .restart local v0    # "adminBlocksInfoStream":Z
    .restart local v2    # "cv$iterator":Ljava/util/Iterator;
    .restart local v5    # "infoStreamBlockedAfterRemoval":Z
    .restart local v7    # "returnColumns":[Ljava/lang/String;
    .restart local v9    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_8
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    goto :goto_2
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 296
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 297
    .local v5, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 301
    .local v4, "userId":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 302
    .local v1, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 303
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "kioskPackage":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "currentHomePackage":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 314
    :cond_1
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 315
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 319
    .end local v0    # "currentHomePackage":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    .end local v3    # "kioskPackage":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerSwitchingUserReceiver()V

    .line 321
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    .line 322
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 291
    return-void
.end method

.method public wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1595
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method
