.class Lcom/android/server/cover/CoverServiceManager;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverServiceManager$1;,
        Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;,
        Lcom/android/server/cover/CoverServiceManager$H;,
        Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;,
        Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;,
        Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;
    }
.end annotation


# static fields
.field private static final ACTION_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.cover.CoverService"

.field private static final LED_COVER:Landroid/content/ComponentName;

.field private static final LED_COVER_CLASS:Ljava/lang/String; = "com.sec.android.cover.ledcover.LedCoverService"

.field private static final LED_COVER_PACKAGE:Ljava/lang/String; = "com.sec.android.cover.ledcover"

.field private static final MAX_BIND_HISTORY:I = 0xa

.field private static final META_DATA_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.cover.service"

.field private static final PERMISSION_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.BIND_COVER_SERVICE"

.field private static final SYSTEM_UI_COVER:Landroid/content/ComponentName;

.field private static final SYSTEM_UI_COVER_CLASS:Ljava/lang/String; = "com.android.systemui.cover.SViewCoverService"

.field private static final SYSTEM_UI_COVER_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBindHistory:[Ljava/lang/String;

.field private mBindHistoryIdx:I

.field private final mBindingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mCoverServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverStateProvider:Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

.field private mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/cover/CoverServiceManager$H;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRegisterBroadcast:Z

.field private mWakeLockRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverServiceManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/CoverServiceManager;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/CoverServiceManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->addCoverService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->updateCoverService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->findCoverServiceByComponentLocked(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverServiceManager;->reconnectCoverService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.cover.ledcover"

    const-string v2, "com.sec.android.cover.ledcover.LedCoverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.cover.SViewCoverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "provider"    # Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    .line 69
    iput v3, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 71
    iput-boolean v3, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 72
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverServiceManager$1;-><init>(Lcom/android/server/cover/CoverServiceManager;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    .line 108
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/cover/CoverServiceManager$H;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    .line 109
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mPowerManager:Landroid/os/PowerManager;

    .line 110
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "CoverServiceManager"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 112
    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 105
    return-void
.end method

.method private addCoverService(Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 345
    sget-object v8, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addCoverService : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 347
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.samsung.android.cover.CoverService"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v5, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const/4 v6, 0x0

    .line 350
    .local v6, "res":Z
    invoke-direct {p0, v5}, Lcom/android/server/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 351
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 352
    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v7

    .line 353
    .local v7, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 354
    .local v0, "N":I
    if-nez v0, :cond_0

    monitor-exit v9

    .line 355
    return v11

    .line 357
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 358
    :try_start_1
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 359
    .local v4, "key":I
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 360
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 361
    iget-object v10, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    const/4 v6, 0x1

    .line 357
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_1
    sget-object v8, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addCoverService : Cover Type("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is already added"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 346
    .end local v0    # "N":I
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "key":I
    .end local v5    # "queryIntent":Landroid/content/Intent;
    .end local v6    # "res":Z
    .end local v7    # "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .restart local v3    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "queryIntent":Landroid/content/Intent;
    .restart local v6    # "res":Z
    :cond_2
    monitor-exit v9

    .line 368
    return v6
.end method

.method private bindCoverServiceLocked(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "bindCoverServiceLocked : component is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v6

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->containsBindingServiceLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    return v6

    .line 173
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
    :try_start_0
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/cover/CoverServiceManager$2;-><init>(Lcom/android/server/cover/CoverServiceManager;I)V

    .line 221
    .local v0, "connection":Landroid/content/ServiceConnection;
    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindCoverServiceLocked : type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 223
    const v4, 0x1000005

    .line 222
    invoke-virtual {v3, v2, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v6

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v3, 0x1

    return v3

    .line 232
    .end local v0    # "connection":Landroid/content/ServiceConnection;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return v6
.end method

.method private containsBindingServiceLocked(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .line 318
    .local v0, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    return-object v0

    .line 323
    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findCoverServiceByComponentLocked(Landroid/content/ComponentName;)I
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 306
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 307
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 308
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    .line 306
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    const/4 v3, 0x2

    return v3
.end method

.method private getCoverServiceNameLocked(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 286
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 287
    return-object v0

    .line 289
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 300
    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v1

    .line 291
    :sswitch_0
    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    return-object v1

    .line 293
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "getCoverServiceNameLocked : return because of nfc smart cover supporting nfc authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v3

    .line 297
    :cond_1
    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v1

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method private getSystemUICoverService(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 276
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    .line 276
    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getSystemUICoverService : return because of nfc smart cover supporting nfc authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 281
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v0
.end method

.method private getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 403
    .local v5, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 404
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 405
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 406
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v1, "component":Landroid/content/ComponentName;
    const-string v7, "com.samsung.android.permission.BIND_COVER_SERVICE"

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 408
    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") has no permission"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_0
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_1

    .line 412
    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") has no meta data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 415
    :cond_1
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.samsung.android.cover.service"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 416
    .local v6, "type":I
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 417
    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") has wrong cover type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 421
    :cond_2
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 422
    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") of service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is duplicated  with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    :cond_3
    sget-boolean v7, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVerifiedCoverService : component: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_4
    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 429
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "type":I
    :cond_5
    return-object v5
.end method

.method private handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 489
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .line 491
    .local v0, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 489
    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 494
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/cover/CoverServiceManager$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    :cond_1
    new-instance v2, Lcom/android/server/cover/CoverServiceManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverServiceManager$3;-><init>(Lcom/android/server/cover/CoverServiceManager;)V

    iput-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    .line 504
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/CoverServiceManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    return-void
.end method

.method private queryInstalledCoverServices()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 333
    .local v0, "identity":J
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.cover.CoverService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, "queryIntent":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 338
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    return-object v4

    .line 339
    .end local v2    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "queryIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw v4
.end method

.method private queryIntentService(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 395
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const v0, 0xc0084

    .line 398
    .local v0, "flags":I
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private reconnectCoverService(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x2

    .line 476
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverServiceManager$H;->removeMessages(I)V

    .line 477
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    const/4 v2, 0x0

    invoke-static {v1, v3, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 478
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/CoverServiceManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    return-void
.end method

.method private registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 115
    .end local v3    # "packageFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removeAllCoverServiceLocked()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 270
    return-void
.end method

.method private removeCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 522
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 523
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 524
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 525
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 526
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x6

    aput-object p1, v3, v4

    .line 523
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unbindCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 250
    if-nez p1, :cond_0

    .line 251
    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "unbindCoverServiceLocked : info is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v4

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get1(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbinding:cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v1, 0x1

    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " could not be unbound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v4
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 127
    :cond_0
    return-void
.end method

.method private updateBindHistoryLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "history":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    array-length v1, v2

    .line 512
    .local v1, "historySize":I
    iget v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-ge v2, v1, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    aput-object v0, v2, v3

    .line 516
    :cond_0
    iget v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-lt v2, v1, :cond_1

    .line 517
    iput v5, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 507
    :cond_1
    return-void
.end method

.method private updateCoverService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 373
    sget-object v5, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCoverService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v6, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 375
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.cover.CoverService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v3, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 378
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 379
    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v4

    .line 380
    .local v4, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 381
    .local v0, "N":I
    if-nez v0, :cond_0

    monitor-exit v6

    .line 382
    return v8

    .line 384
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 385
    :try_start_1
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_1
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/ComponentName;>;"
    :cond_2
    monitor-exit v6

    .line 389
    return v8

    .line 374
    .end local v2    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "queryIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static verifySystemFeature(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 433
    sparse-switch p1, :sswitch_data_0

    .line 451
    const/4 v0, 0x0

    return v0

    .line 438
    :sswitch_0
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    return v0

    .line 440
    :sswitch_1
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    return v0

    .line 442
    :sswitch_2
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    return v0

    .line 444
    :sswitch_3
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    return v0

    .line 446
    :sswitch_4
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    return v0

    .line 448
    :sswitch_5
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNfcLedCover()Z

    move-result v0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_5
        0x8 -> :sswitch_1
        0xb -> :sswitch_4
        0x64 -> :sswitch_0
        0xff -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method bindCoverService(IZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "factoryMode"    # Z

    .prologue
    .line 135
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    .line 140
    sget-object v2, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "bindCoverService : return because of test mode for nfc smart cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 136
    :cond_1
    sget-object v2, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindCoverService : not support cover type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->getCoverServiceNameLocked(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 147
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_3

    monitor-exit v3

    .line 148
    return-void

    .line 150
    :cond_3
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverServiceManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 155
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->getSystemUICoverService(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 156
    .local v0, "base":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    monitor-exit v3

    .line 157
    return-void

    .line 159
    :cond_6
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 134
    return-void

    .line 145
    .end local v0    # "base":Landroid/content/ComponentName;
    .end local v1    # "component":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 530
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 531
    :try_start_0
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    .line 532
    const-string v7, " Cover Services: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 534
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_0
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    const-string v7, " Active Cover Service: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .line 541
    .local v5, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 530
    .end local v5    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .end local v6    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 543
    .restart local v6    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string v7, " Binding Cover Service: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingServices:Landroid/util/ArraySet;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cn$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 546
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 548
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_2
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const-string v7, " Bind history:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v10, v9

    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v3, v9, v7

    .line 551
    .local v3, "h":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 552
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 555
    .end local v3    # "h":Ljava/lang/String;
    :cond_4
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 529
    return-void
.end method

.method isBindingCoverService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 6
    .param p1, "covered"    # Z

    .prologue
    const/4 v5, 0x0

    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "res":I
    iget-object v4, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 461
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 462
    return v5

    .line 464
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .line 465
    .local v0, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    move-result v2

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 460
    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    .line 472
    return v2
.end method

.method unbindCoverService(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 239
    sget-object v2, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindCoverService : type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    .line 242
    .local v0, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 244
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->removeAllCoverServiceLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 246
    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->unregisterBroadcastReceiver()V

    .line 238
    return-void
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cover/CoverServiceManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    return-void
.end method
