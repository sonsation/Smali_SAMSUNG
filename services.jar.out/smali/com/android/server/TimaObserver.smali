.class final Lcom/android/server/TimaObserver;
.super Landroid/os/UEventObserver;
.source "TimaObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaObserver$1;
    }
.end annotation


# static fields
.field private static final MSG_TIMA_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final TIMA_MESSAGE:Ljava/lang/String; = "TIMA_MESSAGE"

.field private static final TIMA_QSEE_MSG:Ljava/lang/String; = "MSG"

.field private static final TIMA_RESULT:Ljava/lang/String; = "TIMA_RESULT"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static final TIMA_STATE_PATH:Ljava/lang/String; = "/sys/class/tima/state"

.field private static final TIMA_STATUS:Ljava/lang/String; = "TIMA_STATUS"

.field private static final TIMA_SUCCESS:Ljava/lang/String; = "0"

.field private static final TIMA_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/tima/tima_uevent"


# instance fields
.field private DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSystemReady:Z

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/TimaObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TimaObserver;->handleTimaStateChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/TimaObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 37
    iput-boolean v3, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mLock:Ljava/lang/Object;

    .line 55
    iput-boolean v3, p0, Lcom/android/server/TimaObserver;->mSystemReady:Z

    .line 131
    new-instance v1, Lcom/android/server/TimaObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/TimaObserver$1;-><init>(Lcom/android/server/TimaObserver;)V

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/server/TimaObserver;->mContext:Landroid/content/Context;

    .line 65
    iget-object v1, p0, Lcom/android/server/TimaObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    iget-object v1, p0, Lcom/android/server/TimaObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    .line 71
    iget-boolean v1, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "TIMA: TIMA startObserving: DEVPATH=/devices/virtual/tima/tima_uevent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const-string/jumbo v1, "DEVPATH=/devices/virtual/tima/tima_uevent"

    invoke-virtual {p0, v1}, Lcom/android/server/TimaObserver;->startObserving(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private handleTimaStateChange()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/server/TimaObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Tima state changed: "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateLocked()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 78
    iget-boolean v4, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 79
    sget-object v4, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TIMA: TIMA UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TIMA_STATUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 83
    return-void

    .line 86
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/TimaObserver;->mSystemReady:Z

    if-nez v4, :cond_2

    .line 87
    return-void

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 94
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 95
    sget-object v4, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TIMA_UEVENT: mTimaService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3
    iget-object v4, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    monitor-exit v5

    .line 97
    return-void

    .line 99
    :cond_4
    :try_start_1
    const-string/jumbo v4, "TIMA_STATUS"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v4, "TIMA_RESULT"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TIMA_STATUS="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "eventStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string/jumbo v4, ";;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 107
    sget-object v4, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TIMA_UEVENT: eventStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_6
    iget-object v4, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v4, v1}, Landroid/service/tima/ITimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "eventStr":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    :goto_0
    monitor-exit v5

    .line 77
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not parse/relay TIMA event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
