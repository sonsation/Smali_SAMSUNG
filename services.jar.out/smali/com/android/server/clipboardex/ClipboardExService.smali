.class public Lcom/android/server/clipboardex/ClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboardex/ClipboardExService$1;,
        Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;,
        Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;,
        Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;,
        Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;,
        Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardExService"

.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_COPY_URI:I

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_START_SERVICE:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mCallingId:I

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

.field private mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private final mClipboardEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardPoliciesPerPersona:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/sec/clipboard/data/ClipboardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mIsLogging:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mUm:Landroid/os/IUserManager;

.field private mWorkingUiInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/clipboardex/ClipboardExService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/clipboardex/ClipboardExService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/clipboardex/ClipboardExService;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKioskEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->doSyncForFota(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/clipboardex/ClipboardExService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/clipboardex/ClipboardExService;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->sendLoggingForCB(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/clipboardex/ClipboardExService;Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->updateDataListChange(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 519
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 107
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-direct {v2, p0, v4}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    .line 108
    const-string/jumbo v2, "2.0"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_VERSION:Ljava/lang/String;

    .line 109
    iput-boolean v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    .line 112
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v2, p0, v4}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsLogging:Z

    .line 115
    iput v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 119
    iput-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 120
    iput-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 121
    iput-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 124
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    .line 1382
    iput v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_SHOW_DIALOG:I

    .line 1383
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_START_SERVICE:I

    .line 1384
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 1385
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 1386
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_DELETE_TEMP_FILE:I

    .line 1387
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_COPY_URI:I

    .line 1463
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$1;

    invoke-direct {v2, p0}, Lcom/android/server/clipboardex/ClipboardExService$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    .line 520
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    .line 521
    iput-boolean v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsDialogShowing:Z

    .line 522
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {v2, v8, p1, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 523
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {v2, v8, p1, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 525
    const-string/jumbo v2, "appops"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mAppOps:Landroid/app/AppOpsManager;

    .line 526
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IUserManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 527
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 528
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 529
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardPoliciesPerPersona:Ljava/util/HashMap;

    .line 531
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 532
    .local v0, "knoxFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "enterprise.container.remove.progress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v2, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string/jumbo v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string/jumbo v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$2;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$2;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 570
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 571
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 572
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 573
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 519
    return-void
.end method

.method private ListChange(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 1738
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1739
    const/4 v4, 0x0

    .line 1740
    .local v4, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1741
    .local v3, "size":I
    const/4 v1, 0x0

    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1742
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1744
    .local v4, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :try_start_0
    invoke-interface {v4, p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1750
    :catch_0
    move-exception v2

    .line 1751
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1745
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1746
    .local v0, "de":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 1747
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1748
    add-int/lit8 v1, v1, -0x1

    .line 1749
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1737
    .end local v0    # "de":Landroid/os/DeadObjectException;
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_0
    return-void
.end method

.method private addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 11
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v10, 0x0

    .line 998
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "addData.."

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    .line 1001
    .local v6, "userId":I
    const/16 v7, 0x64

    if-lt v6, v7, :cond_0

    const/16 v7, 0xc2

    if-le v6, v7, :cond_1

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1005
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/clipboardex/ClipboardExService;->checkEquals(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1006
    const-string/jumbo v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The data are the same.:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    packed-switch p1, :pswitch_data_0

    .line 1025
    :goto_0
    :pswitch_0
    const/4 v7, 0x2

    return v7

    :pswitch_1
    move-object v5, p2

    .line 1010
    check-cast v5, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 1011
    .local v5, "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1012
    .local v4, "imagePath":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1013
    .local v1, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1014
    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1016
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "extraFilePath":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    :pswitch_2
    move-object v3, p2

    .line 1019
    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 1020
    .local v3, "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v2

    .line 1021
    .local v2, "firstImagePath":Ljava/lang/String;
    invoke-direct {p0, v2, v10}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_3
    invoke-virtual {p2, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1030
    .local v0, "addItem":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v0, :cond_4

    .line 1031
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/clipboardex/ClipboardExService$4;

    invoke-direct {v8, p0, v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$4;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/samsung/android/content/clipboard/data/SemClipData;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1112
    const/4 v7, 0x0

    return v7

    .line 1114
    :cond_4
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "data is null"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v7, 0x1

    return v7

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private canReadAcrossProfiles()Z
    .locals 7

    .prologue
    .line 1681
    const/4 v1, 0x1

    .line 1683
    .local v1, "canCrossCopyPaste":Z
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v3

    .line 1686
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v4, v3}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1687
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 1688
    :goto_0
    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canReadAcrossProfiles : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :cond_0
    :goto_1
    return v1

    .line 1687
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "userId":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1689
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    .line 1690
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private checkEquals(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 690
    const/4 v1, 0x0

    .line 692
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/clipboardex/ClipboardExService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 693
    .local v0, "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 694
    :cond_0
    return v1

    .line 697
    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 698
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 699
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 700
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 701
    const-string/jumbo v2, "ClipboardExService"

    const-string/jumbo v3, "completed reAddForKnox method"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_2
    return v1
.end method

.method private clearDataList()V
    .locals 5

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    .line 1638
    .local v1, "userId":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc2

    if-le v1, v2, :cond_1

    .line 1639
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1642
    :cond_1
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v2, :cond_2

    .line 1643
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .line 1644
    .local v0, "bRes":Z
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    .end local v0    # "bRes":Z
    :goto_0
    return-void

    .line 1646
    :cond_2
    const-string/jumbo v2, "ClipboardExService"

    const-string/jumbo v3, "clearDataList"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFileToOwner(ILjava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "persId"    # I
    .param p2, "personaPath"    # Ljava/lang/String;

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "tempFile":Ljava/io/File;
    const-string/jumbo v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "copyFileToUserZero : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v3, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 452
    :cond_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v4, "/data/clipboard/deletedClips.xml"

    const/4 v5, 0x0

    invoke-virtual {v3, p1, p2, v5, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 453
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/clipboard/deletedClips.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "tempFile":Ljava/io/File;
    move-object v1, v2

    .line 457
    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "tempFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 454
    .restart local v1    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside file copy exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    .line 1120
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1122
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1123
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1124
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string/jumbo v2, "extra_path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1127
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1128
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1119
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private doSyncForFota(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/shared/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "sharedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, "sharedFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 427
    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doSyncForFota : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "deletedClipsPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "delClipsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    invoke-direct {p0, p1, v1}, Lcom/android/server/clipboardex/ClipboardExService;->copyFileToOwner(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 432
    .local v5, "tempFile":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 433
    invoke-direct {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->parseXML(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 434
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->deleteDir(Ljava/io/File;)V

    .line 435
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateFotaClips(ILjava/util/ArrayList;)V

    .line 436
    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFotaClips : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/clipboardex/ClipboardExService;->deleteDir(Ljava/io/File;)V

    .line 422
    .end local v0    # "delClipsFile":Ljava/io/File;
    .end local v1    # "deletedClipsPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 438
    .restart local v0    # "delClipsFile":Ljava/io/File;
    .restart local v1    # "deletedClipsPath":Ljava/lang/String;
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_2
    const-string/jumbo v6, "ClipboardExService"

    const-string/jumbo v7, "tempfile is null"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1529
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1530
    .local v1, "size":I
    const-string/jumbo v2, "ClipboardExService"

    const-string/jumbo v3, "====================================================="

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1532
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1534
    :cond_0
    const-string/jumbo v2, "ClipboardExService"

    const-string/jumbo v3, "====================================================="

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void
.end method

.method private getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 10
    .param p1, "isKnoxMode"    # Z

    .prologue
    const/4 v8, 0x0

    .line 707
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 708
    .local v1, "dataSize":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v4

    .line 709
    .local v4, "sharedSize":I
    :goto_1
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLatestItemInternal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez p1, :cond_4

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v5, :cond_4

    .line 712
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 727
    .end local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 729
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLatestItemInternal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1
    return-object v0

    .line 707
    .end local v1    # "dataSize":I
    .end local v4    # "sharedSize":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "dataSize":I
    goto :goto_0

    .line 708
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "sharedSize":I
    goto :goto_1

    .line 714
    .restart local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_4
    if-lez v1, :cond_6

    if-lez v4, :cond_6

    .line 715
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 716
    .local v3, "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 717
    .local v2, "myData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    move-object v0, v3

    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_2

    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_5
    move-object v0, v2

    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_2

    .line 719
    .end local v2    # "myData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v3    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_6
    if-lez v1, :cond_7

    .line 720
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_2

    .line 721
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_7
    if-lez v4, :cond_0

    .line 722
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v6, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 723
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_2
.end method

.method private getPersonaManager()Z
    .locals 2

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_1

    .line 1730
    const/4 v0, 0x1

    return v0

    .line 1733
    :cond_1
    const-string/jumbo v0, "ClipboardExService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v0, 0x0

    return v0
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 809
    const/4 v3, 0x0

    .line 810
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 811
    .local v1, "category":I
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 812
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 817
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 818
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 819
    .local v4, "seinfo":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 821
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/16 v6, 0x80

    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 826
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 827
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appInfo is null for packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v4    # "seinfo":Ljava/lang/String;
    :goto_1
    return v1

    .line 814
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    const-string/jumbo v5, "ClipboardExService"

    const-string/jumbo v6, "Cannot get context for package manager"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return v1

    .line 822
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    .restart local v4    # "seinfo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 829
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 830
    .local v4, "seinfo":Ljava/lang/String;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 831
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSEAMSCategory, before checking range, category: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", seinfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v5, 0x66

    if-eq v1, v5, :cond_4

    const/16 v5, 0xc9

    if-ge v1, v5, :cond_4

    .line 833
    :goto_2
    const/4 v1, 0x0

    .line 835
    :cond_3
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSEAMSCategory, category: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", seinfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 832
    :cond_4
    const/16 v5, 0x1f4

    if-le v1, v5, :cond_3

    goto :goto_2
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 1515
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 1516
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    return-object v1

    .line 1518
    :cond_0
    const-string/jumbo v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1519
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1521
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_1

    .line 1522
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    return-object v1
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 137
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 138
    .local v1, "userId":I
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 140
    const-string/jumbo v2, "ClipboardExService"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return v1
.end method

.method private isAFWmode(I)Z
    .locals 14
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v12, -0x1

    .line 1941
    const/4 v6, 0x0

    .line 1942
    .local v6, "result":Z
    const-wide/16 v4, -0x1

    .line 1944
    .local v4, "origId":J
    if-eqz p1, :cond_2

    .line 1945
    :try_start_0
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    if-nez v8, :cond_0

    .line 1946
    const-string/jumbo v8, "user"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Landroid/os/IUserManager;

    iput-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 1948
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1949
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v8, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1950
    .local v7, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    .line 1951
    .local v3, "isManagedProfile":Z
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    .line 1952
    .local v2, "isKnoxWorkspace":Z
    const-string/jumbo v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isEnabled, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    if-eqz v3, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    const/4 v6, 0x0

    .line 1962
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    :goto_0
    cmp-long v8, v4, v12

    if-eqz v8, :cond_3

    .line 1963
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1966
    :cond_3
    :goto_1
    return v6

    .line 1953
    .restart local v2    # "isKnoxWorkspace":Z
    .restart local v3    # "isManagedProfile":Z
    .restart local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1958
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 1959
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() Exception!"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1962
    cmp-long v8, v4, v12

    if-eqz v8, :cond_3

    .line 1963
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1955
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1956
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() RemoteException!"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1962
    cmp-long v8, v4, v12

    if-eqz v8, :cond_3

    .line 1963
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1961
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    .line 1962
    cmp-long v9, v4, v12

    if-eqz v9, :cond_5

    .line 1963
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1961
    :cond_5
    throw v8
.end method

.method private isEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1673
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->isAFWmode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    const/4 v0, 0x0

    return v0

    .line 1677
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isKioskEnabled()Z
    .locals 4

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 508
    .local v0, "bRet":Z
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKioskEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 6

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 209
    .local v0, "ident":J
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v2

    .line 211
    .local v2, "userId":I
    const-string/jumbo v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxKeyguardShowing getPersonaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    const/4 v3, 0x1

    return v3

    .line 220
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isSEContainerClipboardEnabled(I)I
    .locals 10
    .param p1, "category"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 841
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 842
    return v7

    .line 844
    :cond_0
    const-string/jumbo v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 845
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 846
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSEContainerClipboardMode"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 847
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 849
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 850
    const-string/jumbo v0, "getSEContainerClipboardMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 854
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 851
    return v9

    .line 854
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 860
    const-string/jumbo v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v8

    .line 853
    :catchall_0
    move-exception v0

    .line 854
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 853
    throw v0

    .line 857
    :cond_2
    const-string/jumbo v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return v7
.end method

.method private isServiceCallFromOther()Z
    .locals 8

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 189
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 191
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 194
    .local v4, "ident":J
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getCurrentListOwnerUid()I

    move-result v2

    .line 196
    .local v2, "currUser":I
    const-string/jumbo v3, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " isServiceCallFromOther getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    if-eq v1, v2, :cond_0

    .line 200
    const/4 v3, 0x1

    return v3

    .line 202
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private loadSEContainer()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 773
    const/4 v0, 0x0

    .line 775
    .local v0, "callerName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 779
    .end local v0    # "callerName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 780
    .local v1, "cat":I
    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v1

    .line 782
    if-gez v1, :cond_1

    .line 783
    const-string/jumbo v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainer, error getting SEAMS category value, cat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    :goto_1
    return-void

    .line 776
    .end local v1    # "cat":I
    .restart local v0    # "callerName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 777
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in getPackageNameFromAppProcesses : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    .end local v0    # "callerName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cat":I
    :cond_1
    if-lez v1, :cond_3

    .line 785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 786
    .local v4, "ident":J
    invoke-direct {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isSEContainerClipboardEnabled(I)I

    move-result v3

    .line 787
    .local v3, "status":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 789
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 791
    :cond_2
    const-string/jumbo v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainter, cat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", doesn\'t have clipboard enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 795
    .end local v3    # "status":I
    .end local v4    # "ident":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    .line 797
    .local v6, "userId":I
    if-eqz v6, :cond_4

    const/16 v7, 0x64

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 802
    :cond_4
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 798
    :cond_5
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "loadSEContainer, before loadSECOntainerDB, isManagedProfile should have been false, cat :  userId + 1000"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    add-int/lit16 v8, v6, 0x3e8

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto/16 :goto_1
.end method

.method private notifyFilterUpdated(I)V
    .locals 10
    .param p1, "filter"    # I

    .prologue
    .line 1779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1780
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 1782
    .local v5, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 1784
    :try_start_0
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;

    .line 1785
    .local v4, "li":Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v4, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->mUid:I

    iget-object v8, v4, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x1d

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1786
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v6, p1}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onUpdateFilter(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    .end local v4    # "li":Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1794
    :cond_1
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1795
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1778
    return-void

    .line 1793
    :catchall_0
    move-exception v6

    .line 1794
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1795
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    throw v6

    .line 1788
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 1758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1759
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 1761
    .local v5, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 1763
    :try_start_0
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;

    .line 1764
    .local v4, "li":Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v4, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->mUid:I

    iget-object v8, v4, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x1d

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1765
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v6, p1, p2}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    .end local v4    # "li":Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1773
    :cond_1
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1774
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    return-void

    .line 1772
    :catchall_0
    move-exception v6

    .line 1773
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1774
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1772
    throw v6

    .line 1767
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private parseXML(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "delClip"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 464
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 465
    .local v2, "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 466
    .local v6, "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 467
    .local v2, "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 468
    .local v6, "myparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 471
    .end local v3    # "fis":Ljava/io/FileInputStream;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 472
    .local v1, "event":I
    :goto_0
    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    .line 473
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 486
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 478
    :pswitch_1
    const-string/jumbo v9, "boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 479
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const-string/jumbo v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseXML : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 488
    .end local v1    # "event":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 489
    .end local v2    # "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    :try_start_2
    const-string/jumbo v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for parsexml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    if-eqz v3, :cond_1

    .line 493
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v5

    .line 491
    .restart local v1    # "event":I
    .restart local v2    # "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    if-eqz v4, :cond_3

    .line 493
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 494
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 495
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 494
    .end local v1    # "event":I
    .end local v2    # "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 495
    const-string/jumbo v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 491
    :goto_5
    if-eqz v3, :cond_4

    .line 493
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 490
    :cond_4
    :goto_6
    throw v9

    .line 494
    :catch_3
    move-exception v0

    .line 495
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ClipboardExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "inside exception for Close connection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 488
    .end local v2    # "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "myparser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerKnoxModeChangeObserver()V
    .locals 6

    .prologue
    .line 577
    const-string/jumbo v3, "ClipboardExService"

    const-string/jumbo v4, "ClipboardExService.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_0
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 582
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_0

    .line 583
    const-string/jumbo v3, "ClipboardExService"

    const-string/jumbo v4, "ClipboardExService.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void

    .line 587
    :cond_0
    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$3;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$3;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    move-object v6, p1

    .line 1143
    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 1145
    .local v6, "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :try_start_0
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-interface {v10, v11, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v10, "ClipboardExService"

    const-string/jumbo v11, "String was copied.(Format.TEXT)"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .end local v6    # "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_0
    :goto_0
    return-void

    .line 1147
    .restart local v6    # "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :catch_0
    move-exception v2

    .line 1148
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1150
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 1151
    new-instance v6, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v6}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    .line 1152
    .restart local v6    # "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    const/4 v10, 0x1

    invoke-virtual {p1, v10, v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    .line 1154
    :try_start_1
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-interface {v10, v11, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v10, "ClipboardExService"

    const-string/jumbo v11, "String was copied.(Format.HTML)"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1156
    :catch_1
    move-exception v2

    .line 1157
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1159
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "txt":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_3

    move-object v8, p1

    .line 1160
    check-cast v8, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 1162
    .local v8, "uri":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :try_start_2
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-interface {v10, v11, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v10, "ClipboardExService"

    const-string/jumbo v11, "String was copied.(Format.URI)"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1164
    :catch_2
    move-exception v2

    .line 1165
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1167
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "uri":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    move-object v4, p1

    .line 1168
    check-cast v4, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    .line 1170
    .local v4, "intent":Lcom/samsung/android/content/clipboard/data/SemIntentClipData;
    :try_start_3
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-interface {v10, v11, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1171
    const-string/jumbo v10, "ClipboardExService"

    const-string/jumbo v11, "String was copied.(Format.INTENT)"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1172
    :catch_3
    move-exception v2

    .line 1173
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1175
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Lcom/samsung/android/content/clipboard/data/SemIntentClipData;
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_0

    move-object v5, p1

    .line 1176
    check-cast v5, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .line 1177
    .local v5, "multiUri":Lcom/samsung/android/content/clipboard/data/SemUriListClipData;
    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1178
    .local v9, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1179
    .local v0, "N":I
    if-eqz v9, :cond_5

    .line 1180
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1182
    :cond_5
    const/4 v1, 0x0

    .line 1183
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v3, 0x0

    .end local v1    # "clipData":Landroid/content/ClipData;
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 1184
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1185
    .local v7, "uri":Landroid/net/Uri;
    if-nez v1, :cond_6

    .line 1186
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 1183
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1188
    :cond_6
    new-instance v10, Landroid/content/ClipData$Item;

    invoke-direct {v10, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 1192
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_7
    if-eqz v1, :cond_0

    .line 1193
    :try_start_4
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v10

    invoke-interface {v10, v1, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v10, "ClipboardExService"

    const-string/jumbo v11, "String was copied.(Format.URI_LIST)"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1196
    :catch_4
    move-exception v2

    .line 1197
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private sendLoggingForCB(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1970
    iget-boolean v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsLogging:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1971
    const/4 v1, 0x0

    .line 1972
    .local v1, "format":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1989
    const-string/jumbo v1, "TEXT"

    .line 1993
    .local v1, "format":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1994
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "app_id"

    const-string/jumbo v4, "com.android.samsung.clipboarduiservice"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string/jumbo v3, "feature"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string/jumbo v3, "extra"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2000
    const-string/jumbo v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    const-string/jumbo v3, "ClipboardExService"

    invoke-static {v3, p2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1969
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1974
    .local v1, "format":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v1, "HTML"

    .local v1, "format":Ljava/lang/String;
    goto :goto_0

    .line 1977
    .local v1, "format":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v1, "BITMAP"

    .local v1, "format":Ljava/lang/String;
    goto :goto_0

    .line 1980
    .local v1, "format":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "URI"

    .local v1, "format":Ljava/lang/String;
    goto :goto_0

    .line 1983
    .local v1, "format":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v1, "INTENT"

    .local v1, "format":Ljava/lang/String;
    goto :goto_0

    .line 1986
    .local v1, "format":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v1, "URI_LIST"

    .local v1, "format":Ljava/lang/String;
    goto :goto_0

    .line 2005
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "ClipboardExService"

    const-string/jumbo v4, "no logging!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1972
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateDataListChange(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v0, 0x1

    .line 1134
    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    .line 1135
    invoke-direct {p0, v0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1133
    return-void
.end method


# virtual methods
.method public addClip(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "userID"    # I

    .prologue
    .line 989
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 990
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/server/clipboardex/ClipboardExService;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    .line 988
    :goto_0
    return-void

    .line 993
    :cond_0
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "addClip() - data is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1259
    monitor-enter p0

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;-><init>(Lcom/android/server/clipboardex/ClipboardExService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1258
    return-void

    .line 1259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 503
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 502
    return-void
.end method

.method public dismissDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 1446
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1445
    return-void
.end method

.method public getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1881
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1882
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v0, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1886
    :cond_0
    return-object v0
.end method

.method public getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 13
    .param p1, "format"    # I

    .prologue
    const/4 v12, 0x0

    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/clipboardex/ClipboardExService;->isPackageAllowed(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 625
    const/4 v2, 0x0

    .line 626
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v4, 0x0

    .line 627
    .local v4, "iClipboardDataCount":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v5

    .line 629
    .local v5, "isKnoxTwoMode":Z
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v7, :cond_6

    .line 630
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 632
    .local v1, "currentClipboardDataCount":I
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v7, :cond_1

    .line 633
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v7

    add-int v4, v1, v7

    .line 638
    :goto_0
    if-lez v4, :cond_6

    .line 639
    const/4 v0, 0x0

    .line 641
    .local v0, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 642
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 644
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 645
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 646
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    monitor-exit p0

    return-object v7

    .line 621
    .end local v0    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v1    # "currentClipboardDataCount":I
    .end local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v3    # "i":I
    .end local v4    # "iClipboardDataCount":I
    .end local v5    # "isKnoxTwoMode":Z
    :cond_0
    :try_start_1
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "getClipData() - Clipboard is not allowed to use."

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 622
    return-object v12

    .line 635
    .restart local v1    # "currentClipboardDataCount":I
    .restart local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v4    # "iClipboardDataCount":I
    .restart local v5    # "isKnoxTwoMode":Z
    :cond_1
    move v4, v1

    goto :goto_0

    .line 644
    .restart local v0    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    .line 649
    return-object v12

    .line 652
    .end local v3    # "i":I
    :cond_4
    if-eqz v5, :cond_5

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isServiceCallFromOther()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 653
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "ClipboardExService GetClipboardData() abnormal called!!!"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 654
    return-object v12

    .line 657
    :cond_5
    if-eqz v5, :cond_7

    .line 658
    :try_start_3
    invoke-direct {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 659
    .local v0, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "cbData in Knox"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_2
    if-eqz v0, :cond_6

    .line 676
    const-string/jumbo v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getItem id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", input id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v7, -0x1

    if-eq p1, v7, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v7

    if-eq v7, p1, :cond_b

    .line 678
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .end local v0    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v1    # "currentClipboardDataCount":I
    .end local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_6
    :goto_3
    monitor-exit p0

    .line 685
    return-object v2

    .line 660
    .local v0, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v1    # "currentClipboardDataCount":I
    .restart local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_7
    if-lez v1, :cond_a

    .line 662
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    .line 663
    .local v6, "userId":I
    const/16 v7, 0x64

    if-lt v6, v7, :cond_8

    const/16 v7, 0xc2

    if-le v6, v7, :cond_9

    .line 664
    :cond_8
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 667
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->getLatestItemInternal(Z)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 668
    .local v0, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "owner copy and paste cdData"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 619
    .end local v0    # "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v1    # "currentClipboardDataCount":I
    .end local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v4    # "iClipboardDataCount":I
    .end local v5    # "isKnoxTwoMode":Z
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 670
    .local v0, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v1    # "currentClipboardDataCount":I
    .restart local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v4    # "iClipboardDataCount":I
    .restart local v5    # "isKnoxTwoMode":Z
    :cond_a
    :try_start_5
    const-string/jumbo v7, "ClipboardExService"

    const-string/jumbo v8, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 671
    return-object v12

    .line 680
    .local v0, "cbData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_b
    move-object v2, v0

    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_3
.end method

.method public getClipedStrings(II)Ljava/util/List;
    .locals 18
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1539
    monitor-enter p0

    .line 1540
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    .local v8, "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1544
    .local v2, "clipText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/clipboardex/ClipboardExService;->isServiceCallFromOther()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1545
    const-string/jumbo v13, "ClipboardExService"

    const-string/jumbo v14, "ClipboardExService getClipedStrings() abnormal called!!!"

    invoke-static {v13, v14}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1546
    return-object v8

    .line 1550
    :cond_0
    const/4 v10, 0x0

    .line 1551
    .local v10, "sharedId":I
    const/4 v4, 0x0

    .line 1552
    .local v4, "count":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v12

    .line 1553
    .local v12, "userId":I
    const-string/jumbo v13, "ClipboardExService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getClipedStrings - userId : ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string/jumbo v13, "ClipboardExService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getClipedStrings - isClipboardShareAllowed : ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1556
    invoke-direct/range {p0 .. p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1557
    const/16 v10, 0x14

    .line 1560
    :cond_1
    const/4 v6, 0x0

    .end local v2    # "clipText":Ljava/lang/String;
    .local v6, "currentId":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v13

    if-lt v6, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v13

    if-ge v10, v13, :cond_8

    :cond_2
    const/16 v13, 0x14

    if-ge v4, v13, :cond_8

    .line 1561
    const/4 v3, 0x0

    .line 1562
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v5, 0x0

    .line 1563
    .local v5, "currentData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v9, 0x0

    .line 1565
    .local v9, "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    .line 1567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 1568
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v6, v6, 0x1

    .line 1605
    .end local v5    # "currentData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v9    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_1
    if-nez v3, :cond_e

    .line 1560
    .end local v3    # "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1570
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v5    # "currentData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v9    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 1571
    goto :goto_2

    .line 1573
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v13

    if-ge v10, v13, :cond_6

    .line 1575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v9

    .line 1577
    .end local v9    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v13

    if-ge v6, v13, :cond_7

    .line 1578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1581
    .end local v5    # "currentData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_7
    if-nez v5, :cond_9

    if-nez v9, :cond_9

    .end local v3    # "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_8
    :goto_3
    monitor-exit p0

    .line 1632
    return-object v8

    .line 1583
    .restart local v3    # "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_9
    if-nez v5, :cond_a

    .line 1584
    move-object v3, v9

    .line 1585
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1586
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_a
    if-nez v9, :cond_b

    .line 1587
    move-object v3, v5

    .line 1588
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1590
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_b
    :try_start_2
    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-lez v13, :cond_c

    .line 1591
    const-string/jumbo v13, "ClipboardExService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getClipedStrings : [getCurrentData], currentId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object v3, v5

    .line 1593
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1595
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_c
    const-string/jumbo v13, "ClipboardExService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getClipedStrings : [getSharedData], sharedId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    move-object v3, v9

    .line 1597
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1601
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v5    # "currentData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v9    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v13, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 1602
    .local v3, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1609
    .end local v5    # "currentData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v9    # "sharedData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_e
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 1610
    move-object v0, v3

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    move-object v11, v0

    .line 1611
    .local v11, "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_f

    .line 1612
    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1613
    .local v2, "clipText":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p2

    if-eq v13, v0, :cond_8

    .line 1628
    .end local v2    # "clipText":Ljava/lang/String;
    .end local v11    # "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_3

    goto/16 :goto_3

    .line 1618
    :cond_10
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_f

    .line 1619
    move-object v0, v3

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    move-object v7, v0

    .line 1620
    .local v7, "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_f

    .line 1621
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v2

    .line 1622
    .restart local v2    # "clipText":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_f

    goto/16 :goto_3

    .line 1539
    .end local v2    # "clipText":Ljava/lang/String;
    .end local v3    # "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v4    # "count":I
    .end local v6    # "currentId":I
    .end local v7    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .end local v8    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "sharedId":I
    .end local v12    # "userId":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method public getClips()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1844
    monitor-enter p0

    .line 1845
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->isPackageAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getCount()I

    move-result v5

    .line 1853
    .local v5, "totalItemCount":I
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1855
    .local v0, "currentUserItemCount":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1856
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1857
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1858
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1859
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1848
    .end local v0    # "currentUserItemCount":I
    .end local v1    # "i":I
    .end local v5    # "totalItemCount":I
    :cond_1
    const-string/jumbo v6, "ClipboardExService"

    const-string/jumbo v7, "getClipData() - Clipboard is not allowed to use."

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1849
    return-object v3

    .line 1863
    .restart local v0    # "currentUserItemCount":I
    .restart local v5    # "totalItemCount":I
    :cond_2
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 1864
    if-ge v2, v0, :cond_3

    .line 1865
    :try_start_1
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1867
    :cond_3
    sub-int v4, v2, v0

    .line 1868
    .local v4, "ownerIndex":I
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1844
    .end local v0    # "currentUserItemCount":I
    .end local v2    # "index":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    .end local v4    # "ownerIndex":I
    .end local v5    # "totalItemCount":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1873
    .restart local v0    # "currentUserItemCount":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    .restart local v5    # "totalItemCount":I
    :cond_4
    :try_start_2
    new-instance v6, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1875
    return-object v3
.end method

.method public getCount()I
    .locals 10

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    .line 745
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 747
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->isPackageAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 752
    invoke-virtual {p0, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 753
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 754
    const/4 v3, 0x0

    .line 755
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 756
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 757
    add-int/lit8 v3, v3, 0x1

    .line 755
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    const-string/jumbo v5, "ClipboardExService"

    const-string/jumbo v6, "getCount() - Clipboard is not allowed to use."

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v5, 0x0

    return v5

    .line 760
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_2
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return v3

    .line 764
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 765
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    .line 766
    .local v2, "sharedSize":I
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    add-int v5, v0, v2

    return v5

    .line 769
    .end local v2    # "sharedSize":I
    :cond_4
    return v0
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public isClipboardAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1699
    const/4 v0, 0x0

    return v0

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isClipboardShareAllowed(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1716
    const/4 v1, 0x1

    return v1

    .line 1719
    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    move-result v0

    .line 1720
    .local v0, "isAllowed":Z
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method isKnoxTwoEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 160
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 161
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 164
    .local v2, "ident":J
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 165
    .local v0, "currUser":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxTwoEnabled getPersonaId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "Current user is a USER, hence return false"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v7

    .line 173
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "Current user is BBC, hence return false"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v7

    .line 178
    :cond_1
    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "Current user is a persona, hence return true"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v4, 0x1

    return v4

    .line 183
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_2
    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v7
.end method

.method public isPackageAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1708
    const/4 v0, 0x0

    return v0

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isPackageAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1418
    iget-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsDialogShowing:Z

    return v0
.end method

.method public loadSEClipboard()V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 737
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc2

    if-le v0, v1, :cond_1

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 735
    :cond_1
    return-void
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1651
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not enabled! multiUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return-void

    .line 1655
    :cond_0
    monitor-enter p0

    .line 1656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getParentId(I)I

    move-result v0

    .line 1659
    .local v0, "parentId":I
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "multiUserMode parentId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 1663
    .end local v0    # "parentId":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1650
    return-void

    .line 1655
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public pasteClip(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1820
    monitor-enter p0

    .line 1821
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v1, :cond_0

    .line 1822
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "ClipboardDataPasteEvent is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1823
    return v4

    .line 1826
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1827
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v0, :cond_1

    .line 1828
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1831
    :cond_1
    if-nez v0, :cond_2

    .line 1832
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find item whose ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1833
    return v4

    .line 1835
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1836
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 1820
    .end local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 5
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1212
    monitor-enter p0

    .line 1213
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1215
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1220
    :goto_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, "isExist":Z
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uiInterface$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1223
    .local v1, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    const/4 v0, 0x1

    .line 1228
    .end local v1    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_1
    if-nez v0, :cond_3

    .line 1229
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "isExist":Z
    .end local v2    # "uiInterface$iterator":Ljava/util/Iterator;
    :goto_1
    monitor-exit p0

    .line 1211
    return-void

    .line 1218
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1212
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1231
    .restart local v0    # "isExist":Z
    .restart local v2    # "uiInterface$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    const-string/jumbo v3, "ClipboardExService"

    const-string/jumbo v4, "exist uiInterface!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1234
    .end local v0    # "isExist":Z
    .end local v2    # "uiInterface$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v3, "ClipboardExService"

    const-string/jumbo v4, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public removeAll()Z
    .locals 3

    .prologue
    .line 1801
    monitor-enter p0

    .line 1802
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .line 1804
    .local v0, "bRes":Z
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1805
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1808
    :cond_0
    if-eqz v0, :cond_1

    .line 1809
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1810
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    .line 1813
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1814
    return v0

    .line 1801
    .end local v0    # "bRes":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeClip(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1891
    monitor-enter p0

    .line 1892
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1893
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v1

    .line 1894
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 1895
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeClipByID(Ljava/lang/String;)Z

    move-result v1

    .line 1898
    :cond_0
    if-eqz v1, :cond_1

    .line 1899
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/server/clipboardex/ClipboardExService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1900
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1903
    return v1

    .line 1891
    .end local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    .prologue
    .line 1266
    monitor-enter p0

    .line 1267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1265
    return-void

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I
    .locals 11
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingId"    # I

    .prologue
    .line 874
    const/4 v6, 0x1

    .line 875
    .local v6, "result":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 876
    const-string/jumbo v8, "ClipboardExService"

    const-string/jumbo v9, "not enabled! SetClipboardData()"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v6

    .line 880
    :cond_0
    if-nez p2, :cond_1

    .line 881
    const/4 v8, 0x3

    return v8

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/clipboardex/ClipboardExService;->isPackageAllowed(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 889
    const-string/jumbo v8, "ClipboardExService"

    const-string/jumbo v9, "==================================================================="

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iput p4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 893
    monitor-enter p0

    .line 894
    :try_start_0
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 895
    const-string/jumbo v8, "ClipboardExService"

    const-string/jumbo v9, "in synchronized"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 899
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 900
    .local v1, "callingUser":I
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 902
    :try_start_1
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, p3, v10, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :cond_3
    :goto_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v8

    if-nez v8, :cond_5

    .line 910
    invoke-direct {p0, p3}, Lcom/android/server/clipboardex/ClipboardExService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v2

    .line 911
    .local v2, "cat":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 912
    .local v4, "ident":J
    invoke-direct {p0, v2}, Lcom/android/server/clipboardex/ClipboardExService;->isSEContainerClipboardEnabled(I)I

    move-result v7

    .line 913
    .local v7, "status":I
    const-string/jumbo v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setClipboardData,callingPackage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "getSEAMSCategory result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 916
    invoke-direct {p0, p2, p3}, Lcom/android/server/clipboardex/ClipboardExService;->sendClipDataToOriginal(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 918
    :cond_4
    const/4 v6, 0x0

    .end local v2    # "cat":I
    .end local v4    # "ident":J
    .end local v7    # "status":I
    :cond_5
    monitor-exit p0

    .line 921
    const-string/jumbo v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "==================================================================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return v6

    .line 885
    .end local v0    # "callingUid":I
    .end local v1    # "callingUser":I
    :cond_6
    const-string/jumbo v8, "ClipboardExService"

    const-string/jumbo v9, "setClipData() - Clipboard is not allowed to use."

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v8, 0x4

    return v8

    .line 903
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingUser":I
    :catch_0
    move-exception v3

    .line 904
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string/jumbo v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "callingPackage :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", NameNotFoundException :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 893
    .end local v0    # "callingUid":I
    .end local v1    # "callingUser":I
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 2
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    const-string/jumbo v0, "ClipboardExService"

    const-string/jumbo v1, "not enabled! SetClipboardDataOriginalToEx()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x1

    return v0

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/clipboardex/ClipboardExService;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    move-result v0

    return v0
.end method

.method public setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingId"    # I

    .prologue
    .line 927
    const/4 v0, 0x1

    .line 928
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "not enabled! SetClipboardDataWithoutSendingOrginalClipboard()"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return v0

    .line 933
    :cond_0
    if-nez p2, :cond_1

    .line 934
    const/4 v1, 0x3

    return v1

    .line 937
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isPackageAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 942
    iput p4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 943
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "======== SetClipboardDataWithoutSendingOrginalClipboard =========="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    monitor-enter p0

    .line 945
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 947
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v0

    .line 938
    :cond_2
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "setClipDataToSem() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v1, 0x4

    return v1

    .line 944
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "isCallFromGED"    # Z
    .param p4, "callingId"    # I

    .prologue
    .line 963
    const/4 v0, 0x1

    .line 965
    .local v0, "ret":I
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->canReadAcrossProfiles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    :cond_0
    if-nez p2, :cond_2

    .line 971
    const/4 v1, 0x3

    return v1

    .line 966
    :cond_1
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "disallow cross profile copy & paste!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return v0

    .line 974
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isPackageAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iput p4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCallingId:I

    .line 982
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v0

    .line 983
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=================================================================== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return v0

    .line 975
    :cond_3
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "setData() - Clipboard is not allowed to use."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v1, 0x4

    return v1
.end method

.method public showDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1452
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1453
    const-string/jumbo v0, "ClipboardExService"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1451
    return-void
.end method

.method public showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1391
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "show ui clipboard dialog in service"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 1400
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc2

    if-le v0, v1, :cond_2

    .line 1401
    :cond_1
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1405
    :cond_2
    iput p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    .line 1406
    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1407
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1408
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1390
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 5
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1244
    monitor-enter p0

    .line 1245
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1246
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uiInterface$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1247
    .local v0, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1249
    return-void

    .line 1252
    .end local v0    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "uiInterface$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 1243
    return-void

    .line 1244
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v4, -0x1

    .line 1909
    const/4 v1, -0x1

    .line 1910
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1911
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1912
    move v1, v0

    .line 1910
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1916
    :cond_1
    if-ne v1, v4, :cond_3

    .line 1917
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1918
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1919
    move v1, v0

    .line 1917
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1924
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1925
    const/4 v3, 0x0

    return v3

    .line 1928
    :cond_4
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v2

    .line 1929
    .local v2, "result":Z
    if-nez v2, :cond_5

    .line 1930
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3, v1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v2

    .line 1933
    :cond_5
    if-eqz v2, :cond_6

    .line 1934
    const/4 v3, 0x4

    invoke-direct {p0, v3, p2}, Lcom/android/server/clipboardex/ClipboardExService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1937
    :cond_6
    return v2
.end method

.method public updateDialogShowingState(Z)V
    .locals 0
    .param p1, "isShowing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1413
    iput-boolean p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsDialogShowing:Z

    .line 1412
    return-void
.end method

.method public updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1426
    iput p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    .line 1427
    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->notifyFilterUpdated(I)V

    .line 1430
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    return-void

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1438
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1425
    return-void
.end method
